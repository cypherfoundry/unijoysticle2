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

#include "uni_bt_main.h"

#include "gpio_joy.h"
#include "uni_hid_device.h"

int btstack_main(int argc, const char** argv);

// Main. Called by BlueKitchen bluetooth stack
int btstack_main(int argc, const char** argv) {
  UNUSED(argc);
  UNUSED(argv);

  // Honoring with BT copyright + adding own message to avoid confusion
  printf("Unijoysticle (C) 2016-2019 Ricardo Quesada and contributors.\n");
  printf("Bluetooth stack: Copyright (C) 2017 BlueKitchen GmbH.\n");
  printf("Firmware version: v0.0.1\n");

  gpio_joy_init();
  uni_hid_device_init();

  // Continue with bluetooth setup.
  uni_bt_main();

  return 0;
}