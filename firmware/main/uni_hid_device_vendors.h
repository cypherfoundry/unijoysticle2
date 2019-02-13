/*
  Copyright (C) Valve Corporation

  This software is provided 'as-is', without any express or implied
  warranty.  In no event will the authors be held liable for any damages
  arising from the use of this software.

  Permission is granted to anyone to use this software for any purpose,
  including commercial applications, and to alter it and redistribute it
  freely, subject to the following restrictions:

  1. The origin of this software must not be misrepresented; you must not
     claim that you wrote the original software. If you use this software
     in a product, an acknowledgment in the product documentation would be
     appreciated but is not required.
  2. Altered source versions must be plainly marked as such, and must not be
     misrepresented as being the original software.
  3. This notice may not be removed or altered from any source distribution.
*/

// Based on libsdl "controller_type.h" file.
// http://hg.libsdl.org/SDL/file/8feb5da6f2fb/src/joystick/controller_type.h

#ifndef UNI_HID_DEVICE_VENDORS_H
#define UNI_HID_DEVICE_VENDORS_H

#include <stdint.h>

typedef enum {
  CONTROLLER_TYPE_None = -1,
  CONTROLLER_TYPE_Unknown = 0,

  // Steam Controllers
  CONTROLLER_TYPE_UnknownSteamController = 1,
  CONTROLLER_TYPE_SteamController = 2,
  CONTROLLER_TYPE_SteamControllerV2 = 3,

  // Other Controllers
  CONTROLLER_TYPE_UnknownNonSteamController = 30,
  CONTROLLER_TYPE_XBox360Controller = 31,
  CONTROLLER_TYPE_XBoxOneController = 32,
  CONTROLLER_TYPE_PS3Controller = 33,
  CONTROLLER_TYPE_PS4Controller = 34,
  CONTROLLER_TYPE_WiiController = 35,
  CONTROLLER_TYPE_AppleController = 36,
  CONTROLLER_TYPE_AndroidController = 37,
  CONTROLLER_TYPE_SwitchProController = 38,
  CONTROLLER_TYPE_SwitchJoyConLeft = 39,
  CONTROLLER_TYPE_SwitchJoyConRight = 40,
  CONTROLLER_TYPE_SwitchJoyConPair = 41,
  CONTROLLER_TYPE_SwitchInputOnlyController = 42,
  CONTROLLER_TYPE_MobileTouch = 43,
  CONTROLLER_TYPE_OUYAController = 44,           // (Unijoysticle)
  CONTROLLER_TYPE_iCadeController = 45,          // (Unijoysticle)
  CONTROLLER_TYPE_SmartTVRemoteController = 46,  // (Unijoysticle)

  CONTROLLER_TYPE_LastController,  // Don't add game controllers below this
                                   // enumeration
  // this enumeration can change value

  // Keyboards and Mice
  CONTROLLER_TYPE_GenericKeyboard = 400,
  CONTROLLER_TYPE_GenericMouse = 800,
} uni_controller_type_t;

#define MAKE_CONTROLLER_ID(nVID, nPID) (uint32_t)(nVID << 16 | nPID)
typedef struct {
  uint32_t device_id;
  uni_controller_type_t controller_type;
} uni_controlelr_description_t;

// clang-format off
static const uni_controlelr_description_t arrControllers[] = {
    {MAKE_CONTROLLER_ID(0x0079, 0x18d4), CONTROLLER_TYPE_XBox360Controller},  // GPD Win 2 X-Box Controller
    {MAKE_CONTROLLER_ID(0x044f, 0xb326), CONTROLLER_TYPE_XBox360Controller},  // Thrustmaster Gamepad GP XID
    {MAKE_CONTROLLER_ID(0x045e, 0x028e), CONTROLLER_TYPE_XBox360Controller},  // Microsoft X-Box 360 pad
    {MAKE_CONTROLLER_ID(0x045e, 0x028f), CONTROLLER_TYPE_XBox360Controller},  // Microsoft X-Box 360 pad v2
    {MAKE_CONTROLLER_ID(0x045e, 0x0291), CONTROLLER_TYPE_XBox360Controller},  // Xbox 360 Wireless Receiver (XBOX)
    {MAKE_CONTROLLER_ID(0x045e, 0x02a0), CONTROLLER_TYPE_XBox360Controller},  // Microsoft X-Box 360 Big Button IR
    {MAKE_CONTROLLER_ID(0x045e, 0x02a1), CONTROLLER_TYPE_XBox360Controller},  // Microsoft X-Box 360 pad
    {MAKE_CONTROLLER_ID(0x045e, 0x02d1), CONTROLLER_TYPE_XBoxOneController},  // Microsoft X-Box One pad
    {MAKE_CONTROLLER_ID(0x045e, 0x02dd), CONTROLLER_TYPE_XBoxOneController},  // Microsoft X-Box One pad (Firmware 2015)
    {MAKE_CONTROLLER_ID(0x045e, 0x02e0), CONTROLLER_TYPE_XBoxOneController},  // Microsoft X-Box One S pad (Bluetooth)
    {MAKE_CONTROLLER_ID(0x045e, 0x02e3), CONTROLLER_TYPE_XBoxOneController},  // Microsoft X-Box One Elite pad
    {MAKE_CONTROLLER_ID(0x045e, 0x02ea), CONTROLLER_TYPE_XBoxOneController},  // Microsoft X-Box One S pad
    {MAKE_CONTROLLER_ID(0x045e, 0x02fd), CONTROLLER_TYPE_XBoxOneController},  // Microsoft X-Box One S pad (Bluetooth)
    {MAKE_CONTROLLER_ID(0x045e, 0x02ff), CONTROLLER_TYPE_XBoxOneController},  // Microsoft X-Box One Elite pad
    {MAKE_CONTROLLER_ID(0x045e, 0x0719), CONTROLLER_TYPE_XBox360Controller},  // Xbox 360 Wireless Receiver
    {MAKE_CONTROLLER_ID(0x046d, 0xc21d), CONTROLLER_TYPE_XBox360Controller},  // Logitech Gamepad F310
    {MAKE_CONTROLLER_ID(0x046d, 0xc21e), CONTROLLER_TYPE_XBox360Controller},  // Logitech Gamepad F510
    {MAKE_CONTROLLER_ID(0x046d, 0xc21f), CONTROLLER_TYPE_XBox360Controller},  // Logitech Gamepad F710
    {MAKE_CONTROLLER_ID(0x046d, 0xc242), CONTROLLER_TYPE_XBox360Controller},  // Logitech Chillstream Controller

    {MAKE_CONTROLLER_ID(0x054c, 0x0268), CONTROLLER_TYPE_PS3Controller},  // Sony PS3 Controller
    {MAKE_CONTROLLER_ID(0x0925, 0x0005), CONTROLLER_TYPE_PS3Controller},  // Sony PS3 Controller
    {MAKE_CONTROLLER_ID(0x8888, 0x0308), CONTROLLER_TYPE_PS3Controller},  // Sony PS3 Controller
    {MAKE_CONTROLLER_ID(0x1a34, 0x0836), CONTROLLER_TYPE_PS3Controller},  // Afterglow ps3
    {MAKE_CONTROLLER_ID(0x0f0d, 0x006e), CONTROLLER_TYPE_PS3Controller},  // HORI horipad4 ps3
    {MAKE_CONTROLLER_ID(0x0f0d, 0x0066), CONTROLLER_TYPE_PS3Controller},  // HORI horipad4 ps4
    {MAKE_CONTROLLER_ID(0x0f0d, 0x005f), CONTROLLER_TYPE_PS3Controller},  // HORI Fighting commander ps3
    {MAKE_CONTROLLER_ID(0x0f0d, 0x005e), CONTROLLER_TYPE_PS3Controller},  // HORI Fighting commander ps4
    //{MAKE_CONTROLLER_ID(0x0738, 0x3250), CONTROLLER_TYPE_PS3Controller}, // madcats fightpad pro ps3 already in ps4 list.. does this work??
    {MAKE_CONTROLLER_ID(0x0738, 0x8250), CONTROLLER_TYPE_PS3Controller},  // madcats fightpad pro ps4
    {MAKE_CONTROLLER_ID(0x0079, 0x181a), CONTROLLER_TYPE_PS3Controller},  // Venom Arcade Stick
    {MAKE_CONTROLLER_ID(0x0079, 0x0006), CONTROLLER_TYPE_PS3Controller},  // PC Twin Shock Controller - looks like a DS3 but the face buttons are 1-4 instead of symbols
    {MAKE_CONTROLLER_ID(0x0079, 0x1844), CONTROLLER_TYPE_PS3Controller},  // From SDL
    {MAKE_CONTROLLER_ID(0x8888, 0x0308), CONTROLLER_TYPE_PS3Controller},  // From SDL
    {MAKE_CONTROLLER_ID(0x2563, 0x0575), CONTROLLER_TYPE_PS3Controller},  // From SDL
    {MAKE_CONTROLLER_ID(0x0810, 0x0001), CONTROLLER_TYPE_PS3Controller},  // actually ps2 - maybe break out later
    {MAKE_CONTROLLER_ID(0x0810, 0x0003), CONTROLLER_TYPE_PS3Controller},  // actually ps2 - maybe break out later
    {MAKE_CONTROLLER_ID(0x2563, 0x0523), CONTROLLER_TYPE_PS3Controller},  // Digiflip GP006
    {MAKE_CONTROLLER_ID(0x11ff, 0x3331), CONTROLLER_TYPE_PS3Controller},  // SRXJ-PH2400
    {MAKE_CONTROLLER_ID(0x20bc, 0x5500), CONTROLLER_TYPE_PS3Controller},  // ShanWan PS3
    {MAKE_CONTROLLER_ID(0x05b8, 0x1004), CONTROLLER_TYPE_PS3Controller},  // From SDL
    {MAKE_CONTROLLER_ID(0x146b, 0x0603), CONTROLLER_TYPE_PS3Controller},  // From SDL
    {MAKE_CONTROLLER_ID(0x044f, 0xb315), CONTROLLER_TYPE_PS3Controller},  // Firestorm Dual Analog 3
    {MAKE_CONTROLLER_ID(0x0925, 0x8888), CONTROLLER_TYPE_PS3Controller},  // Actually ps2 -maybe break out later Lakeview Research WiseGroup Ltd, MP-8866 Dual Joypad
    {MAKE_CONTROLLER_ID(0x0f0d, 0x004d), CONTROLLER_TYPE_PS3Controller},  // Horipad 3
    {MAKE_CONTROLLER_ID(0x0f0d, 0x0009), CONTROLLER_TYPE_PS3Controller},  // HORI BDA GP1
    {MAKE_CONTROLLER_ID(0x0e8f, 0x0008), CONTROLLER_TYPE_PS3Controller},  // Green Asia
    {MAKE_CONTROLLER_ID(0x0f0d, 0x006a), CONTROLLER_TYPE_PS3Controller},  // Real Arcade Pro 4
    {MAKE_CONTROLLER_ID(0x0e6f, 0x011e), CONTROLLER_TYPE_PS3Controller},  // Rock Candy PS4
    {MAKE_CONTROLLER_ID(0x0e6f, 0x0214), CONTROLLER_TYPE_PS3Controller},  // afterglow ps3
    {MAKE_CONTROLLER_ID(0x0925, 0x8866), CONTROLLER_TYPE_PS3Controller},  // PS2 maybe break out later
    {MAKE_CONTROLLER_ID(0x0e8f, 0x310d), CONTROLLER_TYPE_PS3Controller},  // From SDL
    {MAKE_CONTROLLER_ID(0x2c22, 0x2003), CONTROLLER_TYPE_PS3Controller},  // From SDL
    {MAKE_CONTROLLER_ID(0x056e, 0x2013), CONTROLLER_TYPE_PS3Controller},  // JC-U4113SBK
    {MAKE_CONTROLLER_ID(0x0738, 0x8838), CONTROLLER_TYPE_PS3Controller},  // Madcatz Fightstick Pro
    {MAKE_CONTROLLER_ID(0x1a34, 0x0836), CONTROLLER_TYPE_PS3Controller},  // Afterglow PS3
    {MAKE_CONTROLLER_ID(0x0f30, 0x1100), CONTROLLER_TYPE_PS3Controller},  // Quanba Q1 fight stick
    {MAKE_CONTROLLER_ID(0x1345, 0x6005), CONTROLLER_TYPE_PS3Controller},  // ps2 maybe break out later
    {MAKE_CONTROLLER_ID(0x0f0d, 0x0087), CONTROLLER_TYPE_PS3Controller},  // HORI fighting mini stick
    {MAKE_CONTROLLER_ID(0x146b, 0x5500), CONTROLLER_TYPE_PS3Controller},  // From SDL
    {MAKE_CONTROLLER_ID(0x20d6, 0xca6d), CONTROLLER_TYPE_PS3Controller},  // From SDL
    {MAKE_CONTROLLER_ID(0x25f0, 0xc121), CONTROLLER_TYPE_PS3Controller},  //
    {MAKE_CONTROLLER_ID(0x8380, 0x0003), CONTROLLER_TYPE_PS3Controller},  // BTP 2163
    {MAKE_CONTROLLER_ID(0x1345, 0x1000), CONTROLLER_TYPE_PS3Controller},  // PS2 ACME GA-D5
    {MAKE_CONTROLLER_ID(0x0e8f, 0x3075), CONTROLLER_TYPE_PS3Controller},  // SpeedLink Strike FX
    {MAKE_CONTROLLER_ID(0x0e6f, 0x0128), CONTROLLER_TYPE_PS3Controller},  // Rock Candy PS3
    {MAKE_CONTROLLER_ID(0x2c22, 0x2000), CONTROLLER_TYPE_PS3Controller},  // Quanba Drone
    {MAKE_CONTROLLER_ID(0x06a3, 0xf622), CONTROLLER_TYPE_PS3Controller},  // Cyborg V3
    {MAKE_CONTROLLER_ID(0x044f, 0xd007), CONTROLLER_TYPE_PS3Controller},  // Thrustmaster wireless 3-1
    {MAKE_CONTROLLER_ID(0x25f0, 0x83c3), CONTROLLER_TYPE_PS3Controller},  // gioteck vx2
    {MAKE_CONTROLLER_ID(0x05b8, 0x1006), CONTROLLER_TYPE_PS3Controller},  // JC-U3412SBK
    {MAKE_CONTROLLER_ID(0x20d6, 0x576d), CONTROLLER_TYPE_PS3Controller},  // Power A PS3
    {MAKE_CONTROLLER_ID(0x0e6f, 0x6302), CONTROLLER_TYPE_PS3Controller},  // From SDL
    {MAKE_CONTROLLER_ID(0x056e, 0x200f), CONTROLLER_TYPE_PS3Controller},  // From SDL
    {MAKE_CONTROLLER_ID(0x0e6f, 0x1314), CONTROLLER_TYPE_PS3Controller},  // PDP Afterglow Wireless PS3 controller

    {MAKE_CONTROLLER_ID(0x054c, 0x05c4), CONTROLLER_TYPE_PS4Controller},  // Sony PS4 Controller
    {MAKE_CONTROLLER_ID(0x054c, 0x09cc), CONTROLLER_TYPE_PS4Controller},  // Sony PS4 Slim Controller
    {MAKE_CONTROLLER_ID(0x054c, 0x0ba0), CONTROLLER_TYPE_PS4Controller},  // Sony PS4 Controller (Wireless dongle)
    {MAKE_CONTROLLER_ID(0x0f0d, 0x008a), CONTROLLER_TYPE_PS4Controller},  // HORI Real Arcade Pro 4
    {MAKE_CONTROLLER_ID(0x0f0d, 0x0055), CONTROLLER_TYPE_PS4Controller},  // HORIPAD 4 FPS
    {MAKE_CONTROLLER_ID(0x0f0d, 0x0066), CONTROLLER_TYPE_PS4Controller},  // HORIPAD 4 FPS Plus
    {MAKE_CONTROLLER_ID(0x0738, 0x8384), CONTROLLER_TYPE_PS4Controller},  // Mad Catz FightStick TE S+ PS4
    {MAKE_CONTROLLER_ID(0x0738, 0x8250), CONTROLLER_TYPE_PS4Controller},  // Mad Catz FightPad Pro PS4
    {MAKE_CONTROLLER_ID(0x0C12, 0x0E10), CONTROLLER_TYPE_PS4Controller},  // Armor Armor 3 Pad PS4
    {MAKE_CONTROLLER_ID(0x0C12, 0x1CF6), CONTROLLER_TYPE_PS4Controller},  // EMIO PS4 Elite Controller
    {MAKE_CONTROLLER_ID(0x1532, 0x1000), CONTROLLER_TYPE_PS4Controller},  // Razer Raiju PS4 Controller
    {MAKE_CONTROLLER_ID(0x1532, 0X0401), CONTROLLER_TYPE_PS4Controller},  // Razer Panthera PS4 Controller
    {MAKE_CONTROLLER_ID(0x054c, 0x05c5), CONTROLLER_TYPE_PS4Controller},  // STRIKEPAD PS4 Grip Add-on
    {MAKE_CONTROLLER_ID(0x146b, 0x0d01), CONTROLLER_TYPE_PS4Controller},  // Nacon Revolution Pro Controller - has gyro
    {MAKE_CONTROLLER_ID(0x146b, 0x0d02), CONTROLLER_TYPE_PS4Controller},  // Nacon Revolution Pro Controller v2 - has gyro
    {MAKE_CONTROLLER_ID(0x0f0d, 0x00a0), CONTROLLER_TYPE_PS4Controller},  // HORI TAC4 mousething
    {MAKE_CONTROLLER_ID(0x0f0d, 0x009c), CONTROLLER_TYPE_PS4Controller},  // HORI TAC PRO mousething
    {MAKE_CONTROLLER_ID(0x0c12, 0x0ef6), CONTROLLER_TYPE_PS4Controller},  // Hitbox Arcade Stick
    {MAKE_CONTROLLER_ID(0x0079, 0x181b), CONTROLLER_TYPE_PS4Controller},  // Venom Arcade Stick - XXX:this may not work and may need to be called a ps3 controller
    {MAKE_CONTROLLER_ID(0x0738, 0x3250), CONTROLLER_TYPE_PS4Controller},  // Mad Catz FightPad PRO - controller shaped with 6 face buttons
    {MAKE_CONTROLLER_ID(0x0f0d, 0x00ee), CONTROLLER_TYPE_PS4Controller},  // Hori mini wired https://www.playstation.com/en-us/explore/accessories/gaming-controllers/mini-wired-gamepad/
    {MAKE_CONTROLLER_ID(0x0738, 0x8481), CONTROLLER_TYPE_PS4Controller},  // Mad Catz FightStick TE 2+ PS4
    {MAKE_CONTROLLER_ID(0x0738, 0x8480), CONTROLLER_TYPE_PS4Controller},  // Mad Catz FightStick TE 2 PS4
    {MAKE_CONTROLLER_ID(0x7545, 0x0104), CONTROLLER_TYPE_PS4Controller},  // Armor 3 or Level Up Cobra - At least one variant has gyro
    {MAKE_CONTROLLER_ID(0x0c12, 0x0e15), CONTROLLER_TYPE_PS4Controller},  // Game:Pad 4
    {MAKE_CONTROLLER_ID(0x11c0, 0x4001), CONTROLLER_TYPE_PS4Controller},  // "PS4 Fun Controller" added from user log
    {MAKE_CONTROLLER_ID(0x1532, 0x1007), CONTROLLER_TYPE_PS4Controller},  // Razer Raiju 2 Tournament edition USB - untested and added for razer
    {MAKE_CONTROLLER_ID(0x1532, 0x100A), CONTROLLER_TYPE_PS4Controller},  // Razer Raiju 2 Tournament edition BT - untested and added for razer
    {MAKE_CONTROLLER_ID(0x1532, 0x1004), CONTROLLER_TYPE_PS4Controller},  // Razer Raiju 2 Ultimate USB - untested and added for razer
    {MAKE_CONTROLLER_ID(0x1532, 0x1009), CONTROLLER_TYPE_PS4Controller},  // Razer Raiju 2 Ultimate BT - untested and added for razer
    {MAKE_CONTROLLER_ID(0x1532, 0x1008), CONTROLLER_TYPE_PS4Controller},  // Razer Panthera Evo Fightstick - untested and added for razer

    {MAKE_CONTROLLER_ID(0x056e, 0x2004), CONTROLLER_TYPE_XBox360Controller},  // Elecom JC-U3613M
    {MAKE_CONTROLLER_ID(0x06a3, 0xf51a), CONTROLLER_TYPE_XBox360Controller},  // Saitek P3600
    {MAKE_CONTROLLER_ID(0x0738, 0x4716), CONTROLLER_TYPE_XBox360Controller},  // Mad Catz Wired Xbox 360 Controller
    {MAKE_CONTROLLER_ID(0x0738, 0x4718), CONTROLLER_TYPE_XBox360Controller},  // Mad Catz Street Fighter IV  FightStick SE
    {MAKE_CONTROLLER_ID(0x0738, 0x4726), CONTROLLER_TYPE_XBox360Controller},  // Mad Catz Xbox 360 Controller
    {MAKE_CONTROLLER_ID(0x0738, 0x4728), CONTROLLER_TYPE_XBox360Controller},  // Mad Catz Street Fighter IV FightPad
    {MAKE_CONTROLLER_ID(0x0738, 0x4736), CONTROLLER_TYPE_XBox360Controller},  // Mad Catz MicroCon Gamepad
    {MAKE_CONTROLLER_ID(0x0738, 0x4738), CONTROLLER_TYPE_XBox360Controller},  // Mad Catz Wired Xbox 360 Controller (SFIV)
    {MAKE_CONTROLLER_ID(0x0738, 0x4740), CONTROLLER_TYPE_XBox360Controller},  // Mad Catz Beat Pad
    {MAKE_CONTROLLER_ID(0x0738, 0x4a01), CONTROLLER_TYPE_XBoxOneController},  // Mad Catz FightStick TE 2
    {MAKE_CONTROLLER_ID(0x0738, 0xb726), CONTROLLER_TYPE_XBox360Controller},  // Mad Catz Xbox controller - MW2
    {MAKE_CONTROLLER_ID(0x0738, 0xbeef), CONTROLLER_TYPE_XBox360Controller},  // Mad Catz JOYTECH NEO SE Advanced GamePad
    {MAKE_CONTROLLER_ID(0x0738, 0xcb02), CONTROLLER_TYPE_XBox360Controller},  // Saitek Cyborg Rumble Pad - PC/Xbox 360
    {MAKE_CONTROLLER_ID(0x0738, 0xcb03), CONTROLLER_TYPE_XBox360Controller},  // Saitek P3200 Rumble Pad - PC/Xbox 360
    {MAKE_CONTROLLER_ID(0x0738, 0xf738), CONTROLLER_TYPE_XBox360Controller},  // Super SFIV FightStick TE S
    {MAKE_CONTROLLER_ID(0x0955, 0xb400), CONTROLLER_TYPE_XBox360Controller},  // NVIDIA Shield streaming controller
    {MAKE_CONTROLLER_ID(0x0e6f, 0x0105), CONTROLLER_TYPE_XBox360Controller},  // HSM3 Xbox360 dancepad
    {MAKE_CONTROLLER_ID(0x0e6f, 0x0113), CONTROLLER_TYPE_XBox360Controller},  // Afterglow AX.1 Gamepad for Xbox 360
    {MAKE_CONTROLLER_ID(0x0e6f, 0x011f), CONTROLLER_TYPE_XBox360Controller},  // Rock Candy Gamepad Wired Controller
    {MAKE_CONTROLLER_ID(0x0e6f, 0x0131), CONTROLLER_TYPE_XBox360Controller},  // PDP EA Sports Controller
    {MAKE_CONTROLLER_ID(0x0e6f, 0x0133), CONTROLLER_TYPE_XBox360Controller},  // Xbox 360 Wired Controller
    {MAKE_CONTROLLER_ID(0x0e6f, 0x0139), CONTROLLER_TYPE_XBoxOneController},  // Afterglow Prismatic Wired Controller
    {MAKE_CONTROLLER_ID(0x0e6f, 0x013a), CONTROLLER_TYPE_XBoxOneController},  // PDP Xbox One Controller
    {MAKE_CONTROLLER_ID(0x0e6f, 0x0146), CONTROLLER_TYPE_XBoxOneController},  // Rock Candy Wired Controller for box One
    {MAKE_CONTROLLER_ID(0x0e6f, 0x0147), CONTROLLER_TYPE_XBoxOneController},  // PDP Marvel Xbox One Controller
    {MAKE_CONTROLLER_ID(0x0e6f, 0x015c), CONTROLLER_TYPE_XBoxOneController},  // PDP Xbox One Arcade Stick
    {MAKE_CONTROLLER_ID(0x0e6f, 0x0161), CONTROLLER_TYPE_XBoxOneController},  // PDP Xbox One Controller
    {MAKE_CONTROLLER_ID(0x0e6f, 0x0162), CONTROLLER_TYPE_XBoxOneController},  // PDP Xbox One Controller
    {MAKE_CONTROLLER_ID(0x0e6f, 0x0163), CONTROLLER_TYPE_XBoxOneController},  // PDP Xbox One Controller
    {MAKE_CONTROLLER_ID(0x0e6f, 0x0164), CONTROLLER_TYPE_XBoxOneController},  // PDP Battlefield One
    {MAKE_CONTROLLER_ID(0x0e6f, 0x0165), CONTROLLER_TYPE_XBoxOneController},  // PDP Titanfall 2
    {MAKE_CONTROLLER_ID(0x0e6f, 0x0201), CONTROLLER_TYPE_XBox360Controller},  // Pelican PL-3601 'TSZ' Wired Xbox 360 Controller
    {MAKE_CONTROLLER_ID(0x0e6f, 0x0213), CONTROLLER_TYPE_XBox360Controller},  // Afterglow Gamepad for Xbox 360
    {MAKE_CONTROLLER_ID(0x0e6f, 0x021f), CONTROLLER_TYPE_XBox360Controller},  // Rock Candy Gamepad for Xbox 360
    {MAKE_CONTROLLER_ID(0x0e6f, 0x0246), CONTROLLER_TYPE_XBoxOneController},  // Rock Candy Gamepad for Xbox One 2015
    {MAKE_CONTROLLER_ID(0x0e6f, 0x02a0), CONTROLLER_TYPE_XBox360Controller},  // Counterfeit 360Controller
    {MAKE_CONTROLLER_ID(0x0e6f, 0x0301), CONTROLLER_TYPE_XBox360Controller},  // Logic3 Controller
    {MAKE_CONTROLLER_ID(0x0e6f, 0x0346), CONTROLLER_TYPE_XBoxOneController},  // Rock Candy Gamepad for Xbox One 2016
    {MAKE_CONTROLLER_ID(0x0e6f, 0x0401), CONTROLLER_TYPE_XBox360Controller},  // Logic3 Controller
    {MAKE_CONTROLLER_ID(0x0e6f, 0x0413), CONTROLLER_TYPE_XBox360Controller},  // Afterglow AX.1 Gamepad for Xbox 360
    {MAKE_CONTROLLER_ID(0x0e6f, 0x0501), CONTROLLER_TYPE_XBox360Controller},  // PDP Xbox 360 Controller
    {MAKE_CONTROLLER_ID(0x0e6f, 0xf501), CONTROLLER_TYPE_XBox360Controller},  // Counterfeit 360 Controller
    {MAKE_CONTROLLER_ID(0x0e6f, 0xf900), CONTROLLER_TYPE_XBox360Controller},  // PDP Afterglow AX.1
    {MAKE_CONTROLLER_ID(0x0f0d, 0x000a), CONTROLLER_TYPE_XBox360Controller},  // Hori Co. DOA4 FightStick
    {MAKE_CONTROLLER_ID(0x0f0d, 0x000c), CONTROLLER_TYPE_XBox360Controller},  // Hori PadEX Turbo
    {MAKE_CONTROLLER_ID(0x0f0d, 0x000d), CONTROLLER_TYPE_XBox360Controller},  // Hori Fighting Stick EX2
    {MAKE_CONTROLLER_ID(0x0f0d, 0x0016), CONTROLLER_TYPE_XBox360Controller},  // Hori Real Arcade Pro.EX
    {MAKE_CONTROLLER_ID(0x0f0d, 0x001b), CONTROLLER_TYPE_XBox360Controller},  // Hori Real Arcade Pro VX
    {MAKE_CONTROLLER_ID(0x0f0d, 0x0063), CONTROLLER_TYPE_XBoxOneController},  // Hori Real Arcade Pro Hayabusa (USA) Xbox One
    {MAKE_CONTROLLER_ID(0x0f0d, 0x0067), CONTROLLER_TYPE_XBoxOneController},  // HORIPAD ONE
    {MAKE_CONTROLLER_ID(0x0f0d, 0x0078), CONTROLLER_TYPE_XBoxOneController},  // Hori Real Arcade Pro V Kai Xbox One
    {MAKE_CONTROLLER_ID(0x0f0d, 0x008c), CONTROLLER_TYPE_XBox360Controller},  // Hori Real Arcade Pro 4
    {MAKE_CONTROLLER_ID(0x11c9, 0x55f0), CONTROLLER_TYPE_XBox360Controller},  // Nacon GC-100XF
    {MAKE_CONTROLLER_ID(0x12ab, 0x0004), CONTROLLER_TYPE_XBox360Controller},  // Honey Bee Xbox360 dancepad
    {MAKE_CONTROLLER_ID(0x12ab, 0x0301), CONTROLLER_TYPE_XBox360Controller},  // PDP AFTERGLOW AX.1
    {MAKE_CONTROLLER_ID(0x12ab, 0x0303), CONTROLLER_TYPE_XBox360Controller},  // Mortal Kombat Klassic FightStick
    {MAKE_CONTROLLER_ID(0x1430, 0x02a0), CONTROLLER_TYPE_XBox360Controller},  // RedOctane Controller Adapter
    {MAKE_CONTROLLER_ID(0x1430, 0x4748), CONTROLLER_TYPE_XBox360Controller},  // RedOctane Guitar Hero X-plorer
    {MAKE_CONTROLLER_ID(0x1430, 0xf801), CONTROLLER_TYPE_XBox360Controller},  // RedOctane Controller
    {MAKE_CONTROLLER_ID(0x146b, 0x0601), CONTROLLER_TYPE_XBox360Controller},  // BigBen Interactive XBOX 360 Controller
    {MAKE_CONTROLLER_ID(0x1532, 0x0037), CONTROLLER_TYPE_XBox360Controller},  // Razer Sabertooth
    {MAKE_CONTROLLER_ID(0x1532, 0x0a00), CONTROLLER_TYPE_XBoxOneController},  // Razer Atrox Arcade Stick
    {MAKE_CONTROLLER_ID(0x1532, 0x0a03), CONTROLLER_TYPE_XBoxOneController},  // Razer Wildcat
    {MAKE_CONTROLLER_ID(0x15e4, 0x3f00), CONTROLLER_TYPE_XBox360Controller},  // Power A Mini Pro Elite
    {MAKE_CONTROLLER_ID(0x15e4, 0x3f0a), CONTROLLER_TYPE_XBox360Controller},  // Xbox Airflo wired controller
    {MAKE_CONTROLLER_ID(0x15e4, 0x3f10), CONTROLLER_TYPE_XBox360Controller},  // Batarang Xbox 360 controller
    {MAKE_CONTROLLER_ID(0x162e, 0xbeef), CONTROLLER_TYPE_XBox360Controller},  // Joytech Neo-Se Take2
    {MAKE_CONTROLLER_ID(0x1689, 0xfd00), CONTROLLER_TYPE_XBox360Controller},  // Razer Onza Tournament Edition
    {MAKE_CONTROLLER_ID(0x1689, 0xfd01), CONTROLLER_TYPE_XBox360Controller},  // Razer Onza Classic Edition
    {MAKE_CONTROLLER_ID(0x1689, 0xfe00), CONTROLLER_TYPE_XBox360Controller},  // Razer Sabertooth
    {MAKE_CONTROLLER_ID(0x1bad, 0x0002), CONTROLLER_TYPE_XBox360Controller},  // Harmonix Rock Band Guitar
    {MAKE_CONTROLLER_ID(0x1bad, 0x0003), CONTROLLER_TYPE_XBox360Controller},  // Harmonix Rock Band Drumkit
    {MAKE_CONTROLLER_ID(0x1bad, 0xf016), CONTROLLER_TYPE_XBox360Controller},  // Mad Catz Xbox 360 Controller
    {MAKE_CONTROLLER_ID(0x1bad, 0xf018), CONTROLLER_TYPE_XBox360Controller},  // Mad Catz Street Fighter IV SE Fighting Stick
    {MAKE_CONTROLLER_ID(0x1bad, 0xf019), CONTROLLER_TYPE_XBox360Controller},  // Mad Catz Brawlstick for Xbox 360
    {MAKE_CONTROLLER_ID(0x1bad, 0xf021), CONTROLLER_TYPE_XBox360Controller},  // Mad Cats Ghost Recon FS GamePad
    {MAKE_CONTROLLER_ID(0x1bad, 0xf023), CONTROLLER_TYPE_XBox360Controller},  // MLG Pro Circuit Controller (Xbox)
    {MAKE_CONTROLLER_ID(0x1bad, 0xf025), CONTROLLER_TYPE_XBox360Controller},  // Mad Catz Call Of Duty
    {MAKE_CONTROLLER_ID(0x1bad, 0xf027), CONTROLLER_TYPE_XBox360Controller},  // Mad Catz FPS Pro
    {MAKE_CONTROLLER_ID(0x1bad, 0xf028), CONTROLLER_TYPE_XBox360Controller},  // Street Fighter IV FightPad
    {MAKE_CONTROLLER_ID(0x1bad, 0xf02e), CONTROLLER_TYPE_XBox360Controller},  // Mad Catz Fightpad
    {MAKE_CONTROLLER_ID(0x1bad, 0xf036), CONTROLLER_TYPE_XBox360Controller},  // Mad Catz MicroCon GamePad Pro
    {MAKE_CONTROLLER_ID(0x1bad, 0xf038), CONTROLLER_TYPE_XBox360Controller},  // Street Fighter IV FightStick TE
    {MAKE_CONTROLLER_ID(0x1bad, 0xf039), CONTROLLER_TYPE_XBox360Controller},  // Mad Catz MvC2 TE
    {MAKE_CONTROLLER_ID(0x1bad, 0xf03a), CONTROLLER_TYPE_XBox360Controller},  // Mad Catz SFxT Fightstick Pro
    {MAKE_CONTROLLER_ID(0x1bad, 0xf03d), CONTROLLER_TYPE_XBox360Controller},  // Street Fighter IV Arcade Stick TE - Chun Li
    {MAKE_CONTROLLER_ID(0x1bad, 0xf03e), CONTROLLER_TYPE_XBox360Controller},  // Mad Catz MLG FightStick TE
    {MAKE_CONTROLLER_ID(0x1bad, 0xf03f), CONTROLLER_TYPE_XBox360Controller},  // Mad Catz FightStick SoulCaliber
    {MAKE_CONTROLLER_ID(0x1bad, 0xf042), CONTROLLER_TYPE_XBox360Controller},  // Mad Catz FightStick TES+
    {MAKE_CONTROLLER_ID(0x1bad, 0xf080), CONTROLLER_TYPE_XBox360Controller},  // Mad Catz FightStick TE2
    {MAKE_CONTROLLER_ID(0x1bad, 0xf501), CONTROLLER_TYPE_XBox360Controller},  // HoriPad EX2 Turbo
    {MAKE_CONTROLLER_ID(0x1bad, 0xf502), CONTROLLER_TYPE_XBox360Controller},  // Hori Real Arcade Pro.VX SA
    {MAKE_CONTROLLER_ID(0x1bad, 0xf503), CONTROLLER_TYPE_XBox360Controller},  // Hori Fighting Stick VX
    {MAKE_CONTROLLER_ID(0x1bad, 0xf504), CONTROLLER_TYPE_XBox360Controller},  // Hori Real Arcade Pro. EX
    {MAKE_CONTROLLER_ID(0x1bad, 0xf505), CONTROLLER_TYPE_XBox360Controller},  // Hori Fighting Stick EX2B
    {MAKE_CONTROLLER_ID(0x1bad, 0xf506), CONTROLLER_TYPE_XBox360Controller},  // Hori Real Arcade Pro.EX Premium VLX
    {MAKE_CONTROLLER_ID(0x1bad, 0xf900), CONTROLLER_TYPE_XBox360Controller},  // Harmonix Xbox 360 Controller
    {MAKE_CONTROLLER_ID(0x1bad, 0xf901), CONTROLLER_TYPE_XBox360Controller},  // Gamestop Xbox 360 Controller
    {MAKE_CONTROLLER_ID(0x1bad, 0xf902), CONTROLLER_TYPE_XBox360Controller},  // Mad Catz Gamepad2
    {MAKE_CONTROLLER_ID(0x1bad, 0xf903), CONTROLLER_TYPE_XBox360Controller},  // Tron Xbox 360 controller
    {MAKE_CONTROLLER_ID(0x1bad, 0xf904), CONTROLLER_TYPE_XBox360Controller},  // PDP Versus Fighting Pad
    {MAKE_CONTROLLER_ID(0x1bad, 0xf906), CONTROLLER_TYPE_XBox360Controller},  // MortalKombat FightStick
    {MAKE_CONTROLLER_ID(0x1bad, 0xfa01), CONTROLLER_TYPE_XBox360Controller},  // MadCatz GamePad
    {MAKE_CONTROLLER_ID(0x1bad, 0xfd00), CONTROLLER_TYPE_XBox360Controller},  // Razer Onza TE
    {MAKE_CONTROLLER_ID(0x1bad, 0xfd01), CONTROLLER_TYPE_XBox360Controller},  // Razer Onza
    {MAKE_CONTROLLER_ID(0x24c6, 0x5000), CONTROLLER_TYPE_XBox360Controller},  // Razer Atrox Arcade Stick
    {MAKE_CONTROLLER_ID(0x24c6, 0x5300), CONTROLLER_TYPE_XBox360Controller},  // PowerA MINI PROEX Controller
    {MAKE_CONTROLLER_ID(0x24c6, 0x5303), CONTROLLER_TYPE_XBox360Controller},  // Xbox Airflo wired controller
    {MAKE_CONTROLLER_ID(0x24c6, 0x530a), CONTROLLER_TYPE_XBox360Controller},  // Xbox 360 Pro EX Controller
    {MAKE_CONTROLLER_ID(0x24c6, 0x531a), CONTROLLER_TYPE_XBox360Controller},  // PowerA Pro Ex
    {MAKE_CONTROLLER_ID(0x24c6, 0x5397), CONTROLLER_TYPE_XBox360Controller},  // FUS1ON Tournament Controller
    {MAKE_CONTROLLER_ID(0x24c6, 0x541a), CONTROLLER_TYPE_XBoxOneController},  // PowerA Xbox One Mini Wired ontroller
    {MAKE_CONTROLLER_ID(0x24c6, 0x542a), CONTROLLER_TYPE_XBoxOneController},  // Xbox ONE spectra
    {MAKE_CONTROLLER_ID(0x24c6, 0x543a), CONTROLLER_TYPE_XBoxOneController},  // PowerA Xbox One wired controller
    {MAKE_CONTROLLER_ID(0x24c6, 0x5500), CONTROLLER_TYPE_XBox360Controller},  // Hori XBOX 360 EX 2 with Turbo
    {MAKE_CONTROLLER_ID(0x24c6, 0x5501), CONTROLLER_TYPE_XBox360Controller},  // Hori Real Arcade Pro VX-SA
    {MAKE_CONTROLLER_ID(0x24c6, 0x5502), CONTROLLER_TYPE_XBox360Controller},  // Hori Fighting Stick VX Alt
    {MAKE_CONTROLLER_ID(0x24c6, 0x5503), CONTROLLER_TYPE_XBox360Controller},  // Hori Fighting Edge
    {MAKE_CONTROLLER_ID(0x24c6, 0x5506), CONTROLLER_TYPE_XBox360Controller},  // Hori SOULCALIBUR V Stick
    {MAKE_CONTROLLER_ID(0x24c6, 0x5510), CONTROLLER_TYPE_XBox360Controller},  // Hori Fighting Commander ONE
    {MAKE_CONTROLLER_ID(0x24c6, 0x550d), CONTROLLER_TYPE_XBox360Controller},  // Hori GEM Xbox controller
    {MAKE_CONTROLLER_ID(0x24c6, 0x550e), CONTROLLER_TYPE_XBox360Controller},  // Hori Real Arcade Pro V Kai 360
    {MAKE_CONTROLLER_ID(0x24c6, 0x551a), CONTROLLER_TYPE_XBoxOneController},  // PowerA FUSION Pro Controller
    {MAKE_CONTROLLER_ID(0x24c6, 0x561a), CONTROLLER_TYPE_XBoxOneController},  // PowerA FUSION Controller
    {MAKE_CONTROLLER_ID(0x24c6, 0x5b00), CONTROLLER_TYPE_XBox360Controller},  // ThrustMaster Ferrari Italia 458 Racing Wheel
    {MAKE_CONTROLLER_ID(0x24c6, 0x5b02), CONTROLLER_TYPE_XBox360Controller},  // Thrustmaster, Inc. GPX Controller
    {MAKE_CONTROLLER_ID(0x24c6, 0x5b03), CONTROLLER_TYPE_XBox360Controller},  // Thrustmaster Ferrari 458 Racing Wheel
    {MAKE_CONTROLLER_ID(0x24c6, 0x5d04), CONTROLLER_TYPE_XBox360Controller},  // Razer Sabertooth
    {MAKE_CONTROLLER_ID(0x24c6, 0xfafa), CONTROLLER_TYPE_XBox360Controller},  // Aplay Controller
    {MAKE_CONTROLLER_ID(0x24c6, 0xfafb), CONTROLLER_TYPE_XBox360Controller},  // Aplay Controller
    {MAKE_CONTROLLER_ID(0x24c6, 0xfafc), CONTROLLER_TYPE_XBox360Controller},  // Afterglow Gamepad 1
    {MAKE_CONTROLLER_ID(0x24c6, 0xfafe), CONTROLLER_TYPE_XBox360Controller},  // Rock Candy Gamepad for Xbox 360
    {MAKE_CONTROLLER_ID(0x24c6, 0xfafd), CONTROLLER_TYPE_XBox360Controller},  // Afterglow Gamepad 3

    // These have been added via Minidump for unrecognized Xinput controller
    // assert
    {MAKE_CONTROLLER_ID(0x0000, 0x0000), CONTROLLER_TYPE_XBox360Controller},  // Unknown Controller
    {MAKE_CONTROLLER_ID(0x045e, 0x02a2), CONTROLLER_TYPE_XBox360Controller},  // Unknown Controller - Microsoft VID
    {MAKE_CONTROLLER_ID(0x0e6f, 0x1414), CONTROLLER_TYPE_XBox360Controller},  // Unknown Controller
    {MAKE_CONTROLLER_ID(0x0e6f, 0x1314), CONTROLLER_TYPE_XBox360Controller},  // Unknown Controller
    {MAKE_CONTROLLER_ID(0x0e6f, 0x0159), CONTROLLER_TYPE_XBox360Controller},  // Unknown Controller
    {MAKE_CONTROLLER_ID(0x24c6, 0xfaff), CONTROLLER_TYPE_XBox360Controller},  // Unknown Controller
    {MAKE_CONTROLLER_ID(0x0f0d, 0x0086), CONTROLLER_TYPE_XBox360Controller},  // Unknown Controller
    {MAKE_CONTROLLER_ID(0x0f0d, 0x006d), CONTROLLER_TYPE_XBox360Controller},  // Unknown Controller
    {MAKE_CONTROLLER_ID(0x0f0d, 0x00a4), CONTROLLER_TYPE_XBox360Controller},  // Unknown Controller
    {MAKE_CONTROLLER_ID(0x0079, 0x1832), CONTROLLER_TYPE_XBox360Controller},  // Unknown Controller
    {MAKE_CONTROLLER_ID(0x0079, 0x187f), CONTROLLER_TYPE_XBox360Controller},  // Unknown Controller
    {MAKE_CONTROLLER_ID(0x0079, 0x1883), CONTROLLER_TYPE_XBox360Controller},  // Unknown Controller
    {MAKE_CONTROLLER_ID(0x03eb, 0xff01), CONTROLLER_TYPE_XBox360Controller},  // Unknown Controller
    {MAKE_CONTROLLER_ID(0x2c22, 0x2303), CONTROLLER_TYPE_XBox360Controller},  // Unknown Controller
    {MAKE_CONTROLLER_ID(0x0c12, 0x0ef8), CONTROLLER_TYPE_XBox360Controller},  // Homemade fightstick based on brook pcb (with XInput driver??)
    {MAKE_CONTROLLER_ID(0x046d, 0x1000), CONTROLLER_TYPE_XBox360Controller},  // Unknown Controller
    {MAKE_CONTROLLER_ID(0x1345, 0x6006), CONTROLLER_TYPE_XBox360Controller},  // Unknown Controller

    {MAKE_CONTROLLER_ID(0x056e, 0x2012), CONTROLLER_TYPE_XBox360Controller},  // Unknown Controller
    {MAKE_CONTROLLER_ID(0x146b, 0x0602), CONTROLLER_TYPE_XBox360Controller},  // Unknown Controller
    {MAKE_CONTROLLER_ID(0x0f0d, 0x00ae), CONTROLLER_TYPE_XBox360Controller},  // Unknown Controller
    {MAKE_CONTROLLER_ID(0x146b, 0x0603), CONTROLLER_TYPE_XBox360Controller},  // Unknown Controller
    {MAKE_CONTROLLER_ID(0x056e, 0x2013), CONTROLLER_TYPE_XBox360Controller},  // Unknown Controller
    {MAKE_CONTROLLER_ID(0x046d, 0x0401), CONTROLLER_TYPE_XBox360Controller},  // logitech xinput
    {MAKE_CONTROLLER_ID(0x046d, 0x0301), CONTROLLER_TYPE_XBox360Controller},  // logitech xinput
    {MAKE_CONTROLLER_ID(0x046d, 0xcaa3), CONTROLLER_TYPE_XBox360Controller},  // logitech xinput
    {MAKE_CONTROLLER_ID(0x046d, 0xc261), CONTROLLER_TYPE_XBox360Controller},  // logitech xinput
    {MAKE_CONTROLLER_ID(0x046d, 0x0291), CONTROLLER_TYPE_XBox360Controller},  // logitech xinput
    {MAKE_CONTROLLER_ID(0x0079, 0x18d3), CONTROLLER_TYPE_XBox360Controller},  // Unknown Controller
    {MAKE_CONTROLLER_ID(0x0f0d, 0x00b1), CONTROLLER_TYPE_XBox360Controller},  // Unknown Controller
    {MAKE_CONTROLLER_ID(0x0001, 0x0001), CONTROLLER_TYPE_XBox360Controller},  // Unknown Controller
    {MAKE_CONTROLLER_ID(0x1345, 0x6005), CONTROLLER_TYPE_XBox360Controller},  // Unknown Controller
    {MAKE_CONTROLLER_ID(0x0079, 0x188e), CONTROLLER_TYPE_XBox360Controller},  // Unknown Controller
    {MAKE_CONTROLLER_ID(0x0079, 0x18d4), CONTROLLER_TYPE_XBox360Controller},  // Unknown Controller
    {MAKE_CONTROLLER_ID(0x2c22, 0x2003), CONTROLLER_TYPE_XBox360Controller},  // Unknown Controller
    {MAKE_CONTROLLER_ID(0x0f0d, 0x00b1), CONTROLLER_TYPE_XBox360Controller},  // Unknown Controller
    {MAKE_CONTROLLER_ID(0x0079, 0x187c), CONTROLLER_TYPE_XBox360Controller},  // Unknown Controller
    {MAKE_CONTROLLER_ID(0x0079, 0x189c), CONTROLLER_TYPE_XBox360Controller},  // Unknown Controller
    {MAKE_CONTROLLER_ID(0x0079, 0x1874), CONTROLLER_TYPE_XBox360Controller},  // Unknown Controller

    {MAKE_CONTROLLER_ID(0x1038, 0xb360), CONTROLLER_TYPE_XBox360Controller},  // SteelSeries Nimbus/Stratus XL

    //{ MAKE_CONTROLLER_ID( 0x1949, 0x0402 ), /*android*/ },	// Unknown Controller

    {MAKE_CONTROLLER_ID(0x05ac, 0x0001), CONTROLLER_TYPE_AppleController},  // MFI Extended Gamepad (generic entry for iOS/tvOS)
    {MAKE_CONTROLLER_ID(0x05ac, 0x0002), CONTROLLER_TYPE_AppleController},  // MFI Standard Gamepad (generic entry for iOS/tvOS)
    {MAKE_CONTROLLER_ID(0x0111, 0x1420), CONTROLLER_TYPE_AppleController},  // SteelSeries Nimbus (Unijoysicle)

    // We currently don't support using a pair of Switch Joy-Con's as a single
    // controller and we don't want to support using them individually for the
    // time being, so these should be disabled until one of the above is true
    // { MAKE_CONTROLLER_ID( 0x057e, 0x2006 ), CONTROLLER_TYPE_SwitchJoyConLeft
    // },    // Nintendo Switch Joy-Con (Left) { MAKE_CONTROLLER_ID( 0x057e,
    // 0x2007 ), CONTROLLER_TYPE_SwitchJoyConRight },   // Nintendo Switch
    // Joy-Con (Right)

    // This same controller ID is spoofed by many 3rd-party Switch controllers.
    // The ones we currently know of are:
    // * Any 8bitdo controller with Switch support
    // * ORTZ Gaming Wireless Pro Controller
    // * ZhiXu Gamepad Wireless
    // * Sunwaytek Wireless Motion Controller for Nintendo Switch
    {MAKE_CONTROLLER_ID(0x057e, 0x2009), CONTROLLER_TYPE_SwitchProController},  // Nintendo Switch Pro Controller

    {MAKE_CONTROLLER_ID(0x0f0d, 0x00c1), CONTROLLER_TYPE_SwitchInputOnlyController},  // HORIPAD for Nintendo Switch
    {MAKE_CONTROLLER_ID(0x20d6, 0xa711), CONTROLLER_TYPE_SwitchInputOnlyController},  // PowerA Wired Controller Plus
    {MAKE_CONTROLLER_ID(0x0f0d, 0x0092), CONTROLLER_TYPE_SwitchInputOnlyController},  // HORI Pokken Tournament DX Pro Pad

    // Valve products - don't add to public list
    {MAKE_CONTROLLER_ID(0x0000, 0x11fb), CONTROLLER_TYPE_MobileTouch},        // Streaming mobile touch virtual controls
    {MAKE_CONTROLLER_ID(0x28de, 0x1101), CONTROLLER_TYPE_SteamController},    // Valve Legacy Steam Controller (CHELL)
    {MAKE_CONTROLLER_ID(0x28de, 0x1102), CONTROLLER_TYPE_SteamController},    // Valve wired Steam Controller (D0G)
    {MAKE_CONTROLLER_ID(0x28de, 0x1105), CONTROLLER_TYPE_SteamControllerV2},  // Valve Bluetooth Steam Controller (D0G)
    {MAKE_CONTROLLER_ID(0x28de, 0x1106), CONTROLLER_TYPE_SteamControllerV2},  // Valve Bluetooth Steam Controller (D0G)
    {MAKE_CONTROLLER_ID(0x28de, 0x1142), CONTROLLER_TYPE_SteamController},    // Valve wireless Steam Controller
    {MAKE_CONTROLLER_ID(0x28de, 0x1201), CONTROLLER_TYPE_SteamController},    // Valve wired Steam Controller (HEADCRAB)

    // OUYA
    {MAKE_CONTROLLER_ID(0x2836, 0x0001), CONTROLLER_TYPE_OUYAController},  // OUYA 1st Controller (Unijoysticle)

    // ION iCade
    {MAKE_CONTROLLER_ID(0x15e4, 0x0132), CONTROLLER_TYPE_iCadeController},  // ION iCade (Unijoysticle)

    // Android
    {MAKE_CONTROLLER_ID(0x20d6, 0x6271), CONTROLLER_TYPE_AndroidController},  // MOGA Controller, using HID mode (Unijoysticle)
    {MAKE_CONTROLLER_ID(0x0b05, 0x4500), CONTROLLER_TYPE_AndroidController},  // Asus Controller (Unijoysticle)
    {MAKE_CONTROLLER_ID(0x1949, 0x0402), CONTROLLER_TYPE_AndroidController},  // Amazon Fire gamepad Controller 1st gen (Unijoysticle)

    // Smart TV remotes
    {MAKE_CONTROLLER_ID(0x1949, 0x0401), CONTROLLER_TYPE_SmartTVRemoteController},  // Amazon Fire TV remote Controlelr 1st gen. (Unijoysticle)
};
// clang-format on

static inline uni_controller_type_t guess_controller_type(uint16_t nVID, uint16_t nPID) {
  uint32_t device_id = MAKE_CONTROLLER_ID(nVID, nPID);
  for (uint32_t i = 0; i < sizeof(arrControllers) / sizeof(arrControllers[0]); ++i) {
    if (device_id == arrControllers[i].device_id) {
      return arrControllers[i].controller_type;
    }
  }
#undef MAKE_CONTROLLER_ID
  return CONTROLLER_TYPE_Unknown;
}

#endif  // UNI_HID_DEVICE_VENDORS_H
