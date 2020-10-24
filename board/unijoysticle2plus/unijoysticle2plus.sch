EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L RF_Module:ESP32-WROOM-32D U1
U 1 1 5F85DF75
P 4850 2600
F 0 "U1" H 4850 4181 50  0000 C CNN
F 1 "ESP32-WROOM-32D" H 4850 4090 50  0000 C CNN
F 2 "digikey-footprints:ESP32-WROOM-32D" H 4850 1100 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32d_esp32-wroom-32u_datasheet_en.pdf" H 4550 2650 50  0001 C CNN
	1    4850 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5F861238
P 4850 4150
F 0 "#PWR0101" H 4850 3900 50  0001 C CNN
F 1 "GND" H 4855 3977 50  0000 C CNN
F 2 "" H 4850 4150 50  0001 C CNN
F 3 "" H 4850 4150 50  0001 C CNN
	1    4850 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 4000 4850 4150
$Comp
L Device:R R3
U 1 1 5F862A7E
P 3900 1050
F 0 "R3" H 3970 1096 50  0000 L CNN
F 1 "10k" H 3970 1005 50  0000 L CNN
F 2 "" V 3830 1050 50  0001 C CNN
F 3 "~" H 3900 1050 50  0001 C CNN
	1    3900 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 1400 3900 1400
Wire Wire Line
	3900 1200 3900 1400
Wire Wire Line
	3900 1400 3600 1400
Connection ~ 3900 1400
$Comp
L power:+3V3 #PWR0102
U 1 1 5F86633D
P 3900 800
F 0 "#PWR0102" H 3900 650 50  0001 C CNN
F 1 "+3V3" H 3915 973 50  0000 C CNN
F 2 "" H 3900 800 50  0001 C CNN
F 3 "" H 3900 800 50  0001 C CNN
	1    3900 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 900  3900 800 
$Comp
L Device:C C1
U 1 1 5F867E9B
P 3900 1550
F 0 "C1" H 4015 1596 50  0000 L CNN
F 1 ".1uF" H 4015 1505 50  0000 L CNN
F 2 "" H 3938 1400 50  0001 C CNN
F 3 "~" H 3900 1550 50  0001 C CNN
	1    3900 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 1700 3900 1800
$Comp
L power:GND #PWR0103
U 1 1 5F86946E
P 3900 1800
F 0 "#PWR0103" H 3900 1550 50  0001 C CNN
F 1 "GND" H 3905 1627 50  0000 C CNN
F 2 "" H 3900 1800 50  0001 C CNN
F 3 "" H 3900 1800 50  0001 C CNN
	1    3900 1800
	1    0    0    -1  
$EndComp
Text Label 3600 1400 0    50   ~ 0
RESET
Wire Wire Line
	4850 1200 4850 950 
$Comp
L power:+3V3 #PWR0104
U 1 1 5F869DFE
P 4850 950
F 0 "#PWR0104" H 4850 800 50  0001 C CNN
F 1 "+3V3" H 4865 1123 50  0000 C CNN
F 2 "" H 4850 950 50  0001 C CNN
F 3 "" H 4850 950 50  0001 C CNN
	1    4850 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 3200 6250 3200
Wire Wire Line
	5450 3300 6250 3300
Wire Wire Line
	5450 3100 6250 3100
Wire Wire Line
	5450 3000 6250 3000
Wire Wire Line
	5450 3400 6250 3400
Wire Wire Line
	5450 3500 6250 3500
Wire Wire Line
	5450 2700 6250 2700
Wire Wire Line
	5450 2600 6250 2600
Wire Wire Line
	5450 2500 6250 2500
Wire Wire Line
	5450 2400 6250 2400
Wire Wire Line
	5450 2200 6250 2200
Wire Wire Line
	5450 2100 6250 2100
Wire Wire Line
	5450 2000 6250 2000
Wire Wire Line
	5450 1900 6250 1900
Wire Wire Line
	5450 2800 6250 2800
Wire Wire Line
	5450 2900 6250 2900
Wire Wire Line
	5450 2300 6250 2300
$Comp
L Switch:SW_Push SW3
U 1 1 5F878AEA
P 3850 2450
F 0 "SW3" H 3850 2735 50  0000 C CNN
F 1 "SW_Push" H 3850 2644 50  0000 C CNN
F 2 "" H 3850 2650 50  0001 C CNN
F 3 "~" H 3850 2650 50  0001 C CNN
	1    3850 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5F8797E5
P 3550 2500
F 0 "#PWR0105" H 3550 2250 50  0001 C CNN
F 1 "GND" H 3555 2327 50  0000 C CNN
F 2 "" H 3550 2500 50  0001 C CNN
F 3 "" H 3550 2500 50  0001 C CNN
	1    3550 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 2450 3550 2450
Wire Wire Line
	3550 2450 3550 2500
Wire Wire Line
	5450 1400 5650 1400
Wire Wire Line
	5650 1400 5650 1150
Connection ~ 5650 1400
Wire Wire Line
	5650 1400 5800 1400
$Comp
L Switch:SW_Push SW4
U 1 1 5F87E24C
P 6000 1400
F 0 "SW4" H 6000 1685 50  0000 C CNN
F 1 "SW_Push" H 6000 1594 50  0000 C CNN
F 2 "" H 6000 1600 50  0001 C CNN
F 3 "~" H 6000 1600 50  0001 C CNN
	1    6000 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 1400 6350 1400
$Comp
L power:GND #PWR0106
U 1 1 5F87F0DA
P 6350 1400
F 0 "#PWR0106" H 6350 1150 50  0001 C CNN
F 1 "GND" H 6355 1227 50  0000 C CNN
F 2 "" H 6350 1400 50  0001 C CNN
F 3 "" H 6350 1400 50  0001 C CNN
	1    6350 1400
	1    0    0    -1  
$EndComp
Text Label 5600 1300 1    50   ~ 0
BOOT
$Comp
L Connector:DB9_Female J1
U 1 1 5F896D30
P 1400 1650
F 0 "J1" H 1580 1696 50  0000 L CNN
F 1 "DB9_Female" H 1580 1605 50  0000 L CNN
F 2 "Connector_Dsub:DSUB-9_Female_Horizontal_P2.77x2.54mm_EdgePinOffset9.40mm" H 1400 1650 50  0001 C CNN
F 3 " ~" H 1400 1650 50  0001 C CNN
	1    1400 1650
	1    0    0    -1  
$EndComp
$Comp
L Connector:DB9_Female J2
U 1 1 5F897BE0
P 2250 1650
F 0 "J2" H 2168 2342 50  0000 C CNN
F 1 "DB9_Female" H 2168 2251 50  0000 C CNN
F 2 "Connector_Dsub:DSUB-9_Female_Horizontal_P2.77x2.54mm_EdgePinOffset9.40mm" H 2250 1650 50  0001 C CNN
F 3 " ~" H 2250 1650 50  0001 C CNN
	1    2250 1650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1100 1250 600  1250
Wire Wire Line
	1100 1350 600  1350
Wire Wire Line
	1100 1450 600  1450
Wire Wire Line
	1100 1650 600  1650
Wire Wire Line
	1100 1550 1050 1550
Wire Wire Line
	1050 550  1050 1550
Wire Wire Line
	1100 1750 1050 1750
Wire Wire Line
	1050 1750 1050 2300
Wire Wire Line
	1100 2050 600  2050
Wire Wire Line
	1100 1850 600  1850
$Comp
L power:GND #PWR0107
U 1 1 5F8BD615
P 1050 2300
F 0 "#PWR0107" H 1050 2050 50  0001 C CNN
F 1 "GND" H 1055 2127 50  0000 C CNN
F 2 "" H 1050 2300 50  0001 C CNN
F 3 "" H 1050 2300 50  0001 C CNN
	1    1050 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 1950 600  1950
Wire Wire Line
	2550 1250 3050 1250
Wire Wire Line
	2550 1350 3050 1350
Wire Wire Line
	2550 1450 3050 1450
Wire Wire Line
	2550 1550 2600 1550
Wire Wire Line
	2600 1550 2600 550 
Wire Wire Line
	2550 1650 3050 1650
Wire Wire Line
	2550 1850 3050 1850
Wire Wire Line
	2550 1950 3050 1950
Wire Wire Line
	2550 2050 3050 2050
Wire Wire Line
	2550 1750 2600 1750
Wire Wire Line
	2600 1750 2600 2300
$Comp
L power:GND #PWR0108
U 1 1 5F8CEA9E
P 2600 2300
F 0 "#PWR0108" H 2600 2050 50  0001 C CNN
F 1 "GND" H 2605 2127 50  0000 C CNN
F 2 "" H 2600 2300 50  0001 C CNN
F 3 "" H 2600 2300 50  0001 C CNN
	1    2600 2300
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS05 U2
U 1 1 5F8D1D3D
P 1300 4450
F 0 "U2" H 1300 4767 50  0000 C CNN
F 1 "74LS05" H 1300 4676 50  0000 C CNN
F 2 "" H 1300 4450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS05" H 1300 4450 50  0001 C CNN
	1    1300 4450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS05 U2
U 2 1 5F8D2691
P 1300 4850
F 0 "U2" H 1300 5167 50  0000 C CNN
F 1 "74LS05" H 1300 5076 50  0000 C CNN
F 2 "" H 1300 4850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS05" H 1300 4850 50  0001 C CNN
	2    1300 4850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS05 U2
U 3 1 5F8D3511
P 1300 5250
F 0 "U2" H 1300 5567 50  0000 C CNN
F 1 "74LS05" H 1300 5476 50  0000 C CNN
F 2 "" H 1300 5250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS05" H 1300 5250 50  0001 C CNN
	3    1300 5250
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS05 U2
U 4 1 5F8D4333
P 1300 5650
F 0 "U2" H 1300 5967 50  0000 C CNN
F 1 "74LS05" H 1300 5876 50  0000 C CNN
F 2 "" H 1300 5650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS05" H 1300 5650 50  0001 C CNN
	4    1300 5650
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS05 U2
U 5 1 5F8D4FF9
P 1300 6050
F 0 "U2" H 1300 6367 50  0000 C CNN
F 1 "74LS05" H 1300 6276 50  0000 C CNN
F 2 "" H 1300 6050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS05" H 1300 6050 50  0001 C CNN
	5    1300 6050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS05 U2
U 7 1 5F8D5BA9
P 1250 7350
F 0 "U2" H 1480 7396 50  0000 L CNN
F 1 "74LS05" H 1480 7305 50  0000 L CNN
F 2 "" H 1250 7350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS05" H 1250 7350 50  0001 C CNN
	7    1250 7350
	0    -1   -1   0   
$EndComp
$Comp
L 74xx:74LS05 U3
U 1 1 5F8D6C86
P 3000 4450
F 0 "U3" H 3000 4767 50  0000 C CNN
F 1 "74LS05" H 3000 4676 50  0000 C CNN
F 2 "" H 3000 4450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS05" H 3000 4450 50  0001 C CNN
	1    3000 4450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS05 U3
U 2 1 5F8D7E33
P 3000 4850
F 0 "U3" H 3000 5167 50  0000 C CNN
F 1 "74LS05" H 3000 5076 50  0000 C CNN
F 2 "" H 3000 4850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS05" H 3000 4850 50  0001 C CNN
	2    3000 4850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS05 U3
U 3 1 5F8D8B46
P 3000 5250
F 0 "U3" H 3000 5567 50  0000 C CNN
F 1 "74LS05" H 3000 5476 50  0000 C CNN
F 2 "" H 3000 5250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS05" H 3000 5250 50  0001 C CNN
	3    3000 5250
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS05 U3
U 4 1 5F8D9B73
P 3000 5650
F 0 "U3" H 3000 5967 50  0000 C CNN
F 1 "74LS05" H 3000 5876 50  0000 C CNN
F 2 "" H 3000 5650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS05" H 3000 5650 50  0001 C CNN
	4    3000 5650
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS05 U3
U 5 1 5F8DACA6
P 3000 6050
F 0 "U3" H 3000 6367 50  0000 C CNN
F 1 "74LS05" H 3000 6276 50  0000 C CNN
F 2 "" H 3000 6050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS05" H 3000 6050 50  0001 C CNN
	5    3000 6050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS05 U2
U 6 1 5F8E2CFD
P 1300 6450
F 0 "U2" H 1300 6767 50  0000 C CNN
F 1 "74LS05" H 1300 6676 50  0000 C CNN
F 2 "" H 1300 6450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS05" H 1300 6450 50  0001 C CNN
	6    1300 6450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS05 U3
U 6 1 5F8E3BBE
P 3000 6450
F 0 "U3" H 3000 6767 50  0000 C CNN
F 1 "74LS05" H 3000 6676 50  0000 C CNN
F 2 "" H 3000 6450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS05" H 3000 6450 50  0001 C CNN
	6    3000 6450
	1    0    0    -1  
$EndComp
Text Label 500  4450 0    50   ~ 0
GPIO_J1_UP
Wire Wire Line
	1000 4450 500  4450
Wire Wire Line
	1000 4850 500  4850
Wire Wire Line
	1000 5250 500  5250
Wire Wire Line
	1000 5650 500  5650
Wire Wire Line
	1000 6050 500  6050
Wire Wire Line
	1600 4450 2000 4450
Wire Wire Line
	1600 4850 2000 4850
Wire Wire Line
	1600 5250 2000 5250
Wire Wire Line
	1600 5650 2000 5650
Wire Wire Line
	1600 6050 2000 6050
Text Label 1700 4450 0    50   ~ 0
J1_UP
Text Label 500  4850 0    50   ~ 0
GPIO_J1_DOWN
Text Label 500  5250 0    50   ~ 0
GPIO_J1_LEFT
Text Label 500  5650 0    50   ~ 0
GPIO_J1_RIGHT
Text Label 500  6050 0    50   ~ 0
GPIO_J1_FIRE
Text Label 1650 4850 0    50   ~ 0
J1_DOWN
Text Label 2000 5250 2    50   ~ 0
J1_LEFT
Text Label 2000 5650 2    50   ~ 0
J1_RIGHT
Text Label 1650 6050 0    50   ~ 0
J1_FIRE
Text Label 2200 4450 0    50   ~ 0
GPIO_J2_UP
Wire Wire Line
	2700 4450 2200 4450
Wire Wire Line
	2700 4850 2200 4850
Wire Wire Line
	2700 5250 2200 5250
Wire Wire Line
	2700 5650 2200 5650
Wire Wire Line
	2700 6050 2200 6050
Text Label 2200 4850 0    50   ~ 0
GPIO_J2_DOWN
Text Label 2200 5250 0    50   ~ 0
GPIO_J2_LEFT
Text Label 2200 5650 0    50   ~ 0
GPIO_J2_RIGHT
Text Label 2200 6050 0    50   ~ 0
GPIO_J2_FIRE
Wire Wire Line
	3300 4450 3700 4450
Wire Wire Line
	3300 4850 3700 4850
Wire Wire Line
	3300 5250 3700 5250
Wire Wire Line
	3300 5650 3700 5650
Wire Wire Line
	3300 6050 3700 6050
Text Label 3400 4450 0    50   ~ 0
J2_UP
Text Label 3350 4850 0    50   ~ 0
J2_DOWN
Text Label 3700 5250 2    50   ~ 0
J2_LEFT
Text Label 3700 5650 2    50   ~ 0
J2_RIGHT
Text Label 3350 6050 0    50   ~ 0
J2_FIRE
Text Label 600  1250 0    50   ~ 0
J1_UP
Text Label 600  1350 0    50   ~ 0
J1_FIRE
Text Label 600  1450 0    50   ~ 0
J1_DOWN
Text Label 600  1650 0    50   ~ 0
J1_LEFT
Text Label 600  1850 0    50   ~ 0
J1_RIGHT
Text Label 600  2050 0    50   ~ 0
J1_POTY
Text Label 600  1950 0    50   ~ 0
J1_POTX
Text Label 1050 550  3    50   ~ 0
J1_POWER
Text Label 3050 1250 2    50   ~ 0
J2_UP
Text Label 3050 1450 2    50   ~ 0
J2_DOWN
Text Label 3050 1650 2    50   ~ 0
J2_LEFT
Text Label 3050 1850 2    50   ~ 0
J2_RIGHT
Text Label 3050 1950 2    50   ~ 0
J2_POTX
Text Label 3050 2050 2    50   ~ 0
J2_POTY
Text Label 2600 550  3    50   ~ 0
J2_POWER
Text Label 3050 1350 2    50   ~ 0
J2_FIRE
Text Label 6250 1900 2    50   ~ 0
GPIO_J1_LED
Text Label 6250 2100 2    50   ~ 0
GPIO_J2_LED
Text Label 6250 2300 2    50   ~ 0
GPIO_SWITCH_JOY
Text Label 6250 3500 2    50   ~ 0
GPIO_J1_POTX
Text Label 6250 3400 2    50   ~ 0
GPIO_J2_LEFT
Text Label 6250 3300 2    50   ~ 0
GPIO_J2_UP
Text Label 6250 3200 2    50   ~ 0
GPIO_J1_UP
Text Label 6250 2000 2    50   ~ 0
GPIO_J2_FIRE
Text Label 6250 2200 2    50   ~ 0
GPIO_J1_FIRE
Text Label 6250 2400 2    50   ~ 0
GPIO_J1_POTY
Text Label 6250 2500 2    50   ~ 0
GPIO_J2_RIGHT
Text Label 6250 2600 2    50   ~ 0
GPIO_J1_DOWN
Text Label 6250 2700 2    50   ~ 0
GPIO_J1_LEFT
Text Label 6250 3000 2    50   ~ 0
GPIO_J1_RIGHT
Text Label 6250 3100 2    50   ~ 0
GPIO_J2_DOWN
Text Label 6250 2800 2    50   ~ 0
GPIO_J2_POTX
Text Label 6250 2900 2    50   ~ 0
GPIO_J2_POTY
Wire Wire Line
	5450 3600 5900 3600
Wire Wire Line
	5450 3700 5900 3700
Text Label 5900 3600 2    50   ~ 0
GPIO34
Text Label 5900 3700 2    50   ~ 0
GPIO35
Wire Notes Line
	500  3950 3850 3950
Wire Wire Line
	3550 7350 3550 7450
Wire Wire Line
	1750 7350 1750 7450
$Comp
L power:GND #PWR0109
U 1 1 5F883166
P 3550 7450
F 0 "#PWR0109" H 3550 7200 50  0001 C CNN
F 1 "GND" H 3555 7277 50  0000 C CNN
F 2 "" H 3550 7450 50  0001 C CNN
F 3 "" H 3550 7450 50  0001 C CNN
	1    3550 7450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5F883CF9
P 1750 7450
F 0 "#PWR0110" H 1750 7200 50  0001 C CNN
F 1 "GND" H 1755 7277 50  0000 C CNN
F 2 "" H 1750 7450 50  0001 C CNN
F 3 "" H 1750 7450 50  0001 C CNN
	1    1750 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  2900 1400 2900
Wire Wire Line
	1400 2900 1400 3150
Wire Wire Line
	1400 3350 900  3350
Wire Wire Line
	1400 3150 1550 3150
Wire Wire Line
	1550 3150 1550 2950
Connection ~ 1400 3150
Wire Wire Line
	1400 3150 1400 3350
Text Label 900  2900 0    50   ~ 0
J1_POWER
Text Label 900  3350 0    50   ~ 0
J2_POWER
$Comp
L Diode:1N5819 D4
U 1 1 5F8A8493
P 1850 3150
F 0 "D4" H 1850 2933 50  0000 C CNN
F 1 "1N5819" H 1850 3024 50  0000 C CNN
F 2 "" H 1850 2975 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 1850 3150 50  0001 C CNN
	1    1850 3150
	-1   0    0    1   
$EndComp
Wire Wire Line
	2000 3150 2100 3150
$Comp
L Switch:SW_SPST SW2
U 1 1 5F8C88E4
P 2300 3150
F 0 "SW2" H 2300 3385 50  0000 C CNN
F 1 "SW_SPST" H 2300 3294 50  0000 C CNN
F 2 "" H 2300 3150 50  0001 C CNN
F 3 "~" H 2300 3150 50  0001 C CNN
	1    2300 3150
	1    0    0    -1  
$EndComp
Connection ~ 1550 3150
Wire Wire Line
	1550 3150 1700 3150
Wire Notes Line
	6950 6550 4000 6550
Wire Wire Line
	4700 6850 4500 6850
Wire Wire Line
	4500 6850 4500 7150
Wire Wire Line
	4500 7150 4700 7150
Connection ~ 4500 7150
Wire Wire Line
	4500 7150 4500 7450
Wire Wire Line
	4500 7450 4700 7450
Connection ~ 4500 7450
Wire Wire Line
	4500 7450 4500 7550
$Comp
L Device:LED D1
U 1 1 5F96CB69
P 4850 6850
F 0 "D1" H 4843 7067 50  0000 C CNN
F 1 "LED" H 4843 6976 50  0000 C CNN
F 2 "" H 4850 6850 50  0001 C CNN
F 3 "~" H 4850 6850 50  0001 C CNN
	1    4850 6850
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 5F96DEB5
P 4850 7150
F 0 "D2" H 4843 7367 50  0000 C CNN
F 1 "LED" H 4843 7276 50  0000 C CNN
F 2 "" H 4850 7150 50  0001 C CNN
F 3 "~" H 4850 7150 50  0001 C CNN
	1    4850 7150
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5F96F5C6
P 4900 7450
F 0 "SW1" H 4900 7735 50  0000 C CNN
F 1 "SW_Push" H 4900 7644 50  0000 C CNN
F 2 "" H 4900 7650 50  0001 C CNN
F 3 "~" H 4900 7650 50  0001 C CNN
	1    4900 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 6850 5100 6850
Wire Wire Line
	5000 7150 5100 7150
Wire Wire Line
	5100 7450 5950 7450
$Comp
L Device:R R1
U 1 1 5F98F579
P 5250 6850
F 0 "R1" V 5457 6850 50  0000 C CNN
F 1 "150" V 5366 6850 50  0000 C CNN
F 2 "" V 5180 6850 50  0001 C CNN
F 3 "~" H 5250 6850 50  0001 C CNN
	1    5250 6850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 5F9908EC
P 5250 7150
F 0 "R2" V 5043 7150 50  0000 C CNN
F 1 "150" V 5134 7150 50  0000 C CNN
F 2 "" V 5180 7150 50  0001 C CNN
F 3 "~" H 5250 7150 50  0001 C CNN
	1    5250 7150
	0    1    1    0   
$EndComp
Wire Wire Line
	5400 6850 5950 6850
Wire Wire Line
	5400 7150 5950 7150
Text Label 5950 6850 2    50   ~ 0
GPIO_J1_LED
Text Label 5950 7150 2    50   ~ 0
GPIO_J2_LED
Text Label 5950 7450 2    50   ~ 0
GPIO_SWITCH_JOY
$Comp
L power:GND #PWR0114
U 1 1 5F9AFA6D
P 4500 7550
F 0 "#PWR0114" H 4500 7300 50  0001 C CNN
F 1 "GND" H 4505 7377 50  0000 C CNN
F 2 "" H 4500 7550 50  0001 C CNN
F 3 "" H 4500 7550 50  0001 C CNN
	1    4500 7550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Barrel_Jack J3
U 1 1 5F9B5A38
P 10050 2350
F 0 "J3" H 10107 2675 50  0000 C CNN
F 1 "Barrel_Jack" H 10107 2584 50  0000 C CNN
F 2 "" H 10100 2310 50  0001 C CNN
F 3 "~" H 10100 2310 50  0001 C CNN
	1    10050 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 2450 10450 2450
Wire Wire Line
	10450 2450 10450 2600
$Comp
L power:GND #PWR0115
U 1 1 5F9BB6EE
P 10450 2600
F 0 "#PWR0115" H 10450 2350 50  0001 C CNN
F 1 "GND" H 10455 2427 50  0000 C CNN
F 2 "" H 10450 2600 50  0001 C CNN
F 3 "" H 10450 2600 50  0001 C CNN
	1    10450 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 2250 10550 2250
$Comp
L Diode:1N5819 D3
U 1 1 5F9C1281
P 10700 2250
F 0 "D3" H 10700 2033 50  0000 C CNN
F 1 "1N5819" H 10700 2124 50  0000 C CNN
F 2 "" H 10700 2075 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 10700 2250 50  0001 C CNN
	1    10700 2250
	-1   0    0    1   
$EndComp
Wire Wire Line
	10850 2250 10950 2250
Wire Wire Line
	2500 3150 2600 3150
Wire Wire Line
	2600 3150 2600 2950
$Comp
L Interface_USB:CP2102N-A01-GQFN24 U?
U 1 1 5FA66230
P 8850 3650
F 0 "U?" H 8850 4731 50  0000 C CNN
F 1 "CP2102N-A01-GQFN24" H 8850 4640 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-24-1EP_4x4mm_P0.5mm_EP2.6x2.6mm" H 9300 2850 50  0001 L CNN
F 3 "https://www.silabs.com/documents/public/data-sheets/cp2102n-datasheet.pdf" H 8900 2600 50  0001 C CNN
	1    8850 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 4550 8950 4700
Wire Wire Line
	8950 4700 8900 4700
Wire Wire Line
	8850 4700 8850 4550
Wire Wire Line
	8900 4700 8900 4850
Connection ~ 8900 4700
Wire Wire Line
	8900 4700 8850 4700
$Comp
L power:GND #PWR?
U 1 1 5FA7D398
P 8900 4850
F 0 "#PWR?" H 8900 4600 50  0001 C CNN
F 1 "GND" H 8905 4677 50  0000 C CNN
F 2 "" H 8900 4850 50  0001 C CNN
F 3 "" H 8900 4850 50  0001 C CNN
	1    8900 4850
	1    0    0    -1  
$EndComp
NoConn ~ 9450 3050
NoConn ~ 9450 3150
NoConn ~ 9450 3550
NoConn ~ 9450 3750
NoConn ~ 9450 3950
NoConn ~ 9450 4050
Wire Wire Line
	9450 3250 9950 3250
Wire Wire Line
	9450 3350 9950 3350
Wire Wire Line
	9450 3450 9950 3450
Text Label 9950 3250 2    50   ~ 0
RTS_PROG
Text Label 9950 3350 2    50   ~ 0
TXD
Text Label 9950 3450 2    50   ~ 0
RXD
Wire Wire Line
	9450 3650 9950 3650
Text Label 9950 3650 2    50   ~ 0
DTR_PROG
NoConn ~ 8150 1250
Wire Wire Line
	8150 1150 9000 1150
Wire Wire Line
	5450 1500 5900 1500
Wire Wire Line
	5450 1700 5900 1700
Text Label 5900 1500 2    50   ~ 0
TXD
Text Label 5900 1700 2    50   ~ 0
RXD
Wire Wire Line
	5450 1800 5900 1800
Text Label 5900 1800 2    50   ~ 0
GPIO04
Wire Wire Line
	7750 1450 7750 1550
Wire Wire Line
	7750 1550 7800 1550
Wire Wire Line
	7850 1550 7850 1450
Wire Wire Line
	7800 1550 7800 1650
Connection ~ 7800 1550
Wire Wire Line
	7800 1550 7850 1550
$Comp
L power:GND #PWR?
U 1 1 5F9EB2D8
P 7800 1650
F 0 "#PWR?" H 7800 1400 50  0001 C CNN
F 1 "GND" H 7805 1477 50  0000 C CNN
F 2 "" H 7800 1650 50  0001 C CNN
F 3 "" H 7800 1650 50  0001 C CNN
	1    7800 1650
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:S8050 Q?
U 1 1 5FA6063A
P 10600 4850
F 0 "Q?" H 10790 4896 50  0000 L CNN
F 1 "S8050" H 10790 4805 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 10800 4775 50  0001 L CIN
F 3 "http://www.unisonic.com.tw/datasheet/S8050.pdf" H 10600 4850 50  0001 L CNN
	1    10600 4850
	1    0    0    -1  
$EndComp
$Comp
L Diode:ESD9B5.0ST5G D?
U 1 1 5FA6217B
P 8400 1550
F 0 "D?" H 8400 1766 50  0000 C CNN
F 1 "ESD9B5.0ST5G" H 8400 1675 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-923" H 8400 1550 50  0001 C CNN
F 3 "https://www.onsemi.com/pub/Collateral/ESD9B-D.PDF" H 8400 1550 50  0001 C CNN
	1    8400 1550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8400 1400 8400 850 
Wire Wire Line
	8400 850  8150 850 
$Comp
L Diode:ESD9B5.0ST5G D?
U 1 1 5FB69614
P 8700 1550
F 0 "D?" H 8700 1766 50  0000 C CNN
F 1 "ESD9B5.0ST5G" H 8700 1675 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-923" H 8700 1550 50  0001 C CNN
F 3 "https://www.onsemi.com/pub/Collateral/ESD9B-D.PDF" H 8700 1550 50  0001 C CNN
	1    8700 1550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8150 1050 8700 1050
$Comp
L Diode:ESD9B5.0ST5G D?
U 1 1 5FC7F37F
P 9000 1550
F 0 "D?" H 9000 1766 50  0000 C CNN
F 1 "ESD9B5.0ST5G" H 9000 1675 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-923" H 9000 1550 50  0001 C CNN
F 3 "https://www.onsemi.com/pub/Collateral/ESD9B-D.PDF" H 9000 1550 50  0001 C CNN
	1    9000 1550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8700 1400 8700 1050
Connection ~ 8700 1050
Wire Wire Line
	8700 1050 9200 1050
Wire Wire Line
	9000 1400 9000 1150
Connection ~ 9000 1150
Wire Wire Line
	9000 1150 9200 1150
Wire Wire Line
	8400 1700 8400 1800
Wire Wire Line
	8700 1700 8700 1800
Wire Wire Line
	9000 1700 9000 1800
$Comp
L power:GND #PWR?
U 1 1 5FCD484D
P 8400 1800
F 0 "#PWR?" H 8400 1550 50  0001 C CNN
F 1 "GND" H 8405 1627 50  0000 C CNN
F 2 "" H 8400 1800 50  0001 C CNN
F 3 "" H 8400 1800 50  0001 C CNN
	1    8400 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FCD5004
P 8700 1800
F 0 "#PWR?" H 8700 1550 50  0001 C CNN
F 1 "GND" H 8705 1627 50  0000 C CNN
F 2 "" H 8700 1800 50  0001 C CNN
F 3 "" H 8700 1800 50  0001 C CNN
	1    8700 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FCD5A37
P 9000 1800
F 0 "#PWR?" H 9000 1550 50  0001 C CNN
F 1 "GND" H 9005 1627 50  0000 C CNN
F 2 "" H 9000 1800 50  0001 C CNN
F 3 "" H 9000 1800 50  0001 C CNN
	1    9000 1800
	1    0    0    -1  
$EndComp
Text Label 9200 1050 2    50   ~ 0
USB_DP
Text Label 9200 1150 2    50   ~ 0
USB_DN
Connection ~ 8400 850 
$Comp
L Diode:1N5819 D?
U 1 1 5FD081BA
P 8850 850
F 0 "D?" H 8850 633 50  0000 C CNN
F 1 "1N5819" H 8850 724 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 8850 675 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 8850 850 50  0001 C CNN
	1    8850 850 
	-1   0    0    1   
$EndComp
Wire Wire Line
	8400 850  8700 850 
Wire Wire Line
	8400 850  8400 750 
Wire Wire Line
	9000 850  9200 850 
Wire Wire Line
	9200 850  9200 750 
$Comp
L power:VBUS #PWR?
U 1 1 5FD77036
P 8400 750
F 0 "#PWR?" H 8400 600 50  0001 C CNN
F 1 "VBUS" H 8415 923 50  0000 C CNN
F 2 "" H 8400 750 50  0001 C CNN
F 3 "" H 8400 750 50  0001 C CNN
	1    8400 750 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5FD78300
P 9200 750
F 0 "#PWR?" H 9200 600 50  0001 C CNN
F 1 "+5V" H 9215 923 50  0000 C CNN
F 2 "" H 9200 750 50  0001 C CNN
F 3 "" H 9200 750 50  0001 C CNN
	1    9200 750 
	1    0    0    -1  
$EndComp
Wire Notes Line
	6900 450  6900 5050
Wire Wire Line
	10950 2250 10950 2100
$Comp
L power:+5V #PWR?
U 1 1 60172313
P 10950 2100
F 0 "#PWR?" H 10950 1950 50  0001 C CNN
F 1 "+5V" H 10965 2273 50  0000 C CNN
F 2 "" H 10950 2100 50  0001 C CNN
F 3 "" H 10950 2100 50  0001 C CNN
	1    10950 2100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 601BC371
P 2600 2950
F 0 "#PWR?" H 2600 2800 50  0001 C CNN
F 1 "+5V" H 2615 3123 50  0000 C CNN
F 2 "" H 2600 2950 50  0001 C CNN
F 3 "" H 2600 2950 50  0001 C CNN
	1    2600 2950
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 60220184
P 1550 2950
F 0 "#PWR?" H 1550 2800 50  0001 C CNN
F 1 "VDD" H 1565 3123 50  0000 C CNN
F 2 "" H 1550 2950 50  0001 C CNN
F 3 "" H 1550 2950 50  0001 C CNN
	1    1550 2950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS05 U3
U 7 1 5F8E509A
P 3050 7350
F 0 "U3" H 3280 7396 50  0000 L CNN
F 1 "74LS05" H 3280 7305 50  0000 L CNN
F 2 "" H 3050 7350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS05" H 3050 7350 50  0001 C CNN
	7    3050 7350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2550 7350 2550 7250
Wire Wire Line
	750  7350 750  7250
$Comp
L power:VDD #PWR?
U 1 1 60271912
P 2550 7250
F 0 "#PWR?" H 2550 7100 50  0001 C CNN
F 1 "VDD" H 2565 7423 50  0000 C CNN
F 2 "" H 2550 7250 50  0001 C CNN
F 3 "" H 2550 7250 50  0001 C CNN
	1    2550 7250
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 602727D8
P 750 7250
F 0 "#PWR?" H 750 7100 50  0001 C CNN
F 1 "VDD" H 765 7423 50  0000 C CNN
F 2 "" H 750 7250 50  0001 C CNN
F 3 "" H 750 7250 50  0001 C CNN
	1    750  7250
	1    0    0    -1  
$EndComp
Wire Notes Line
	3850 3950 3850 7800
Wire Wire Line
	8250 4050 7900 4050
Wire Wire Line
	8250 4150 7900 4150
Wire Wire Line
	8250 3950 7900 3950
Text Label 7900 3950 0    50   ~ 0
VBUS
Text Label 7900 4050 0    50   ~ 0
USB_DP
Text Label 7900 4150 0    50   ~ 0
USB_DN
NoConn ~ 9450 4250
NoConn ~ 9450 4150
Wire Wire Line
	8750 2750 8150 2750
Wire Wire Line
	8250 3650 8150 3650
Wire Wire Line
	8150 2750 8150 3650
NoConn ~ 8250 3350
Wire Wire Line
	8150 2750 7850 2750
Wire Wire Line
	7250 2750 7250 2650
Connection ~ 8150 2750
Wire Wire Line
	7850 2750 7850 2850
Connection ~ 7850 2750
Wire Wire Line
	7850 2750 7450 2750
Wire Wire Line
	7450 2750 7450 2850
Connection ~ 7450 2750
Wire Wire Line
	7450 2750 7250 2750
$Comp
L power:+3V3 #PWR?
U 1 1 60588328
P 7250 2650
F 0 "#PWR?" H 7250 2500 50  0001 C CNN
F 1 "+3V3" H 7265 2823 50  0000 C CNN
F 2 "" H 7250 2650 50  0001 C CNN
F 3 "" H 7250 2650 50  0001 C CNN
	1    7250 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 60589E4B
P 7450 2950
F 0 "C?" H 7542 2996 50  0000 L CNN
F 1 "4.7uF" H 7542 2905 50  0000 L CNN
F 2 "" H 7450 2950 50  0001 C CNN
F 3 "~" H 7450 2950 50  0001 C CNN
	1    7450 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 605BA99D
P 7850 2950
F 0 "C?" H 7942 2996 50  0000 L CNN
F 1 "0.1uF" H 7942 2905 50  0000 L CNN
F 2 "" H 7850 2950 50  0001 C CNN
F 3 "~" H 7850 2950 50  0001 C CNN
	1    7850 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 3050 7850 3150
Wire Wire Line
	7850 3150 7450 3150
Wire Wire Line
	7450 3150 7450 3050
Wire Wire Line
	7450 3150 7450 3250
Connection ~ 7450 3150
$Comp
L power:GND #PWR?
U 1 1 605CE8E5
P 7450 3250
F 0 "#PWR?" H 7450 3000 50  0001 C CNN
F 1 "GND" H 7455 3077 50  0000 C CNN
F 2 "" H 7450 3250 50  0001 C CNN
F 3 "" H 7450 3250 50  0001 C CNN
	1    7450 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 2450 4300 2450
Text Label 4300 2450 2    50   ~ 0
RESET
$Comp
L Connector:Conn_01x03_Male J?
U 1 1 60819D93
P 4750 -450
F 0 "J?" H 4858 -169 50  0000 C CNN
F 1 "Conn_01x03_Male" H 4858 -260 50  0000 C CNN
F 2 "" H 4750 -450 50  0001 C CNN
F 3 "~" H 4750 -450 50  0001 C CNN
	1    4750 -450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 -550 5300 -550
Wire Wire Line
	4950 -450 5300 -450
Wire Wire Line
	4950 -350 5300 -350
Text Label 5300 -550 2    50   ~ 0
GPIO04
Text Label 5300 -450 2    50   ~ 0
GPIO34
Text Label 5300 -350 2    50   ~ 0
GPIO35
$Comp
L dk_PMIC-Voltage-Regulators-Linear:AP2114H-3_3TRG1 U?
U 1 1 608820BC
P 10350 900
F 0 "U?" H 10300 1187 60  0000 C CNN
F 1 "AP2114H-3_3TRG1" H 10300 1081 60  0000 C CNN
F 2 "digikey-footprints:SOT-223" H 10550 1100 60  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/AP2114.pdf" H 10550 1200 60  0001 L CNN
F 4 "AP2114H-3.3TRG1DICT-ND" H 10550 1300 60  0001 L CNN "Digi-Key_PN"
F 5 "AP2114H-3.3TRG1" H 10550 1400 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 10550 1500 60  0001 L CNN "Category"
F 7 "PMIC - Voltage Regulators - Linear" H 10550 1600 60  0001 L CNN "Family"
F 8 "https://www.diodes.com/assets/Datasheets/AP2114.pdf" H 10550 1700 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/diodes-incorporated/AP2114H-3.3TRG1/AP2114H-3.3TRG1DICT-ND/4505142" H 10550 1800 60  0001 L CNN "DK_Detail_Page"
F 10 "IC REG LINEAR 3.3V 1A SOT223" H 10550 1900 60  0001 L CNN "Description"
F 11 "Diodes Incorporated" H 10550 2000 60  0001 L CNN "Manufacturer"
F 12 "Active" H 10550 2100 60  0001 L CNN "Status"
	1    10350 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 900  9650 900 
Wire Wire Line
	9650 900  9650 800 
Wire Wire Line
	9650 900  9650 1100
Connection ~ 9650 900 
$Comp
L Device:C_Small C?
U 1 1 608E91F4
P 9650 1200
F 0 "C?" H 9742 1246 50  0000 L CNN
F 1 "4.7uF" H 9742 1155 50  0000 L CNN
F 2 "" H 9650 1200 50  0001 C CNN
F 3 "~" H 9650 1200 50  0001 C CNN
	1    9650 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 1300 9650 1400
Wire Wire Line
	10900 900  10750 900 
Wire Wire Line
	10900 1000 10750 1000
Wire Wire Line
	10900 1000 10900 900 
$Comp
L power:GND #PWR?
U 1 1 60941937
P 10250 1400
F 0 "#PWR?" H 10250 1150 50  0001 C CNN
F 1 "GND" H 10255 1227 50  0000 C CNN
F 2 "" H 10250 1400 50  0001 C CNN
F 3 "" H 10250 1400 50  0001 C CNN
	1    10250 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6094209B
P 9650 1400
F 0 "#PWR?" H 9650 1150 50  0001 C CNN
F 1 "GND" H 9655 1227 50  0000 C CNN
F 2 "" H 9650 1400 50  0001 C CNN
F 3 "" H 9650 1400 50  0001 C CNN
	1    9650 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10900 1000 10900 1100
Connection ~ 10900 1000
$Comp
L Device:C_Small C?
U 1 1 6094A6C8
P 10900 1200
F 0 "C?" H 10992 1246 50  0000 L CNN
F 1 "4.7uF" H 10992 1155 50  0000 L CNN
F 2 "" H 10900 1200 50  0001 C CNN
F 3 "~" H 10900 1200 50  0001 C CNN
	1    10900 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10900 1300 10900 1400
$Comp
L power:GND #PWR?
U 1 1 60953195
P 10900 1400
F 0 "#PWR?" H 10900 1150 50  0001 C CNN
F 1 "GND" H 10905 1227 50  0000 C CNN
F 2 "" H 10900 1400 50  0001 C CNN
F 3 "" H 10900 1400 50  0001 C CNN
	1    10900 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10900 900  10900 800 
Connection ~ 10900 900 
$Comp
L power:+3V3 #PWR?
U 1 1 6096D6B5
P 10900 800
F 0 "#PWR?" H 10900 650 50  0001 C CNN
F 1 "+3V3" H 10915 973 50  0000 C CNN
F 2 "" H 10900 800 50  0001 C CNN
F 3 "" H 10900 800 50  0001 C CNN
	1    10900 800 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6096DE0E
P 9650 800
F 0 "#PWR?" H 9650 650 50  0001 C CNN
F 1 "+5V" H 9665 973 50  0000 C CNN
F 2 "" H 9650 800 50  0001 C CNN
F 3 "" H 9650 800 50  0001 C CNN
	1    9650 800 
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B_Micro J?
U 1 1 609C412E
P 7850 1050
F 0 "J?" H 7907 1517 50  0000 C CNN
F 1 "USB_B_Micro" H 7907 1426 50  0000 C CNN
F 2 "" H 8000 1000 50  0001 C CNN
F 3 "~" H 8000 1000 50  0001 C CNN
	1    7850 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 2750 8850 2350
Wire Wire Line
	8850 2350 8700 2350
$Comp
L Device:R R?
U 1 1 60A2328C
P 8550 2350
F 0 "R?" V 8757 2350 50  0000 C CNN
F 1 "1k" V 8666 2350 50  0000 C CNN
F 2 "" V 8480 2350 50  0001 C CNN
F 3 "~" H 8550 2350 50  0001 C CNN
	1    8550 2350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8400 2350 8250 2350
Wire Wire Line
	8250 2350 8250 3050
$Comp
L Transistor_BJT:S8050 Q?
U 1 1 60A465DF
P 10600 5400
F 0 "Q?" H 10790 5446 50  0000 L CNN
F 1 "S8050" H 10790 5355 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 10800 5325 50  0001 L CIN
F 3 "http://www.unisonic.com.tw/datasheet/S8050.pdf" H 10600 5400 50  0001 L CNN
	1    10600 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10700 4650 10700 4500
Wire Wire Line
	10700 4500 11100 4500
Wire Wire Line
	10700 5600 10700 5750
Wire Wire Line
	10700 5750 11100 5750
Text Label 11100 4500 2    50   ~ 0
BOOT
Text Label 11100 5750 2    50   ~ 0
RESET
Wire Wire Line
	10400 4850 10250 4850
Wire Wire Line
	10400 5400 10250 5400
$Comp
L Device:R R?
U 1 1 60AF2CFC
P 10100 4850
F 0 "R?" V 9893 4850 50  0000 C CNN
F 1 "10k" V 9984 4850 50  0000 C CNN
F 2 "" V 10030 4850 50  0001 C CNN
F 3 "~" H 10100 4850 50  0001 C CNN
	1    10100 4850
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 60AF3FED
P 10100 5400
F 0 "R?" V 10307 5400 50  0000 C CNN
F 1 "10k" V 10216 5400 50  0000 C CNN
F 2 "" V 10030 5400 50  0001 C CNN
F 3 "~" H 10100 5400 50  0001 C CNN
	1    10100 5400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9950 4850 9750 4850
Wire Wire Line
	9950 5400 9850 5400
Wire Wire Line
	10700 5050 9850 5050
Wire Wire Line
	9850 5050 9850 5400
Connection ~ 9850 5400
Wire Wire Line
	10700 5200 9750 5200
Wire Wire Line
	9750 4850 9750 5200
Wire Wire Line
	9750 4850 9450 4850
Connection ~ 9750 4850
Wire Wire Line
	9450 5400 9850 5400
Text Label 9450 4850 0    50   ~ 0
RTS_PROG
Text Label 9450 5400 0    50   ~ 0
DTR_PROG
$EndSCHEMATC
