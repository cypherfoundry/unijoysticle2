# Unijoysticle™ 2, 2+, A500, C64, 800XL User Guide

[![discord](https://img.shields.io/discord/775177861665521725.svg)](https://discord.gg/r5aMn6Cw5q)

![logo][uni_logo]

[uni_logo]: https://lh3.googleusercontent.com/pw/AIL4fc_k4CtBs9deXjMuCJOotXbNoRwON1CdYCMshG41PpEf2v-7xc2IcIPFvYCOFeLriESlXEJhm5nK72st8v1E04ZzyqawW8x5DPJt2ug6ZzhGXdnJvasD577CX1YbHRWDtmlz1JtyhDNHE_BeBeNnVb92vg=-w200-no?authuser=0

This guide is valid for Unijoysticle 2 models.
Features that are only applicable for Unijoysticle 2 / 2+/ 2 A500 / 2 C64 / 2 800XL, are tagged as **[v2 only]** / **[v2+ only]** / **[A500 only]** / **[C64 only]** / **[800XL only]** respectively.

## What is a Unijoysticle

Unijoysticle is that device that allows you to use modern Bluetooth controllers (gamepads, mice, balance board) in retro computers.

## Models

Unijoysticle 2 models:

|                                          | 800XL                       | C64                         | A500                        | 2+                                 | 2                                     |
| ---------------------------------------- | --------------------------- | --------------------------- | --------------------------- | ---------------------------------- | ------------------------------------- |
| Top                                      | ![uni2800xl_photo_front]    | ![uni2c64_photo_front]      | ![uni2a500_photo_front]     | ![uni2plus_photo_front]            | ![uni2_photo_front]                   |
| Bottom                                   | ![uni2800xl_photo_back]     | ![uni2c64_photo_back]       | ![uni2a500_photo_back]      | ![uni2plus_photo_back]             | ![uni2_photo_back]                    |
| Release date                             | July 2023                   | March 2023                  | July 2022                   | October 2021                       | April 2019                            |
| Best for                                 | Atari 800XL / 600XL         | C64 / C128                  | Amiga                       | -                                  | -                                     |
| Good for                                 | Atari 400 / Amiga / AtariST | Amiga / AtariST             | C64 / AtariST / Atari 8bit  | C64 / Amiga / AtariST / Atari 8bit | C64 / Amiga / AtariST / Atari 8bit    |
| Status                                   | Active / Supported          | Active / Supported          | Active / Supported          | Discontinued / Supported           | Discontinued / Supported              |
| Amiga / AtariST mouse support            | Yes                         | No                          | Yes                         | Yes                                | Yes                                   |
| Amiga / AtariST 2nd & 3rd button support | No                          | No                          | Yes                         | Yes                                | Only in Port 1                        |
| Atari 8-bit 2nd & 3rd button support (5) | Yes                         | No                          | No                          | No                                 | No                                    |
| C64 2nd & 3rd button support             | No                          | Yes                         | No                          | No                                 | No                                    |
| C64 4th and 5th button support (4)       | No                          | Yes                         | No                          | No                                 | No                                    |
| C64 Paddle support                       | No                          | Might (1)                   | No                          | No                                 | No                                    |
| Rumble (2)                               | No                          | Yes                         | No                          | No                                 | No                                    |
| Fits                                     | 800XL / 600XL               | C64 / C128                  | Amiga 500 / 1200            | C64 / C128                         | C64 / C128                            |
| Buttons                                  | Reset, Mode, Swap           | Reset, Mode, Swap           | Reset, Mode,  Swap          | Reset, Mode                        | Reset, Mode                           |
| LEDs                                     | Port 1, 2, Bluetooth, Power | Port 1, 2, Bluetooth, Power | Port 1, 2, Bluetooth, Power | Port 1, 2, Power                   | Port 1, 2, Power                      |
| Filter noise ([Issue #17][issue_17])     | Yes                         | Yes                         | Yes                         | Yes                                | No                                    |
| Case friendly                            | Yes                         | Yes                         | Yes                         | Yes                                | No                                    |
| Easy to solder                           | No. Most components are SMD | No. Most components are SMD | No. Most components are SMD | No. Most components are SMD        | Yes. All components are through-hole  |
| Self-powered                             | Yes                         | Yes                         | Yes                         | Yes                                | Yes, can be turned on/off with switch |
| External power                           | USB                         | USB                         | USB                         | USB                                | Both USB and Barrel Jack 5V+          |
| Total Size (mm)                          | 72 x 68 x 13.6              | 72 x 68 x 13.6              | 67 x 72 x 13.6              | 64 x 64 x 13.6                     | 63 x 66 x 17                          |
| PCB Size (mm)                            | 63 x 60 x 1.6               | 63 x 60 x 1.6               | 52 x 67 x 1.6               | 49 x 62 x 1.6                      | 46 x 57 x 1.6                         |
| Weight (gr)                              | 29                          | 27.1                        | 25.6                        | 24                                 | 37                                    |
| Current (mA)                             | ~96                         | ~96                         | ~96                         | ~96                                | ~100                                  |
| USB connector                            | Micro USB                   | Micro USB                   | Micro USB                   | Micro USB                          | Micro USB                             |


Notes:

- (1): Hardware physically connected, but firmware is still WIP.
- (2): Some C64 games can turn on/off rumble on gamepads. See: [Rambo], and [Lemans] ([video][rumble_video])
- (3): Right and Middle mouse buttons not supported in C64.
- (4): Based on [CrystalCT 5 buttons joystick][crystalct/5plusbuttonsJoystick] ([video][5_buttons_video])
- (5): Based on [Ascrnet Joy 2B+][atari_joy2bplus]

Unijoysticle 2 allows you to use modern Bluetooth gamepads. E.g. DualSense controller in retro computers like the Commodore 64, Amiga and AtariST.

It also supports mice (for Amiga / AtariST only).

[issue_17]: https://gitlab.com/ricardoquesada/unijoysticle2/-/issues/17
[uni2_photo_front]: https://lh3.googleusercontent.com/pw/AM-JKLUphquTBg9JoV-L7wuMtze_aKIJ8LvfokTakuBKSVFClziLWCViggcrlNZtqGUMgv6u6yYpZ_RuE2jdGSn3Q0oYl0jOQzzGcutRt-JiMjLZY_oAvK4LehrawNj_aNbthCJ-VEJzsW3dywhJNekjhTsfNQ=-no
[uni2_photo_back]: https://lh3.googleusercontent.com/pw/AM-JKLXnMbJt7A55lUrtmiuKj4As98He7ZVi6YuPKg8N1sGbw1w5d5TtC8B-ilfoqC5QCKcZG8MFkmHNj5HgVbP8fdHhMBPx2CLgyRhaRmohx0SWF-_wZ57WYCfo7RlH4k7sEmh1txsTvHto2ko0H_0l9aUALg=-no
[uni2plus_photo_front]: https://lh3.googleusercontent.com/pw/AM-JKLWV2Zo912VtOfuM71AluanNXGwVQiAehNEiQ1VL3L7SkWDl-9k0fA6tfza9QpGL52petBfFFFHMb8rh_ybSj17LOQA70IycMDQw6AVqlN8Jp4HDWT8sWcXHIPEQZTxNuQ-RFygKbmVpW2n52wwi5cJgwA=-no
[uni2plus_photo_back]: https://lh3.googleusercontent.com/pw/AM-JKLWs_G63eJRX8WuVVRoKKur8UQ-VcWTNbmkjFumwZYvDRhgjqamVa-X9CROAnoPyK3sHDmfwtqAtJiI1DHiwlINBPCgiEY4yWFYWl8SlHA_QOG7LmVKuOKy1UQa-5dALC2r0FBfhS9He6utE7Kz5nWAXiw=-no
[uni2a500_photo_front]: https://lh3.googleusercontent.com/pw/AM-JKLU1BbKnbuLE7Oa_VOY3AnBjYwNVcAPKJcmYa7WUnCK5gMM1bHZyK3lTZ1Mo0NtS30ogeeSqxySx3Qi2ux3AGOlocQnQe9a87NoiKz5tnmHV_IGf3hPln0qsr8t5yfD5biKKVbGlRJ6vN2IbmI8H2Wg6iw=-no
[uni2a500_photo_back]: https://lh3.googleusercontent.com/pw/AM-JKLXMUngI6ctahY5clP-76UBjUem9L4Eehj4GFsEwUJwtZ3-MuZCV2nOsxiN3Go1PKvoc9sJbLRY8hCZ9TcV4cq5AtcAtscdjH1LiNzltFSgQY4IQEwSiPHfvhjhZCDezhgHKQDrmmA3EGFM7kJ4MKNxtig=-no
[bluepad32-fw]: https://gitlab.com/ricardoquesada/bluepad32
[uni2c64_photo_front]: https://lh3.googleusercontent.com/pw/AMWts8AzoDnIOIiM-50UpjAqY8OgdsM6pzM3BuYWb2ZOg4K_o4TxygtSjuZvrKI92lrl4Qqf8sLT6PtLYsXzDbragTDgoeX4yTpymqoc450FiyjiBT1YHxRbLBtGWgUOQHezXUxKCORs5aOcxPwowfrgR4PcQw=-no
[uni2c64_photo_back]: https://lh3.googleusercontent.com/pw/AMWts8C_vxauz3FAOv8NGAh64LGTExHwCj0N0bX73xsWIeDyR3efFPPUQb3JJQK5S8Qcm9B8bx3r_yio6WWAML1si4u8E9FejXP9DL8vxSCg_TR7rLi5aPiwisQaIptN8hJdfz3Zoh_B4cqiRE9vMi9t50R_gw=-no
[uni2800xl_photo_front]: https://lh3.googleusercontent.com/pw/AIL4fc9fcgdY3Gka6iSZmyUlBTA1Q9ABujo-9v_4qE85St2GdW-2TBzzLNx-pc25o0rFloL0ghWZDDVW_kGWpQjcXaP-SJf9NWPnNw-2jpc_8tcVKp8gzLH7fxnFd7DBEV1ahWYLy97WvthAy7p193wtZ7uM4w=-no
[uni2800xl_photo_back]: https://lh3.googleusercontent.com/pw/AIL4fc9PNSKKiA7PHsUTLKXGF1O9ywK-qLHS0nw2-Y6FxWQcgmtZJjajQh9Uch0aqZ2Pw-grH_Vg05IKYZilissF6nxUJPDszew0ouzGu91golm1RYJJpPS0CDANAfk3_O4qbwN_gam6dgGnafzsk4u0Xke0uw=-no
[Rambo]: https://gitlab.com/ricardoquesada/c64-rambo
[Lemans]: https://gitlab.com/ricardoquesada/c64-lemans
[crystalct/5plusbuttonsJoystick]: https://github.com/crystalct/5plusbuttonsJoystick/
[5_buttons_video]: https://www.youtube.com/watch?v=9Em_kUAHEuA
[rumble_video]: https://www.youtube.com/watch?v=vCj45OX43JE
[atari_joy2bplus]: https://github.com/ascrnet/Joy2Bplus
[uni_logo]: https://lh3.googleusercontent.com/pw/AIL4fc_k4CtBs9deXjMuCJOotXbNoRwON1CdYCMshG41PpEf2v-7xc2IcIPFvYCOFeLriESlXEJhm5nK72st8v1E04ZzyqawW8x5DPJt2ug6ZzhGXdnJvasD577CX1YbHRWDtmlz1JtyhDNHE_BeBeNnVb92vg=-w200-no?authuser=0

## Quick starting guide

[![Quick starting guide](https://img.youtube.com/vi/qxDbUfJXXyI/0.jpg)](https://www.youtube.com/watch?v=qxDbUfJXXyI)

1. Plug in the Unijoysticle
2. Power on the computer
3. Pair your gamepad and/or mouse


## Supported computers

![supported computers](https://lh3.googleusercontent.com/j9KjfEW5KXse1Caf0xV8WfD8c7HRFO1UCHx5WOnPMAneoKOPsDs8UNXAFS84D9pXzcu5ZdHoPxJDdqNvzUB_0q7hk7tQcqxYXQIa7NsLZ3j-KLlG-qyFI6TknNgiYNpwcIdXxEROOhI=-no)

The Unijoysticle 2 was designed to fit in the Commodore 64, and Amiga 500 computers. No additional
cables are needed for these computers.

However, the Unijoysticle 2 can be used in any computer that is compatible with the Atari DB9 joystick ports.

That includes, but not limited to:

- Commodore 64 / SX-64 / 128 / 128-D.
- Atari 8-bit line, both computers and consoles (requires [DB9 extension cable][cable]).
- Amiga line (Unijoysticle2 / 2+ requires [DB9 extension cable][cable], Unijoysticle 2 A500 fits Ok).
- Atari ST line (requires [DB9 extension cable][cable]).
- Commodore 16 / 116 / +4 (requires adapter)
- [Vampire v4 Stand Alone][vampirev4] (tested by the community)
- [A2560 Foenix][a2560] (tested by the community)
- [Mega 65][mega65] (tested by the community)

[cable]: https://www.aliexpress.com/item/33012270252.html?spm=a2g0s.9042311.0.0.74394c4diOD0iB
[vampirev4]: http://www.apollo-core.com/v4.html
[a2560]: https://c256foenix.com/
[mega65]: https://mega65.org/

## Flashing the firmware

See: [firmware_setup.md][firmware_setup]

[firmware_setup]: https://gitlab.com/ricardoquesada/bluepad32/-/blob/main/docs/firmware_setup.md

## How to power on the device

There are multiple ways to power on the device

|              | v2                                               | v2+            | A500           | C64            | 800XL          |
| ------------ | ------------------------------------------------ | -------------- | -------------- | -------------- | -------------- |
| Self-powered | Yes, requires the "Self powered" switch to be On | Yes, always On | Yes, always On | Yes, always On | Yes, always On |
| USB powered  | Yes                                              | Yes            | Yes            | Yes            | Yes            |
| External 5V+ | Yes, using the Barrel jack                       | No             | No             | No             | No             |

Note: It is safe to plug the two / three of them at the same time, but that won't give you any additional benefit.

### Self-powered

| 800XL                           | C64                           | A500                           | 2+                             | 2                          |
| ------------------------------- | ----------------------------- | ------------------------------ | ------------------------------ | -------------------------- |
| ![uni_800xl_self_powered_photo] | ![uni_c64_self_powered_photo] | ![uni_a500_self_powered_photo] | ![uni2plus_self_powered_photo] | ![uni2_self_powered_photo] |

- Gets current directly from the joystick ports. No extra cables needed.
- [v2 only] "Self-powered" switch must be "ON", otherwise the ESP32 won't receive current.
- A beefy [power supply with ~4Amps][power_supply] is recommended (depends on the peripherals used).
- Tested successfully with:
  - C128 + 1541 Ultimate 2 + Unijoysticle 2 + [beefy power supply][power_supply].
  - C64 + 1541 Ultimate 2 + Unijoysticle 2 + [beefy power supply][power_supply].
  - SX-64 + Unijoysticle 2
  - Atari ST 1040F + Unijoysticle 2
  - Amiga 1200 + Unijoysticle 2 A500
  - Atari 800XL + Unijoysticle 2 800XL

Note: The Amiga 500 doesn't provide enough current to power the Unijoysticle.
You should power the Unijoysticle through the USB port.
It is possible to connect the USB port to the Amiga Disk Drive connector
(Pin 12 = +5V / Pin 3 = GND, see [How to build your own Amiga USB power cable][disk_drive_power]) which provides enough current.

Self-power is available since Unijoysticle 2 [Revision D][changelog_board], and is present in all
Unijoysticle 2+ / Unijoysticle 2 A500 revisions.

[uni2_self_powered_photo]: https://lh3.googleusercontent.com/XVQU7lkllCqc-1k6KX_3CdDIOlx0NCHO8NVDuBOJGdVef3Rq03KJpDHLqG_FNYW2GTeXOAxna9njsclcrlxmhOiBR_KvI-M8CDUOglUX9nCZLBILnkSB32Tews7yhmU38tfaVMxXnWU=-no
[uni2plus_self_powered_photo]: https://lh3.googleusercontent.com/pw/AM-JKLUXjhjUsPDIVH1C_i8310k5ERQT-IQc71w2ibmBWCHoKC5uEIHjHBdp52ydb0XBZoKqftGv8JIonAn9tfuxXnoo00BypKL62ZTk_kbOLEQwdXG7QM3FDhrHm41NAbP9dhAxn9N4M5pTxUMiOJ_T2oHgSw=-no
[uni_a500_self_powered_photo]: https://lh3.googleusercontent.com/pw/AM-JKLUtRVviFYcUu_4RKifSOg3kyJziTpd3GLBE-e0frWdwAB1F0ZUNqEkGM3Hwqipi70lXpFAIv-mv6_u58-9bnSyI5JyPT_jNpRSQbV5D71nT31c45nqDhSkW2k6cELocLjm22cTwwM0zNROfESVJgAoKOA=-no
[uni_c64_self_powered_photo]: https://lh3.googleusercontent.com/pw/AMWts8DAFSd1iqibcNFXnPkfKRICopugSYzP9YGy8gMeAqWyCzyV61yhsCcLeKK0ahP8rROQThGEd7MqJUvvyZwHhB4L1Mcx5z92Za34J4GyMu_m2wa4-K3oY1Zx3cWlVzv42YNLLmBJuVjcqME6B7BefZ1xyg=-no
[uni_800xl_self_powered_photo]: https://lh3.googleusercontent.com/pw/AIL4fc9AaTOQnQFTKaaGbHhyUZgO7H9PgAwFvMjDRFJPqZKZhQP8YR3x0D22Gp7PeF48RvQsnCiXdsayCW9CJgZukAguxavTUvQC91agpEEDc-LbWM8N4FKp_qd1EE1cyCMW-_fcn1pFvW_XPWv0saxnJRWByg=-no
[disk_drive_power]: https://gitlab.com/ricardoquesada/unijoysticle2/-/blob/main/docs/amiga_500_usb_cable.md
[changelog_board]: https://gitlab.com/ricardoquesada/unijoysticle2/blob/master/CHANGELOG.board.md

### USB-powered

| 800XL                    | C64                    | A500                    | 2+                      | 2                   |
| ------------------------ | ---------------------- | ----------------------- | ----------------------- | ------------------- |
| ![uni2800xl_usb_powered] | ![uni2c64_usb_powered] | ![uni2a500_usb_powered] | ![uni2plus_usb_powered] | ![uni2_usb_powered] |

- Use a micro-USB cable to connect the Unijosyticle device to your computer or socket.
- Ideal for debugging: you can see the Unijoysticle console by attaching a terminal to it.
- Needed in the Amiga 500.
- [v2 only]: "Self-powered" switch can either be "On" or "Off".

[uni2_usb_powered]: https://lh3.googleusercontent.com/lYiISEtede7TkKwvBZyOB57ZUynSDzPuKIqmfp6Cpl75BbGENM6qZkAXWD066YhpY1Xg-k016PrVt3783Q6iuLXFOdZrpXIW_XaEEwRaeUFvPBk1XVtwIvVjmxMGt5bvAPUHwOFScYw=-no
[uni2plus_usb_powered]: https://lh3.googleusercontent.com/pw/AM-JKLXXbxm4umDQfC-xYt9AzvAWIXsGQaYrpQUFnDpYwE0F5SanC8DgjQu9Uu7s9nj2dAd1dVWq4WD8EWxifGM8t73bT0Mz-yiFPCXn8dyUgNXkW2FA2SA00PfL_kdCBbVpXKLRu1Ez7hnaMBSmlUiufBncxw=-no
[uni2a500_usb_powered]: https://lh3.googleusercontent.com/pw/AM-JKLUekMUSSBPmg3XLniMY1ykeDqYs7NBES2_Y4Q-ld2w0CkQNBWakbI6w-Vu0HiSDhFstachOMwOcS6CH-Cm9fYB7WcWWObe3MBBUhD0E-OC2CbqKIWCjF4V4lZxLLA4OCjwUUimj7zExnekBjYWOZCfG8g=-no
[uni2c64_usb_powered]: https://lh3.googleusercontent.com/pw/AMWts8CFRhwQWFVujIpi5U4ucUAWYyEYYBwoBSXAZwc8h4fzOm18BaolGFL3R7pNVUVJYV0bz-WgzEZ4wLE8FZfvtz1GLaK2YdkYQy8_YU3x966TSuEA5E60XTRI0bdOmQEcDcsXSFfYtpynDd1nrIeBsOuJgA=-no
[uni2800xl_usb_powered]: https://lh3.googleusercontent.com/pw/AIL4fc9ciKYc2fC19xQLuo-LiLVxl6PsW3BcCK4SmjJ2WCBZAdYOd8tUVoRZ-wLNIdhNnflVXOhuMioV8Z1rj1UZNFL-4r7VWwBidbIM_zEl44qd1AKfGnpIspZS2hpsG4GBc-ysaDeBW56UJTMsaoP7lbmkKg=-no

### Jack Barrel-powered [v2 only]

![jack_barrel_powered](https://lh3.googleusercontent.com/REa_wfIZt5KEQT8ypO6d-OmpHLg8t8BUgz5tqnp-f6_ne7JgagdjGzp9RlPIbSXzIlAokX_ewJudmwD1Ony5OYq1Epd6-DnGMWVtXEafDw9H6DIvXlT3iffDOlmXTLoYWQhbR8TrLH8=-no)

- Connect a 5V+ / ~250mA to the Power Barrel Jack (like some Arduino boards).
- Polarity: positive polarity (tip=+5v, sleeve=0v).
- [v2 only]: "Self-powered" switch can either be "On" or "Off".

[power_supply]: https://www.carlsenelectronics.net/

## Unijoysticle Buttons and LEDs

### 800XL / C64 / A500 models

| 800XL                                                 | C64                                               | A500                                                |
| ----------------------------------------------------- | ------------------------------------------------- | --------------------------------------------------- |
| ![uni2_800xl_buttons_photo][uni2_800xl_buttons_photo] | ![uni2_c64_buttons_photo][uni2_c64_buttons_photo] | ![uni2_a500_buttons_photo][uni2_a500_buttons_photo] |

LEDs:

* Bluetooth LED (Blue)
  * On: New connections are accepted. Both "connects" and "re-connects" are accepted.
  * Off: No new connections are accepted. Existing connections will stay on.
* J1 LED (Green):
  * On: Gamepad or mouse is controlling joystick port 1
* J2 JED (Red):
  * On: Gamepad or mouse is controlling joystick port 2
* Power LED (Red):
  * On: Unijoysticle has current.
  * Off: Disconnected.

Buttons:

* Reset button: Restart the firmware. Connected gamepads/mice will get disconnected.
* Swap button: Swaps connected gampepads / mice.
  * For example if a DualSense gamepad is controlling joystick 1 and an Xbox gamepad is controlling joystick 2,
    "swap" will just swap the gamepads. The result will be that DualSense will control joystick 2 and the Xbox will
    control joystick 1
* Mode button: Changes the "mode" of the connected gamepad. Modes:
  * Basic mode: Connected gamepad controls one joystick
  * Mouse mode: Connected gamepad controls one mouse **[800XL] / [A500 only]**
  * Twin Stick mode: Connected gamepad controls two joysticks at the same time

To know in which "mode" it is, the Bluetooth LED (Blue) will blink:
  * 1 blink: It is in "Basic mode"
  * 2 blinks: in "mouse mode"
  * 3 blinks: in "twin stick mode"

See below for further details about gamepad modes.

[uni2_a500_buttons_photo]: https://lh3.googleusercontent.com/pw/AM-JKLULCdDRyDWDQ8R2v0Ab_HjcxOxOtNOTlaj0OrrFvEyEr9zNo8DBBCgVrOGWran1PLX3Ja3LvcpdmU0vw1MnnEZUrv5JQglA7grNkS08wlwpkU6Pt7nnmK5k2sDy-ag2VxVBRJWRpx930hPqtNl1fQ664Q=h360-no
[uni2_c64_buttons_photo]: https://lh3.googleusercontent.com/pw/AMWts8BLrqDjE_ZWreEFw-cU4iQtUnFR5CPL0PEJwbHsmPZHsgwGgepQseeV5Q74Hf3vNOmEaAfgpKjvkn5IBW5XlvhnChfOo6qKD9iBK58ACph9fCVpb1NZiw1eGLztZshWWpy0I5oAmd48-yFZtFtt44DF3g=h360-no
[uni2_800xl_buttons_photo]:  https://lh3.googleusercontent.com/pw/AIL4fc8j5MhVkI9E2Xp96LRjCcXvZTypFJQgdugg58a2aPZRw4PRE1EjWRrEg5-311VJVXKQUuixVI07x7cNy5plkpAdIUec8DBfDbT0Xb7_P7IoHsHr-KKXtUTqC3c87C6os0gHjN3K7KC5tHLY5OaAl-q0YQ=h360-no

### V2 / V2+ only

| V2                                        | V2+                                               |
| ----------------------------------------- | ------------------------------------------------- |
| ![uni2_buttons_photo][uni2_buttons_photo] | ![uni2plus_buttons_photo][uni2plus_buttons_photo] |

LEDs:

* J1 LED (Green):
  * On: Gamepad or mouse is controlling joystick port 1
* J2 JED (Red):
  * On: Gamepad or mouse is controlling joystick port 2
* Power LED (Red in V2 / Blue in V2+):
  * On: Unijoysticle has current.
  * Off: Disconnected.

Buttons:

* Reset button: Restart the firmware. Connected gamepads/mice will get disconnected.
* Enhanced Mode button: Switches between "Twin Stick mode" and "Basic mode"
  * Basic mode: Connected gamepad controls one joystick
  * Enhanced mode: Connected gamepad controls two joysticks at the same time

See below for further details about gamepad modes.

[uni2_buttons_photo]: https://lh3.googleusercontent.com/pw/AM-JKLU5gPENmNjtLsOzfDNbzIH8597OjQ0O6Fl7iPwR4eah0w_eu-8sASmnNZj9COHXjBaB8kZwdZUiqluDmbOGRc4gukS54MHZc108wQSo2tKk-n9grNgD8yW-IeThAcrx655lq3fx6_pCaJnqKvXCzd8_RA=h360-no
[uni2plus_buttons_photo]: https://lh3.googleusercontent.com/pw/AM-JKLXs6fWz4eqK38pgRKOMIorQvSgxdaFHCGCZL7e-ynURso2G4mMwXb6MM1eadIorlsIMhcN3FkZ7S1FWV3lTUxxFZYfdoZyYNDYIjt25fvVlspf8Mh518OrMW0GgQFycgUuTuY6bACSY65uLUy-FbmWp4A=h360-no


## Using Gamepads

The first gamepad to connect will control joystick 2 (Red LED).
The second gamepad to connect will use the available joystick.

If you want to control joystick 1 (Green LED), and you only have one gamepad connected,
you have to press the "swap" button in the gamepad.

![swap joystick](https://lh3.googleusercontent.com/pw/AMWts8D4ztR8uNpzReJuTAGhZQ-oBGpJqQZ-veMIXUVIZJlZBMmKiQRVqpkO9HP_rRuvpI-UH3hcP3IInpz3sIkMmANDCaio78JRqbqjsDXzLV3ZVLPDFJkNZuHouyaVqW1yx_lmVMynYs-XQs3LStek7Kq56A=-no?authuser=0)

The "swap" button varies from gamepad to gamepad, but usually it is mapped both to:

* the big button in the center (AKA PS, Xbox button)
* and to the "select" (AKA "-", "Share" buttons)

E.g: In the Xbox One it is the "Xbox" button; for PlayStation gamepads, it is the "PS" button. 

If two gamepads are connected, then both controllers must press the "swap" button in order to swap joysticks.

The gamepad could be in three possible modes:

- Basic mode: one gamepad controls one joystick.
- Twin Stick mode: one gamepad controls the two joysticks.
- **[800XL] / [A500 only]:** Mouse mode: one gamepad controls one mouse.

To switch modes you can press:

* the "mode" button in the Unijoysticle device
* or the "Start" (AKA "+", "Options" button) on the gamepad

### Basic mode

![basic mode](https://lh3.googleusercontent.com/pw/AM-JKLW09v8uSrCzB-2ooXXoH-leP2SPqV0-vg6Ym_IFNjwlpQoVELZQguo9oVIl3WhdzG2N-RQTyjH0xV8amFrCSv1XYpcUmgdRKJwGePIeBYQoUtx8JzbZS_c1L3nC3nRmTWdwSolBOnELwMal9qSkSpzfVw=h330-no)

*Basic mode* is what you would expect, with the additional benefit that
Button B is mapped to "jump". Ideal for platform games like Giana Sisters,
Super Mario Bros, Mayhem in Monsterland, etc.

- D-pad/joypad: controls up/down/left/right
- Button A / Cross: fire button
- Button B / Circle: "up"  (ideal for platform games)
- Button X / Square: 2nd button (Amiga / Atari ST only)
- Button Y / Triangle: 3nd button (Amiga / Atari ST only)
- Button shoulder-right: autofire

### Twin Stick mode (AKA Enhanced mode)

![twin stick mode](https://lh3.googleusercontent.com/pw/AIL4fc_MqBokDp6iNP9CjfJVIDPorKzkewVF6r139qHNmiq8C2hoTpbLyT_4TRiVXIMbtde3fxuOmS_Ag-RMR6G5KzQKheq6ewwZp-DuR4hjCAeTwgByG_CtxPKVF-rIbSLw0tm3waibuNuze19TpGmP3JacMQ=-h330-no?authuser=0)

In *Twin Stick mode*, you control both joysticks from only one gamepad.

Ideal for Twin Stick games like:

* [Commando 2084][commando2084]
* [Robotron 2084][robotron2084]

And since "Button B" is mapped to "J1 fire" this is great for games that use "space", like:

* [Commando][commando] to throw grenades
* [1942][1942] to do rolls
* [Turbo Outrun][turbo_outrun] to press "turbo"
* and many others

Mappings:

- Left joypad / d-pad: control Joystick 2 movements
- Right joypad: control Joystick 1 movements
- Button A / Cross: fire for Joystick 2
- Button B / Circle: fire for Joystick 1
- Button X / Square: 2nd button for Joystick 2
- Button Y / Triangle: 2nd button for Joystick 1
- Button Shoulder Left: auto-fire for Joystick 2
- Button Shoulder Right: auto-fire for Joystick 1

[1942]: https://csdb.dk/release/?id=38140
[commando]: https://csdb.dk/release/?id=137173
[turbo_outrun]: https://csdb.dk/release/?id=192474
[commando2084]: https://csdb.dk/release/?id=182074
[robotron2084]: https://csdb.dk/release/?id=94019

### Mouse mode

![mouse mode](https://lh3.googleusercontent.com/pw/AM-JKLVubfn8u70c-UnHu_3M0BmpYhGw9jdHpyHt2whhCqM-LAUWz6JK3I7nSJvrLgdsmH-EYmSKYtQgERpH77DbhAIb66fDPVbTVY_a-xvaNoOGcYenJVmFQKdcS5TnODlVK1QpfL0HFOlzXbHVRNjVz39vDA=h320-no)

[A500 only]

In *Mouse mode* you control the mouse from a gamepad.

- Left or Right axis control the cursor movement
- Button A / Cross: left button
- Button B / Circle: right button
- Button X / Square: middle button

Note: Mouse emulation only works on Atari 8-bit / Atari ST / Amiga computers.

## Gamepad buttons **[C64 only]**

In addition to the regular 3-button mode, Unijoysticle2 C64 supports two special modes:

* "5 buttons mode" that allows to use 5 buttons (instead of the regular 3).
* "rumble mode" that allows the game to send "rumble events" to the gamepad

| 3-button mode (default mode) | 5-button mode        | rumble mode        |
| ---------------------------- | -------------------- | ------------------ |
| ![3-button-mode-png]         | ![5-button-mode-png] | ![rumble-mode-png] |



To enable / disable this mode (disabled by default), you have to use the serial console (see below for further instructions). E.g:

```sh
bp32> set_c64_pot_mode 5buttons
```

* `set_c64_pot_mode`: `3buttons`, `5buttons` or `rumble`
  * `3buttons`: Default mode. 2nd and 3rd pot buttons are enabled.
  * `5buttons`: In addition to the 2nd and 3rd buttons, it also enables 4th and 5th buttons. See [crystalct/5plusbuttonsJoystick] for further info.
  * `rumble`:  Only regular "fire" is enabled. Gamepad can receive "rumble" events from the game by using the POT lines.

For further info about "Rumble" mode please watch:

[![Rumble mode](https://img.youtube.com/vi/vCj45OX43JE/0.jpg)](https://www.youtube.com/watch?v=vCj45OX43JE)

[3-button-mode-png]: https://lh3.googleusercontent.com/pw/AMWts8ANW9Ky9WLpThoE5x0kuA2xUNO6T0pv5mucPR1i_DfTJQ8edOssrlhh4dytV7FlrfZe_aE6J8fmxmW2D47YuCWc6TAcfaSSbCQD7A8NX9Y-0pGsl6Zp_p0DsDQALjE5m8hl2NJVMNhgYGR9xTJ4K7OTWw=-no
[5-button-mode-png]: https://lh3.googleusercontent.com/pw/AMWts8Ar_Vi7O3z_FmmEHapim3E9J79e0kPVGuXGSWsY8HN8xyXkrYGV6nGIOAxhA2onhC5Sv2yUUafETDQDw6sIMlXoA-v6mVyiFy6UzbDJmWSUDhHIsJvOAtjd9B4J9F4JQifjUueGMcPD6qAjcLa_48saSg=-no
[rumble-mode-png]: https://lh3.googleusercontent.com/pw/AMWts8BkMB3EONK3cRJBncApRJaCgAWE6gCC7w1imZv5svzrlG0EWDtK2s95Ai10-QUz9Gy73IC5Ww0kI0qsPDTmG0kfdN-ezX7CRLS8szyq4peoTro_35RxXPqhRv5Qt6FDIfXaLJ4B_BR6Av1DfitNyO3Egg=-no

## Supported controllers

Unijoysticle supports most, if not all, modern controllers.
This is a non-comprehensive list of all supported controllers.

### Supported gamepads

![Supported gamepads](https://lh3.googleusercontent.com/pw/AMWts8BxW7NeSR-OyUVSVVKUeUWqPw0OsayivwLGrhkM3MFEPD0aVJr8aBHUwAE9Ow-ASa7b8gKNXUpy9lW8ncvZ0u4UqCo7XufFY6VgVJrs5l5NEoX2wWnBACXJAeynmhnrkAqoMepaegdUAEwUI6nWOt43rg=-no?authuser=0)

- Sony DualSense
- Sony DUALSHOCK 4
- Sony DUALSHOCK 3
- Sony PS3 Move
- Xbox Wireless (models 1708, 1914)
- Nintendo Switch Pro
- Nintendo Wii U
- Nintendo Wii
- Nintendo Balance Board
- Stadia
- Steam
- Android gamepads
- PC/Window gamepads
- 8BitDo
- iCade
- And more

For a complete list, see:

* [Supported gamepads][supported_gamepads]

### Supported mice

![Supported mice](https://lh3.googleusercontent.com/pw/AM-JKLW1uSIck7GkC2YmalJdDoPwxmnD_NynS7tAiiIsn5N2UQnYtBAMCkZBeR8LMFUe8W4Fqbzo7JW1t7i_77sn-y3wYtw-Xbv3wYGhd4sSejTz3ec1T-HCLOguJ5NJMnv0h9fTlj4Wz2ytlPzXotm__bZW2A=h420-no)

Mouse emulation is only avaiable for **Amiga, Atari ST and Atari 8-bit** computers.

For a detailed list of supported mice, see here:

* [Supported mice][supported_mice]

[supported_mice]:  https://gitlab.com/ricardoquesada/bluepad32/blob/develop/docs/supported_mice.md

## Console

You can configure and dump the current Unijoysticle status from the USB Console.

1. Connect the Unijoysticle with the micro-USB cable to your computer
2. Launch a terminal

### CH340 Driver (Windows only)

The drivers are only needed for Windows. Linux has built-in support for CH340.

After connecting the usb cable to the Unijoysticle and your PC do:

*  Open "device manager" and check if a serial port has been added under "ports COM and LPT"
   *  If not, then download and install [CH340 USB to Serial Driver][ch340_win_driver]
   *  If you have trouble installing the drivers, see: [SparkFun CH340 Install guide][sparkfun_ch340] 
*  Look at which serial port number has been added (COMx where x is a number)

[ch340_win_driver]: http://www.wch-ic.com/downloads/CH341SER_ZIP.html
[sparkfun_ch340]: https://learn.sparkfun.com/tutorials/how-to-install-ch340-drivers/all

### Install a terminal program

* Windows: [Putty][putty], [Arduino Serial monitor][arduino-monitor] (See "Troubleshooting" for detailed steps), [idf.py monitor], etc.
* macOS: [tio], [minicom], [idf.py monitor], etc.
* Linux: [tio], [minicom], [idf.py monitor], etc.

The parameters for the terminal are:

* Choose the correct port:
  * Windows: See above
  * Linux & macOS: `/dev/ttyUSB0` (or `ttyUSB1`...)
* Connection speed (bauds): 115200


[putty]: https://www.putty.org/
[arduino-monitor]: https://docs.arduino.cc/software/ide-v2/tutorials/ide-v2-serial-monitor
[minicom]: https://help.ubuntu.com/community/Minicom
[tio]: https://github.com/tio/tio
[idf.py monitor]: https://docs.espressif.com/projects/esp-idf/en/latest/esp32/api-guides/tools/idf-monitor.html

### How to use it

[![asciicast](https://asciinema.org/a/506468.svg)](https://asciinema.org/a/506468)

As an example, this is how to connect to the console using `tio` and `minicom`

```sh
# tio: A great serial terminal  (recommended!)
$ tio /dev/ttyUSB0

# If you can't use tio, minicom works too.
$ minicom -D /dev/ttyUSB0
```

There are many useful commands. The most "common" ones are:

* `list_devices`:  Get information about connected devices
* `get_mouse_scale`:  Get global mouse scale factor
* `set_mouse_scale  <value>`: Set global mouse scale factor
* `set_bluetooth_enabled  <0 | 1>`: To enable/disable Bluetooth discovery mode
* `swap_ports`: Swaps joystick ports
* `set_gamepad_mode  <mode>`: `normal`, `enhanced` or `mouse`
  * `normal`: One gamepad controls just one joystick.
  * `mouse`: Gamepad behaves like a mouse. Usefule in Amiga / AtariST
  * `twinstick`: One gamepad controls both joysticks at the same time. Good Twin Stick games like [Commando 2084][commando2084]
* `set_c64_pot_mode`: `3buttons`, `5buttons` or `rumble`
  * `3buttons`: Default mode. 2nd and 3rd pot buttons are enabled.
  * `5buttons`: In addition to the 2nd and 3rd buttons, it also enables 4th and 5th buttons. See [crystalct/5plusbuttonsJoystick] for further info.
  * `rumble`: Allows games (e.g: [Rambo], [Lemans]) to send "rumble" feedback. 2nd and 3rd buttons are disabled.
  * [Collection of C64 games that are known to work with more than one button, or in rumble mode][c64_collection]
* `get_gamepad_mode`: Returns the gamepad mode.
* `set_mouse_emulation  <emulation>`: `amiga`, `atarist`
  * `amiga`: Emulates an Amiga mouse (default for A500, v2, v2+)
  * `atarist`: Emulates an Atari ST mouse (default for 800XL)
* `get_mouse_emulation`: Returns mouse emulation mode
* `set_autofire_cps  <cps>` Sets the autofire 'clicks per second' (cps)
* `get_autofire_cps`: Returns the autofire 'clicks per second' (cps)
* `version` Gets the Unijoysticle version info
* `help`: Print the list of registered commands

[crystalct/5plusbuttonsJoystick]: https://github.com/crystalct/5plusbuttonsJoystick/
[c64_collection]: https://gitlab.com/ricardoquesada/c64-games-unijoysticle

## Troubleshooting

### Fails to boot

![booting](https://lh3.googleusercontent.com/pw/AM-JKLWhqgMB9Ysm8rpigW8leZ-9EVDI6V16cgqHZ367sgmLW5_ryNepZgCgczJwPRkreb9YBnEFCRXXY3mhwJk7wLR-vo2qRNmtjzNkC-4nnxtCKecsL4qI7CnLm1owSAOWeCwqHjyA9TxdaLE10FzuXWQLWg=-no)

Booting the device takes ~1 second. You should see:

- Power LED must be On
- J1 (Green) & J2 (Red) LEDs should stay On for ~1 second
- Once J1 and J2 are Off, the device will be ready to use

If one of the above mentioned conditions are not met, please file a bug (See "Filing bugs" down below).

### Gamepad cannot connect

This could be due to a lot of things. Assuming that you are using a [supported gamepad][supported_gamepads], try:

1. Unplug the Unijoysticle from the Commodore (turn off the Commodore first).

2. Reset the Unijoysticle: Press the "Reset" button that is placed in the ESP32 Mini Kit.

3. While rebooting, the LEDs should turn on, and after ~half a second, then they should turn off.
   - If the LEDs don't turn On at all: file a bug (see below).
   - If the LEDs don't turn Off, it means that Bluetooth is not ready. Go to step 2.

4. Once the LEDs are off, trying connecting the Gamepad again.

5. If it fails press "Reset + Toggle-Mode" buttons at the same time.
   This will reboot the Unijoysticle while also deleting the stored Bluetooth keys.

6. Put the gamepad in Bluetooth discovery mode (grab the manual of your gamepad). Try again.

7. If it fails, trying connecting the gamepad to a Linux (MacOs or Windows might be the same) machine first.
   If the gamepad cannot connect to Linux, then most probably it is a gamepad issue. Cannot help here.

8. Repeat. Go to Step 2.

If it keeps failing, file a bug (see below).

[supported_gamepads]: supported_gamepads.md

### Gamepad cannot re-connect

Assuming that the gamepad connects Ok for the first time, but fails to reconnect then:

- Press the Reset + Toggle-Mode buttons at the same time.
  This will reboot the Unijoysticle while also deleting the stored BT keys.
  Any try again.

- Put the gamepad in Bluetooth discovery mode. And try again.

If none of the above works, file a bug (see below).

## Filing bugs

File bug here: https://gitlab.com/ricardoquesada/unijoysticle2/issues

When you file a bug, make sure that you include as much information as possible:

- Gamepad you are using. If possible the firmware version the gamepad is using.
- Unijoysticle firmware.
- Computer that you are using: C64, C128, etc.
- How you are powering the Unijoysticle.
- Logs (this is the most important thing!)

### Unijoysticle logs

The logs can be fetched by connecting a terminal to the ESP32 module.

1. Connect the Unijoysticle to the PC using a micro USB cable.
2. Launch any serial terminal. Possible options:
   * Arduino Serial Terminal (See below for detailed steps)
   * or `minicom -D /dev/ttyUSB0` (Linux, macOS)
   * or `tio /dev/ttyUSB0` (Linux, macOS)
   * or `idf.py monitor` (Linux, macOS, Windows. requires to checkout Bluepad32 source code)
   * or [putty] (Windows only)
3. Reset the Unijoysticle
4. Try to connect the gamepad again.
5. Let it try for a few seconds.
6. Copy & paste the output from the terminal and put it in the bug report.


### Arduino terminal step-by-step

1. Download Arduino from here: https://www.arduino.cc/en/main/software
2. Launch Arduino -> Tools -> Set Port

   ![Arduino Set Port](https://lh3.googleusercontent.com/ZFQuAf_6tvYutrRcdcduTdFJSS-dfhDcznTpv5GTkAVdKzsPgHBrpBcuZX5TApMCoc1FXI0wLnKkTKSxONlWGF0Y7RZXJxFmi3a4iZE8AZ_ovOCTl_a3Vd8jOUEbtX0g4m0F_OlHESo=-no)

3. Arduino -> Tools -> Serial Monitor

   ![Arduino Serial Monitor](https://lh3.googleusercontent.com/0z1QOhcuTcLnv-Ra-JrgEoOYD0-cH4tAumqxECO9jE6KdcItf7zycBx5tG4BWhUyISq_E5e7T9gC4fdAehkQ6WJDYAN3U6B2P5OwSsStEXOs6-kFkW1Kol0-Jf26Bno8dIxf7Jp1l0E=-no)

4. From the Serial Monitor, set Bauds to 115200

   ![Set Bauds](https://lh3.googleusercontent.com/evBxv1oQ2jv28wk29ofAKiM0CNMK2GVi6tXmrCX8Wml3xZG6MEz4WoAVIbyX2h21fYDGN7SvkYiFFmTxwVarR4Zm0oElPwzL-oHnIuW5FCOSzclQt3rRI_rrqw5LZ1SzceUBMBSDIjY=-no)

## Contact

* [![discord](https://img.shields.io/discord/775177861665521725.svg)](https://discord.gg/r5aMn6Cw5q)
* Email group: https://groups.google.com/forum/#!forum/unijoysticle
