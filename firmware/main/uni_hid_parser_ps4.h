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

#ifndef UNI_HID_PARSER_PS4_H
#define UNI_HID_PARSER_PS4_H

#include <stdint.h>

#include "btstack.h"

#include "uni_gamepad.h"
#include "uni_hid_parser.h"

// For PS4 gamepads
void uni_hid_parser_ps4_init(uni_gamepad_t* gp);
void uni_hid_parser_ps4_parse_usage(uni_gamepad_t* gp, hid_globals_t* globals,
                                    uint16_t usage_page, uint16_t usage,
                                    int32_t value);

#endif  // UNI_HID_PARSER_PS4_H