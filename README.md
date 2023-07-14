# Unijoysticle™ 2

[![discord](https://img.shields.io/discord/775177861665521725.svg)](https://discord.gg/r5aMn6Cw5q)

![logo][uni_logo]

Unijoysticle is a device that allows you to use modern Bluetooth gamepads and mice in retro computers.

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
| Total Size (mm)                          | 65 x 75 x 13.6              | 72 x 68 x 13.6              | 67 x 72 x 13.6              | 64 x 64 x 13.6                     | 63 x 66 x 17                          |
| PCB Size (mm)                            | 53 x 72 x 1.6               | 63 x 60 x 1.6               | 52 x 67 x 1.6               | 49 x 62 x 1.6                      | 46 x 57 x 1.6                         |
| Weight (gr)                              | 27                          | 27.1                        | 25.6                        | 24                                 | 37                                    |
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

## Basic functionality

One Bluetooth gamepad controls one joystick.
You need two gamepads to control the two joysticks.

![Basic mode](https://lh3.googleusercontent.com/pw/AM-JKLW09v8uSrCzB-2ooXXoH-leP2SPqV0-vg6Ym_IFNjwlpQoVELZQguo9oVIl3WhdzG2N-RQTyjH0xV8amFrCSv1XYpcUmgdRKJwGePIeBYQoUtx8JzbZS_c1L3nC3nRmTWdwSolBOnELwMal9qSkSpzfVw=h330-no)

The mappings are:

- D-pad/joypad: controls up/down/left/right.
- Button A / Cross: fire button
- Button B / Circle: "up"  (ideal for platform games).
- Button X / Square: 2nd button (Amiga / AtariST only)
- Button Y / Triangle: 3rd button (Amiga / AtariST only)
- Button shoulder-right: autofire.
- System button swaps between Joystick 1 and 2

## Twin Stick functionality (AKA Enhanced mode)

![Twin Stick mode](https://lh3.googleusercontent.com/pw/AIL4fc_MqBokDp6iNP9CjfJVIDPorKzkewVF6r139qHNmiq8C2hoTpbLyT_4TRiVXIMbtde3fxuOmS_Ag-RMR6G5KzQKheq6ewwZp-DuR4hjCAeTwgByG_CtxPKVF-rIbSLw0tm3waibuNuze19TpGmP3JacMQ=w512-no)

When in "Enhanced mode", you control the two joysticks with only one gamepad.
The mappings are:

- Left joypad / d-pad: control Joystick 2 movements.
- Right joypad: control Joystick 1 movements.
- Button A / Cross: fire for Joystick 2
- Button B / Circle: fire for Joystick 1
- Button X / Square: 2nd button for Joystick 2
- Button Y / Triangle: 2nd button for Joystick 1
- Button Shoulder Left: auto-fire for Joystick 2
- Button Shoulder Right: auto-fire for Joystick 1

This mode is ideal for games like [Commando][2] or [1942][3] since it allows you
throw grenades / roll by pressing Button B.

## Supported controllers

### Gamepads
![Supported gamepads](https://lh3.googleusercontent.com/pw/AM-JKLXpmyDvNXZ_LmlmBSYObRZDhwuY6hHXXBzAicFw1YH1QNSgZrpiPWXZMiPNM0ATgrockqGf5bLsI3fWceJtQQEj2_OroHs1SrxsgmS8Rh4XHlnFolchomsTPVC7o5zi4pXGQkhGEFbinoh3-ub_a4lQIw=-no?authuser=0)

- Sony DualSense
- Sony DUALSHOCK 4
- Sony DUALSHOCK 3
- Nintendo Switch Pro
- Nintendo JoyCons
- Nintendo Wii U
- Nintendo Wii + accesories
- Xbox Wireless controller (model 1708)
- Steam
- Stadia
- Android gamepads
- PC/Windows gamepads
- 8BitDo controllers
- iCade
- And more

See:

* [Supported gamepads][gamepads]
* [Supported mice][mice]

[gamepads]: https://gitlab.com/ricardoquesada/unijoysticle2/blob/master/docs/supported_gamepads.md
[mice]: https://gitlab.com/ricardoquesada/bluepad32/blob/develop/docs/supported_mice.md

### Mice

![Supported mice](https://lh3.googleusercontent.com/pw/AM-JKLW1uSIck7GkC2YmalJdDoPwxmnD_NynS7tAiiIsn5N2UQnYtBAMCkZBeR8LMFUe8W4Fqbzo7JW1t7i_77sn-y3wYtw-Xbv3wYGhd4sSejTz3ec1T-HCLOguJ5NJMnv0h9fTlj4Wz2ytlPzXotm__bZW2A=h420-no)

Mouse emulation is only available for **Amiga and Atari ST** computers.

For a detailed list of supported mice, see here:

* [Supported mice][supported_mice]

[supported_mice]:  https://gitlab.com/ricardoquesada/bluepad32/blob/develop/docs/supported_mice.md

## Order info

If you are looking for ready-to-use boards, you can purchase one from here:

<a href="https://www.tindie.com/stores/riq/?ref=offsite_badges&utm_source=sellers_riq&utm_medium=badges&utm_campaign=badge_large"><img src="https://d2ss6ovg47m0r5.cloudfront.net/badges/tindie-larges.png" alt="I sell on Tindie" width="200" height="104"></a>

Looking for a remix and/or 3rd party vendors. Go here: [SELLING_DEVICES.md][selling_devices]

[selling_devices]: SELLING_DEVICES.md

## More Info

- [Users guide][users_guide]
- [Discord][discord]
- [Email group][email_group]

[users_guide]: https://gitlab.com/ricardoquesada/unijoysticle2/blob/master/docs/user_guide.md
[discord]: https://discord.gg/r5aMn6Cw5q
[email_group]: https://groups.google.com/forum/#!forum/unijoysticle

[1]: https://retro.moe/unijoysticle
[2]: https://csdb.dk/release/?id=137173
[3]: https://csdb.dk/release/?id=38140
