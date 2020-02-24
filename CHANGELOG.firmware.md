# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.5.4] - 2020-02-23
### Added
- Firmware: Nintendo Switch Pro uses "raw" parser instead of HID, making it more flexible.
- Firmware: Nintendo Switch Pro clones supported.
- Firmware: Nintendo Switch Pro uses factory calibration data to align sticks.
- Firmware: hid_device dump includes controller type.
- Firmware: updated controllers DB from SDL

## [0.5.3] - 2020-02-09
### Added
- Firmware: Nintendo Switch Pro: Original Nintendo Switch Pro works.
- Firmware: Nintendo Switch Pro: LEDs are being set.
- Firmware: DualShock 4: LEDs are being set. Uses HID report type 0x11 by default.

### Changed
- Firmware: MTU changed from 48 to 128 bytes. Needed for report 0x11 in DualShock4.
- Firmware: Linux version compiles with clang by default.
- Firmware: Added missing 'break' in OUYA and Generic drivers, making them more reliable.

## [0.5.2] - 2020-02-01
### Added
- Firmware: Xbox One: added support for firmware v4.8.

## [0.5.1] - 2020-01-03
### Added
- Firmware: Xbox One: rumbles when connected or switches joystick port.
- Firmware: esp-idf v3.3.1
- Firmware: SDP queries timeout after 3 seconds, enabling another SDP query to start.
- Firmware: improved logging

## [0.5] - 2019-12-15
### Added
- Firmware: Wii Remote 1st gen correctly detects attached extensions like the
            Nunchuk and Classic Controller.
- Docs: firmware setup doc has info about Windows and includes some screenshots.

## [0.5-rc2] - 2019-12-14
### Added
- Firmware: Support for Nintendo Wii Classic Controller / Classic Controller Pro

### Changed
- Firmware: After swapping the joysticks ports, the joysticks lines are "Off".
            Prevents leaving unexpected lines as "On".
- Firmware: Wii driver: clean up code. Added "instance" concept, easier to mantain.

## [0.5-rc1] - 2019-12-09
### Added
- Firmware: Added support for Nintendo Wii Nunchuk
- Firmware: PC platform: added support for "delete keys" and "enable enhanced mode"
            via command line.

### Changed
- Firmware: Auto-fire in enhanced mode is swapped.
            Button "Shoulder Left" triggers auto-fire in to Joy A.
            Button "Shoulder Right" triggers auto-fire in Joy B.
- Firmware: Improved debug logging in "PC platform".
- Firmware: Code is more readable in uni_gamepad.c.
- Firmware: When two controllers are connected, the two LEDs are turned on.

## [0.5-rc0] - 2019-12-06
### Added
- Firmware: Added support for Nintendo Switch Pro controller.
- Firmware: Improved 8Bitdo gamepad support (SN30 Pro & Lite).
- Firmware: BTStack f07720a033c9fcfa856511634253b9889fa94cd8 (2019-12-6)

## [0.5-beta2] - 2019-11-17
### Changed
- Firmware: iCade 8-bitty fixed shoulder-left / start button mappings.
- Firmware: Print to console whether single-port / 3-button mode is enabled.

## [0.5-beta1] - 2019-11-10
### Added
- Firmware: Added support for "single joystick" unijoysticle devices.
            Edit `uni_config.h` and change `UNIJOYSTICLE_SINGLE_PORT` to 1
- Firmware: Added support for iCade 8-bitty gamepad.

### Changed
- Firmware: Improved iCade Cabinet support:  autofire, debug and shoulder buttons supported.
- Firmware: ESP-IDF v3.3
- Firmware: BTStack 138818a33e591e964a727284c192700abe2fee26 (2019-9-9)

## [0.4] - 2019-09-28
### Changed
- Firmware: Fix: Can enter combo Joy-Joy when there are disconnected devices.

## [0.4-rc0] - 2019-08-12
### Added
- Firmware: Support for Nintendo Wii Remote Motion Plus controller.
- Firmware: Support for "accelerometer mode" in Nintendo Wii Remote.
- Firmware: Support for "vertical mode" in Nintendo Wii Remote.

### Changed
- Firmware: Fix crash when printing "cannot swap joystick"
- Firmware: Compile ESP-IDF as Release build.
- Docs: Improved "supported devices".

## [0.3] - 2019-08-05
### Added
- Firmware: Nintendo Wii controller LED's represent the joystick port assigned to.

### Changed
- Firmware: Nintendo Wii controller uses "horizontal" orientation setup.
- Firmware: Nintendo Wii U has Y axis working correctly.

## [0.3-rc0] - 2019-08-03
### Added
- Firmware: Add Nintendo Wii generic support. This includes
  - Wii U Pro controller
  - Wii Remote
  - Possibly other Nintendo Wii controllers

### Changed
- Firmware: Nintendo Wii U Pro support: Works Ok on ESP32.
- Firmware: Bluetooth state machine. Code clean-up. It is easier to mantain.
- Firmware: Using btstack master-branch. Commit: dbb3cbc198393187c63748b8b0ed0a7357c9f190

### Removed
- Firmware: Name discovery disabled for the moment

## [0.3-beta] - 2019-07-27
### Added
- Firmware: Added Wii U Pro controller support.

### Changed
- Firmware: Using esp-idf v3.2.2
- Firmware: Using btstack develop-branch. Commit: a4ea32feba8ca8a16509a75d3d80e8017ca2cf3b

## [0.2.1] - 2019-06-29
### Added
- Firmware: more verbose logs when detecting the type of device
- Firmware: Started Wii U Pro controller support. Not working yet.

### Changed
- Firmware: Gamepad names are fetched correctly.
- Firmware: Using btstack develop-branch. Commit: 32b46fec1df77000b2e383d209074f4c2866ebdf
- Firmware: "apple" parser renamed to "nimbus" parser.

## [0.2.0] - 2019-05-22
### Added
- Docs: User guide

### Changed
- Firmware: Combo-mode:
  - Turn on both LEDs when enabled.
  - When back from combo-mode, restore previously used port
  - Cannot swap ports when in combo mode
- Firmware: Atari ST mouse support
  - Buttons working as expected
  - A bit smoother than v0.1.0 but still not good enough
- Firmware: Updated link to http://retro.moe/unijoysticle2
- Firmware: Using esp-idf v3.2. Commit: 286202caa31b61c2182209f37f8069a0b60fb942
    - Components Bluetooth: enabled
       - Bluedroid: disabled
       - Controller -> Bluetooth controller mode: Bluetooth dual mode
       - Controller -> BR/EDR ACL Max Connections: 4
       - Controller -> BR/EDR Sync Max Connections: 2
    - Components ESP32-specific
       - Coredump to UART
       - Main XTAL frequency: Autodetect
    - Components Wi-Fi
       - Software controls WiFi/Bluetooth coexistence: disabled
    -
- Firmware: Using btstack develop-branch. Commit: 4ce43359e6190a70dcb8ef079b902c1583c2abe4

## [0.1.0] - 2019-04-15
### Added
- Firmware: v0.1.0
  - Using esp-idf v3.1.3. Commit: cf5dbadf4f25b395887238a7d4d8251c279afa8c
  - Using btstack develop-branch. Commit: 8b22c04ddc425565c8e4002a6d4d26a53426a31f
