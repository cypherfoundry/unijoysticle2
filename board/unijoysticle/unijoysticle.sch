EESchema Schematic File Version 4
LIBS:unijoysticle-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Unijoysticle 2"
Date ""
Rev "v0.0.1"
Comp "Retro Moe"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Diode:1N4001 D1
U 1 1 5C65A496
P 1600 7200
F 0 "D1" H 1600 7416 50  0000 C CNN
F 1 "1N4001" H 1600 7325 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 1600 7025 50  0001 C CNN
F 3 "" H 1600 7200 50  0001 C CNN
	1    1600 7200
	-1   0    0    -1  
$EndComp
Text GLabel 6150 3700 2    50   Input ~ 0
GPIO_J1UP
Text GLabel 1150 1100 0    50   Input ~ 0
GPIO_J1UP
$Comp
L power:GND #PWR06
U 1 1 5C6919E6
P 1200 7400
F 0 "#PWR06" H 1200 7150 50  0001 C CNN
F 1 "GND" V 1205 7272 50  0000 R CNN
F 2 "" H 1200 7400 50  0001 C CNN
F 3 "" H 1200 7400 50  0001 C CNN
	1    1200 7400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1200 7200 1450 7200
Text GLabel 1150 1900 0    50   Input ~ 0
GPIO_J1DOWN
Text GLabel 1150 2700 0    50   Input ~ 0
GPIO_J1LEFT
Text GLabel 1150 3500 0    50   Input ~ 0
GPIO_J1RIGHT
Text GLabel 1150 4300 0    50   Input ~ 0
GPIO_J1FIRE
Text GLabel 8700 1100 0    50   Input ~ 0
GPIO_J2UP
Text GLabel 8700 1900 0    50   Input ~ 0
GPIO_J2DOWN
Text GLabel 8700 2700 0    50   Input ~ 0
GPIO_J2LEFT
Text GLabel 8700 3500 0    50   Input ~ 0
GPIO_J2RIGHT
Text GLabel 4300 4000 0    50   Input ~ 0
GPIO_J2FIRE
Text GLabel 4300 3500 0    50   Input ~ 0
GPIO_J2RIGHT
Text GLabel 6150 4300 2    50   Input ~ 0
GPIO_J2LEFT
Text GLabel 6150 3600 2    50   Input ~ 0
GPIO_J2DOWN
Text GLabel 6150 3800 2    50   Input ~ 0
GPIO_J2UP
Text GLabel 4300 3400 0    50   Input ~ 0
GPIO_J1DOWN
Text GLabel 4300 3300 0    50   Input ~ 0
GPIO_J1LEFT
Text GLabel 6150 3400 2    50   Input ~ 0
GPIO_J1RIGHT
Text GLabel 4300 3800 0    50   Input ~ 0
GPIO_J1FIRE
Text GLabel 8700 5100 0    50   Input ~ 0
GPIO_J1POTY
$Comp
L power:GND #PWR0102
U 1 1 5C6B262F
P 4150 1400
F 0 "#PWR0102" H 4150 1150 50  0001 C CNN
F 1 "GND" V 4155 1272 50  0000 R CNN
F 2 "" H 4150 1400 50  0001 C CNN
F 3 "" H 4150 1400 50  0001 C CNN
	1    4150 1400
	0    1    1    0   
$EndComp
Text GLabel 6150 4600 2    50   Input ~ 0
GPIO_J1POTX
Text GLabel 4300 3600 0    50   Input ~ 0
GPIO_J1POTY
Wire Wire Line
	4850 900  4550 900 
Wire Wire Line
	4850 1000 4550 1000
Wire Wire Line
	4850 1100 4550 1100
Wire Wire Line
	4850 1300 4550 1300
Wire Wire Line
	4850 1500 4550 1500
Wire Wire Line
	4850 1600 4550 1600
Wire Wire Line
	4850 1700 4550 1700
Text GLabel 4550 900  0    50   Input ~ 0
J1UP
Text GLabel 4550 1100 0    50   Input ~ 0
J1DOWN
Text GLabel 4550 1300 0    50   Input ~ 0
J1LEFT
Text GLabel 4550 1000 0    50   Input ~ 0
J1FIRE
Text GLabel 4550 1700 0    50   Input ~ 0
J1POTY
Text GLabel 4550 1600 0    50   Input ~ 0
J1POTX
Text GLabel 4550 1500 0    50   Input ~ 0
J1RIGHT
Wire Wire Line
	4850 1400 4150 1400
Text GLabel 6800 950  2    50   Input ~ 0
J2UP
Text GLabel 6800 1150 2    50   Input ~ 0
J2DOWN
Text GLabel 6800 1350 2    50   Input ~ 0
J2LEFT
Text GLabel 6800 1550 2    50   Input ~ 0
J2RIGHT
Text GLabel 6800 1050 2    50   Input ~ 0
J2FIRE
Text GLabel 10200 1100 2    50   Input ~ 0
J2UP
Text GLabel 10200 1900 2    50   Input ~ 0
J2DOWN
Text GLabel 10200 2700 2    50   Input ~ 0
J2LEFT
Text GLabel 10200 3500 2    50   Input ~ 0
J2RIGHT
Text GLabel 10200 5100 2    50   Input ~ 0
J1POTY
Text GLabel 2650 4300 2    50   Input ~ 0
J1FIRE
Text GLabel 2650 1100 2    50   Input ~ 0
J1UP
Text GLabel 2650 1900 2    50   Input ~ 0
J1DOWN
Text GLabel 2650 2700 2    50   Input ~ 0
J1LEFT
Text GLabel 2650 3500 2    50   Input ~ 0
J1RIGHT
$Comp
L power:GND #PWR0107
U 1 1 5C6BCB4E
P 4300 5100
F 0 "#PWR0107" H 4300 4850 50  0001 C CNN
F 1 "GND" H 4305 4927 50  0000 C CNN
F 2 "" H 4300 5100 50  0001 C CNN
F 3 "" H 4300 5100 50  0001 C CNN
	1    4300 5100
	0    1    1    0   
$EndComp
$Comp
L SparkFun-Boards:ESP32_THING_W_ANT_KEEPOUT B1
U 1 1 5C6B6FCB
P 5250 4200
F 0 "B1" H 5250 5560 45  0000 C CNN
F 1 "ESP32_THING_W_ANT_KEEPOUT" H 5250 5476 45  0000 C CNN
F 2 "Parts:MH-ET_LIVE_MINIKIT_ESP32" H 5250 5400 20  0001 C CNN
F 3 "" H 5250 4200 50  0001 C CNN
F 4 "DEV-13907" H 5250 5381 60  0000 C CNN "Field4"
	1    5250 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 3400 4750 3400
Wire Wire Line
	4300 3300 4750 3300
Wire Wire Line
	5750 4300 6150 4300
Wire Wire Line
	4300 5100 4750 5100
Wire Wire Line
	4300 5000 4750 5000
$Comp
L power:VDD #PWR0103
U 1 1 5C6BA1C1
P 1950 7200
F 0 "#PWR0103" H 1950 7050 50  0001 C CNN
F 1 "VDD" V 1967 7328 50  0000 L CNN
F 2 "" H 1950 7200 50  0001 C CNN
F 3 "" H 1950 7200 50  0001 C CNN
	1    1950 7200
	0    1    1    0   
$EndComp
$Comp
L Connector:Barrel_Jack J3
U 1 1 5C70344B
P 900 7300
F 0 "J3" H 955 7625 50  0000 C CNN
F 1 "Barrel_Jack" H 955 7534 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 950 7260 50  0001 C CNN
F 3 "" H 950 7260 50  0001 C CNN
	1    900  7300
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0104
U 1 1 5C703EAD
P 4300 5000
F 0 "#PWR0104" H 4300 4850 50  0001 C CNN
F 1 "VDD" V 4318 5127 50  0000 L CNN
F 2 "" H 4300 5000 50  0001 C CNN
F 3 "" H 4300 5000 50  0001 C CNN
	1    4300 5000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1750 7200 1950 7200
$Comp
L Connector:DB9_Female J1
U 1 1 5C705949
P 5150 1300
F 0 "J1" H 5329 1346 50  0000 L CNN
F 1 "DB9_Female" H 5329 1255 50  0000 L CNN
F 2 "Connector_Dsub:DSUB-9_Female_Horizontal_P2.77x2.84mm_EdgePinOffset9.40mm" H 5150 1300 50  0001 C CNN
F 3 "" H 5150 1300 50  0001 C CNN
	1    5150 1300
	1    0    0    -1  
$EndComp
$Comp
L Connector:DB9_Female J2
U 1 1 5C705C0F
P 6350 1350
F 0 "J2" H 6270 2042 50  0000 C CNN
F 1 "DB9_Female" H 6270 1951 50  0000 C CNN
F 2 "Connector_Dsub:DSUB-9_Female_Horizontal_P2.77x2.84mm_EdgePinOffset9.40mm" H 6350 1350 50  0001 C CNN
F 3 "" H 6350 1350 50  0001 C CNN
	1    6350 1350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6650 950  6800 950 
Wire Wire Line
	6650 1050 6800 1050
Wire Wire Line
	6650 1150 6800 1150
Wire Wire Line
	6800 1350 6650 1350
Wire Wire Line
	6800 1550 6650 1550
Wire Wire Line
	6650 1450 7350 1450
$Comp
L power:GND #PWR0108
U 1 1 5C7111C5
P 7350 1450
F 0 "#PWR0108" H 7350 1200 50  0001 C CNN
F 1 "GND" V 7355 1322 50  0000 R CNN
F 2 "" H 7350 1450 50  0001 C CNN
F 3 "" H 7350 1450 50  0001 C CNN
	1    7350 1450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5750 3800 6150 3800
Wire Wire Line
	5750 3700 6150 3700
Wire Wire Line
	5750 3600 6150 3600
Wire Wire Line
	5750 3400 6150 3400
Wire Wire Line
	4300 3500 4750 3500
Wire Wire Line
	4300 4000 4750 4000
Wire Wire Line
	4300 3800 4750 3800
Wire Wire Line
	4300 3600 4750 3600
Wire Wire Line
	6150 4600 5750 4600
$Comp
L 74xx_IEEE:7405 IC1
U 1 1 5C85C5CF
P 1900 1100
F 0 "IC1" H 1900 1616 50  0000 C CNN
F 1 "7405" H 1900 1525 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 1900 1100 50  0001 C CNN
F 3 "" H 1900 1100 50  0001 C CNN
	1    1900 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 1100 2650 1100
$Comp
L 74xx_IEEE:7405 IC1
U 2 1 5C865B6F
P 1900 1900
F 0 "IC1" H 1900 2416 50  0000 C CNN
F 1 "7405" H 1900 2325 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 1900 1900 50  0001 C CNN
F 3 "" H 1900 1900 50  0001 C CNN
	2    1900 1900
	1    0    0    -1  
$EndComp
$Comp
L 74xx_IEEE:7405 IC1
U 3 1 5C8681B1
P 1900 2700
F 0 "IC1" H 1900 3216 50  0000 C CNN
F 1 "7405" H 1900 3125 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 1900 2700 50  0001 C CNN
F 3 "" H 1900 2700 50  0001 C CNN
	3    1900 2700
	1    0    0    -1  
$EndComp
$Comp
L 74xx_IEEE:7405 IC1
U 4 1 5C86820C
P 1900 3500
F 0 "IC1" H 1900 4016 50  0000 C CNN
F 1 "7405" H 1900 3925 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 1900 3500 50  0001 C CNN
F 3 "" H 1900 3500 50  0001 C CNN
	4    1900 3500
	1    0    0    -1  
$EndComp
$Comp
L 74xx_IEEE:7405 IC1
U 5 1 5C8682C5
P 1900 4300
F 0 "IC1" H 1900 4816 50  0000 C CNN
F 1 "7405" H 1900 4725 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 1900 4300 50  0001 C CNN
F 3 "" H 1900 4300 50  0001 C CNN
	5    1900 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 1900 2650 1900
Wire Wire Line
	2450 3500 2650 3500
Wire Wire Line
	2450 2700 2650 2700
Wire Wire Line
	2450 4300 2650 4300
$Comp
L 74xx_IEEE:7405 IC1
U 6 1 5C88A6AA
P 1900 5100
F 0 "IC1" H 1900 5616 50  0000 C CNN
F 1 "7405" H 1900 5525 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 1900 5100 50  0001 C CNN
F 3 "" H 1900 5100 50  0001 C CNN
	6    1900 5100
	1    0    0    -1  
$EndComp
Text GLabel 1150 5100 0    50   Input ~ 0
GPIO_J1POTX
Text GLabel 2650 5100 2    50   Input ~ 0
J1POTX
Wire Wire Line
	2650 5100 2450 5100
$Comp
L 74xx_IEEE:7405 IC2
U 1 1 5C8A5E4F
P 9450 1100
F 0 "IC2" H 9450 1616 50  0000 C CNN
F 1 "7405" H 9450 1525 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 9450 1100 50  0001 C CNN
F 3 "" H 9450 1100 50  0001 C CNN
	1    9450 1100
	1    0    0    -1  
$EndComp
$Comp
L 74xx_IEEE:7405 IC2
U 2 1 5C8A5FAD
P 9450 1900
F 0 "IC2" H 9450 2416 50  0000 C CNN
F 1 "7405" H 9450 2325 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 9450 1900 50  0001 C CNN
F 3 "" H 9450 1900 50  0001 C CNN
	2    9450 1900
	1    0    0    -1  
$EndComp
$Comp
L 74xx_IEEE:7405 IC2
U 3 1 5C8A626C
P 9450 2700
F 0 "IC2" H 9450 3216 50  0000 C CNN
F 1 "7405" H 9450 3125 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 9450 2700 50  0001 C CNN
F 3 "" H 9450 2700 50  0001 C CNN
	3    9450 2700
	1    0    0    -1  
$EndComp
$Comp
L 74xx_IEEE:7405 IC2
U 4 1 5C8A62EC
P 9450 3500
F 0 "IC2" H 9450 4016 50  0000 C CNN
F 1 "7405" H 9450 3925 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 9450 3500 50  0001 C CNN
F 3 "" H 9450 3500 50  0001 C CNN
	4    9450 3500
	1    0    0    -1  
$EndComp
$Comp
L 74xx_IEEE:7405 IC2
U 5 1 5C8A6416
P 9450 4300
F 0 "IC2" H 9450 4816 50  0000 C CNN
F 1 "7405" H 9450 4725 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 9450 4300 50  0001 C CNN
F 3 "" H 9450 4300 50  0001 C CNN
	5    9450 4300
	1    0    0    -1  
$EndComp
$Comp
L 74xx_IEEE:7405 IC2
U 6 1 5C8A6505
P 9450 5100
F 0 "IC2" H 9450 5616 50  0000 C CNN
F 1 "7405" H 9450 5525 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 9450 5100 50  0001 C CNN
F 3 "" H 9450 5100 50  0001 C CNN
	6    9450 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 1100 8900 1100
Wire Wire Line
	8700 1900 8900 1900
Wire Wire Line
	8700 2700 8900 2700
Wire Wire Line
	8700 3500 8900 3500
Text GLabel 8700 4300 0    50   Input ~ 0
GPIO_J2FIRE
Wire Wire Line
	8700 4300 8900 4300
Wire Wire Line
	8700 5100 8900 5100
Text GLabel 10200 4300 2    50   Input ~ 0
J2FIRE
Wire Wire Line
	10000 1100 10200 1100
Wire Wire Line
	10000 1900 10200 1900
Wire Wire Line
	10000 2700 10200 2700
Wire Wire Line
	10000 3500 10200 3500
Wire Wire Line
	10000 4300 10200 4300
Wire Wire Line
	10000 5100 10200 5100
Wire Wire Line
	1150 1100 1350 1100
Wire Wire Line
	1150 1900 1350 1900
Wire Wire Line
	1150 2700 1350 2700
Wire Wire Line
	1150 3500 1350 3500
Wire Wire Line
	1150 4300 1350 4300
Wire Wire Line
	1150 5100 1350 5100
$Comp
L power:VDD #PWR0105
U 1 1 5C862F14
P 2350 4700
F 0 "#PWR0105" H 2350 4550 50  0001 C CNN
F 1 "VDD" V 2367 4828 50  0000 L CNN
F 2 "" H 2350 4700 50  0001 C CNN
F 3 "" H 2350 4700 50  0001 C CNN
	1    2350 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	2350 4700 1900 4700
Wire Wire Line
	1900 4700 1900 4800
Wire Wire Line
	1900 5350 1900 5500
Wire Wire Line
	1900 5500 2400 5500
$Comp
L power:GND #PWR0101
U 1 1 5C869C5D
P 2400 5500
F 0 "#PWR0101" H 2400 5250 50  0001 C CNN
F 1 "GND" V 2405 5372 50  0000 R CNN
F 2 "" H 2400 5500 50  0001 C CNN
F 3 "" H 2400 5500 50  0001 C CNN
	1    2400 5500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9450 5350 9450 5500
Wire Wire Line
	9450 5500 10000 5500
Wire Wire Line
	9450 4800 9450 4700
Wire Wire Line
	9450 4700 10000 4700
$Comp
L power:VDD #PWR0106
U 1 1 5C86D74A
P 10000 4700
F 0 "#PWR0106" H 10000 4550 50  0001 C CNN
F 1 "VDD" V 10017 4828 50  0000 L CNN
F 2 "" H 10000 4700 50  0001 C CNN
F 3 "" H 10000 4700 50  0001 C CNN
	1    10000 4700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5C86D7BE
P 10000 5500
F 0 "#PWR0109" H 10000 5250 50  0001 C CNN
F 1 "GND" V 10005 5372 50  0000 R CNN
F 2 "" H 10000 5500 50  0001 C CNN
F 3 "" H 10000 5500 50  0001 C CNN
	1    10000 5500
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D2
U 1 1 5C86DF58
P 3800 5800
F 0 "D2" H 3791 6016 50  0000 C CNN
F 1 "LED" H 3791 5925 50  0000 C CNN
F 2 "digikey-footprints:LED_3mm_Radial" H 3800 5800 50  0001 C CNN
F 3 "~" H 3800 5800 50  0001 C CNN
	1    3800 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 5C86DFE0
P 3800 6200
F 0 "D3" H 3791 6416 50  0000 C CNN
F 1 "LED" H 3791 6325 50  0000 C CNN
F 2 "digikey-footprints:LED_3mm_Radial" H 3800 6200 50  0001 C CNN
F 3 "~" H 3800 6200 50  0001 C CNN
	1    3800 6200
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5C86E310
P 3800 6750
F 0 "SW1" H 3800 7035 50  0000 C CNN
F 1 "SW_Push" H 3800 6944 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 3800 6950 50  0001 C CNN
F 3 "" H 3800 6950 50  0001 C CNN
	1    3800 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 5800 4150 5800
Wire Wire Line
	3950 6200 4150 6200
Wire Wire Line
	3650 5800 3400 5800
Wire Wire Line
	3650 6200 3400 6200
$Comp
L power:GND #PWR0112
U 1 1 5C87664B
P 3400 5800
F 0 "#PWR0112" H 3400 5550 50  0001 C CNN
F 1 "GND" V 3405 5672 50  0000 R CNN
F 2 "" H 3400 5800 50  0001 C CNN
F 3 "" H 3400 5800 50  0001 C CNN
	1    3400 5800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5C8766C4
P 3400 6200
F 0 "#PWR0113" H 3400 5950 50  0001 C CNN
F 1 "GND" V 3405 6072 50  0000 R CNN
F 2 "" H 3400 6200 50  0001 C CNN
F 3 "" H 3400 6200 50  0001 C CNN
	1    3400 6200
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 6750 4200 6750
$Comp
L power:GND #PWR0114
U 1 1 5C879807
P 3400 6750
F 0 "#PWR0114" H 3400 6500 50  0001 C CNN
F 1 "GND" V 3405 6622 50  0000 R CNN
F 2 "" H 3400 6750 50  0001 C CNN
F 3 "" H 3400 6750 50  0001 C CNN
	1    3400 6750
	0    1    1    0   
$EndComp
Wire Wire Line
	3400 6750 3600 6750
Wire Wire Line
	4750 4200 4300 4200
Text GLabel 4300 4200 0    50   Input ~ 0
GPIO_SWITCH_JOY
Text GLabel 4200 6750 2    50   Input ~ 0
GPIO_SWITCH_JOY
Text GLabel 4150 5800 2    50   Input ~ 0
GPIO_J1LED
Text GLabel 4150 6200 2    50   Input ~ 0
GPIO_J2LED
Text GLabel 4300 4300 0    50   Input ~ 0
GPIO_J1LED
Text GLabel 4300 3900 0    50   Input ~ 0
GPIO_J2LED
Wire Wire Line
	4300 4300 4750 4300
Wire Wire Line
	4300 3900 4750 3900
$EndSCHEMATC
