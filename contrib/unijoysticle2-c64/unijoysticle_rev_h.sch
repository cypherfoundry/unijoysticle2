EESchema Schematic File Version 4
LIBS:unijoysticle_rev_h-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Unijoysticle 2"
Date "2021-05-17"
Rev "H"
Comp "Retro Moe"
Comment1 "Ricardo Quesada"
Comment2 "Kopsec"
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 8550 4100 2    50   Input ~ 0
GPIO_J1UP
Text GLabel 1100 1350 0    50   Input ~ 0
GPIO_J1UP
Text GLabel 1100 1900 0    50   Input ~ 0
GPIO_J1DOWN
Text GLabel 1100 2450 0    50   Input ~ 0
GPIO_J1LEFT
Text GLabel 1100 3000 0    50   Input ~ 0
GPIO_J1RIGHT
Text GLabel 1100 3600 0    50   Input ~ 0
GPIO_J1FIRE
Text GLabel 3400 1350 0    50   Input ~ 0
GPIO_J2UP
Text GLabel 3400 1900 0    50   Input ~ 0
GPIO_J2DOWN
Text GLabel 3400 2450 0    50   Input ~ 0
GPIO_J2LEFT
Text GLabel 3400 3000 0    50   Input ~ 0
GPIO_J2RIGHT
Text GLabel 6700 4400 0    50   Input ~ 0
GPIO_J2FIRE
Text GLabel 6700 3900 0    50   Input ~ 0
GPIO_J2RIGHT
Text GLabel 8550 4700 2    50   Input ~ 0
GPIO_J2LEFT
Text GLabel 8550 4000 2    50   Input ~ 0
GPIO_J2DOWN
Text GLabel 8550 4200 2    50   Input ~ 0
GPIO_J2UP
Text GLabel 6700 3800 0    50   Input ~ 0
GPIO_J1DOWN
Text GLabel 6700 3700 0    50   Input ~ 0
GPIO_J1LEFT
Text GLabel 8550 3800 2    50   Input ~ 0
GPIO_J1RIGHT
Text GLabel 6700 4200 0    50   Input ~ 0
GPIO_J1FIRE
Text GLabel 3400 4200 0    50   Input ~ 0
GPIO_J1POTY
Text GLabel 8550 4800 2    50   Input ~ 0
GPIO_J1POTX
Text GLabel 6700 4000 0    50   Input ~ 0
GPIO_J1POTY
Wire Wire Line
	7000 1300 6700 1300
Wire Wire Line
	7000 1400 6700 1400
Wire Wire Line
	7000 1500 6700 1500
Wire Wire Line
	7000 1700 6700 1700
Wire Wire Line
	7000 1900 6700 1900
Wire Wire Line
	7000 2000 6700 2000
Wire Wire Line
	7000 2100 6700 2100
Text GLabel 6700 1300 0    50   Input ~ 0
J1UP
Text GLabel 6700 1500 0    50   Input ~ 0
J1DOWN
Text GLabel 6700 1700 0    50   Input ~ 0
J1LEFT
Text GLabel 6700 1400 0    50   Input ~ 0
J1FIRE
Text GLabel 6700 2100 0    50   Input ~ 0
J1POTY
Text GLabel 6700 2000 0    50   Input ~ 0
J1POTX
Text GLabel 6700 1900 0    50   Input ~ 0
J1RIGHT
Text GLabel 8950 1350 2    50   Input ~ 0
J2UP
Text GLabel 8950 1550 2    50   Input ~ 0
J2DOWN
Text GLabel 8950 1750 2    50   Input ~ 0
J2LEFT
Text GLabel 8950 1950 2    50   Input ~ 0
J2RIGHT
Text GLabel 8950 1450 2    50   Input ~ 0
J2FIRE
Text GLabel 2100 3600 2    50   Input ~ 0
J1FIRE
Text GLabel 2100 1350 2    50   Input ~ 0
J1UP
Text GLabel 2100 1900 2    50   Input ~ 0
J1DOWN
Text GLabel 2100 2450 2    50   Input ~ 0
J1LEFT
Text GLabel 2100 3000 2    50   Input ~ 0
J1RIGHT
$Comp
L power:GND #PWR012
U 1 1 5C6BCB4E
P 6900 5600
F 0 "#PWR012" H 6900 5350 50  0001 C CNN
F 1 "GND" H 6905 5427 50  0000 C CNN
F 2 "" H 6900 5600 50  0001 C CNN
F 3 "" H 6900 5600 50  0001 C CNN
	1    6900 5600
	1    0    0    -1  
$EndComp
$Comp
L unijoysticle_rev_h-rescue:ESP32_THING_W_ANT_KEEPOUT-SparkFun-Boards-unijoysticle-rescue B1
U 1 1 5C6B6FCB
P 7650 4600
F 0 "B1" H 7650 5960 45  0000 C CNN
F 1 "ESP32 MINI KIT" H 7650 5876 45  0000 C CNN
F 2 "Unijoysticle:MH-ET_LIVE_MINIKIT_ESP32" H 7650 5800 20  0001 C CNN
F 3 "" H 7650 4600 50  0001 C CNN
F 4 "DEV-13907" H 7650 5781 60  0000 C CNN "Field4"
	1    7650 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 3800 7150 3800
Wire Wire Line
	6700 3700 7150 3700
Wire Wire Line
	8150 4700 8550 4700
Wire Wire Line
	6900 5500 7150 5500
Wire Wire Line
	6900 5400 7150 5400
$Comp
L power:VDD #PWR011
U 1 1 5C703EAD
P 6900 5400
F 0 "#PWR011" H 6900 5250 50  0001 C CNN
F 1 "VDD" V 6918 5527 50  0000 L CNN
F 2 "" H 6900 5400 50  0001 C CNN
F 3 "" H 6900 5400 50  0001 C CNN
	1    6900 5400
	1    0    0    -1  
$EndComp
$Comp
L Connector:DB9_Female J2
U 1 1 5C705949
P 7300 1700
F 0 "J2" H 7479 1746 50  0000 L CNN
F 1 "DB9_Female" H 7479 1655 50  0000 L CNN
F 2 "Connector_Dsub:DSUB-9_Female_Horizontal_P2.77x2.84mm_EdgePinOffset9.40mm" H 7300 1700 50  0001 C CNN
F 3 "" H 7300 1700 50  0001 C CNN
	1    7300 1700
	1    0    0    -1  
$EndComp
$Comp
L Connector:DB9_Female J3
U 1 1 5C705C0F
P 8500 1750
F 0 "J3" H 8420 2442 50  0000 C CNN
F 1 "DB9_Female" H 8420 2351 50  0000 C CNN
F 2 "Connector_Dsub:DSUB-9_Female_Horizontal_P2.77x2.84mm_EdgePinOffset9.40mm" H 8500 1750 50  0001 C CNN
F 3 "" H 8500 1750 50  0001 C CNN
	1    8500 1750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8800 1350 8950 1350
Wire Wire Line
	8800 1450 8950 1450
Wire Wire Line
	8800 1550 8950 1550
Wire Wire Line
	8950 1750 8800 1750
Wire Wire Line
	8950 1950 8800 1950
Wire Wire Line
	8150 4200 8550 4200
Wire Wire Line
	8150 4100 8550 4100
Wire Wire Line
	8150 4000 8550 4000
Wire Wire Line
	8150 3800 8550 3800
Wire Wire Line
	6700 3900 7150 3900
Wire Wire Line
	6700 4400 7150 4400
Wire Wire Line
	6700 4200 7150 4200
Wire Wire Line
	6700 4000 7150 4000
Wire Wire Line
	8550 4800 8150 4800
Wire Wire Line
	1900 1350 2100 1350
Wire Wire Line
	1900 1900 2100 1900
Wire Wire Line
	1900 3000 2100 3000
Wire Wire Line
	1900 2450 2100 2450
Wire Wire Line
	1900 3600 2100 3600
Text GLabel 1100 4200 0    50   Input ~ 0
GPIO_J1POTX
Wire Wire Line
	3400 1350 3600 1350
Wire Wire Line
	3400 1900 3600 1900
Wire Wire Line
	3400 2450 3600 2450
Wire Wire Line
	3400 3000 3600 3000
Text GLabel 3400 3600 0    50   Input ~ 0
GPIO_J2FIRE
Wire Wire Line
	3400 3600 3600 3600
Wire Wire Line
	3400 4200 3600 4200
Wire Wire Line
	1100 1350 1300 1350
Wire Wire Line
	1100 1900 1300 1900
Wire Wire Line
	1100 2450 1300 2450
Wire Wire Line
	1100 3000 1300 3000
Wire Wire Line
	1100 3600 1300 3600
Wire Wire Line
	1100 4200 1300 4200
$Comp
L Device:LED D1
U 1 1 5C86DF58
P 1150 6550
F 0 "D1" H 1141 6766 50  0000 C CNN
F 1 "LED" H 1141 6675 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm_FlatTop" H 1150 6550 50  0001 C CNN
F 3 "~" H 1150 6550 50  0001 C CNN
	1    1150 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 5C86DFE0
P 1150 6950
F 0 "D2" H 1141 7166 50  0000 C CNN
F 1 "LED" H 1141 7075 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm_FlatTop" H 1150 6950 50  0001 C CNN
F 3 "~" H 1150 6950 50  0001 C CNN
	1    1150 6950
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5C86E310
P 1150 7500
F 0 "SW1" H 1150 7785 50  0000 C CNN
F 1 "SW_Push" H 1150 7694 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_SPST_Angled_PTS645Vx39-2LFS" H 1150 7700 50  0001 C CNN
F 3 "" H 1150 7700 50  0001 C CNN
	1    1150 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 6550 1500 6550
Wire Wire Line
	1300 6950 1500 6950
Wire Wire Line
	1000 6550 750  6550
Wire Wire Line
	1000 6950 750  6950
Wire Wire Line
	1350 7500 1550 7500
Wire Wire Line
	750  7500 950  7500
Wire Wire Line
	7150 4600 6700 4600
Text GLabel 6700 4600 0    50   Input ~ 0
GPIO_SWITCH_JOY
Text GLabel 1550 7500 2    50   Input ~ 0
GPIO_SWITCH_JOY
Text GLabel 1950 6550 2    50   Input ~ 0
GPIO_J1LED
Text GLabel 1950 6950 2    50   Input ~ 0
GPIO_J2LED
Text GLabel 6700 5100 0    50   Input ~ 0
GPIO_J1LED
Text GLabel 6700 4300 0    50   Input ~ 0
GPIO_J2LED
Wire Wire Line
	6700 5100 7150 5100
Wire Wire Line
	6700 4300 7150 4300
Wire Wire Line
	1800 6550 1950 6550
Wire Wire Line
	1800 6950 1950 6950
Wire Wire Line
	8800 1850 8900 1850
Wire Wire Line
	8900 1850 8900 2400
Wire Wire Line
	7000 1800 6900 1800
Wire Wire Line
	6900 1800 6900 2400
$Comp
L power:GND #PWR010
U 1 1 5C8CE940
P 6900 2400
F 0 "#PWR010" H 6900 2150 50  0001 C CNN
F 1 "GND" H 6905 2227 50  0000 C CNN
F 2 "" H 6900 2400 50  0001 C CNN
F 3 "" H 6900 2400 50  0001 C CNN
	1    6900 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5C8CEFE9
P 8900 2400
F 0 "#PWR013" H 8900 2150 50  0001 C CNN
F 1 "GND" H 8905 2227 50  0000 C CNN
F 2 "" H 8900 2400 50  0001 C CNN
F 3 "" H 8900 2400 50  0001 C CNN
	1    8900 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  6550 750  6950
Wire Wire Line
	750  6950 750  7500
Connection ~ 750  6950
Wire Wire Line
	750  7500 750  7550
Connection ~ 750  7500
$Comp
L power:GND #PWR01
U 1 1 5C8DE08B
P 750 7550
F 0 "#PWR01" H 750 7300 50  0001 C CNN
F 1 "GND" H 755 7377 50  0000 C CNN
F 2 "" H 750 7550 50  0001 C CNN
F 3 "" H 750 7550 50  0001 C CNN
	1    750  7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 5500 6900 5600
Text Notes 2100 6150 0    79   ~ 0
7405s: Joystick switches
Wire Notes Line
	9600 2900 5750 2900
Wire Notes Line
	550  700  9600 700 
Text Notes 7250 2750 0    79   ~ 0
DB9's: Port A, Port B
Wire Notes Line
	350  6300 9400 6300
Wire Notes Line
	9600 700  9600 6300
Text Notes 7400 6000 0    79   ~ 0
ESP32
Wire Notes Line
	3100 7800 3100 6300
Wire Notes Line
	550  -2150 550  4950
Text Notes 1200 7700 0    79   ~ 0
LEDs & Push Button
$Comp
L Device:R R1
U 1 1 5C9DFE27
P 1650 6550
F 0 "R1" V 1443 6550 50  0000 C CNN
F 1 "150" V 1534 6550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 1580 6550 50  0001 C CNN
F 3 "~" H 1650 6550 50  0001 C CNN
	1    1650 6550
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5C9DF1A9
P 1650 6950
F 0 "R2" V 1443 6950 50  0000 C CNN
F 1 "150" V 1534 6950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 1580 6950 50  0001 C CNN
F 3 "~" H 1650 6950 50  0001 C CNN
	1    1650 6950
	0    1    1    0   
$EndComp
Wire Wire Line
	8800 1650 8900 1650
Wire Wire Line
	8900 1650 8900 1200
Wire Wire Line
	7000 1600 6900 1600
Wire Wire Line
	6900 1600 6900 1200
Text GLabel 6900 1200 1    50   Input ~ 0
J1POWER
Text GLabel 8900 1200 1    50   Input ~ 0
J2POWER
NoConn ~ 8150 5500
NoConn ~ 8150 5400
NoConn ~ 8150 5300
NoConn ~ 8150 5200
NoConn ~ 8150 5100
NoConn ~ 8150 5000
NoConn ~ 8150 4900
NoConn ~ 8150 4600
NoConn ~ 8150 4500
NoConn ~ 8150 4400
NoConn ~ 8150 4300
NoConn ~ 8150 3700
NoConn ~ 8150 3600
NoConn ~ 7150 3600
NoConn ~ 7150 4100
NoConn ~ 7150 4500
NoConn ~ 7150 4700
NoConn ~ 7150 4800
NoConn ~ 7150 4900
NoConn ~ 7150 5200
NoConn ~ 7150 5300
Text GLabel 3950 7000 0    50   Input ~ 0
J1POWER
Text GLabel 3950 7350 0    50   Input ~ 0
J2POWER
Wire Wire Line
	3950 7000 4200 7000
Wire Wire Line
	4200 7350 3950 7350
$Comp
L power:VDD #PWR09
U 1 1 5D9B72D2
P 4900 6550
F 0 "#PWR09" H 4900 6400 50  0001 C CNN
F 1 "VDD" H 4917 6723 50  0000 C CNN
F 2 "" H 4900 6550 50  0001 C CNN
F 3 "" H 4900 6550 50  0001 C CNN
	1    4900 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 7000 4200 7150
Connection ~ 4200 7150
Wire Wire Line
	4200 7150 4200 7350
Wire Notes Line
	5750 700  5750 6300
Text Notes 4350 7650 0    79   ~ 0
Power from C64
Wire Notes Line
	6900 7800 6900 6300
Wire Wire Line
	4750 7150 4900 7150
NoConn ~ 8800 2150
NoConn ~ 8800 2050
Wire Wire Line
	4200 7150 4400 7150
$Comp
L power:VDD #PWR015
U 1 1 5DC9AE68
P 10000 1100
F 0 "#PWR015" H 10000 950 50  0001 C CNN
F 1 "VDD" H 10017 1273 50  0000 C CNN
F 2 "" H 10000 1100 50  0001 C CNN
F 3 "" H 10000 1100 50  0001 C CNN
	1    10000 1100
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5DC9B409
P 10000 1100
F 0 "#FLG01" H 10000 1175 50  0001 C CNN
F 1 "PWR_FLAG" H 10000 1273 50  0000 C CNN
F 2 "" H 10000 1100 50  0001 C CNN
F 3 "~" H 10000 1100 50  0001 C CNN
	1    10000 1100
	-1   0    0    1   
$EndComp
Wire Wire Line
	4400 7150 4400 6950
Connection ~ 4400 7150
Wire Wire Line
	4400 7150 4450 7150
$Comp
L 74xx:74LS05 IC1
U 1 1 5D8C567A
P 1600 1350
F 0 "IC1" H 1600 1667 50  0000 C CNN
F 1 "74LS05" H 1600 1576 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 1600 1350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS05" H 1600 1350 50  0001 C CNN
	1    1600 1350
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS05 IC1
U 2 1 5D8CAB2D
P 1600 1900
F 0 "IC1" H 1600 2217 50  0000 C CNN
F 1 "74LS05" H 1600 2126 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 1600 1900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS05" H 1600 1900 50  0001 C CNN
	2    1600 1900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS05 IC1
U 3 1 5D8CFF4F
P 1600 2450
F 0 "IC1" H 1600 2767 50  0000 C CNN
F 1 "74LS05" H 1600 2676 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 1600 2450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS05" H 1600 2450 50  0001 C CNN
	3    1600 2450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS05 IC1
U 4 1 5D8DBB34
P 1600 3000
F 0 "IC1" H 1600 3317 50  0000 C CNN
F 1 "74LS05" H 1600 3226 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 1600 3000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS05" H 1600 3000 50  0001 C CNN
	4    1600 3000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS05 IC1
U 5 1 5D8E5DA7
P 1600 3600
F 0 "IC1" H 1600 3917 50  0000 C CNN
F 1 "74LS05" H 1600 3826 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 1600 3600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS05" H 1600 3600 50  0001 C CNN
	5    1600 3600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS05 IC1
U 6 1 5D8EEC06
P 1600 4200
F 0 "IC1" H 1600 4517 50  0000 C CNN
F 1 "74LS05" H 1600 4426 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 1600 4200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS05" H 1600 4200 50  0001 C CNN
	6    1600 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 4200 1900 4200
Text GLabel 2100 4200 2    50   Input ~ 0
J1POTX
$Comp
L 74xx:74LS05 IC1
U 7 1 5D93A18B
P 1600 5200
F 0 "IC1" H 1830 5246 50  0000 L CNN
F 1 "74LS05" H 1830 5155 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 1600 5200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS05" H 1600 5200 50  0001 C CNN
	7    1600 5200
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS05 IC2
U 1 1 5D9406AC
P 3900 1350
F 0 "IC2" H 3900 1667 50  0000 C CNN
F 1 "74LS05" H 3900 1576 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 3900 1350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS05" H 3900 1350 50  0001 C CNN
	1    3900 1350
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS05 IC2
U 2 1 5D94154F
P 3900 1900
F 0 "IC2" H 3900 2217 50  0000 C CNN
F 1 "74LS05" H 3900 2126 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 3900 1900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS05" H 3900 1900 50  0001 C CNN
	2    3900 1900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS05 IC2
U 3 1 5D9425EA
P 3900 2450
F 0 "IC2" H 3900 2767 50  0000 C CNN
F 1 "74LS05" H 3900 2676 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 3900 2450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS05" H 3900 2450 50  0001 C CNN
	3    3900 2450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS05 IC2
U 4 1 5D9433BF
P 3900 3000
F 0 "IC2" H 3900 3317 50  0000 C CNN
F 1 "74LS05" H 3900 3226 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 3900 3000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS05" H 3900 3000 50  0001 C CNN
	4    3900 3000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS05 IC2
U 5 1 5D9442F1
P 3900 3600
F 0 "IC2" H 3900 3917 50  0000 C CNN
F 1 "74LS05" H 3900 3826 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 3900 3600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS05" H 3900 3600 50  0001 C CNN
	5    3900 3600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS05 IC2
U 6 1 5D94544D
P 3900 4200
F 0 "IC2" H 3900 4517 50  0000 C CNN
F 1 "74LS05" H 3900 4426 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 3900 4200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS05" H 3900 4200 50  0001 C CNN
	6    3900 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 4200 4400 4200
Wire Wire Line
	4200 3600 4400 3600
Wire Wire Line
	4200 3000 4400 3000
Wire Wire Line
	4200 2450 4400 2450
Wire Wire Line
	4200 1900 4400 1900
Wire Wire Line
	4200 1350 4400 1350
Text GLabel 4400 3600 2    50   Input ~ 0
J2FIRE
Text GLabel 4400 4200 2    50   Input ~ 0
J1POTY
Text GLabel 4400 3000 2    50   Input ~ 0
J2RIGHT
Text GLabel 4400 2450 2    50   Input ~ 0
J2LEFT
Text GLabel 4400 1900 2    50   Input ~ 0
J2DOWN
Text GLabel 4400 1350 2    50   Input ~ 0
J2UP
$Comp
L 74xx:74LS05 IC2
U 7 1 5D9A4361
P 3850 5200
F 0 "IC2" H 4080 5246 50  0000 L CNN
F 1 "74LS05" H 4080 5155 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 3850 5200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS05" H 3850 5200 50  0001 C CNN
	7    3850 5200
	1    0    0    -1  
$EndComp
$Comp
L power:VDDA #PWR08
U 1 1 5D9D0395
P 4400 6950
F 0 "#PWR08" H 4400 6800 50  0001 C CNN
F 1 "VDDA" H 4417 7123 50  0000 C CNN
F 2 "" H 4400 6950 50  0001 C CNN
F 3 "" H 4400 6950 50  0001 C CNN
	1    4400 6950
	1    0    0    -1  
$EndComp
$Comp
L power:VDDA #PWR02
U 1 1 5D9E2267
P 1900 4700
F 0 "#PWR02" H 1900 4550 50  0001 C CNN
F 1 "VDDA" H 1917 4873 50  0000 C CNN
F 2 "" H 1900 4700 50  0001 C CNN
F 3 "" H 1900 4700 50  0001 C CNN
	1    1900 4700
	1    0    0    -1  
$EndComp
$Comp
L power:VDDA #PWR05
U 1 1 5D9E2A4D
P 4250 4700
F 0 "#PWR05" H 4250 4550 50  0001 C CNN
F 1 "VDDA" H 4267 4873 50  0000 C CNN
F 2 "" H 4250 4700 50  0001 C CNN
F 3 "" H 4250 4700 50  0001 C CNN
	1    4250 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5D9F1FF0
P 1900 5700
F 0 "#PWR03" H 1900 5450 50  0001 C CNN
F 1 "GND" H 1905 5527 50  0000 C CNN
F 2 "" H 1900 5700 50  0001 C CNN
F 3 "" H 1900 5700 50  0001 C CNN
	1    1900 5700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5D9F2574
P 4250 5700
F 0 "#PWR06" H 4250 5450 50  0001 C CNN
F 1 "GND" H 4255 5527 50  0000 C CNN
F 2 "" H 4250 5700 50  0001 C CNN
F 3 "" H 4250 5700 50  0001 C CNN
	1    4250 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 5700 1600 5700
Wire Wire Line
	4250 5700 3850 5700
Wire Wire Line
	4250 4700 3850 4700
Wire Wire Line
	1900 4700 1600 4700
$Comp
L power:VDDA #PWR017
U 1 1 5DA42FB3
P 10450 1100
F 0 "#PWR017" H 10450 950 50  0001 C CNN
F 1 "VDDA" H 10467 1273 50  0000 C CNN
F 2 "" H 10450 1100 50  0001 C CNN
F 3 "" H 10450 1100 50  0001 C CNN
	1    10450 1100
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5DA43568
P 10450 1100
F 0 "#FLG02" H 10450 1175 50  0001 C CNN
F 1 "PWR_FLAG" H 10450 1273 50  0000 C CNN
F 2 "" H 10450 1100 50  0001 C CNN
F 3 "~" H 10450 1100 50  0001 C CNN
	1    10450 1100
	-1   0    0    1   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5F6B0E64
P 10000 1750
F 0 "H1" H 10100 1799 50  0000 L CNN
F 1 "MountingHole_Pad" H 10100 1708 50  0000 L CNN
F 2 "MountingHole:MountingHole_5.3mm_M5_ISO7380_Pad" H 10000 1750 50  0001 C CNN
F 3 "~" H 10000 1750 50  0001 C CNN
	1    10000 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5F6BE84B
P 10000 2050
F 0 "#PWR016" H 10000 1800 50  0001 C CNN
F 1 "GND" H 10005 1877 50  0000 C CNN
F 2 "" H 10000 2050 50  0001 C CNN
F 3 "" H 10000 2050 50  0001 C CNN
	1    10000 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 1850 10000 2050
$Comp
L Diode:1N5819 D4
U 1 1 5F695DDA
P 4600 7150
F 0 "D4" H 4600 7367 50  0000 C CNN
F 1 "1N5819" H 4600 7276 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" H 4600 6975 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 4600 7150 50  0001 C CNN
	1    4600 7150
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 60440A71
P 8850 5800
F 0 "SW2" H 8850 6085 50  0000 C CNN
F 1 "SW_Push" H 8850 5994 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_SPST_Angled_PTS645Vx39-2LFS" H 8850 6000 50  0001 C CNN
F 3 "" H 8850 6000 50  0001 C CNN
	1    8850 5800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 60444A03
P 9200 5900
F 0 "#PWR014" H 9200 5650 50  0001 C CNN
F 1 "GND" H 9205 5727 50  0000 C CNN
F 2 "" H 9200 5900 50  0001 C CNN
F 3 "" H 9200 5900 50  0001 C CNN
	1    9200 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 5900 9200 5800
Wire Wire Line
	9200 5800 9050 5800
NoConn ~ 7150 5000
Wire Wire Line
	8650 5800 8400 5800
Wire Wire Line
	4900 6550 4900 6750
Text GLabel 8550 3900 2    50   Input ~ 0
RESET
Text GLabel 8400 5800 0    50   Input ~ 0
RESET
Wire Wire Line
	8550 3900 8150 3900
$Comp
L Device:CP C3
U 1 1 60A4231D
P 5200 7100
F 0 "C3" H 5318 7146 50  0000 L CNN
F 1 "2200uF" H 5318 7055 50  0000 L CNN
F 2 "Capacitor_THT:CP_Axial_L25.0mm_D10.0mm_P30.00mm_Horizontal" H 5238 6950 50  0001 C CNN
F 3 "~" H 5200 7100 50  0001 C CNN
	1    5200 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 6950 5200 6750
Wire Wire Line
	5200 6750 4900 6750
Connection ~ 4900 6750
Wire Wire Line
	4900 6750 4900 7150
$Comp
L power:GND #PWR0101
U 1 1 60A4871B
P 5200 7300
F 0 "#PWR0101" H 5200 7050 50  0001 C CNN
F 1 "GND" H 5205 7127 50  0000 C CNN
F 2 "" H 5200 7300 50  0001 C CNN
F 3 "" H 5200 7300 50  0001 C CNN
	1    5200 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 7250 5200 7300
$Comp
L Device:C C1
U 1 1 60A2E234
P 1050 5200
F 0 "C1" H 1165 5246 50  0000 L CNN
F 1 "100nF" H 1165 5155 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 1088 5050 50  0001 C CNN
F 3 "~" H 1050 5200 50  0001 C CNN
	1    1050 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 5050 1050 4700
Wire Wire Line
	1050 4700 1600 4700
Connection ~ 1600 4700
Wire Wire Line
	1050 5350 1050 5700
Wire Wire Line
	1050 5700 1600 5700
Connection ~ 1600 5700
$Comp
L Device:C C2
U 1 1 60A38DFE
P 3200 5200
F 0 "C2" H 3315 5246 50  0000 L CNN
F 1 "100nF" H 3315 5155 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 3238 5050 50  0001 C CNN
F 3 "~" H 3200 5200 50  0001 C CNN
	1    3200 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 5050 3200 4700
Wire Wire Line
	3200 4700 3850 4700
Connection ~ 3850 4700
Wire Wire Line
	3200 5350 3200 5700
Wire Wire Line
	3200 5700 3850 5700
Connection ~ 3850 5700
$EndSCHEMATC
