/****************************************************************************
http://retro.moe/unijoysticle2

Copyright 2019 Ricardo Quesada

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
****************************************************************************/

#include "uni_hid_device.h"

#include "uni_debug.h"
#include "uni_hid_device_vendors.h"
#include "uni_hid_parser_8bitdo.h"
#include "uni_hid_parser_android.h"
#include "uni_hid_parser_apple.h"
#include "uni_hid_parser_generic.h"
#include "uni_hid_parser_icade.h"
#include "uni_hid_parser_ouya.h"
#include "uni_hid_parser_ps4.h"
#include "uni_hid_parser_smarttvremote.h"
#include "uni_hid_parser_xboxone.h"
#include "uni_platform.h"

#define MAX_DEVICES 8

// clang-format off
#define MASK_COD_MAJOR_PERIPHERAL   0x0500  // 0b0000_0101_0000_0000
#define MASK_COD_MAJOR_AUDIO        0x0400  // 0b0000_0100_0000_0000
#define MASK_COD_MINOR_MASK         0x00FC  //             1111_1100
#define MASK_COD_MINOR_POINT_DEVICE 0x0080  //             1000_0000
#define MASK_COD_MINOR_KEYBOARD     0x0040  //             0100_0000
#define MASK_COD_MINOR_GAMEPAD      0x0008  //             0000_1000
#define MASK_COD_MINOR_JOYSTICK     0x0004  //             0000_0100
#define MASK_COD_MINOR_HANDS_FREE   0x0008  //             0000_1000
// clang-format on

enum {
  FLAGS_INCOMING = (1 << 0),
  FLAGS_CONNECTED = (1 << 1),

  FLAGS_HAS_COD = (1 << 8),
  FLAGS_HAS_NAME = (1 << 9),
  FLAGS_HAS_HID_DESCRIPTOR = (1 << 10),
  FLAGS_HAS_VENDOR_ID = (1 << 11),
  FLAGS_HAS_PRODUCT_ID = (1 << 12),
  FLAGS_HAS_CONTROLLER_TYPE = (1 << 13),
};

static uni_hid_device_t g_devices[MAX_DEVICES];
static uni_hid_device_t* g_current_device = NULL;
static int g_device_count = 0;
static const bd_addr_t zero_addr = {0, 0, 0, 0, 0, 0};

static void process_misc_button_system(uni_hid_device_t* d);
static void process_misc_button_home(uni_hid_device_t* d);

void uni_hid_device_init(void) { memset(g_devices, 0, sizeof(g_devices)); }

uni_hid_device_t* uni_hid_device_create(bd_addr_t address) {
  for (int j = 0; j < MAX_DEVICES; j++) {
    if (bd_addr_cmp(g_devices[j].address, zero_addr) == 0) {
      memcpy(g_devices[j].address, address, 6);
      return &g_devices[j];
    }
  }
  return NULL;
}

uni_hid_device_t* uni_hid_device_get_instance_for_address(bd_addr_t addr) {
  for (int j = 0; j < MAX_DEVICES; j++) {
    if (bd_addr_cmp(addr, g_devices[j].address) == 0) {
      return &g_devices[j];
    }
  }
  return NULL;
}

uni_hid_device_t* uni_hid_device_get_instance_for_cid(uint16_t cid) {
  if (cid == 0) return NULL;
  for (int i = 0; i < MAX_DEVICES; i++) {
    if (g_devices[i].hid_interrupt_cid == cid ||
        g_devices[i].hid_control_cid == cid) {
      return &g_devices[i];
    }
  }
  return NULL;
}

uni_hid_device_t* uni_hid_device_get_instance_for_connection_handle(
    hci_con_handle_t handle) {
  if (handle == 0) return NULL;
  for (int i = 0; i < MAX_DEVICES; i++) {
    if (g_devices[i].con_handle == handle) {
      return &g_devices[i];
    }
  }
  return NULL;
}

uni_hid_device_t* uni_hid_device_get_first_device_with_state(int state) {
  for (int i = 0; i < g_device_count; i++) {
    if (g_devices[i].state == state) return &g_devices[i];
  }
  return NULL;
}

void uni_hid_device_set_current_device(uni_hid_device_t* d) {
  g_current_device = d;
}

uni_hid_device_t* uni_hid_device_get_current_device(void) {
  return g_current_device;
}

void uni_hid_device_try_assign_joystick_port(uni_hid_device_t* d) {
  if (d == NULL) {
    log_error("ERROR: Invalid device\n");
    return;
  }

  // Port already assigned. Do nothing. Not an error.
  if (d->joystick_port != JOYSTICK_PORT_NONE) {
    return;
  }

  // A controller is not really needed for the assignment, but we only want to
  // assign a joystick port when the device is ready to receive input.
  if (!uni_hid_device_has_controller_type(d)) {
    return;
  }

  uint32_t used_joystick_ports = 0;
  for (int i = 0; i < MAX_DEVICES; i++) {
    used_joystick_ports |= g_devices[i].joystick_port;
  }

  // Try with Port B, assume it is a joystick
  int wanted_port = JOYSTICK_PORT_B;
  d->emu_mode = EMULATION_MODE_SINGLE_JOY;
  // d->emu_mode = EMULATION_MODE_COMBO_JOY_JOY;

  // ... unless it is a mouse which should try with PORT A. Amiga/Atari ST use
  // mice in PORT A. Undefined on the C64, but most apps use it in PORT A as
  // well.
  uint32_t mouse_cod = MASK_COD_MAJOR_PERIPHERAL | MASK_COD_MINOR_POINT_DEVICE;
  if ((d->cod & mouse_cod) == mouse_cod) {
    wanted_port = JOYSTICK_PORT_A;
    d->emu_mode = EMULATION_MODE_SINGLE_MOUSE;
  }

  // If wanted port is already assigned, try with the next one
  if (used_joystick_ports & wanted_port) {
    logi("Port already assigned, trying another one\n");
    wanted_port = (~wanted_port) & JOYSTICK_PORT_AB_MASK;
  }

  used_joystick_ports |= wanted_port;
  d->joystick_port = wanted_port;
  logi("Assigned joystick port: %d\n", wanted_port);

  uni_platform_on_port_assigned(d->joystick_port);
  return;
}

void uni_hid_device_remove_entry_with_channel(uint16_t channel) {
  if (channel == 0) return;
  for (int i = 0; i < MAX_DEVICES; i++) {
    if (g_devices[i].hid_control_cid == channel ||
        g_devices[i].hid_interrupt_cid == channel) {
      memset(&g_devices[i], 0, sizeof(g_devices[i]));
      break;
    }
  }
}

void uni_hid_device_request_inquire(void) {
  for (int i = 0; i < MAX_DEVICES; i++) {
    // retry remote name request
    if (g_devices[i].state == REMOTE_NAME_INQUIRED) {
      g_devices[i].state = REMOTE_NAME_REQUEST;
    }
  }
}

void uni_hid_device_set_disconnected(uni_hid_device_t* d) {
  if (d == NULL) {
    log_error("ERROR: Invalid device\n");
    return;
  }

  // Connection oriented
  d->flags &= ~(FLAGS_CONNECTED | FLAGS_INCOMING);
  d->hid_control_cid = 0;
  d->hid_interrupt_cid = 0;

  if (d->joystick_port != JOYSTICK_PORT_NONE) {
    uni_platform_on_port_freed(d->joystick_port);
    d->joystick_port = JOYSTICK_PORT_NONE;
    d->emu_mode = EMULATION_MODE_SINGLE_JOY;
  }
}

void uni_hid_device_set_cod(uni_hid_device_t* d, uint32_t cod) {
  if (d == NULL) {
    log_error("ERROR: Invalid device\n");
    return;
  }

  d->cod = cod;
  if (cod == 0)
    d->flags &= ~FLAGS_HAS_COD;
  else
    d->flags |= FLAGS_HAS_COD;
}

uint8_t uni_hid_device_is_cod_supported(uint32_t cod) {
  const uint32_t minor_cod = cod & MASK_COD_MINOR_MASK;

  // Joysticks, mice, gamepads are valid.
  if ((cod & MASK_COD_MAJOR_PERIPHERAL) == MASK_COD_MAJOR_PERIPHERAL) {
    // Device is a peripheral: keyboard, mouse, joystick, gamepad, etc.
    // We only care about joysticks, gamepads & mice. But some gamepads,
    // specially cheap ones are advertised as keyboards.
    return !!(minor_cod &
              (MASK_COD_MINOR_GAMEPAD | MASK_COD_MINOR_JOYSTICK |
               MASK_COD_MINOR_POINT_DEVICE | MASK_COD_MINOR_KEYBOARD));
  }

  // Hack for Amazon Fire TV remote control: CoD: 0x00400408 (Audio + Telephony
  // Hands free)
  if ((cod & MASK_COD_MAJOR_AUDIO) == MASK_COD_MAJOR_AUDIO) {
    return (cod == 0x400408);
  }
  return 0;
}

void uni_hid_device_set_incoming(uni_hid_device_t* d, uint8_t incoming) {
  if (d == NULL) {
    log_error("ERROR: Invalid device\n");
    return;
  }

  if (incoming)
    d->flags |= FLAGS_INCOMING;
  else
    d->flags &= ~FLAGS_INCOMING;
}

uint8_t uni_hid_device_is_incoming(uni_hid_device_t* d) {
  return !!(d->flags & FLAGS_INCOMING);
}

void uni_hid_device_set_name(uni_hid_device_t* d, const uint8_t* name,
                             int name_len) {
  if (d == NULL) {
    log_error("ERROR: Invalid device\n");
    return;
  }
  if (name == NULL) {
    log_error("Invalid name");
    return;
  }

  if (name != NULL) {
    int min = btstack_min(MAX_NAME_LEN - 1, name_len);
    memcpy(d->name, name, min);
    d->name[min] = 0;

    d->flags |= FLAGS_HAS_NAME;
    d->state = REMOTE_NAME_FETCHED;
  }
}

uint8_t uni_hid_device_has_name(uni_hid_device_t* d) {
  if (d == NULL) {
    log_error("ERROR: Invalid device\n");
    return 0;
  }

  return !!(d->flags & FLAGS_HAS_NAME);
}

void uni_hid_device_set_hid_descriptor(uni_hid_device_t* d,
                                       const uint8_t* descriptor, int len) {
  if (d == NULL) {
    log_error("ERROR: Invalid device\n");
    return;
  }

  int min = btstack_min(MAX_DESCRIPTOR_LEN, len);
  memcpy(d->hid_descriptor, descriptor, len);
  d->hid_descriptor_len = min;
  d->flags |= FLAGS_HAS_HID_DESCRIPTOR;
}

uint8_t uni_hid_device_has_hid_descriptor(uni_hid_device_t* d) {
  if (d == NULL) {
    log_error("ERROR: Invalid device\n");
    return 0;
  }

  return !!(d->flags & FLAGS_HAS_HID_DESCRIPTOR);
}

void uni_hid_device_set_product_id(uni_hid_device_t* d, uint16_t product_id) {
  d->product_id = product_id;
  d->flags |= FLAGS_HAS_PRODUCT_ID;
}

uint16_t uni_hid_device_get_product_id(uni_hid_device_t* d) {
  return d->product_id;
}

void uni_hid_device_set_vendor_id(uni_hid_device_t* d, uint16_t vendor_id) {
  if (vendor_id == 0) {
    loge("Invalid vendor_id = 0%04x\n", vendor_id);
    return;
  }
  d->vendor_id = vendor_id;
  d->flags |= FLAGS_HAS_VENDOR_ID;
}

uint16_t uni_hid_device_get_vendor_id(uni_hid_device_t* d) {
  return d->vendor_id;
}

void uni_hid_device_dump_device(uni_hid_device_t* d) {
  logi(
      "%s, handle=%d, ctrl_cid=0x%04x, intr_cid=0x%04x, cod=0x%08x, "
      "vid=0x%04x, pid=0x%04x, flags=0x%08x, "
      "port=%d, name='%s'\n",
      bd_addr_to_str(d->address), d->con_handle, d->hid_control_cid,
      d->hid_interrupt_cid, d->cod, d->vendor_id, d->product_id, d->flags,
      d->joystick_port, d->name);
}

void uni_hid_device_dump_all(void) {
  logi("Connected devices:\n");
  for (int i = 0; i < MAX_DEVICES; i++) {
    if (bd_addr_cmp(g_devices[i].address, zero_addr) == 0) continue;
    uni_hid_device_dump_device(&g_devices[i]);
  }
}

uint8_t uni_hid_device_is_orphan(uni_hid_device_t* d) {
  // There is a case with the Apple mouse, and possibly other devices, sends
  // the on_hci_connection_request but doesn't complete the connection.
  // The device gets added into the DB at on_hci_connection_request time, and
  // if you later put the device in discovery mode, we won't start a Connection
  // because it is already added to the DB.
  // This prevents that scenario.
  return (d->flags == FLAGS_HAS_COD);
}

void uni_hid_device_guess_controller_type(uni_hid_device_t* d) {
  if (uni_hid_device_has_controller_type(d)) {
    logi("device already has a controller type");
    return;
  }
  // Try to guess it from Vendor/Product id.
  uni_controller_type_t type =
      guess_controller_type(d->vendor_id, d->product_id);

  // If it fails, try to guess it from COD
  if (type == CONTROLLER_TYPE_Unknown) {
    logi("Device (vendor_id=0x%04x, product_id=0x%04x) not found in DB.",
         d->vendor_id, d->product_id);
    uint32_t mouse_cod =
        MASK_COD_MAJOR_PERIPHERAL | MASK_COD_MINOR_POINT_DEVICE;
    uint32_t keyboard_cod = MASK_COD_MAJOR_PERIPHERAL | MASK_COD_MINOR_KEYBOARD;
    if ((d->cod & mouse_cod) == mouse_cod) {
      type = CONTROLLER_TYPE_GenericMouse;
    } else if ((d->cod & keyboard_cod) == keyboard_cod) {
      type = CONTROLLER_TYPE_GenericKeyboard;
    } else {
      // FIXME: Default should be the most popular bluetooth device.
      type = CONTROLLER_TYPE_AndroidController;
    }
  }

  switch (type) {
    case CONTROLLER_TYPE_iCadeController:
      d->report_parser.init = uni_hid_parser_icade_init;
      d->report_parser.parse_usage = uni_hid_parser_icade_parse_usage;
      logi("Device detected as iCade: 0x%02x\n", type);
      break;
    case CONTROLLER_TYPE_OUYAController:
      d->report_parser.init = uni_hid_parser_ouya_init;
      d->report_parser.parse_usage = uni_hid_parser_ouya_parse_usage;
      logi("Device detected as OUYA: 0x%02x\n", type);
      break;
    case CONTROLLER_TYPE_XBoxOneController:
      d->report_parser.init = uni_hid_parser_xboxone_init;
      d->report_parser.parse_usage = uni_hid_parser_xboxone_parse_usage;
      logi("Device detected as Xbox One: 0x%02x\n", type);
      break;
    case CONTROLLER_TYPE_AndroidController:
      d->report_parser.init = uni_hid_parser_android_init;
      d->report_parser.parse_usage = uni_hid_parser_android_parse_usage;
      logi("Device detected as Android: 0x%02x\n", type);
      break;
    case CONTROLLER_TYPE_AppleController:
      d->report_parser.init = uni_hid_parser_apple_init;
      d->report_parser.parse_usage = uni_hid_parser_apple_parse_usage;
      logi("Device detected as Apple: 0x%02x\n", type);
      break;
    case CONTROLLER_TYPE_SmartTVRemoteController:
      d->report_parser.init = uni_hid_parser_smarttvremote_init;
      d->report_parser.parse_usage = uni_hid_parser_smarttvremote_parse_usage;
      logi("Device detected as Smart TV remote: 0x%02x\n", type);
      break;
    case CONTROLLER_TYPE_PS4Controller:
      d->report_parser.init = uni_hid_parser_ps4_init;
      d->report_parser.parse_usage = uni_hid_parser_ps4_parse_usage;
      logi("Device detected as PS4: 0x%02x\n", type);
      break;
    case CONTROLLER_TYPE_8BitdoController:
      d->report_parser.init = uni_hid_parser_8bitdo_init;
      d->report_parser.parse_usage = uni_hid_parser_8bitdo_parse_usage;
      logi("Device detected as 8BITDO: 0x%02x\n", type);
      break;
    case CONTROLLER_TYPE_GenericController:
      d->report_parser.init = uni_hid_parser_generic_init;
      d->report_parser.parse_usage = uni_hid_parser_generic_parse_usage;
      logi("Device detected as generic: 0x%02x\n", type);
      break;
    default:
      d->report_parser.init = uni_hid_parser_generic_init;
      d->report_parser.parse_usage = uni_hid_parser_generic_parse_usage;
      logi("Device detected as generic: 0x%02x\n", type);
      break;
  }

  d->flags |= FLAGS_HAS_CONTROLLER_TYPE;
}

uint8_t uni_hid_device_has_controller_type(uni_hid_device_t* d) {
  if (d == NULL) {
    log_error("ERROR: Invalid device\n");
    return 0;
  }

  return !!(d->flags & FLAGS_HAS_CONTROLLER_TYPE);
}

void uni_hid_device_set_connection_handle(uni_hid_device_t* d,
                                          hci_con_handle_t handle) {
  d->con_handle = handle;
}

void uni_hid_device_process_gamepad(uni_hid_device_t* d) {
  // FIXME: each backend should decide what to do with misc buttons
  process_misc_button_system(d);
  process_misc_button_home(d);

  if (d->joystick_port == JOYSTICK_PORT_NONE) return;

  // FIXME: Add support for EMULATION_MODE_COMBO_JOY_MOUSE
  uni_joystick_t joy, joy_ext;
  memset(&joy, 0, sizeof(joy));
  memset(&joy_ext, 0, sizeof(joy_ext));

  const uni_gamepad_t* gp = &d->gamepad;

  switch (d->emu_mode) {
    case EMULATION_MODE_SINGLE_JOY:
      uni_gamepad_to_single_joy(gp, &joy);
      if (d->joystick_port == JOYSTICK_PORT_A)
        uni_platform_on_joy_a_data(&joy);
      else
        uni_platform_on_joy_b_data(&joy);
      break;
    case EMULATION_MODE_SINGLE_MOUSE:
      uni_gamepad_to_single_mouse(gp, &joy);
      uni_platform_on_mouse_data(gp->axis_x, gp->axis_y, gp->buttons);
      break;
    case EMULATION_MODE_COMBO_JOY_JOY:
      uni_gamepad_to_combo_joy_joy(gp, &joy, &joy_ext);
      uni_platform_on_joy_b_data(&joy);
      uni_platform_on_joy_a_data(&joy_ext);
      break;
    case EMULATION_MODE_COMBO_JOY_MOUSE:
      uni_gamepad_to_combo_joy_mouse(gp, &joy, &joy_ext);
      uni_platform_on_joy_b_data(&joy);
      uni_platform_on_joy_a_data(&joy_ext);
      break;
    default:
      loge("Unsupported emulation mode: %d\n", d->emu_mode);
      break;
  }
}

// Helpers

// process_mic_button_system swaps joystick port A and B only if there is one
// device attached.
static void process_misc_button_system(uni_hid_device_t* d) {
  if ((d->gamepad.updated_states & GAMEPAD_STATE_MISC_BUTTON_SYSTEM) == 0) {
    // System button released (or never have been pressed). Return, and clean
    // wait_release button
    return;
  }

  if ((d->gamepad.misc_buttons & MISC_BUTTON_SYSTEM) == 0) {
    // System button released ?
    d->wait_release_misc_button &= ~MISC_BUTTON_SYSTEM;
    return;
  }

  if (d->wait_release_misc_button & MISC_BUTTON_SYSTEM) return;

  if (d->joystick_port == JOYSTICK_PORT_NONE) {
    logi(
        "cannot swap port since device has joystick_port = "
        "JOYSTICK_PORT_NONE\n");
    return;
  }

  // This could happen if device is any Combo emu mode.
  if (d->joystick_port == (JOYSTICK_PORT_A | JOYSTICK_PORT_B)) {
    logi(
        "cannot swap port since has more than one port associated with. Leave "
        "emu mode and try again.\n");
    return;
  }

  // swap joysticks if only one device is attached
  int num_devices = 0;
  for (int j = 0; j < MAX_DEVICES; j++) {
    if ((bd_addr_cmp(g_devices[j].address, zero_addr) != 0) &&
        (g_devices[j].joystick_port > 0)) {
      num_devices++;
      if (num_devices > 1) {
        logi(
            "cannot swap joystick ports when more than one device is "
            "attached\n");
        uni_hid_device_dump_all();
        return;
      }
    }
  }

  // swap joystick A with B
  uni_platform_on_port_freed(d->joystick_port);
  d->joystick_port =
      (d->joystick_port == JOYSTICK_PORT_A) ? JOYSTICK_PORT_B : JOYSTICK_PORT_A;
  uni_platform_on_port_assigned(d->joystick_port);
  logi("device %s has new joystick port: %c\n", bd_addr_to_str(d->address),
       (d->joystick_port == JOYSTICK_PORT_A) ? 'A' : 'B');

  d->wait_release_misc_button |= MISC_BUTTON_SYSTEM;
}

// process_misc_button_home dumps uni_hid_device debug info in the console.
static void process_misc_button_home(uni_hid_device_t* d) {
  if ((d->gamepad.updated_states & GAMEPAD_STATE_MISC_BUTTON_HOME) == 0) {
    // Home button not available, not pressed or released.
    return;
  }

  if ((d->gamepad.misc_buttons & MISC_BUTTON_HOME) == 0) {
    // Home button released ? Clear "wait" flag.
    d->wait_release_misc_button &= ~MISC_BUTTON_HOME;
    return;
  }

  // "Wait" flag present? Return.
  if (d->wait_release_misc_button & MISC_BUTTON_HOME) return;

  uni_hid_device_dump_all();

  // Update "wait" flag.
  d->wait_release_misc_button |= MISC_BUTTON_HOME;
}

// Events

void uni_hid_device_on_emu_mode_change(void) {
  int num_devices = 0;
  uni_hid_device_t* d = NULL;
  for (int j = 0; j < MAX_DEVICES; j++) {
    if (bd_addr_cmp(g_devices[j].address, zero_addr) != 0) {
      num_devices++;
      d = &g_devices[j];
    }
  }

  if (num_devices != 1) {
    loge("cannot change mode. Expected num_devices=1, actual=%d\n",
         num_devices);
    return;
  }

  if (d->emu_mode == EMULATION_MODE_SINGLE_JOY) {
    d->emu_mode = EMULATION_MODE_COMBO_JOY_JOY;
    d->prev_joystick_port = d->joystick_port;
    d->joystick_port = JOYSTICK_PORT_A | JOYSTICK_PORT_B;
    uni_platform_on_port_assigned(d->joystick_port);
    logi("Emulation mode = Combo Joy Joy\n");
  } else if (d->emu_mode == EMULATION_MODE_COMBO_JOY_JOY) {
    d->emu_mode = EMULATION_MODE_SINGLE_JOY;
    // Turn off all LEDs.
    uni_platform_on_port_freed(d->joystick_port);
    d->joystick_port = d->prev_joystick_port;
    // Turn on only the valid one
    uni_platform_on_port_assigned(d->joystick_port);
    logi("Emulation mode = Single Joy\n");
  } else {
    loge("Cannot switch emu mode. Current mode: %d\n", d->emu_mode);
  }
}