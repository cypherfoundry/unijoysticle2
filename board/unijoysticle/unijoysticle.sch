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
P 2200 6900
F 0 "D1" H 2200 7116 50  0000 C CNN
F 1 "1N4001" H 2200 7025 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 2200 6725 50  0001 C CNN
F 3 "" H 2200 6900 50  0001 C CNN
	1    2200 6900
	-1   0    0    -1  
$EndComp
Text GLabel 6150 3700 2    50   Input ~ 0
GPIO_J1UP
Text GLabel 1850 900  2    50   Input ~ 0
GPIO_J1UP
$Comp
L power:GND #PWR010
U 1 1 5C668230
P 9800 900
F 0 "#PWR010" H 9800 650 50  0001 C CNN
F 1 "GND" V 9805 772 50  0000 R CNN
F 2 "" H 9800 900 50  0001 C CNN
F 3 "" H 9800 900 50  0001 C CNN
	1    9800 900 
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5C6919E6
P 1800 7100
F 0 "#PWR06" H 1800 6850 50  0001 C CNN
F 1 "GND" V 1805 6972 50  0000 R CNN
F 2 "" H 1800 7100 50  0001 C CNN
F 3 "" H 1800 7100 50  0001 C CNN
	1    1800 7100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1800 6900 2050 6900
Text GLabel 1850 1650 2    50   Input ~ 0
GPIO_J1DOWN
Text GLabel 1850 2350 2    50   Input ~ 0
GPIO_J1LEFT
Text GLabel 1850 3050 2    50   Input ~ 0
GPIO_J1RIGHT
Text GLabel 1900 3800 2    50   Input ~ 0
GPIO_J1FIRE
Text GLabel 8650 600  0    50   Input ~ 0
GPIO_J2UP
Text GLabel 8600 1300 0    50   Input ~ 0
GPIO_J2DOWN
Text GLabel 8600 2000 0    50   Input ~ 0
GPIO_J2LEFT
Text GLabel 8600 2700 0    50   Input ~ 0
GPIO_J2RIGHT
Text GLabel 1900 4600 2    50   Input ~ 0
GPIO_J2FIRE
Text GLabel 4300 4800 0    50   Input ~ 0
GPIO_J2FIRE
Text GLabel 4300 4000 0    50   Input ~ 0
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
Text GLabel 4300 4700 0    50   Input ~ 0
GPIO_J1FIRE
Text GLabel 8600 3500 0    50   Input ~ 0
GPIO_J2POTX
Text GLabel 8600 4300 0    50   Input ~ 0
GPIO_J2POTY
Text GLabel 8600 5100 0    50   Input ~ 0
GPIO_J1POTX
Text GLabel 8600 5900 0    50   Input ~ 0
GPIO_J1POTY
$Comp
L power:GND #PWR0101
U 1 1 5C6B151A
P 900 1200
F 0 "#PWR0101" H 900 950 50  0001 C CNN
F 1 "GND" V 905 1072 50  0000 R CNN
F 2 "" H 900 1200 50  0001 C CNN
F 3 "" H 900 1200 50  0001 C CNN
	1    900  1200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5C6B262F
P 2950 1450
F 0 "#PWR0102" H 2950 1200 50  0001 C CNN
F 1 "GND" V 2955 1322 50  0000 R CNN
F 2 "" H 2950 1450 50  0001 C CNN
F 3 "" H 2950 1450 50  0001 C CNN
	1    2950 1450
	0    1    1    0   
$EndComp
Text GLabel 6150 4400 2    50   Input ~ 0
GPIO_J1POTX
Text GLabel 6150 4600 2    50   Input ~ 0
GPIO_J1POTY
Text GLabel 6150 3200 2    50   Input ~ 0
GPIO_J2POTX
Text GLabel 6150 3300 2    50   Input ~ 0
GPIO_J2POTY
Wire Wire Line
	3650 950  3350 950 
Wire Wire Line
	3650 1050 3350 1050
Wire Wire Line
	3650 1150 3350 1150
Wire Wire Line
	3650 1350 3350 1350
Wire Wire Line
	3650 1550 3350 1550
Wire Wire Line
	3650 1650 3350 1650
Wire Wire Line
	3650 1750 3350 1750
Text GLabel 3350 950  0    50   Input ~ 0
J1UP
Text GLabel 3350 1150 0    50   Input ~ 0
J1DOWN
Text GLabel 3350 1350 0    50   Input ~ 0
J1LEFT
Text GLabel 3350 1050 0    50   Input ~ 0
J1FIRE
Text GLabel 3350 1750 0    50   Input ~ 0
J1POTY
Text GLabel 3350 1650 0    50   Input ~ 0
J1POTX
Text GLabel 3350 1550 0    50   Input ~ 0
J1RIGHT
Wire Wire Line
	3650 1450 2950 1450
Wire Wire Line
	3650 1250 2950 1250
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
Text GLabel 6800 1750 2    50   Input ~ 0
J2POTY
Text GLabel 6800 1650 2    50   Input ~ 0
J2POTX
Text GLabel 8650 900  0    50   Input ~ 0
J2UP
Text GLabel 8600 1600 0    50   Input ~ 0
J2DOWN
Text GLabel 8600 2300 0    50   Input ~ 0
J2LEFT
Text GLabel 8600 3000 0    50   Input ~ 0
J2RIGHT
Text GLabel 1900 4900 2    50   Input ~ 0
J2FIRE
Text GLabel 8600 4600 0    50   Input ~ 0
J2POTY
Text GLabel 8600 3800 0    50   Input ~ 0
J2POTX
Text GLabel 1900 4100 2    50   Input ~ 0
J1FIRE
Text GLabel 8600 5400 0    50   Input ~ 0
J1POTX
Text GLabel 8600 6200 0    50   Input ~ 0
J1POTY
Text GLabel 1850 1200 2    50   Input ~ 0
J1UP
Text GLabel 1850 1950 2    50   Input ~ 0
J1DOWN
Text GLabel 1850 2650 2    50   Input ~ 0
J1LEFT
Text GLabel 1850 3350 2    50   Input ~ 0
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
	5750 3400 6150 3400
Wire Wire Line
	5750 4600 6150 4600
Wire Wire Line
	6150 4400 5750 4400
Wire Wire Line
	5750 3700 6150 3700
Wire Wire Line
	5750 3800 6150 3800
Wire Wire Line
	5750 3600 6150 3600
Wire Wire Line
	5750 4300 6150 4300
Wire Wire Line
	4300 4000 4750 4000
Wire Wire Line
	4300 4800 4750 4800
Wire Wire Line
	4300 4700 4750 4700
Wire Wire Line
	5750 3300 6150 3300
Wire Wire Line
	5750 3200 6150 3200
Wire Wire Line
	4300 5100 4750 5100
Wire Wire Line
	4300 5000 4750 5000
$Comp
L power:VDD #PWR0103
U 1 1 5C6BA1C1
P 2550 6900
F 0 "#PWR0103" H 2550 6750 50  0001 C CNN
F 1 "VDD" V 2567 7028 50  0000 L CNN
F 2 "" H 2550 6900 50  0001 C CNN
F 3 "" H 2550 6900 50  0001 C CNN
	1    2550 6900
	0    1    1    0   
$EndComp
Text GLabel 2950 1250 0    50   Input ~ 0
J1POWER
$Comp
L Switch:SW_SPDT SW1
U 1 1 5C6BA76A
P 1650 5800
F 0 "SW1" H 1650 6085 50  0000 C CNN
F 1 "SW_SPDT" H 1650 5994 50  0000 C CNN
F 2 "Switches:SWITCH_SPDT_PTH_11.6X4.0MM_LOCK" H 1650 5800 50  0001 C CNN
F 3 "" H 1650 5800 50  0001 C CNN
	1    1650 5800
	1    0    0    -1  
$EndComp
Text GLabel 1850 5900 2    50   Input ~ 0
J1POWER
$Comp
L power:GND #PWR0105
U 1 1 5C6BAB57
P 1850 5700
F 0 "#PWR0105" H 1850 5450 50  0001 C CNN
F 1 "GND" V 1855 5572 50  0000 R CNN
F 2 "" H 1850 5700 50  0001 C CNN
F 3 "" H 1850 5700 50  0001 C CNN
	1    1850 5700
	0    -1   -1   0   
$EndComp
Text GLabel 1450 5800 0    50   Input ~ 0
POWER_OR_GND
Text GLabel 9900 3800 2    50   Input ~ 0
POWER_OR_GND
Text GLabel 7350 1250 2    50   Input ~ 0
J2POWER
Text GLabel 5000 2150 0    50   Input ~ 0
J1POWER
Wire Wire Line
	5000 2150 5450 2150
Text GLabel 5450 2150 2    50   Input ~ 0
J2POWER
$Comp
L Connector:Barrel_Jack J3
U 1 1 5C70344B
P 1500 7000
F 0 "J3" H 1555 7325 50  0000 C CNN
F 1 "Barrel_Jack" H 1555 7234 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 1550 6960 50  0001 C CNN
F 3 "" H 1550 6960 50  0001 C CNN
	1    1500 7000
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
	2350 6900 2550 6900
$Comp
L Connector:DB9_Female J1
U 1 1 5C705949
P 3950 1350
F 0 "J1" H 4129 1396 50  0000 L CNN
F 1 "DB9_Female" H 4129 1305 50  0000 L CNN
F 2 "Connector_Dsub:DSUB-9_Female_Horizontal_P2.77x2.84mm_EdgePinOffset9.40mm" H 3950 1350 50  0001 C CNN
F 3 "" H 3950 1350 50  0001 C CNN
	1    3950 1350
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
	6650 1250 7350 1250
Wire Wire Line
	6800 1350 6650 1350
Wire Wire Line
	6800 1550 6650 1550
Wire Wire Line
	6650 1650 6800 1650
Wire Wire Line
	6800 1750 6650 1750
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
$Comp
L 4xxx:4066 U1
U 1 1 5C7D4B22
P 1400 1200
F 0 "U1" H 1400 1028 50  0000 C CNN
F 1 "4066" H 1400 937 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 1400 1200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 1400 1200 50  0001 C CNN
	1    1400 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 1200 900  1200
$Comp
L 4xxx:4066 U1
U 2 1 5C7D9E7B
P 1400 1950
F 0 "U1" H 1400 1778 50  0000 C CNN
F 1 "4066" H 1400 1687 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 1400 1950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 1400 1950 50  0001 C CNN
	2    1400 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 1950 1850 1950
Wire Wire Line
	1400 1650 1850 1650
Wire Wire Line
	1700 1200 1850 1200
Wire Wire Line
	1850 900  1400 900 
$Comp
L 4xxx:4066 U1
U 3 1 5C7DE795
P 1400 2650
F 0 "U1" H 1400 2478 50  0000 C CNN
F 1 "4066" H 1400 2387 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 1400 2650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 1400 2650 50  0001 C CNN
	3    1400 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 2350 1400 2350
Wire Wire Line
	1850 2650 1700 2650
$Comp
L 4xxx:4066 U1
U 4 1 5C7E0FEF
P 1400 3350
F 0 "U1" H 1400 3178 50  0000 C CNN
F 1 "4066" H 1400 3087 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 1400 3350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 1400 3350 50  0001 C CNN
	4    1400 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 3050 1400 3050
Wire Wire Line
	1850 3350 1700 3350
Wire Wire Line
	1100 3350 1100 2650
Connection ~ 1100 1200
Connection ~ 1100 1950
Wire Wire Line
	1100 1950 1100 1200
Connection ~ 1100 2650
Wire Wire Line
	1100 2650 1100 1950
$Comp
L 4xxx:4066 U1
U 5 1 5C7E7017
P 3750 6100
F 0 "U1" V 3383 6100 50  0000 C CNN
F 1 "4066" V 3474 6100 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 3750 6100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 3750 6100 50  0001 C CNN
	5    3750 6100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5C7E7210
P 3100 6100
F 0 "#PWR0106" H 3100 5850 50  0001 C CNN
F 1 "GND" V 3105 5972 50  0000 R CNN
F 2 "" H 3100 6100 50  0001 C CNN
F 3 "" H 3100 6100 50  0001 C CNN
	1    3100 6100
	0    1    1    0   
$EndComp
$Comp
L power:VDD #PWR0109
U 1 1 5C7E72B8
P 4400 6100
F 0 "#PWR0109" H 4400 5950 50  0001 C CNN
F 1 "VDD" V 4417 6228 50  0000 L CNN
F 2 "" H 4400 6100 50  0001 C CNN
F 3 "" H 4400 6100 50  0001 C CNN
	1    4400 6100
	0    1    1    0   
$EndComp
Wire Wire Line
	4400 6100 4250 6100
Wire Wire Line
	3250 6100 3100 6100
$Comp
L 4xxx:4066 U3
U 1 1 5C7EA406
P 9200 3800
F 0 "U3" H 9200 3628 50  0000 C CNN
F 1 "4066" H 9200 3537 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 9200 3800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 9200 3800 50  0001 C CNN
	1    9200 3800
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4066 U3
U 2 1 5C7EA5D5
P 9200 4600
F 0 "U3" H 9200 4428 50  0000 C CNN
F 1 "4066" H 9200 4337 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 9200 4600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 9200 4600 50  0001 C CNN
	2    9200 4600
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4066 U2
U 3 1 5C7EA72A
P 9200 2300
F 0 "U2" H 9200 2128 50  0000 C CNN
F 1 "4066" H 9200 2037 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 9200 2300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 9200 2300 50  0001 C CNN
	3    9200 2300
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4066 U2
U 4 1 5C7EA8A6
P 9200 3000
F 0 "U2" H 9200 2828 50  0000 C CNN
F 1 "4066" H 9200 2737 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 9200 3000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 9200 3000 50  0001 C CNN
	4    9200 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 600  9200 600 
Wire Wire Line
	8650 900  8900 900 
Wire Wire Line
	8600 1300 9200 1300
Wire Wire Line
	8900 1600 8600 1600
Wire Wire Line
	8600 2000 9200 2000
Wire Wire Line
	8900 2300 8600 2300
Wire Wire Line
	8600 3000 8900 3000
Wire Wire Line
	8600 2700 9200 2700
Wire Wire Line
	9500 3000 9500 2300
Connection ~ 9500 1600
Wire Wire Line
	9500 1600 9500 900 
Connection ~ 9500 2300
Wire Wire Line
	9500 2300 9500 1600
Wire Wire Line
	9800 900  9500 900 
Connection ~ 9500 900 
$Comp
L 4xxx:4066 U2
U 5 1 5C8013A8
P 3750 6800
F 0 "U2" V 3383 6800 50  0000 C CNN
F 1 "4066" V 3474 6800 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 3750 6800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 3750 6800 50  0001 C CNN
	5    3750 6800
	0    1    1    0   
$EndComp
Wire Wire Line
	4250 6800 4250 6100
Connection ~ 4250 6100
Wire Wire Line
	3250 6800 3250 6100
Connection ~ 3250 6100
$Comp
L 4xxx:4066 U4
U 1 1 5C81031B
P 1400 4100
F 0 "U4" H 1400 3928 50  0000 C CNN
F 1 "4066" H 1400 3837 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 1400 4100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 1400 4100 50  0001 C CNN
	1    1400 4100
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4066 U4
U 2 1 5C8154F7
P 1400 4900
F 0 "U4" H 1400 4728 50  0000 C CNN
F 1 "4066" H 1400 4637 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 1400 4900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 1400 4900 50  0001 C CNN
	2    1400 4900
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4066 U3
U 3 1 5C815575
P 9200 5400
F 0 "U3" H 9200 5228 50  0000 C CNN
F 1 "4066" H 9200 5137 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 9200 5400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 9200 5400 50  0001 C CNN
	3    9200 5400
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4066 U3
U 4 1 5C8156AF
P 9200 6200
F 0 "U3" H 9200 6028 50  0000 C CNN
F 1 "4066" H 9200 5937 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 9200 6200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 9200 6200 50  0001 C CNN
	4    9200 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 3500 9200 3500
Wire Wire Line
	8900 3800 8600 3800
Wire Wire Line
	8600 4300 9200 4300
Wire Wire Line
	8900 4600 8600 4600
Wire Wire Line
	8600 5100 9200 5100
Wire Wire Line
	8900 5400 8600 5400
Wire Wire Line
	8600 5900 9200 5900
Wire Wire Line
	8900 6200 8600 6200
Wire Wire Line
	9500 6200 9500 5400
Wire Wire Line
	9500 3800 9900 3800
Connection ~ 9500 3800
Connection ~ 9500 4600
Wire Wire Line
	9500 4600 9500 3800
Connection ~ 9500 5400
Wire Wire Line
	9500 5400 9500 4600
$Comp
L 4xxx:4066 U3
U 5 1 5C846B4B
P 3750 7500
F 0 "U3" V 3383 7500 50  0000 C CNN
F 1 "4066" V 3474 7500 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 3750 7500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 3750 7500 50  0001 C CNN
	5    3750 7500
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 7500 3250 6800
Connection ~ 3250 6800
Text GLabel 4500 7500 2    50   Input ~ 0
J1POWER
Wire Wire Line
	4250 7500 4500 7500
$Comp
L 4xxx:4066 U2
U 1 1 5C84C162
P 9200 900
F 0 "U2" H 9200 728 50  0000 C CNN
F 1 "4066" H 9200 637 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 9200 900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 9200 900 50  0001 C CNN
	1    9200 900 
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4066 U2
U 2 1 5C84E7A3
P 9200 1600
F 0 "U2" H 9200 1428 50  0000 C CNN
F 1 "4066" H 9200 1337 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 9200 1600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 9200 1600 50  0001 C CNN
	2    9200 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 4600 1900 4600
Wire Wire Line
	1700 4900 1900 4900
Wire Wire Line
	1400 3800 1900 3800
Wire Wire Line
	1700 4100 1900 4100
Wire Wire Line
	1100 4900 1100 4100
Connection ~ 1100 3350
Connection ~ 1100 4100
Wire Wire Line
	1100 4100 1100 3350
$Comp
L 4xxx:4066 U4
U 5 1 5C85AF7D
P 5400 6100
F 0 "U4" V 5033 6100 50  0000 C CNN
F 1 "4066" V 5124 6100 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 5400 6100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 5400 6100 50  0001 C CNN
	5    5400 6100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5C8602A8
P 4900 6300
F 0 "#PWR0110" H 4900 6050 50  0001 C CNN
F 1 "GND" H 4905 6127 50  0000 C CNN
F 2 "" H 4900 6300 50  0001 C CNN
F 3 "" H 4900 6300 50  0001 C CNN
	1    4900 6300
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0111
U 1 1 5C860320
P 5900 6300
F 0 "#PWR0111" H 5900 6150 50  0001 C CNN
F 1 "VDD" H 5918 6473 50  0000 C CNN
F 2 "" H 5900 6300 50  0001 C CNN
F 3 "" H 5900 6300 50  0001 C CNN
	1    5900 6300
	-1   0    0    1   
$EndComp
Wire Wire Line
	4900 6100 4900 6300
Wire Wire Line
	5900 6100 5900 6300
$EndSCHEMATC
