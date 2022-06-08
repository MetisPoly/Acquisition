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
L Essai2_encodeurs-rescue:61301411121-14pins J1
U 1 1 62940B0D
P 1450 1350
F 0 "J1" H 2078 746 50  0000 L CNN
F 1 "Teensy_Left" H 2078 655 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x14_P2.54mm_Vertical" H 2100 1450 50  0001 L CNN
F 3 "" H 2100 1350 50  0001 L CNN
F 4 "" H 2100 1250 50  0001 L CNN "Description"
F 5 "" H 2100 1150 50  0001 L CNN "Height"
F 6 "" H 2100 1050 50  0001 L CNN "Manufacturer_Name"
F 7 "" H 2100 950 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "" H 2100 850 50  0001 L CNN "Mouser Part Number"
F 9 "" H 2100 750 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 2100 650 50  0001 L CNN "Arrow Part Number"
F 11 "" H 2100 550 50  0001 L CNN "Arrow Price/Stock"
	1    1450 1350
	1    0    0    -1  
$EndComp
$Comp
L Essai2_encodeurs-rescue:61301411121-14pins J2
U 1 1 62941EF9
P 3300 2700
F 0 "J2" H 3592 1135 50  0000 C CNN
F 1 "Teensy_Right" H 3592 1226 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x14_P2.54mm_Vertical" H 3950 2800 50  0001 L CNN
F 3 "" H 3950 2700 50  0001 L CNN
F 4 "" H 3950 2600 50  0001 L CNN "Description"
F 5 "" H 3950 2500 50  0001 L CNN "Height"
F 6 "" H 3950 2400 50  0001 L CNN "Manufacturer_Name"
F 7 "" H 3950 2300 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "" H 3950 2200 50  0001 L CNN "Mouser Part Number"
F 9 "" H 3950 2100 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 3950 2000 50  0001 L CNN "Arrow Part Number"
F 11 "" H 3950 1900 50  0001 L CNN "Arrow Price/Stock"
	1    3300 2700
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 62944043
P 1450 1350
F 0 "#PWR0101" H 1450 1100 50  0001 C CNN
F 1 "GND" V 1455 1222 50  0000 R CNN
F 2 "" H 1450 1350 50  0001 C CNN
F 3 "" H 1450 1350 50  0001 C CNN
	1    1450 1350
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 6294493D
P 3300 1400
F 0 "#PWR0102" H 3300 1250 50  0001 C CNN
F 1 "+5V" V 3315 1528 50  0000 L CNN
F 2 "" H 3300 1400 50  0001 C CNN
F 3 "" H 3300 1400 50  0001 C CNN
	1    3300 1400
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR0103
U 1 1 62945237
P 3300 1600
F 0 "#PWR0103" H 3300 1450 50  0001 C CNN
F 1 "+3.3V" V 3315 1728 50  0000 L CNN
F 2 "" H 3300 1600 50  0001 C CNN
F 3 "" H 3300 1600 50  0001 C CNN
	1    3300 1600
	0    1    1    0   
$EndComp
Text GLabel 3300 2400 2    50   Input ~ 0
Electrode2_signal
NoConn ~ 3300 1700
NoConn ~ 3300 2600
NoConn ~ 3300 2700
NoConn ~ 1450 1450
NoConn ~ 1450 1550
NoConn ~ 1450 2450
NoConn ~ 1450 2550
NoConn ~ 1450 2650
Text GLabel 1450 1650 0    50   Input ~ 0
Encodeur1_red
Text GLabel 1450 1750 0    50   Input ~ 0
Encodeur1_green
Text GLabel 1450 1850 0    50   Input ~ 0
Encodeur2_red
Text GLabel 1450 1950 0    50   Input ~ 0
Encodeur2_green
Text GLabel 1450 2050 0    50   Input ~ 0
Encodeur3_red
Text GLabel 1450 2150 0    50   Input ~ 0
Encodeur3_green
Text GLabel 1450 2250 0    50   Input ~ 0
Encodeur4_red
Text GLabel 1450 2350 0    50   Input ~ 0
Encodeur4_green
Text GLabel 9600 1700 2    50   Input ~ 0
Encodeur1_green
Text GLabel 9600 1600 2    50   Input ~ 0
Encodeur1_red
$Comp
L Device:R R1
U 1 1 62949640
P 8900 1150
F 0 "R1" H 8970 1196 50  0000 L CNN
F 1 "10k" H 8970 1105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8830 1150 50  0001 C CNN
F 3 "~" H 8900 1150 50  0001 C CNN
	1    8900 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 62949F68
P 9350 1150
F 0 "R2" H 9420 1196 50  0000 L CNN
F 1 "10k" H 9420 1105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9280 1150 50  0001 C CNN
F 3 "~" H 9350 1150 50  0001 C CNN
	1    9350 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 1000 9150 1000
Wire Wire Line
	9150 1000 9150 900 
Connection ~ 9150 1000
Wire Wire Line
	9150 1000 9350 1000
$Comp
L power:+5V #PWR0104
U 1 1 6294AD5D
P 9150 900
F 0 "#PWR0104" H 9150 750 50  0001 C CNN
F 1 "+5V" H 9165 1073 50  0000 C CNN
F 2 "" H 9150 900 50  0001 C CNN
F 3 "" H 9150 900 50  0001 C CNN
	1    9150 900 
	1    0    0    -1  
$EndComp
Text GLabel 5650 1450 2    50   Input ~ 0
Electrode1_signal
Wire Wire Line
	5550 1450 5650 1450
$Comp
L power:+3.3V #PWR0105
U 1 1 6294FCC7
P 5550 1250
F 0 "#PWR0105" H 5550 1100 50  0001 C CNN
F 1 "+3.3V" V 5565 1378 50  0000 L CNN
F 2 "" H 5550 1250 50  0001 C CNN
F 3 "" H 5550 1250 50  0001 C CNN
	1    5550 1250
	0    1    1    0   
$EndComp
Wire Wire Line
	5550 1350 5950 1350
$Comp
L power:GND #PWR0106
U 1 1 62950ACA
P 5950 1350
F 0 "#PWR0106" H 5950 1100 50  0001 C CNN
F 1 "GND" V 5955 1222 50  0000 R CNN
F 2 "" H 5950 1350 50  0001 C CNN
F 3 "" H 5950 1350 50  0001 C CNN
	1    5950 1350
	0    -1   -1   0   
$EndComp
Text GLabel 5650 2250 2    50   Input ~ 0
Electrode2_signal
Wire Wire Line
	5550 2250 5650 2250
$Comp
L power:+3.3V #PWR0107
U 1 1 629520D0
P 5550 2050
F 0 "#PWR0107" H 5550 1900 50  0001 C CNN
F 1 "+3.3V" V 5565 2178 50  0000 L CNN
F 2 "" H 5550 2050 50  0001 C CNN
F 3 "" H 5550 2050 50  0001 C CNN
	1    5550 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	5550 2150 5950 2150
$Comp
L power:GND #PWR0108
U 1 1 629520DB
P 5950 2150
F 0 "#PWR0108" H 5950 1900 50  0001 C CNN
F 1 "GND" V 5955 2022 50  0000 R CNN
F 2 "" H 5950 2150 50  0001 C CNN
F 3 "" H 5950 2150 50  0001 C CNN
	1    5950 2150
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x04 J11
U 1 1 629572BA
P 8400 1800
F 0 "J11" H 8318 1375 50  0000 C CNN
F 1 "Encodeur1" H 8318 1466 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-4_P5.08mm" H 8400 1800 50  0001 C CNN
F 3 "~" H 8400 1800 50  0001 C CNN
	1    8400 1800
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 62958577
P 8600 1800
F 0 "#PWR0109" H 8600 1550 50  0001 C CNN
F 1 "GND" V 8605 1672 50  0000 R CNN
F 2 "" H 8600 1800 50  0001 C CNN
F 3 "" H 8600 1800 50  0001 C CNN
	1    8600 1800
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0110
U 1 1 62958AF3
P 8600 1900
F 0 "#PWR0110" H 8600 1750 50  0001 C CNN
F 1 "+5V" V 8615 2028 50  0000 L CNN
F 2 "" H 8600 1900 50  0001 C CNN
F 3 "" H 8600 1900 50  0001 C CNN
	1    8600 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	8600 1600 8900 1600
Wire Wire Line
	8600 1700 9350 1700
Wire Wire Line
	8900 1300 8900 1600
Connection ~ 8900 1600
Wire Wire Line
	9350 1300 9350 1700
Connection ~ 9350 1700
Wire Wire Line
	8900 1600 9600 1600
Wire Wire Line
	9350 1700 9600 1700
Text GLabel 9650 3150 2    50   Input ~ 0
Encodeur2_green
Text GLabel 9650 3050 2    50   Input ~ 0
Encodeur2_red
$Comp
L Device:R R3
U 1 1 62966149
P 8950 2600
F 0 "R3" H 9020 2646 50  0000 L CNN
F 1 "10k" H 9020 2555 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8880 2600 50  0001 C CNN
F 3 "~" H 8950 2600 50  0001 C CNN
	1    8950 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 62966153
P 9400 2600
F 0 "R4" H 9470 2646 50  0000 L CNN
F 1 "10k" H 9470 2555 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9330 2600 50  0001 C CNN
F 3 "~" H 9400 2600 50  0001 C CNN
	1    9400 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 2450 9200 2450
Wire Wire Line
	9200 2450 9200 2350
Connection ~ 9200 2450
Wire Wire Line
	9200 2450 9400 2450
$Comp
L power:+5V #PWR0111
U 1 1 62966161
P 9200 2350
F 0 "#PWR0111" H 9200 2200 50  0001 C CNN
F 1 "+5V" H 9215 2523 50  0000 C CNN
F 2 "" H 9200 2350 50  0001 C CNN
F 3 "" H 9200 2350 50  0001 C CNN
	1    9200 2350
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x04 J12
U 1 1 6296616B
P 8450 3250
F 0 "J12" H 8368 2825 50  0000 C CNN
F 1 "Encodeur2" H 8368 2916 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-4_P5.08mm" H 8450 3250 50  0001 C CNN
F 3 "~" H 8450 3250 50  0001 C CNN
	1    8450 3250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 62966175
P 8650 3250
F 0 "#PWR0112" H 8650 3000 50  0001 C CNN
F 1 "GND" V 8655 3122 50  0000 R CNN
F 2 "" H 8650 3250 50  0001 C CNN
F 3 "" H 8650 3250 50  0001 C CNN
	1    8650 3250
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0113
U 1 1 6296617F
P 8650 3350
F 0 "#PWR0113" H 8650 3200 50  0001 C CNN
F 1 "+5V" V 8665 3478 50  0000 L CNN
F 2 "" H 8650 3350 50  0001 C CNN
F 3 "" H 8650 3350 50  0001 C CNN
	1    8650 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	8650 3050 8950 3050
Wire Wire Line
	8650 3150 9400 3150
Wire Wire Line
	8950 2750 8950 3050
Connection ~ 8950 3050
Wire Wire Line
	9400 2750 9400 3150
Connection ~ 9400 3150
Wire Wire Line
	8950 3050 9650 3050
Wire Wire Line
	9400 3150 9650 3150
Text GLabel 9650 4600 2    50   Input ~ 0
Encodeur3_green
Text GLabel 9650 4500 2    50   Input ~ 0
Encodeur3_red
$Comp
L Device:R R5
U 1 1 6296A259
P 8950 4050
F 0 "R5" H 9020 4096 50  0000 L CNN
F 1 "10k" H 9020 4005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8880 4050 50  0001 C CNN
F 3 "~" H 8950 4050 50  0001 C CNN
	1    8950 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 6296A263
P 9400 4050
F 0 "R6" H 9470 4096 50  0000 L CNN
F 1 "10k" H 9470 4005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9330 4050 50  0001 C CNN
F 3 "~" H 9400 4050 50  0001 C CNN
	1    9400 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 3900 9200 3900
Wire Wire Line
	9200 3900 9200 3800
Connection ~ 9200 3900
Wire Wire Line
	9200 3900 9400 3900
$Comp
L power:+5V #PWR0114
U 1 1 6296A271
P 9200 3800
F 0 "#PWR0114" H 9200 3650 50  0001 C CNN
F 1 "+5V" H 9215 3973 50  0000 C CNN
F 2 "" H 9200 3800 50  0001 C CNN
F 3 "" H 9200 3800 50  0001 C CNN
	1    9200 3800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x04 J13
U 1 1 6296A27B
P 8450 4700
F 0 "J13" H 8368 4275 50  0000 C CNN
F 1 "Encodeur3" H 8368 4366 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-4_P5.08mm" H 8450 4700 50  0001 C CNN
F 3 "~" H 8450 4700 50  0001 C CNN
	1    8450 4700
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 6296A285
P 8650 4700
F 0 "#PWR0115" H 8650 4450 50  0001 C CNN
F 1 "GND" V 8655 4572 50  0000 R CNN
F 2 "" H 8650 4700 50  0001 C CNN
F 3 "" H 8650 4700 50  0001 C CNN
	1    8650 4700
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0116
U 1 1 6296A28F
P 8650 4800
F 0 "#PWR0116" H 8650 4650 50  0001 C CNN
F 1 "+5V" V 8665 4928 50  0000 L CNN
F 2 "" H 8650 4800 50  0001 C CNN
F 3 "" H 8650 4800 50  0001 C CNN
	1    8650 4800
	0    1    1    0   
$EndComp
Wire Wire Line
	8650 4500 8950 4500
Wire Wire Line
	8650 4600 9400 4600
Wire Wire Line
	8950 4200 8950 4500
Connection ~ 8950 4500
Wire Wire Line
	9400 4200 9400 4600
Connection ~ 9400 4600
Wire Wire Line
	8950 4500 9650 4500
Wire Wire Line
	9400 4600 9650 4600
Text GLabel 9600 6000 2    50   Input ~ 0
Encodeur4_green
Text GLabel 9600 5900 2    50   Input ~ 0
Encodeur4_red
$Comp
L Device:R R7
U 1 1 6297837F
P 8900 5450
F 0 "R7" H 8970 5496 50  0000 L CNN
F 1 "10k" H 8970 5405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8830 5450 50  0001 C CNN
F 3 "~" H 8900 5450 50  0001 C CNN
	1    8900 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 62978389
P 9350 5450
F 0 "R8" H 9420 5496 50  0000 L CNN
F 1 "10k" H 9420 5405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9280 5450 50  0001 C CNN
F 3 "~" H 9350 5450 50  0001 C CNN
	1    9350 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 5300 9150 5300
Wire Wire Line
	9150 5300 9150 5200
Connection ~ 9150 5300
Wire Wire Line
	9150 5300 9350 5300
$Comp
L power:+5V #PWR0117
U 1 1 62978397
P 9150 5200
F 0 "#PWR0117" H 9150 5050 50  0001 C CNN
F 1 "+5V" H 9165 5373 50  0000 C CNN
F 2 "" H 9150 5200 50  0001 C CNN
F 3 "" H 9150 5200 50  0001 C CNN
	1    9150 5200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x04 J14
U 1 1 629783A1
P 8400 6100
F 0 "J14" H 8318 5675 50  0000 C CNN
F 1 "Encodeur4" H 8318 5766 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-4_P5.08mm" H 8400 6100 50  0001 C CNN
F 3 "~" H 8400 6100 50  0001 C CNN
	1    8400 6100
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 629783AB
P 8600 6100
F 0 "#PWR0118" H 8600 5850 50  0001 C CNN
F 1 "GND" V 8605 5972 50  0000 R CNN
F 2 "" H 8600 6100 50  0001 C CNN
F 3 "" H 8600 6100 50  0001 C CNN
	1    8600 6100
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0119
U 1 1 629783B5
P 8600 6200
F 0 "#PWR0119" H 8600 6050 50  0001 C CNN
F 1 "+5V" V 8615 6328 50  0000 L CNN
F 2 "" H 8600 6200 50  0001 C CNN
F 3 "" H 8600 6200 50  0001 C CNN
	1    8600 6200
	0    1    1    0   
$EndComp
Wire Wire Line
	8600 5900 8900 5900
Wire Wire Line
	8600 6000 9350 6000
Wire Wire Line
	8900 5600 8900 5900
Connection ~ 8900 5900
Wire Wire Line
	9350 5600 9350 6000
Connection ~ 9350 6000
Wire Wire Line
	8900 5900 9600 5900
Wire Wire Line
	9350 6000 9600 6000
$Comp
L Connector:Screw_Terminal_01x03 J3
U 1 1 6297EC9C
P 5350 1350
F 0 "J3" H 5268 1025 50  0000 C CNN
F 1 "Electrode1" H 5268 1116 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-3_P5.08mm" H 5350 1350 50  0001 C CNN
F 3 "~" H 5350 1350 50  0001 C CNN
	1    5350 1350
	-1   0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J4
U 1 1 62981BF8
P 5350 2150
F 0 "J4" H 5268 1825 50  0000 C CNN
F 1 "Electrode2" H 5268 1916 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-3_P5.08mm" H 5350 2150 50  0001 C CNN
F 3 "~" H 5350 2150 50  0001 C CNN
	1    5350 2150
	-1   0    0    1   
$EndComp
NoConn ~ 3300 1500
Text GLabel 5500 3100 2    50   Input ~ 0
Electrode3_signal
Wire Wire Line
	5400 3100 5500 3100
$Comp
L power:+3.3V #PWR0120
U 1 1 6295FF91
P 5400 2900
F 0 "#PWR0120" H 5400 2750 50  0001 C CNN
F 1 "+3.3V" V 5415 3028 50  0000 L CNN
F 2 "" H 5400 2900 50  0001 C CNN
F 3 "" H 5400 2900 50  0001 C CNN
	1    5400 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	5400 3000 5800 3000
$Comp
L power:GND #PWR0121
U 1 1 6295FF9C
P 5800 3000
F 0 "#PWR0121" H 5800 2750 50  0001 C CNN
F 1 "GND" V 5805 2872 50  0000 R CNN
F 2 "" H 5800 3000 50  0001 C CNN
F 3 "" H 5800 3000 50  0001 C CNN
	1    5800 3000
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J5
U 1 1 6295FFA6
P 5200 3000
F 0 "J5" H 5118 2675 50  0000 C CNN
F 1 "Electrode3" H 5118 2766 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-3_P5.08mm" H 5200 3000 50  0001 C CNN
F 3 "~" H 5200 3000 50  0001 C CNN
	1    5200 3000
	-1   0    0    1   
$EndComp
Text GLabel 5500 4050 2    50   Input ~ 0
Electrode4_signal
Wire Wire Line
	5400 4050 5500 4050
$Comp
L power:+3.3V #PWR0122
U 1 1 6296266F
P 5400 3850
F 0 "#PWR0122" H 5400 3700 50  0001 C CNN
F 1 "+3.3V" V 5415 3978 50  0000 L CNN
F 2 "" H 5400 3850 50  0001 C CNN
F 3 "" H 5400 3850 50  0001 C CNN
	1    5400 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	5400 3950 5800 3950
$Comp
L power:GND #PWR0123
U 1 1 6296267A
P 5800 3950
F 0 "#PWR0123" H 5800 3700 50  0001 C CNN
F 1 "GND" V 5805 3822 50  0000 R CNN
F 2 "" H 5800 3950 50  0001 C CNN
F 3 "" H 5800 3950 50  0001 C CNN
	1    5800 3950
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J6
U 1 1 62962684
P 5200 3950
F 0 "J6" H 5118 3625 50  0000 C CNN
F 1 "Electrode4" H 5118 3716 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-3_P5.08mm" H 5200 3950 50  0001 C CNN
F 3 "~" H 5200 3950 50  0001 C CNN
	1    5200 3950
	-1   0    0    1   
$EndComp
Text GLabel 5450 4900 2    50   Input ~ 0
Electrode5_signal
Wire Wire Line
	5350 4900 5450 4900
$Comp
L power:+3.3V #PWR0124
U 1 1 62965E2D
P 5350 4700
F 0 "#PWR0124" H 5350 4550 50  0001 C CNN
F 1 "+3.3V" V 5365 4828 50  0000 L CNN
F 2 "" H 5350 4700 50  0001 C CNN
F 3 "" H 5350 4700 50  0001 C CNN
	1    5350 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 4800 5750 4800
$Comp
L power:GND #PWR0125
U 1 1 62965E38
P 5750 4800
F 0 "#PWR0125" H 5750 4550 50  0001 C CNN
F 1 "GND" V 5755 4672 50  0000 R CNN
F 2 "" H 5750 4800 50  0001 C CNN
F 3 "" H 5750 4800 50  0001 C CNN
	1    5750 4800
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J7
U 1 1 62965E42
P 5150 4800
F 0 "J7" H 5068 4475 50  0000 C CNN
F 1 "Electrode5" H 5068 4566 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-3_P5.08mm" H 5150 4800 50  0001 C CNN
F 3 "~" H 5150 4800 50  0001 C CNN
	1    5150 4800
	-1   0    0    1   
$EndComp
Text GLabel 5500 5750 2    50   Input ~ 0
Electrode6_signal
Wire Wire Line
	5400 5750 5500 5750
$Comp
L power:+3.3V #PWR0126
U 1 1 62967E28
P 5400 5550
F 0 "#PWR0126" H 5400 5400 50  0001 C CNN
F 1 "+3.3V" V 5415 5678 50  0000 L CNN
F 2 "" H 5400 5550 50  0001 C CNN
F 3 "" H 5400 5550 50  0001 C CNN
	1    5400 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	5400 5650 5800 5650
$Comp
L power:GND #PWR0127
U 1 1 62967E33
P 5800 5650
F 0 "#PWR0127" H 5800 5400 50  0001 C CNN
F 1 "GND" V 5805 5522 50  0000 R CNN
F 2 "" H 5800 5650 50  0001 C CNN
F 3 "" H 5800 5650 50  0001 C CNN
	1    5800 5650
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J8
U 1 1 62967E3D
P 5200 5650
F 0 "J8" H 5118 5325 50  0000 C CNN
F 1 "Electrode6" H 5118 5416 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-3_P5.08mm" H 5200 5650 50  0001 C CNN
F 3 "~" H 5200 5650 50  0001 C CNN
	1    5200 5650
	-1   0    0    1   
$EndComp
Text GLabel 5450 6450 2    50   Input ~ 0
Electrode7_signal
Wire Wire Line
	5350 6450 5450 6450
$Comp
L power:+3.3V #PWR0128
U 1 1 62969F19
P 5350 6250
F 0 "#PWR0128" H 5350 6100 50  0001 C CNN
F 1 "+3.3V" V 5365 6378 50  0000 L CNN
F 2 "" H 5350 6250 50  0001 C CNN
F 3 "" H 5350 6250 50  0001 C CNN
	1    5350 6250
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 6350 5750 6350
$Comp
L power:GND #PWR0129
U 1 1 62969F24
P 5750 6350
F 0 "#PWR0129" H 5750 6100 50  0001 C CNN
F 1 "GND" V 5755 6222 50  0000 R CNN
F 2 "" H 5750 6350 50  0001 C CNN
F 3 "" H 5750 6350 50  0001 C CNN
	1    5750 6350
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J9
U 1 1 62969F2E
P 5150 6350
F 0 "J9" H 5068 6025 50  0000 C CNN
F 1 "Electrode7" H 5068 6116 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-3_P5.08mm" H 5150 6350 50  0001 C CNN
F 3 "~" H 5150 6350 50  0001 C CNN
	1    5150 6350
	-1   0    0    1   
$EndComp
Text GLabel 5450 7250 2    50   Input ~ 0
Electrode8_signal
Wire Wire Line
	5350 7250 5450 7250
$Comp
L power:+3.3V #PWR0130
U 1 1 6296C0E9
P 5350 7050
F 0 "#PWR0130" H 5350 6900 50  0001 C CNN
F 1 "+3.3V" V 5365 7178 50  0000 L CNN
F 2 "" H 5350 7050 50  0001 C CNN
F 3 "" H 5350 7050 50  0001 C CNN
	1    5350 7050
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 7150 5750 7150
$Comp
L power:GND #PWR0131
U 1 1 6296C0F4
P 5750 7150
F 0 "#PWR0131" H 5750 6900 50  0001 C CNN
F 1 "GND" V 5755 7022 50  0000 R CNN
F 2 "" H 5750 7150 50  0001 C CNN
F 3 "" H 5750 7150 50  0001 C CNN
	1    5750 7150
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J10
U 1 1 6296C0FE
P 5150 7150
F 0 "J10" H 5068 6825 50  0000 C CNN
F 1 "Electrode8" H 5068 6916 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-3_P5.08mm" H 5150 7150 50  0001 C CNN
F 3 "~" H 5150 7150 50  0001 C CNN
	1    5150 7150
	-1   0    0    1   
$EndComp
Text GLabel 3300 2300 2    50   Input ~ 0
Electrode3_signal
Text GLabel 3300 2200 2    50   Input ~ 0
Electrode4_signal
Text GLabel 3300 2100 2    50   Input ~ 0
Electrode5_signal
Text GLabel 3300 2000 2    50   Input ~ 0
Electrode6_signal
Text GLabel 3300 1900 2    50   Input ~ 0
Electrode7_signal
Text GLabel 3300 1800 2    50   Input ~ 0
Electrode8_signal
Text GLabel 3300 2500 2    50   Input ~ 0
Electrode1_signal
Wire Notes Line
	4400 3500 500  3500
Wire Notes Line
	4400 550  4400 7750
Wire Notes Line
	6950 500  6950 6550
Text Notes 600  800  0    118  ~ 24
Teensy\n
Text Notes 4550 1000 0    118  ~ 24
Électrodes\n\n
Text Notes 7200 850  0    118  ~ 24
Encodeurs
$EndSCHEMATC
