# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).
Adheres to the "standard" way to version boards/layouts. E.g: letters instead of numbers.

## [Unreleased] -

* Unijoysticle2+ Rev B
    * Uses 0805 with long pads (hand-solder friendly)
    * Uses CH340C instead of CP2102 (hand-solder friendly)
    * USB Micro connector moved a few mm inside the board.
      * Board has "hole" so that the USB Micro has space
    * Board has 4 layers instead of 2.
      * Board can be routed in 2 layers without major probblems,
        but using 4-layers for testing purposes.

## [Unijoysticle2+ Rev A] - 2021-06-22

* First attempt of the Unijoysticle2+
  * It is case friendly
  * Doesn't use ESP32 Mini Kit, it is built-in
  * Most of the components are SMD
  * Includes caps to filter hi and low frequencies
  * Schematic seems to be Ok, but layout is not.
* Firmware, including all related files, moved to Bluepad32 repo
* Only things related to the board like schematics and layout are kept in this repo
* Community contributions:
  * C16/Plus4 board, by Eduardo Casino
  * C64 - Rev H board, by Kospec C64

## [Revision F] - 2020-09-17

* Includes Schottky diodes from Rev E.
* Adds mounting hole, for a possible case
* Logo is made as "locked" so that it doesn't get removed after a re-route

## [Revision E] - 2020-02-06

* Revision E is a contribution by Kopsec C64
* It is en Eagle format.
* They layout is slightly different
* Uses Schottky diodes

## [Revision D] - 2019-09-28

* Board: a bit wider than Rev C. Easier to solder.
* Replaces DIP switch with Swith Slide SPDT.
  * Easier to source a 200mA Switch Slide than a 200mA DIP switch.
* Funcional equivalent to Rev C.
* Public release.

## [Revision C] - 2019-09-??

* Board: a bit wider, and taller than Rev B. Easier to solder.
* 7405 are powered from C64. Allows to plug in the Unijoysticle unpowered
   without causing noise in CIAs.
* Possibility to power the Unijoysticle from C64, if power supply is big enough.
* KiCad Project: moved SparkFun.lib inside unijoysticle project.
* Internal version: Not released to public.

## [Revision B] - 2019-04-15

### Added

* Schematic: Rev B.
* Board layout: Rev B.
* Initial public release.
