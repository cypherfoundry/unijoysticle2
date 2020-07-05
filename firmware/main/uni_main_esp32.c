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

#include "btstack_port_esp32.h"
#include "btstack_run_loop.h"
#include "hci_dump.h"

#include <stddef.h>

extern int btstack_main(int argc, const char* argv[]);

int app_main(void) {

  //hci_dump_open(NULL, HCI_DUMP_STDOUT);

  // Configure BTstack for ESP32 VHCI Controller
  btstack_init();

  // Setup example
  btstack_main(0, NULL);

  // Enter run loop (forever)
  btstack_run_loop_execute();

  return 0;
}
