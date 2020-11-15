# How to pair a DUALSHOCK3 (sixaxis) gamepad with the Unijosyticle

The DUALSHOCK3 gamepad does not implement the entire Bluetooth stack. It requires "manual pairing" in order to work.

## Manual pair

### Fetch the Unijoysticle device Bluetooth Address

* Connect a terminal to the Unijoysticle using 115200 baud 8N1. If you don't know, see [Reporting Bugs][reporting_bugs] in the Users Guide.

* Reset the Unijoysticle

* Watch the logs. You should see something like:

```
Unijoysticle 2 (C) 2016-2020 Ricardo Quesada and contributors.
Bluetooth stack: Copyright (C) 2017 BlueKitchen GmbH.
Firmware version: v1.2.0-beta
Dual port / 1-button mode enabled
I (477) gpio: GPIO[5]| InputEn: 0| OutputEn: 1| OpenDrain: 0| Pullup: 0| Pulldown: 0| Intr:0
I (487) gpio: GPIO[12]| InputEn: 0| OutputEn: 1| OpenDrain: 0| Pullup: 0| Pulldown: 0| Intr:0
I (487) gpio: GPIO[13]| InputEn: 0| OutputEn: 1| OpenDrain: 0| Pullup: 0| Pulldown: 0| Intr:0
I (497) gpio: GPIO[14]| InputEn: 0| OutputEn: 1| OpenDrain: 0| Pullup: 0| Pulldown: 0| Intr:0
I (507) gpio: GPIO[16]| InputEn: 0| OutputEn: 1| OpenDrain: 0| Pullup: 0| Pulldown: 0| Intr:0
I (517) gpio: GPIO[17]| InputEn: 0| OutputEn: 1| OpenDrain: 0| Pullup: 0| Pulldown: 0| Intr:0
I (527) gpio: GPIO[18]| InputEn: 0| OutputEn: 1| OpenDrain: 0| Pullup: 0| Pulldown: 0| Intr:0
I (537) gpio: GPIO[19]| InputEn: 0| OutputEn: 1| OpenDrain: 0| Pullup: 0| Pulldown: 0| Intr:0
I (547) gpio: GPIO[23]| InputEn: 0| OutputEn: 1| OpenDrain: 0| Pullup: 0| Pulldown: 0| Intr:0
I (557) gpio: GPIO[25]| InputEn: 0| OutputEn: 1| OpenDrain: 0| Pullup: 0| Pulldown: 0| Intr:0
I (567) gpio: GPIO[26]| InputEn: 0| OutputEn: 1| OpenDrain: 0| Pullup: 0| Pulldown: 0| Intr:0
I (577) gpio: GPIO[27]| InputEn: 0| OutputEn: 1| OpenDrain: 0| Pullup: 0| Pulldown: 0| Intr:0
I (587) gpio: GPIO[32]| InputEn: 0| OutputEn: 1| OpenDrain: 0| Pullup: 0| Pulldown: 0| Intr:0
I (597) gpio: GPIO[33]| InputEn: 0| OutputEn: 1| OpenDrain: 0| Pullup: 0| Pulldown: 0| Intr:0
I (607) gpio: GPIO[10]| InputEn: 1| OutputEn: 0| OpenDrain: 0| Pullup: 1| Pulldown: 0| Intr:3
Gap security level: 0
I (617) BTDM_INIT: BT controller compile version [c1cbe45]
I (617) system_api: Base MAC address is not set, read default base MAC address from BLK0 of EFUSE
I (727) phy: phy_version: 4180, cb3948e, Sep 12 2019, 16:39:13, 0, 0
BTstack up and running at CC:50:E3:AF:E2:96     <------ THIS IS THE BLUETOOTH ADDRESS
Btstack ready!
```

In this example, the Unijoysticle Bluetooth Address is "CC:50:E3:AF:E2:96".

[reporting_bugs]: user_guide.md#reporting-bugs

### Plugin the DS3 gamepad

Plugin the DS3 gamepad to your PC. Should work on all Linux, Mac and Windows, although I only tested it on Linux.

### Pair it

Install [HIDAPI][hidapi]. For Debian-based OSs, do:
```
$ sudo apt install libhidapi-dev
```

On Gentoo Linux run:
```
$ sudo emerge dev-libs/hidapi
```

For MacOS, Windows: I don't know, you are in your own.

* Compile the "sixaxis pairer":

Get the firmware source code from https://gitlab.com/ricardoquesada/bluepad32

```sh
$ cd /.../bluepad32/src/tools
$ cc -o sixaxispairer sixaxispairer.c -lhidapi-libusb
$ ./sixaxispairer XX:XX:XX:XX:XX:XX  # Following our example, it should be CC:50:E3:AF:E2:96
```

[hidapi]: https://github.com/signal11/hidapi

### Unplug DS3 from computer

Unplug the DS3 gamepad from your computer and press the "Play" button on the DS3 to establish a connection with the Unijoysticle.
It might take a few seconds (perhaps more than 10 seconds) to establish the connection.
