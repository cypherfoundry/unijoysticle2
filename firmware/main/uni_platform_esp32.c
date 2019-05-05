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

// ESP32 version

#include "uni_platform.h"

#include "esp_timer.h"
#include "freertos/FreeRTOS.h"
#include "freertos/event_groups.h"
#include "freertos/queue.h"

#include "driver/gpio.h"

#include "uni_config.h"
#include "uni_debug.h"
#include "uni_hid_device.h"

// --- Consts

// 20 milliseconds ~= 1 frame in PAL
// 17 milliseconds ~= 1 frame in NTSC
static const int AUTOFIRE_FREQ_MS = 20 * 4;  // change every ~4 frames

static const int MOUSE_DELAY_BETWEEN_EVENT_US = 12000;  // microseconds
static const int MOUSE_MAX_DELTA = 32;

// GPIO map for MH-ET Live mini-kit board.
static const int GPIO_LED_J1 = GPIO_NUM_5;
static const int GPIO_LED_J2 = GPIO_NUM_13;
static const int GPIO_PUSH_BUTTON = GPIO_NUM_10;

enum {
#if UNI_ENABLE_COMPACT_V1
  // Same GPIOs as Wemos D1 mini (used in Unijoysticle v0.4)
  GPIO_JOY_A_UP = GPIO_NUM_26,     // D0
  GPIO_JOY_A_DOWN = GPIO_NUM_22,   // D1
  GPIO_JOY_A_LEFT = GPIO_NUM_21,   // D2
  GPIO_JOY_A_RIGHT = GPIO_NUM_17,  // D3
  GPIO_JOY_A_FIRE = GPIO_NUM_16,   // D4

  GPIO_JOY_B_UP = GPIO_NUM_18,    // D5
  GPIO_JOY_B_DOWN = GPIO_NUM_19,  // D6
  GPIO_JOY_B_LEFT = GPIO_NUM_23,  // D7
  GPIO_JOY_B_RIGHT = GPIO_NUM_5,  // D8
  // GPIO_NUM_3 is assigned to the UART. And although it is possible to
  // rewire the GPIOs for the UART in software, the devkits expects that GPIOS 1 and 3
  // are assigned to UART 0. And I cannot use it.
  // Using GPIO 27 instead, which is the one that is closer to GPIO 3.
  GPIO_JOY_B_FIRE = GPIO_NUM_27,  // RX
#else
  GPIO_JOY_A_UP = GPIO_NUM_26,
  GPIO_JOY_A_DOWN = GPIO_NUM_18,
  GPIO_JOY_A_LEFT = GPIO_NUM_19,
  GPIO_JOY_A_RIGHT = GPIO_NUM_23,
  GPIO_JOY_A_FIRE = GPIO_NUM_14,
  GPIO_JOY_A_POT_Y = GPIO_NUM_16,
  GPIO_JOY_A_POT_X = GPIO_NUM_33,

  GPIO_JOY_B_UP = GPIO_NUM_27,
  GPIO_JOY_B_DOWN = GPIO_NUM_25,
  GPIO_JOY_B_LEFT = GPIO_NUM_32,
  GPIO_JOY_B_RIGHT = GPIO_NUM_17,
  GPIO_JOY_B_FIRE = GPIO_NUM_12,
#endif  // UNI_ENABLE_COMPACT_V1
};

// GPIO_NUM_12 (input) used as input for Pot in esp32.
// GPIO_NUM_13 (output) used to feed the Pot in the c64
enum {
  // Event group
  EVENT_BIT_MOUSE = (1 << 0),
  EVENT_BIT_POT = (1 << 1),
  EVENT_BIT_BUTTON = (1 << 2),

  // Autofire Group
  EVENT_BIT_AUTOFIRE = (1 << 0),
};

static const gpio_num_t JOY_A_PORTS[] = {GPIO_JOY_A_UP, GPIO_JOY_A_DOWN, GPIO_JOY_A_LEFT, GPIO_JOY_A_RIGHT,
                                         GPIO_JOY_A_FIRE};
static const gpio_num_t JOY_B_PORTS[] = {GPIO_JOY_B_UP, GPIO_JOY_B_DOWN, GPIO_JOY_B_LEFT, GPIO_JOY_B_RIGHT,
                                         GPIO_JOY_B_FIRE};

// --- Globals

static int64_t g_last_time_pressed_us = 0;  // in microseconds
static EventGroupHandle_t g_event_group;
static EventGroupHandle_t g_auto_fire_group;

// Mouse "shared data from main task to mouse task.
static int32_t g_delta_x = 0;
static int32_t g_delta_y = 0;

// Pot "shared data from main task to pot task.
static uint8_t g_pot_x = 0;
static uint8_t g_pot_y = 0;

// Autofire
static uint8_t g_autofire_a_enabled = 0;
static uint8_t g_autofire_b_enabled = 0;

// --- Code

// Interrupt handlers
static void handle_event_mouse();
static void handle_event_pot();
static void handle_event_button();

// Mouse related
static void joy_update_port(uni_joystick_t* joy, const gpio_num_t* gpios);
static void send_move(int pin_a, int pin_b, uint32_t delay);
static void move_x(int dir, uint32_t delay);
static void move_y(int dir, uint32_t delay);
static void delay_us(uint32_t delay);

// GPIO Interrupt handlers
static void IRAM_ATTR gpio_isr_handler_button(void* arg);
#if UNI_ENABLE_POT
static void IRAM_ATTR gpio_isr_handler_pot(void* arg);
#endif  // UNI_ENABLE_POT

static void event_loop(void* arg);
static void auto_fire_loop(void* arg);

#define MAX(a, b)           \
  ({                        \
    __typeof__(a) _a = (a); \
    __typeof__(b) _b = (b); \
    _a > _b ? _a : _b;      \
  })

#define MIN(a, b)           \
  ({                        \
    __typeof__(a) _a = (a); \
    __typeof__(b) _b = (b); \
    _a < _b ? _a : _b;      \
  })

void uni_platform_init(void) {
  gpio_config_t io_conf;
  io_conf.intr_type = GPIO_INTR_DISABLE;
  io_conf.mode = GPIO_MODE_OUTPUT;
  io_conf.pull_down_en = GPIO_PULLDOWN_DISABLE;
  io_conf.pull_up_en = GPIO_PULLUP_DISABLE;
  // Port A.
  io_conf.pin_bit_mask =
      ((1ULL << GPIO_JOY_A_UP) | (1ULL << GPIO_JOY_A_DOWN) | (1ULL << GPIO_JOY_A_LEFT) | (1ULL << GPIO_JOY_A_RIGHT) |
       (1ULL << GPIO_JOY_A_FIRE) | (1ULL << GPIO_JOY_A_POT_X) | (1ULL << GPIO_JOY_A_POT_Y));
  // Port B.
  io_conf.pin_bit_mask |= ((1ULL << GPIO_JOY_B_UP) | (1ULL << GPIO_JOY_B_DOWN) | (1ULL << GPIO_JOY_B_LEFT) |
                           (1ULL << GPIO_JOY_B_RIGHT) | (1ULL << GPIO_JOY_B_FIRE));

  // Leds
  io_conf.pin_bit_mask |= (1ULL << GPIO_LED_J1);
  io_conf.pin_bit_mask |= (1ULL << GPIO_LED_J2);

  // Pot feeder
  // io_conf.pin_bit_mask |= (1ULL << GPIO_NUM_13);

  ESP_ERROR_CHECK(gpio_config(&io_conf));

  // Set low all GPIOs... just in case.
  const int MAX_GPIOS = sizeof(JOY_A_PORTS) / sizeof(JOY_A_PORTS[0]);
  for (int i = 0; i < MAX_GPIOS; i++) {
    ESP_ERROR_CHECK(gpio_set_level(JOY_A_PORTS[i], 0));
    ESP_ERROR_CHECK(gpio_set_level(JOY_B_PORTS[i], 0));
  }

  // Turn On LED
  gpio_set_level(GPIO_LED_J1, 1);
  gpio_set_level(GPIO_LED_J2, 1);

  // Pull-up for button
  io_conf.intr_type = GPIO_INTR_ANYEDGE;
  io_conf.mode = GPIO_MODE_INPUT;
  io_conf.pull_down_en = GPIO_PULLDOWN_DISABLE;
  io_conf.pull_up_en = GPIO_PULLUP_ENABLE;
  io_conf.pin_bit_mask = (1ULL << GPIO_PUSH_BUTTON);
  ESP_ERROR_CHECK(gpio_config(&io_conf));
  ESP_ERROR_CHECK(gpio_install_isr_service(0));
  ESP_ERROR_CHECK(gpio_isr_handler_add(GPIO_PUSH_BUTTON, gpio_isr_handler_button, (void*)GPIO_PUSH_BUTTON));

// C64 POT related
#if UNI_ENABLE_POT
  io_conf.intr_type = GPIO_INTR_POSEDGE;  // GPIO_INTR_NEGEDGE
  io_conf.mode = GPIO_MODE_INPUT;
  io_conf.pin_bit_mask = 1ULL << GPIO_NUM_12;
  io_conf.pull_down_en = false;
  io_conf.pull_up_en = true;
  ESP_ERROR_CHECK(gpio_config(&io_conf));
  ESP_ERROR_CHECK(gpio_install_isr_service(0));
  ESP_ERROR_CHECK(gpio_isr_handler_add(GPIO_NUM_12, gpio_isr_handler_pot, (void*)GPIO_NUM_12));
#endif  // UNI_ENABLE_POT

  // Split "events" from "auto_fire", since auto-fire is an on-going event.
  g_event_group = xEventGroupCreate();
  xTaskCreate(event_loop, "event_loop", 2048, NULL, 10, NULL);

  g_auto_fire_group = xEventGroupCreate();
  xTaskCreate(auto_fire_loop, "auto_fire_loop", 2048, NULL, 10, NULL);
  // xTaskCreatePinnedToCore(event_loop, "event_loop", 2048, NULL, portPRIVILEGE_BIT, NULL, 1);
}

// Events
void uni_platform_on_init_complete() {
  // Turn Off LEDs
  gpio_set_level(GPIO_LED_J1, 0);
  gpio_set_level(GPIO_LED_J2, 0);
}

void uni_platform_on_port_assigned(uni_joystick_port_t port) {
  if ((port & JOYSTICK_PORT_A) == JOYSTICK_PORT_A)
    gpio_set_level(GPIO_LED_J1, 1);
  if ((port & JOYSTICK_PORT_B) == JOYSTICK_PORT_B)
    gpio_set_level(GPIO_LED_J2, 1);
}

void uni_platform_on_port_freed(uni_joystick_port_t port) {
  if ((port & JOYSTICK_PORT_A) == JOYSTICK_PORT_A)
    gpio_set_level(GPIO_LED_J1, 0);
  if ((port & JOYSTICK_PORT_B) == JOYSTICK_PORT_B)
    gpio_set_level(GPIO_LED_J2, 0);
}

void uni_platform_on_mouse_data(int32_t delta_x, int32_t delta_y) {
  logd("mouse x=%d, y=%d\n", delta_x, delta_y);

  // Mouse is implemented using a quadrature encoding
  // FIXME: Passing values to mouse task using global variables. This is, of course,
  // error-prone to raaces and what not, but seeems to be good enough for our purpose.
  if (delta_x || delta_y) {
    g_delta_x = delta_x;
    g_delta_y = delta_y;
    xEventGroupSetBits(g_event_group, EVENT_BIT_MOUSE);
  }
}

void uni_platform_on_joy_a_data(uni_joystick_t* joy) {
  joy_update_port(joy, JOY_A_PORTS);
  g_autofire_a_enabled = joy->auto_fire;
  if (g_autofire_a_enabled) {
    xEventGroupSetBits(g_auto_fire_group, EVENT_BIT_AUTOFIRE);
  }
}

void uni_platform_on_joy_b_data(uni_joystick_t* joy) {
  joy_update_port(joy, JOY_B_PORTS);
  g_autofire_b_enabled = joy->auto_fire;
  if (g_autofire_b_enabled) {
    xEventGroupSetBits(g_auto_fire_group, EVENT_BIT_AUTOFIRE);
  }
}
uint8_t uni_platform_is_button_pressed() {
  // Hi-released, Low-pressed
  return !gpio_get_level(GPIO_PUSH_BUTTON);
}

static void joy_update_port(uni_joystick_t* joy, const gpio_num_t* gpios) {
  logd("up=%d, down=%d, left=%d, right=%d, fire=%d, potx=%d, poty=%d\n", joy->up, joy->down, joy->left, joy->right,
       joy->fire, joy->pot_x, joy->pot_y);

  g_pot_x = joy->pot_x;
  g_pot_y = joy->pot_y;

  gpio_set_level(gpios[0], !!joy->up);
  gpio_set_level(gpios[1], !!joy->down);
  gpio_set_level(gpios[2], !!joy->left);
  gpio_set_level(gpios[3], !!joy->right);

  // only update fire if auto-fire is off. otherwise it will conflict.
  if (!joy->auto_fire) {
    gpio_set_level(gpios[4], !!joy->fire);
  }
}

static void event_loop(void* arg) {
  // timeout of 10s
  const TickType_t xTicksToWait = 10000 / portTICK_PERIOD_MS;
  while (1) {
    EventBits_t uxBits = xEventGroupWaitBits(g_event_group, (EVENT_BIT_MOUSE | EVENT_BIT_BUTTON | EVENT_BIT_POT),
                                             pdTRUE, pdFALSE, xTicksToWait);

    // timeout ?
    if (uxBits == 0)
      continue;

    if (uxBits & EVENT_BIT_MOUSE)
      handle_event_mouse();

    if (uxBits & EVENT_BIT_BUTTON)
      handle_event_button();

    if (uxBits & EVENT_BIT_POT)
      handle_event_pot();
  }
}

static void auto_fire_loop(void* arg) {
  // timeout of 10s
  const TickType_t xTicksToWait = 10000 / portTICK_PERIOD_MS;
  const TickType_t delayTicks = AUTOFIRE_FREQ_MS / portTICK_PERIOD_MS;
  while (1) {
    EventBits_t uxBits = xEventGroupWaitBits(g_auto_fire_group, EVENT_BIT_AUTOFIRE, pdTRUE, pdFALSE, xTicksToWait);

    // timeout ?
    if (uxBits == 0)
      continue;

    while (g_autofire_a_enabled || g_autofire_b_enabled) {
      if (g_autofire_a_enabled)
        gpio_set_level(JOY_A_PORTS[4], 1);
      if (g_autofire_b_enabled)
        gpio_set_level(JOY_B_PORTS[4], 1);

      vTaskDelay(delayTicks);

      if (g_autofire_a_enabled)
        gpio_set_level(JOY_A_PORTS[4], 0);
      if (g_autofire_b_enabled)
        gpio_set_level(JOY_B_PORTS[4], 0);

      vTaskDelay(delayTicks);
    }
  }
}
// Mouse handler
void handle_event_mouse() {
  // Should not happen, but better safe than sorry
  if (g_delta_x == 0 && g_delta_y == 0)
    return;

  // Based on the deltas, generate a line. It uses Bresenham-sort-of algorithm.
  // We consider these 4 cases:
  // Y = 0, X = 0, X > Y, Y > X
  // Any delta greater than MOUSE_MAX_DELTA is capped to MOUSE_MAX_DELTA
  int abs_x = abs(g_delta_x);
  if (abs_x > 2)
    abs_x = MIN(15, MAX(1, abs_x >> 3));
  int abs_y = abs(g_delta_y);
  if (abs_y > 2)
    abs_y = MIN(15, MAX(1, abs_y >> 3));

  // dir_x / dir_y have the same values as the global delta, but they are easy
  // to understand its meaning when being passed to move_x() / move_y().
  int dir_x = g_delta_x;
  int dir_y = g_delta_y;
  // Y = 0
  if (abs_x != 0 && abs_y == 0) {
    // Horizontal movment
    // The faster it moves, the less delay it has.
    uint32_t delay = (MOUSE_DELAY_BETWEEN_EVENT_US / abs_x) + 1;
    for (int i = 0; i < abs_x; i++) {
      move_x(dir_x, delay);
    }
  }
  // X = 0
  else if (abs_x == 0 && abs_y != 0) {
    // Vertical movement
    // The faster it moves, the less delay it has.
    uint32_t delay = (MOUSE_DELAY_BETWEEN_EVENT_US / abs_y) + 1;
    for (int i = 0; i < abs_y; i++) {
      move_y(dir_y, delay);
    }
  } else if (abs_x > abs_y) {
    // X is the driving the loop.
    uint32_t delay = (MOUSE_DELAY_BETWEEN_EVENT_US / (abs_x + abs_y)) + 1;
    // Avoid floating points to make it more portable between microcontrollers.
    int inc_y = abs_y * 100 / abs_x;
    int accum_y = 0;

    for (int i = 0; i < abs_x; i++) {
      move_x(dir_x, delay);
      accum_y += inc_y;
      if (accum_y >= 100) {
        move_y(dir_y, delay);
        accum_y -= 100;
      }
    }
  } else {
    // Y is the driving the loop.
    uint32_t delay = (MOUSE_DELAY_BETWEEN_EVENT_US / (abs_x + abs_y)) + 1;
    // Avoid floating points to make it more portable between microcontrollers.
    int inc_x = abs_x * 100 / abs_y;
    int accum_x = 0;

    for (int i = 0; i < abs_y; i++) {
      move_y(dir_y, delay);
      accum_x += inc_x;
      if (accum_x >= 100) {
        move_x(dir_x, delay);
        accum_x -= 100;
      }
    }
  }
}

static void send_move(int pin_a, int pin_b, uint32_t delay) {
  gpio_set_level(pin_a, 1);
  delay_us(delay);
  gpio_set_level(pin_b, 1);
  delay_us(delay);

  gpio_set_level(pin_a, 0);
  delay_us(delay);
  gpio_set_level(pin_b, 0);
  delay_us(delay);
}

static void move_x(int dir, uint32_t delay) {
  // up, down, left, right, fire
  if (dir < 0)
    send_move(JOY_A_PORTS[0], JOY_A_PORTS[1], delay);
  else
    send_move(JOY_A_PORTS[1], JOY_A_PORTS[0], delay);
}

static void move_y(int dir, uint32_t delay) {
  // up, down, left, right, fire
  if (dir < 0)
    send_move(JOY_A_PORTS[2], JOY_A_PORTS[3], delay);
  else
    send_move(JOY_A_PORTS[3], JOY_A_PORTS[2], delay);
}

// Delay in microseconds. Anything bigger than 1000 microseconds (1 millisecond)
// should be scheduled using vTaskDelay(), which will allow context-switch and allow
// other tasks to run.
static void delay_us(uint32_t delay) {
  if (delay > 1000)
    vTaskDelay(delay / 1000);
  else
    ets_delay_us(delay);
}

static void handle_event_pot() {
  // gpio_set_level(GPIO_NUM_13, 1);
  // ets_delay_us(50 /*223*/);
  // gpio_set_level(GPIO_NUM_13, 0);

  // gpio_set_level(GPIO_NUM_13, 0);
  // ets_delay_us(200 /*235*/);
  // ets_delay_us(g_pot_y);
  // gpio_set_level(GPIO_NUM_13, 1);
}

static void IRAM_ATTR gpio_isr_handler_button(void* arg) {
  // button released ?
  if (gpio_get_level(GPIO_PUSH_BUTTON)) {
    g_last_time_pressed_us = esp_timer_get_time();
    return;
  }

  // button pressed
  BaseType_t xHigherPriorityTaskWoken = pdFALSE;
  xEventGroupSetBitsFromISR(g_event_group, EVENT_BIT_BUTTON, &xHigherPriorityTaskWoken);
  if (xHigherPriorityTaskWoken == pdTRUE)
    portYIELD_FROM_ISR();
}

#if UNI_ENABLE_POT
static void IRAM_ATTR gpio_isr_handler_pot(void* arg) {
  uint32_t gpio_num = (uint32_t)arg;
  (void)gpio_num;

  BaseType_t xHigherPriorityTaskWoken = pdFALSE;
  xEventGroupSetBitsFromISR(g_event_group, EVENT_BIT_POT, &xHigherPriorityTaskWoken);
  if (xHigherPriorityTaskWoken == pdTRUE)
    portYIELD_FROM_ISR();
}
#endif  // UNI_ENABLE_POT

static void handle_event_button() {
  // FIXME: Debouncer might fail when releasing the button. Implement something like this one:
  // https://hackaday.com/2015/12/10/embed-with-elliot-debounce-your-noisy-buttons-part-ii/
  const int64_t button_threshold_time_us = 300 * 1000;  // 300ms
  static int enabled = 0;

  // Regardless of the state, ignore the event if not enough time passed.
  int64_t now = esp_timer_get_time();
  if ((now - g_last_time_pressed_us) < button_threshold_time_us)
    return;

  g_last_time_pressed_us = now;

  // "up" button is released. Ignore event.
  if (gpio_get_level(GPIO_PUSH_BUTTON)) {
    return;
  }

  // "down", button pressed.
  logi("handle_event_button: %d -> %d\n", enabled, !enabled);
  enabled = !enabled;
  uni_hid_device_on_emu_mode_change();
}
