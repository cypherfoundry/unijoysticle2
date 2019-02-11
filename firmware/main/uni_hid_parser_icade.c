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

#include "uni_hid_parser_icade.h"

#include "uni_debug.h"

/*
 *   ↑      A C Y L
 *  ← →
 *   ↓      B X Z R
 *
 *
 *  UP ON,OFF  = w,e
 *  RT ON,OFF  = d,c
 *  DN ON,OFF  = x,z
 *  LT ON,OFF  = a,q
 *  A  ON,OFF  = y,t        : Mapped to Button 0
 *  B  ON,OFF  = h,r        : Mapped to Button 1
 *  C  ON,OFF  = u,f        : Mapped to Button 2
 *  X  ON,OFF  = j,n        : Mapped to Button 3
 *  Y  ON,OFF  = i,m        : unmapped
 *  Z  ON,OFF  = k,p        : unmapped
 *  L  ON,OFF  = o,g        : Mapped to "Menu" button
 *  R  ON,OFF  = l,v        : unmapped
 */

void uni_hid_parser_icade_init(uni_gamepad_t* gamepad) {
    UNUSED(gamepad);
    // Don't do anything, like reseting the gamepad->updated_states,
    // since each report is a "delta", and doesn't include a full state.
}

void uni_hid_parser_icade_parse_usage(uni_gamepad_t* gamepad, hid_globals_t* globals, uint16_t usage_page, uint16_t usage, int32_t value) {
    UNUSED(globals);
    switch (usage_page) {
    case 0x07:          // Keypad / Keyboard
        switch (usage) {
        case 0x00:      // reserved. ignore
        case 0xe0:      // from 0xe0 - 0xe7: ignore
        case 0xe1:
        case 0xe2:
        case 0xe3:
        case 0xe4:
        case 0xe5:
        case 0xe6:
        case 0xe7:
            break;
        case 0x1a:      // w (up on)
            gamepad->dpad |= DPAD_UP;
            gamepad->updated_states |= GAMEPAD_STATE_DPAD;
            break;
        case 0x08:      // e (up off)
            gamepad->dpad &= ~DPAD_UP;
            gamepad->updated_states |= GAMEPAD_STATE_DPAD;
            break;
        case 0x07:      // d (right on)
            gamepad->dpad |= DPAD_RIGHT;
            gamepad->updated_states |= GAMEPAD_STATE_DPAD;
            break;
        case 0x06:      // c (right off)
            gamepad->dpad &= ~DPAD_RIGHT;
            gamepad->updated_states |= GAMEPAD_STATE_DPAD;
            break;
        case 0x1b:      // x (down on)
            gamepad->dpad |= DPAD_DOWN;
            gamepad->updated_states |= GAMEPAD_STATE_DPAD;
            break;
        case 0x1d:      // z (down off)
            gamepad->dpad &= ~DPAD_DOWN;
            gamepad->updated_states |= GAMEPAD_STATE_DPAD;
            break;
        case 0x04:      // a (left on)
            gamepad->dpad |= DPAD_LEFT;
            gamepad->updated_states |= GAMEPAD_STATE_DPAD;
            break;
        case 0x14:      // q (left off)
            gamepad->dpad &= ~DPAD_LEFT;
            gamepad->updated_states |= GAMEPAD_STATE_DPAD;
            break;
        case 0x1c:      // y (button A: on)
            gamepad->buttons |= (1 << 0);
            gamepad->updated_states |= GAMEPAD_STATE_BUTTON0;
            break;
        case 0x17:      // t (button A: off)
            gamepad->buttons &= ~(1 << 0);
            gamepad->updated_states |= GAMEPAD_STATE_BUTTON0;
            break;
        case 0x0b:      // h (button B: on)
            gamepad->buttons |= (1 << 1);
            gamepad->updated_states |= GAMEPAD_STATE_BUTTON1;
            break;
        case 0x15:      // r (button B: off)
            gamepad->buttons &= ~(1 << 1);
            gamepad->updated_states |= GAMEPAD_STATE_BUTTON1;
            break;
        case 0x18:      // u (button C: on)
            gamepad->buttons |= (1 << 2);
            gamepad->updated_states |= GAMEPAD_STATE_BUTTON2;
            break;
        case 0x09:      // f (button C: off)
            gamepad->buttons &= ~(1 << 2);
            gamepad->updated_states |= GAMEPAD_STATE_BUTTON2;
            break;
        case 0x0d:      // j (button X: on)
            gamepad->buttons |= (1 << 3);
            gamepad->updated_states |= GAMEPAD_STATE_BUTTON3;
            break;
        case 0x11:      // n (button X: off)
            gamepad->buttons &= ~(1 << 3);
            gamepad->updated_states |= GAMEPAD_STATE_BUTTON3;
            break;
        case 0x12:      // o (button L: on)
            gamepad->misc_buttons |= MISC_AC_HOME;
            gamepad->updated_states |= GAMEPAD_STATE_BUTTON_MISC_HOME;
            break;
        case 0x0a:      // g (button L: off)
            gamepad->misc_buttons &= ~MISC_AC_HOME;
            gamepad->updated_states |= GAMEPAD_STATE_BUTTON_MISC_HOME;            
            break;
        default:
            logi("Unsupported page: 0x%04x, usage: 0x%04x, value=0x%x\n", usage_page, usage, value);
            break;
        }
    }
}