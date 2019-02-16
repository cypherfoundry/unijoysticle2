/****************************************************************************
http://retro.moe/unijoysticle

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

// More info about PS4 gamepad:
// https://manuals.playstation.net/document/en/ps4/basic/pn_controller.html

#include "uni_hid_parser_ps4.h"

#include "hid_usage.h"
#include "uni_debug.h"
#include "uni_hid_parser.h"

void uni_hid_parser_ps4_init(uni_gamepad_t* gamepad) {
  // Reset old state. Each report contains a full-state.
  gamepad->updated_states = 0;
}

void uni_hid_parser_ps4_parse_usage(uni_gamepad_t* gamepad,
                                    hid_globals_t* globals,
                                    uint16_t usage_page,
                                    uint16_t usage,
                                    int32_t value) {
  // print_parser_globals(globals);
  uint8_t hat;
  switch (usage_page) {
    case HID_USAGE_PAGE_GENERIC_DESKTOP:
      switch (usage) {
        case HID_USAGE_AXIS_X:
          gamepad->axis_x = uni_hid_parser_process_axis(globals, value);
          gamepad->updated_states |= GAMEPAD_STATE_AXIS_X;
          break;
        case HID_USAGE_AXIS_Y:
          gamepad->axis_y = uni_hid_parser_process_axis(globals, value);
          gamepad->updated_states |= GAMEPAD_STATE_AXIS_Y;
          break;
        case HID_USAGE_AXIS_Z:
          gamepad->axis_rx = uni_hid_parser_process_axis(globals, value);
          gamepad->updated_states |= GAMEPAD_STATE_AXIS_RX;
          break;
        case HID_USAGE_AXIS_RX:
          gamepad->brake = uni_hid_parser_process_pedal(globals, value);
          gamepad->updated_states |= GAMEPAD_STATE_BRAKE;
          break;
        case HID_USAGE_AXIS_RY:
          gamepad->accelerator = uni_hid_parser_process_pedal(globals, value);
          gamepad->updated_states |= GAMEPAD_STATE_ACCELERATOR;
          break;
        case HID_USAGE_AXIS_RZ:
          gamepad->axis_ry = uni_hid_parser_process_axis(globals, value);
          gamepad->updated_states |= GAMEPAD_STATE_AXIS_RY;
          break;
        case HID_USAGE_HAT:
          hat = uni_hid_parser_process_hat(globals, value);
          gamepad->dpad = uni_hid_parser_hat_to_dpad(hat);
          gamepad->updated_states |= GAMEPAD_STATE_DPAD;
          break;
        case HID_USAGE_SYSTEM_MAIN_MENU:
          if (value)
            gamepad->misc_buttons |= MISC_BUTTON_SYSTEM;
          else
            gamepad->misc_buttons &= ~MISC_BUTTON_SYSTEM;
          gamepad->updated_states |= GAMEPAD_STATE_MISC_BUTTON_SYSTEM;
          break;
        case HID_USAGE_DPAD_UP:
        case HID_USAGE_DPAD_DOWN:
        case HID_USAGE_DPAD_RIGHT:
        case HID_USAGE_DPAD_LEFT:
          uni_hid_parser_process_dpad(usage, value, &gamepad->dpad);
          gamepad->updated_states |= GAMEPAD_STATE_DPAD;
          break;
        default:
          logi("PS4: Unsupported page: 0x%04x, usage: 0x%04x, value=0x%x\n", usage_page, usage, value);
          break;
      }
      break;
    case HID_USAGE_PAGE_GENERIC_DEVICE_CONTROLS:
      switch (usage) {
        case HID_USAGE_BATTERY_STRENGHT:
          gamepad->battery = value;
          break;
        default:
          logi("PS4: Unsupported page: 0x%04x, usage: 0x%04x, value=0x%x\n", usage_page, usage, value);
          break;
      }
      break;

    case HID_USAGE_PAGE_BUTTON: {
      switch (usage) {
        case 0x01:  // Square Button (0x01)
          if (value)
            gamepad->buttons |= BUTTON_X;
          else
            gamepad->buttons &= ~BUTTON_X;
          gamepad->updated_states |= GAMEPAD_STATE_BUTTON_X;
          break;
        case 0x02:  // X Button (0x02)
          if (value)
            gamepad->buttons |= BUTTON_A;
          else
            gamepad->buttons &= ~BUTTON_A;
          gamepad->updated_states |= GAMEPAD_STATE_BUTTON_A;
          break;
        case 0x03:  // Circle Button (0x04)
          if (value)
            gamepad->buttons |= BUTTON_B;
          else
            gamepad->buttons &= ~BUTTON_B;
          gamepad->updated_states |= GAMEPAD_STATE_BUTTON_B;
          break;
        case 0x04:  // Triangle Button (0x08)
          if (value)
            gamepad->buttons |= BUTTON_Y;
          else
            gamepad->buttons &= ~BUTTON_Y;
          gamepad->updated_states |= GAMEPAD_STATE_BUTTON_Y;
          break;
        case 0x05:  // Button Left (0x10)
          if (value)
            gamepad->buttons |= BUTTON_L;
          else
            gamepad->buttons &= ~BUTTON_L;
          gamepad->updated_states |= GAMEPAD_STATE_BUTTON_L;
          break;
        case 0x06:  // Button Right (0x20)
          if (value)
            gamepad->buttons |= BUTTON_R;
          else
            gamepad->buttons &= ~BUTTON_R;
          gamepad->updated_states |= GAMEPAD_STATE_BUTTON_R;
          break;
        case 0x07:  // Trigger L (0x40)
        case 0x08:  // Trigger R (0x80)
          break;
        case 0x09:  // Shake (0x100)
          if (value)
            gamepad->misc_buttons |= MISC_BUTTON_BACK;
          else
            gamepad->misc_buttons &= ~MISC_BUTTON_BACK;
          gamepad->updated_states |= GAMEPAD_STATE_MISC_BUTTON_BACK;
          break;
        case 0x0a:  // options button (0x200)
          if (value)
            gamepad->misc_buttons |= MISC_BUTTON_HOME;
          else
            gamepad->misc_buttons &= ~MISC_BUTTON_HOME;
          gamepad->updated_states |= GAMEPAD_STATE_MISC_BUTTON_HOME;
          break;
        case 0x0b:  // thumb L (0x400)
          if (value)
            gamepad->buttons |= BUTTON_THUMB_L;
          else
            gamepad->buttons &= ~BUTTON_THUMB_L;
          gamepad->updated_states |= GAMEPAD_STATE_BUTTON_THUMB_L;
          break;
        case 0x0c:  // thumb R (0x800)
          if (value)
            gamepad->buttons |= BUTTON_THUMB_R;
          else
            gamepad->buttons &= ~BUTTON_THUMB_R;
          gamepad->updated_states |= GAMEPAD_STATE_BUTTON_THUMB_R;
          break;
        case 0x0d:  // ps ??? (0x1000)
          if (value)
            gamepad->misc_buttons |= MISC_BUTTON_SYSTEM;
          else
            gamepad->misc_buttons &= ~MISC_BUTTON_SYSTEM;
          gamepad->updated_states |= GAMEPAD_STATE_MISC_BUTTON_SYSTEM;
          break;
        case 0x0e:  // touch pad ??? (0x2000)
          break;
        default:
          logi("PS4: Unsupported page: 0x%04x, usage: 0x%04x, value=0x%x\n", usage_page, usage, value);
          break;
      }
      break;
    }
    // unknown usage page
    default:
      logi("PS4: Unsupported page: 0x%04x, usage: 0x%04x, value=0x%x\n", usage_page, usage, value);
      break;
  }
}