EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title "ESP32 Brick"
Date "2020-04-16"
Rev "1.0"
Comp "Tinkerforge GmbH"
Comment1 "Licensed under CERN OHL v.1.1"
Comment2 "Copyright (©) 2020, B.Nordmeyer <bastian@tinkerforge.com>"
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 5800 6650 1000 1000
U 5B352770
F0 "Bricklets" 39
F1 "bricklets.sch" 39
$EndSheet
$Comp
L tinkerforge:C C106
U 1 1 5B381025
P 8200 1400
F 0 "C106" V 8150 1450 50  0000 L CNN
F 1 "100nF" V 8350 1300 50  0000 L CNN
F 2 "kicad-libraries:C0402F" H 8200 1400 60  0001 C CNN
F 3 "" H 8200 1400 60  0000 C CNN
	1    8200 1400
	0    1    1    0   
$EndComp
Text Notes 600  7700 0    39   ~ 0
Copyright Tinkerforge GmbH 2020.\nThis documentation describes Open Hardware and is licensed under the\nCERN OHL v. 1.1.\nYou may redistribute and modify this documentation under the terms of the\nCERN OHL v.1.1. (http://ohwr.org/cernohl). This documentation is distributed\nWITHOUT ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING OF\nMERCHANTABILITY, SATISFACTORY QUALITY AND FITNESS FOR A\nPARTICULAR PURPOSE. Please see the CERN OHL v.1.1 for applicable\nconditions
$Comp
L tinkerforge:LED D101
U 1 1 5B476059
P 6950 3200
F 0 "D101" H 6950 3300 50  0000 C CNN
F 1 "blue" H 6950 3100 50  0000 C CNN
F 2 "kicad-libraries:D0603F" H 6950 3200 50  0001 C CNN
F 3 "" H 6950 3200 50  0000 C CNN
	1    6950 3200
	1    0    0    1   
$EndComp
$Comp
L tinkerforge:3V3 #PWR0104
U 1 1 5B47747F
P 6750 2750
F 0 "#PWR0104" H 6750 2850 40  0001 C CNN
F 1 "3V3" H 6750 2875 40  0000 C CNN
F 2 "" H 6750 2750 60  0000 C CNN
F 3 "" H 6750 2750 60  0000 C CNN
	1    6750 2750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6750 2900 6750 2750
$Comp
L tinkerforge:3V3 #PWR0117
U 1 1 5B72D917
P 8000 850
F 0 "#PWR0117" H 8000 950 40  0001 C CNN
F 1 "3V3" H 8000 975 40  0000 C CNN
F 2 "" H 8000 850 60  0000 C CNN
F 3 "" H 8000 850 60  0000 C CNN
	1    8000 850 
	1    0    0    -1  
$EndComp
Text GLabel 8400 2800 0    39   Output ~ 0
B0-CS0
Text GLabel 8400 2700 0    39   Output ~ 0
B0-CS1
Text GLabel 7650 4300 0    39   Input ~ 0
B0-MISO
Text GLabel 7650 4500 0    39   Output ~ 0
B0-MOSI
Text GLabel 7650 4400 0    39   Output ~ 0
B0-CLK
Text GLabel 8400 2600 0    39   Output ~ 0
B0-CS2
Text GLabel 10150 2700 2    39   Output ~ 0
B1-CS0
Text GLabel 8400 2500 0    39   Output ~ 0
B1-CS1
Text GLabel 10150 2800 2    39   Output ~ 0
B1-CS2
Text GLabel 7650 5100 0    39   Input ~ 0
B1-MISO
Text GLabel 7650 5200 0    39   Output ~ 0
B1-MOSI
Text GLabel 7650 5000 0    39   Output ~ 0
B1-CLK
$Comp
L tinkerforge:ESP32-WROOM-32 U104
U 1 1 5EADD3C7
P 9200 2500
F 0 "U104" H 9200 3601 39  0000 C CNN
F 1 "ESP32-WROOM-32" H 9200 3526 39  0000 C CNN
F 2 "kicad-libraries:ESP32-WROOM-32" H 8750 3500 39  0001 C CNN
F 3 "" H 8750 3500 39  0001 C CNN
	1    9200 2500
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:GND #PWR0101
U 1 1 5EAE06B9
P 8200 1700
F 0 "#PWR0101" H 8200 1700 30  0001 C CNN
F 1 "GND" H 8200 1630 30  0001 C CNN
F 2 "" H 8200 1700 60  0000 C CNN
F 3 "" H 8200 1700 60  0000 C CNN
	1    8200 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	8400 1000 8450 1000
Wire Wire Line
	8450 1000 8450 1400
Wire Wire Line
	8450 1700 8500 1700
Wire Wire Line
	8400 1400 8450 1400
Connection ~ 8450 1400
Wire Wire Line
	8450 1400 8450 1700
Wire Wire Line
	8200 1700 8450 1700
Connection ~ 8450 1700
Wire Wire Line
	8500 1800 8000 1800
Wire Wire Line
	8000 1800 8000 1400
Connection ~ 8000 1400
$Comp
L tinkerforge:GND #PWR0102
U 1 1 5EB0066A
P 10000 1600
F 0 "#PWR0102" H 10000 1600 30  0001 C CNN
F 1 "GND" H 10000 1530 30  0001 C CNN
F 2 "" H 10000 1600 60  0000 C CNN
F 3 "" H 10000 1600 60  0000 C CNN
	1    10000 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9900 1700 9950 1700
Wire Wire Line
	9950 1700 9950 1600
Wire Wire Line
	9950 1600 10000 1600
Wire Wire Line
	9950 1600 9900 1600
Connection ~ 9950 1600
$Comp
L tinkerforge:GND #PWR0103
U 1 1 5EB041DC
P 8750 3650
F 0 "#PWR0103" H 8750 3650 30  0001 C CNN
F 1 "GND" H 8750 3580 30  0001 C CNN
F 2 "" H 8750 3650 60  0000 C CNN
F 3 "" H 8750 3650 60  0000 C CNN
	1    8750 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 3650 8750 3550
NoConn ~ 9900 2300
$Comp
L tinkerforge:CP2104 U103
U 1 1 5EB376B8
P 4400 4550
F 0 "U103" H 4400 5937 60  0000 C CNN
F 1 "CP2102N-A02-GQFN24R" H 4400 5831 60  0000 C CNN
F 2 "kicad-libraries:QFN24-4x4mm-0.5mm" H 4400 5831 60  0001 C CNN
F 3 "" H 4400 4550 60  0000 C CNN
	1    4400 4550
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:USB-C-2 J101
U 1 1 5EB3B54B
P 900 4250
F 0 "J101" H 867 4725 50  0000 C CNN
F 1 "USB-C-2" H 867 4634 50  0000 C CNN
F 2 "kicad-libraries:USB-C-2" H 900 4250 50  0001 C CNN
F 3 "" H 900 4250 50  0001 C CNN
	1    900  4250
	-1   0    0    -1  
$EndComp
$Comp
L tinkerforge:Rs R104
U 1 1 5EB424B9
P 3500 3700
F 0 "R104" V 3450 3700 39  0000 C CNN
F 1 "22.1k" V 3550 3700 39  0000 C CNN
F 2 "kicad-libraries:R0402F" H 3500 3700 60  0001 C CNN
F 3 "" H 3500 3700 60  0000 C CNN
	1    3500 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	3800 3700 3700 3700
$Comp
L tinkerforge:DIODESCH D102
U 1 1 5EB466B0
P 2350 3300
F 0 "D102" V 2388 3221 40  0000 R CNN
F 1 "PMEG4050" H 2450 3400 40  0000 R CNN
F 2 "kicad-libraries:SOD-128" H 2350 3300 60  0001 C CNN
F 3 "" H 2350 3300 60  0000 C CNN
	1    2350 3300
	0    -1   -1   0   
$EndComp
NoConn ~ 3800 5500
$Comp
L tinkerforge:GND #PWR0105
U 1 1 5EB48AA2
P 3700 5200
F 0 "#PWR0105" H 3700 5200 30  0001 C CNN
F 1 "GND" H 3700 5130 30  0001 C CNN
F 2 "" H 3700 5200 60  0000 C CNN
F 3 "" H 3700 5200 60  0000 C CNN
	1    3700 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 5150 3700 5150
Wire Wire Line
	3700 5150 3700 5200
Wire Wire Line
	3800 5050 3700 5050
Wire Wire Line
	3700 5050 3700 5150
Connection ~ 3700 5150
NoConn ~ 3800 4650
$Comp
L tinkerforge:Rs R105
U 1 1 5EB4ECCD
P 3700 3800
F 0 "R105" V 3650 3800 39  0000 C CNN
F 1 "47.5k" V 3750 3800 39  0000 C CNN
F 2 "kicad-libraries:R0402F" H 3700 3800 60  0001 C CNN
F 3 "" H 3700 3800 60  0000 C CNN
	1    3700 3800
	-1   0    0    1   
$EndComp
Connection ~ 3700 3700
Wire Wire Line
	3700 3700 3600 3700
$Comp
L tinkerforge:GND #PWR0106
U 1 1 5EB4FBAA
P 3700 3950
F 0 "#PWR0106" H 3700 3950 30  0001 C CNN
F 1 "GND" H 3700 3880 30  0001 C CNN
F 2 "" H 3700 3950 60  0000 C CNN
F 3 "" H 3700 3950 60  0000 C CNN
	1    3700 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 3950 3700 3900
$Comp
L tinkerforge:WE-CNSW L102
U 1 1 5EB54DDE
P 1700 4150
F 0 "L102" H 1700 4000 60  0000 C CNN
F 1 "744230900" H 1700 4150 60  0000 C CNN
F 2 "kicad-libraries:WE-CNSW-0603" H 1700 4140 60  0001 C CNN
F 3 "" H 1700 4140 60  0000 C CNN
	1    1700 4150
	-1   0    0    1   
$EndComp
$Comp
L tinkerforge:INDUCTs L101
U 1 1 5EB55E2F
P 1200 5450
F 0 "L101" H 1147 5419 31  0000 R CNN
F 1 "FB" H 1147 5481 31  0000 R CNN
F 2 "kicad-libraries:R0603F" H 1200 5450 60  0001 C CNN
F 3 "" H 1200 5450 60  0000 C CNN
	1    1200 5450
	-1   0    0    1   
$EndComp
$Comp
L tinkerforge:INDUCTs L104
U 1 1 5EB596F2
P 2550 5600
F 0 "L104" V 2696 5600 31  0000 C CNN
F 1 "FB" V 2634 5600 31  0000 C CNN
F 2 "kicad-libraries:R0603F" H 2550 5600 60  0001 C CNN
F 3 "" H 2550 5600 60  0000 C CNN
	1    2550 5600
	0    -1   -1   0   
$EndComp
$Comp
L tinkerforge:GND #PWR0107
U 1 1 5EB59A9D
P 1200 5600
F 0 "#PWR0107" H 1200 5600 30  0001 C CNN
F 1 "GND" H 1200 5530 30  0001 C CNN
F 2 "" H 1200 5600 60  0000 C CNN
F 3 "" H 1200 5600 60  0000 C CNN
	1    1200 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 4500 1350 4500
Wire Wire Line
	1200 5550 1200 5600
$Comp
L tinkerforge:TVS_ARRAY4 U101
U 1 1 5EB5B791
P 2350 4900
F 0 "U101" H 2700 5150 60  0000 L CNN
F 1 "82400152" V 2000 4650 60  0000 L CNN
F 2 "kicad-libraries:SOT563-SPEC" H 2350 4885 60  0001 C CNN
F 3 "" H 2350 4885 60  0000 C CNN
	1    2350 4900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1200 4600 1200 5350
$Comp
L tinkerforge:GND #PWR0108
U 1 1 5EB6855D
P 2750 5600
F 0 "#PWR0108" H 2750 5600 30  0001 C CNN
F 1 "GND" H 2750 5530 30  0001 C CNN
F 2 "" H 2750 5600 60  0000 C CNN
F 3 "" H 2750 5600 60  0000 C CNN
	1    2750 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 5600 2350 5550
Wire Wire Line
	2000 4050 2600 4050
Wire Wire Line
	2600 4050 2600 4450
Wire Wire Line
	1200 4100 1300 4100
Wire Wire Line
	1300 4100 1300 4050
Wire Wire Line
	1300 4050 1400 4050
Wire Wire Line
	1200 4200 1300 4200
Wire Wire Line
	1300 4200 1300 4250
Wire Wire Line
	1300 4250 1400 4250
Wire Wire Line
	2000 4250 2100 4250
Wire Wire Line
	2100 4250 2100 4450
Wire Wire Line
	2600 5350 2850 5350
Wire Wire Line
	2850 5350 2850 4150
Wire Wire Line
	2850 4150 3800 4150
Wire Wire Line
	2100 5350 2100 5450
Wire Wire Line
	2100 5450 2950 5450
Wire Wire Line
	2950 5450 2950 4250
Wire Wire Line
	2950 4250 3800 4250
Wire Wire Line
	1200 4000 1250 4000
Wire Wire Line
	1250 4000 1250 3950
Wire Wire Line
	1250 3950 1350 3950
Wire Wire Line
	2350 3950 2350 4450
$Comp
L tinkerforge:INDUCTs L103
U 1 1 5EB75931
P 2350 3700
F 0 "L103" H 2500 3650 31  0000 R CNN
F 1 "FB" H 2500 3750 31  0000 R CNN
F 2 "kicad-libraries:R0603F" H 2350 3700 60  0001 C CNN
F 3 "" H 2350 3700 60  0000 C CNN
	1    2350 3700
	-1   0    0    1   
$EndComp
$Comp
L tinkerforge:Cs C102
U 1 1 5EB772A1
P 2450 3850
F 0 "C102" V 2400 3900 39  0000 L CNN
F 1 "1uF" V 2550 3800 39  0000 L CNN
F 2 "kicad-libraries:C0402F" H 2450 3850 60  0001 C CNN
F 3 "" H 2450 3850 60  0000 C CNN
	1    2450 3850
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:Cs C101
U 1 1 5EB794D7
P 2450 3550
F 0 "C101" V 2400 3600 39  0000 L CNN
F 1 "1uF" V 2550 3500 39  0000 L CNN
F 2 "kicad-libraries:C0402F" H 2450 3550 60  0001 C CNN
F 3 "" H 2450 3550 60  0000 C CNN
	1    2450 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	2350 3950 2350 3850
Connection ~ 2350 3950
Wire Wire Line
	2350 3800 2350 3850
Connection ~ 2350 3850
Wire Wire Line
	2350 3550 2350 3600
$Comp
L tinkerforge:GND #PWR0109
U 1 1 5EB7DA6B
P 2650 3550
F 0 "#PWR0109" H 2650 3550 30  0001 C CNN
F 1 "GND" H 2650 3480 30  0001 C CNN
F 2 "" H 2650 3550 60  0000 C CNN
F 3 "" H 2650 3550 60  0000 C CNN
	1    2650 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 3600 3400 3600
Wire Wire Line
	3400 3600 3400 3700
Wire Wire Line
	2750 3350 2950 3350
Wire Wire Line
	3400 3350 3400 3600
Connection ~ 3400 3600
$Comp
L tinkerforge:Cs C107
U 1 1 5EB8A128
P 3200 3600
F 0 "C107" V 3150 3650 39  0000 L CNN
F 1 "100nF" V 3300 3550 39  0000 L CNN
F 2 "kicad-libraries:C0402F" H 3200 3600 60  0001 C CNN
F 3 "" H 3200 3600 60  0000 C CNN
	1    3200 3600
	-1   0    0    1   
$EndComp
$Comp
L tinkerforge:Cs C104
U 1 1 5EB8D780
P 2950 3600
F 0 "C104" V 2900 3650 39  0000 L CNN
F 1 "4.7uF" V 3050 3550 39  0000 L CNN
F 2 "kicad-libraries:C0805E" H 2950 3600 60  0001 C CNN
F 3 "" H 2950 3600 60  0000 C CNN
	1    2950 3600
	-1   0    0    1   
$EndComp
$Comp
L tinkerforge:GND #PWR0110
U 1 1 5EB8FCF9
P 3200 3900
F 0 "#PWR0110" H 3200 3900 30  0001 C CNN
F 1 "GND" H 3200 3830 30  0001 C CNN
F 2 "" H 3200 3900 60  0000 C CNN
F 3 "" H 3200 3900 60  0000 C CNN
	1    3200 3900
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:GND #PWR0111
U 1 1 5EB9063B
P 2950 3900
F 0 "#PWR0111" H 2950 3900 30  0001 C CNN
F 1 "GND" H 2950 3830 30  0001 C CNN
F 2 "" H 2950 3900 60  0000 C CNN
F 3 "" H 2950 3900 60  0000 C CNN
	1    2950 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 3500 3200 3350
Connection ~ 3200 3350
Wire Wire Line
	3200 3350 3400 3350
Wire Wire Line
	3200 3900 3200 3700
Wire Wire Line
	2950 3900 2950 3700
Wire Wire Line
	2950 3500 2950 3350
Connection ~ 2950 3350
Wire Wire Line
	2950 3350 3200 3350
$Comp
L tinkerforge:Rs R106
U 1 1 5EB998B1
P 5200 3750
F 0 "R106" V 5150 3750 39  0000 C CNN
F 1 "1k" V 5250 3750 39  0000 C CNN
F 2 "kicad-libraries:R0402F" H 5200 3750 60  0001 C CNN
F 3 "" H 5200 3750 60  0000 C CNN
	1    5200 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5000 3750 5100 3750
Wire Wire Line
	5350 3750 5300 3750
Wire Wire Line
	5000 3450 5350 3450
Wire Wire Line
	5350 3450 5350 3550
$Comp
L tinkerforge:Cs C110
U 1 1 5EBA3615
P 5600 3650
F 0 "C110" V 5550 3700 39  0000 L CNN
F 1 "100nF" V 5700 3600 39  0000 L CNN
F 2 "kicad-libraries:C0402F" H 5600 3650 60  0001 C CNN
F 3 "" H 5600 3650 60  0000 C CNN
	1    5600 3650
	-1   0    0    1   
$EndComp
$Comp
L tinkerforge:Cs C111
U 1 1 5EBA455B
P 5850 3650
F 0 "C111" V 5800 3700 39  0000 L CNN
F 1 "4.7uF" V 5950 3600 39  0000 L CNN
F 2 "kicad-libraries:C0805E" H 5850 3650 60  0001 C CNN
F 3 "" H 5850 3650 60  0000 C CNN
	1    5850 3650
	-1   0    0    1   
$EndComp
$Comp
L tinkerforge:GND #PWR0112
U 1 1 5EBA54BB
P 5600 3800
F 0 "#PWR0112" H 5600 3800 30  0001 C CNN
F 1 "GND" H 5600 3730 30  0001 C CNN
F 2 "" H 5600 3800 60  0000 C CNN
F 3 "" H 5600 3800 60  0000 C CNN
	1    5600 3800
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:GND #PWR0113
U 1 1 5EBA5D08
P 5850 3800
F 0 "#PWR0113" H 5850 3800 30  0001 C CNN
F 1 "GND" H 5850 3730 30  0001 C CNN
F 2 "" H 5850 3800 60  0000 C CNN
F 3 "" H 5850 3800 60  0000 C CNN
	1    5850 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3550 5350 3550
Wire Wire Line
	5850 3550 5600 3550
Connection ~ 5600 3550
Wire Wire Line
	5600 3800 5600 3750
Wire Wire Line
	5850 3800 5850 3750
NoConn ~ 5000 4000
NoConn ~ 5000 4100
Connection ~ 5350 3550
Wire Wire Line
	5350 3550 5350 3750
Wire Wire Line
	5350 3550 5600 3550
Text Notes 5000 3450 0    39   ~ 0
self powered
NoConn ~ 5000 5650
NoConn ~ 5000 5550
NoConn ~ 5000 5450
NoConn ~ 5000 5350
$Comp
L tinkerforge:Rs R107
U 1 1 5EBBEA14
P 5300 5050
F 0 "R107" V 5250 5050 39  0000 C CNN
F 1 "470" V 5350 5050 39  0000 C CNN
F 2 "kicad-libraries:R0402F" H 5300 5050 60  0001 C CNN
F 3 "" H 5300 5050 60  0000 C CNN
	1    5300 5050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5000 5050 5200 5050
Text GLabel 5500 5050 2    39   Output ~ 0
ESP_RXD
Text GLabel 10150 2100 2    39   Input ~ 0
ESP_RXD
Text GLabel 5500 4650 2    39   Input ~ 0
ESP_TXD
Text GLabel 10150 2000 2    39   Output ~ 0
ESP_TXD
Wire Wire Line
	5000 4650 5500 4650
Wire Wire Line
	5400 5050 5500 5050
NoConn ~ 5000 4450
NoConn ~ 5000 4350
NoConn ~ 5000 4750
NoConn ~ 5000 4550
$Comp
L tinkerforge:Rs R108
U 1 1 5EBD2BBE
P 6000 5150
F 0 "R108" V 5950 5150 39  0000 C CNN
F 1 "1k" V 6050 5150 39  0000 C CNN
F 2 "kicad-libraries:R0402F" H 6000 5150 60  0001 C CNN
F 3 "" H 6000 5150 60  0000 C CNN
	1    6000 5150
	0    -1   -1   0   
$EndComp
$Comp
L tinkerforge:Rs R109
U 1 1 5EBD314E
P 6000 5800
F 0 "R109" V 5950 5800 39  0000 C CNN
F 1 "1k" V 6050 5800 39  0000 C CNN
F 2 "kicad-libraries:R0402F" H 6000 5800 60  0001 C CNN
F 3 "" H 6000 5800 60  0000 C CNN
	1    6000 5800
	0    -1   -1   0   
$EndComp
$Comp
L tinkerforge:NPN Q101
U 1 1 5EBD36A3
P 6600 5150
F 0 "Q101" H 6791 5196 50  0000 L CNN
F 1 "NPN" H 6791 5105 50  0000 L CNN
F 2 "kicad-libraries:SOT23EBC" H 6800 5250 50  0001 C CNN
F 3 "" H 6600 5150 50  0000 C CNN
	1    6600 5150
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:NPN Q102
U 1 1 5EBD51ED
P 6600 5800
F 0 "Q102" H 6791 5846 50  0000 L CNN
F 1 "NPN" H 6791 5755 50  0000 L CNN
F 2 "kicad-libraries:SOT23EBC" H 6800 5900 50  0001 C CNN
F 3 "" H 6600 5800 50  0000 C CNN
	1    6600 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 5150 5900 5150
Wire Wire Line
	6100 5150 6400 5150
Wire Wire Line
	6700 5350 6700 5400
Wire Wire Line
	6700 5400 5850 5400
Wire Wire Line
	5850 5400 5850 4950
Wire Wire Line
	5850 4950 5000 4950
Wire Wire Line
	5850 5400 5850 5800
Wire Wire Line
	5850 5800 5900 5800
Connection ~ 5850 5400
Wire Wire Line
	6100 5800 6400 5800
Wire Wire Line
	6700 5600 6700 5550
Wire Wire Line
	6700 5550 5900 5550
Wire Wire Line
	5900 5550 5900 5150
Connection ~ 5900 5150
Text GLabel 7000 4900 2    39   Output ~ 0
ESP_EN
Text GLabel 7850 1900 0    39   Input ~ 0
ESP_EN
Wire Wire Line
	7000 4900 6700 4900
Wire Wire Line
	6700 4900 6700 4950
Wire Wire Line
	8500 1900 7900 1900
$Comp
L tinkerforge:Rs R111
U 1 1 5EBF0F3B
P 7900 1500
F 0 "R111" V 7850 1500 39  0000 C CNN
F 1 "1k" V 7950 1500 39  0000 C CNN
F 2 "kicad-libraries:R0402F" H 7900 1500 60  0001 C CNN
F 3 "" H 7900 1500 60  0000 C CNN
	1    7900 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 1400 8000 1400
Connection ~ 7900 1900
Wire Wire Line
	7900 1900 7850 1900
Wire Wire Line
	7900 1600 7900 1700
$Comp
L tinkerforge:Cs C112
U 1 1 5EBFC86E
P 7800 1700
F 0 "C112" V 7750 1750 39  0000 L CNN
F 1 "TBD" V 7900 1650 39  0000 L CNN
F 2 "kicad-libraries:C0402F" H 7800 1700 60  0001 C CNN
F 3 "" H 7800 1700 60  0000 C CNN
	1    7800 1700
	0    -1   -1   0   
$EndComp
Connection ~ 7900 1700
Wire Wire Line
	7900 1700 7900 1900
$Comp
L tinkerforge:GND #PWR0114
U 1 1 5EBFD921
P 7600 1700
F 0 "#PWR0114" H 7600 1700 30  0001 C CNN
F 1 "GND" H 7600 1630 30  0001 C CNN
F 2 "" H 7600 1700 60  0000 C CNN
F 3 "" H 7600 1700 60  0000 C CNN
	1    7600 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 1700 7600 1700
$Comp
L tinkerforge:Rs R110
U 1 1 5EC026CF
P 6800 6200
F 0 "R110" V 6750 6200 39  0000 C CNN
F 1 "470" V 6850 6200 39  0000 C CNN
F 2 "kicad-libraries:R0402F" H 6800 6200 60  0001 C CNN
F 3 "" H 6800 6200 60  0000 C CNN
	1    6800 6200
	0    -1   -1   0   
$EndComp
$Comp
L tinkerforge:DIODESCH D104
U 1 1 5EC063B8
P 7250 6400
F 0 "D104" H 7250 6207 40  0000 C CNN
F 1 "BAT54HT1G" H 7250 6283 40  0000 C CNN
F 2 "kicad-libraries:SOD-323" H 7250 6268 60  0001 C CNN
F 3 "" H 7250 6400 60  0000 C CNN
	1    7250 6400
	-1   0    0    1   
$EndComp
$Comp
L tinkerforge:DIODESCH D103
U 1 1 5EC06B09
P 7250 6050
F 0 "D103" H 7250 5857 40  0000 C CNN
F 1 "BAT54HT1G" H 7250 5933 40  0000 C CNN
F 2 "kicad-libraries:SOD-323" H 7250 5918 60  0001 C CNN
F 3 "" H 7250 6050 60  0000 C CNN
	1    7250 6050
	-1   0    0    1   
$EndComp
Text GLabel 10150 3000 2    39   Input ~ 0
ESP_IO0
Text GLabel 9650 3950 3    39   Input ~ 0
ESP_IO2
Text GLabel 7550 6400 2    39   Output ~ 0
ESP_IO2
Text GLabel 7550 6050 2    39   Output ~ 0
ESP_IO0
Wire Wire Line
	7450 6050 7550 6050
Wire Wire Line
	7450 6400 7550 6400
Wire Wire Line
	7050 6400 6900 6400
Wire Wire Line
	7050 6050 6900 6050
Wire Wire Line
	6900 6050 6900 6200
Connection ~ 6900 6200
Wire Wire Line
	6900 6200 6900 6400
Wire Wire Line
	6700 6000 6700 6200
$Comp
L tinkerforge:R_PACK4 RP103
U 1 1 5EC383AC
P 10300 3900
F 0 "RP103" H 10300 4465 50  0000 C CNN
F 1 "1k" H 10300 4374 50  0000 C CNN
F 2 "kicad-libraries:4X0402" H 10300 3900 50  0001 C CNN
F 3 "" H 10300 3900 50  0000 C CNN
	1    10300 3900
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:3V3 #PWR0115
U 1 1 5EC39638
P 10650 3450
F 0 "#PWR0115" H 10650 3550 40  0001 C CNN
F 1 "3V3" H 10650 3575 40  0000 C CNN
F 2 "" H 10650 3450 60  0000 C CNN
F 3 "" H 10650 3450 60  0000 C CNN
	1    10650 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 3550 9650 3850
Wire Wire Line
	10100 3850 9650 3850
Connection ~ 9650 3850
Wire Wire Line
	9650 3850 9650 3950
Wire Wire Line
	10100 3550 10100 3000
Wire Wire Line
	9900 3000 10100 3000
Wire Wire Line
	10150 3000 10100 3000
Connection ~ 10100 3000
Wire Wire Line
	10500 3550 10650 3550
Wire Wire Line
	10650 3550 10650 3450
Wire Wire Line
	10500 3850 10650 3850
Wire Wire Line
	10650 3850 10650 3550
Connection ~ 10650 3550
NoConn ~ 10500 3650
NoConn ~ 10500 3750
NoConn ~ 10100 3750
NoConn ~ 10100 3650
$Comp
L tinkerforge:Rs R101
U 1 1 5EC774D0
P 1550 4300
F 0 "R101" V 1600 4450 39  0000 C CNN
F 1 "56k" V 1600 4300 39  0000 C CNN
F 2 "kicad-libraries:R0402F" H 1550 4300 60  0001 C CNN
F 3 "" H 1550 4300 60  0000 C CNN
	1    1550 4300
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:Rs R103
U 1 1 5EC78AE8
P 1550 4400
F 0 "R103" V 1600 4550 39  0000 C CNN
F 1 "56k" V 1600 4400 39  0000 C CNN
F 2 "kicad-libraries:R0402F" H 1550 4400 60  0001 C CNN
F 3 "" H 1550 4400 60  0000 C CNN
	1    1550 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	1200 4300 1450 4300
Wire Wire Line
	1450 4400 1200 4400
Wire Wire Line
	1650 4400 2050 4400
Wire Wire Line
	2050 4400 2050 4300
Connection ~ 2050 3950
Wire Wire Line
	2050 3950 2350 3950
Wire Wire Line
	1650 4300 2050 4300
Connection ~ 2050 4300
Wire Wire Line
	2050 4300 2050 3950
Wire Wire Line
	2650 5600 2750 5600
Wire Wire Line
	2450 5600 2350 5600
Wire Wire Line
	2350 5600 1350 5600
Wire Wire Line
	1350 4500 1350 4850
Connection ~ 2350 5600
Wire Wire Line
	9900 2000 10150 2000
Wire Wire Line
	10150 2100 9900 2100
Wire Wire Line
	8400 3000 8500 3000
$Comp
L tinkerforge:R_PACK4 RP101
U 1 1 5EDC1FF8
P 8000 4650
F 0 "RP101" H 8000 5215 50  0000 C CNN
F 1 "82" H 8000 5124 50  0000 C CNN
F 2 "kicad-libraries:4X0402" H 8000 4650 50  0001 C CNN
F 3 "" H 8000 4650 50  0000 C CNN
	1    8000 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 2900 8500 2900
Wire Wire Line
	7800 4300 7650 4300
Wire Wire Line
	7650 4400 7800 4400
Wire Wire Line
	7650 4500 7800 4500
Wire Wire Line
	8200 4500 8850 4500
Wire Wire Line
	8850 3550 8850 4500
$Comp
L tinkerforge:R_PACK4 RP102
U 1 1 5EDF9AB9
P 8000 5350
F 0 "RP102" H 8000 5915 50  0000 C CNN
F 1 "82" H 8000 5824 50  0000 C CNN
F 2 "kicad-libraries:4X0402" H 8000 5350 50  0001 C CNN
F 3 "" H 8000 5350 50  0000 C CNN
	1    8000 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 5000 10900 5000
Wire Wire Line
	10900 5000 10900 2500
Wire Wire Line
	9900 2500 10900 2500
Wire Wire Line
	8200 5100 11000 5100
Wire Wire Line
	11000 5100 11000 2400
Wire Wire Line
	9900 2400 11000 2400
Wire Wire Line
	8200 5200 11100 5200
Wire Wire Line
	11100 5200 11100 1800
Wire Wire Line
	9900 1800 11100 1800
Wire Wire Line
	7650 5000 7800 5000
Wire Wire Line
	7800 5100 7650 5100
Wire Wire Line
	7650 5200 7800 5200
NoConn ~ 7800 5300
NoConn ~ 8200 5300
NoConn ~ 8200 4600
NoConn ~ 7800 4600
NoConn ~ 9050 3550
NoConn ~ 9150 3550
NoConn ~ 9900 2600
NoConn ~ 9900 1900
NoConn ~ 9900 2200
NoConn ~ 9900 2900
$Comp
L tinkerforge:LD1117 U102
U 1 1 5EF36B5D
P 3250 2150
F 0 "U102" H 3250 2787 60  0000 C CNN
F 1 "AZ1117E-3.3V" H 3250 2681 60  0000 C CNN
F 2 "kicad-libraries:SOT-223" H 3250 2150 60  0001 C CNN
F 3 "" H 3250 2150 60  0000 C CNN
	1    3250 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 3100 2750 3100
Wire Wire Line
	2750 3100 2750 3350
Wire Wire Line
	2350 3550 2350 3500
Connection ~ 2350 3550
Wire Wire Line
	2350 3100 2350 1950
Connection ~ 2350 3100
$Comp
L tinkerforge:GND #PWR0116
U 1 1 5EF4F267
P 3250 2450
F 0 "#PWR0116" H 3250 2450 30  0001 C CNN
F 1 "GND" H 3250 2380 30  0001 C CNN
F 2 "" H 3250 2450 60  0000 C CNN
F 3 "" H 3250 2450 60  0000 C CNN
	1    3250 2450
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:Cs C103
U 1 1 5EF509E8
P 2500 2050
F 0 "C103" V 2450 2100 39  0000 L CNN
F 1 "4.7uF" V 2600 2000 39  0000 L CNN
F 2 "kicad-libraries:C0805E" H 2500 2050 60  0001 C CNN
F 3 "" H 2500 2050 60  0000 C CNN
	1    2500 2050
	-1   0    0    1   
$EndComp
Wire Wire Line
	2350 1950 2500 1950
Wire Wire Line
	3250 2450 3250 2350
Connection ~ 2500 1950
Wire Wire Line
	2500 1950 2850 1950
$Comp
L tinkerforge:GND #PWR0118
U 1 1 5EF66781
P 2500 2450
F 0 "#PWR0118" H 2500 2450 30  0001 C CNN
F 1 "GND" H 2500 2380 30  0001 C CNN
F 2 "" H 2500 2450 60  0000 C CNN
F 3 "" H 2500 2450 60  0000 C CNN
	1    2500 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 2450 2500 2150
$Comp
L tinkerforge:5V #PWR0119
U 1 1 5EF6E33A
P 2350 1850
F 0 "#PWR0119" H 2350 1950 40  0001 C CNN
F 1 "5V" H 2359 2006 40  0000 C CNN
F 2 "" H 2350 1850 60  0000 C CNN
F 3 "" H 2350 1850 60  0000 C CNN
	1    2350 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 1950 2350 1850
Connection ~ 2350 1950
$Comp
L tinkerforge:3V3 #PWR0120
U 1 1 5EF764CA
P 4100 1850
F 0 "#PWR0120" H 4100 1950 40  0001 C CNN
F 1 "3V3" H 4100 1975 40  0000 C CNN
F 2 "" H 4100 1850 60  0000 C CNN
F 3 "" H 4100 1850 60  0000 C CNN
	1    4100 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 1950 3800 1950
Wire Wire Line
	4100 1850 4100 1950
$Comp
L tinkerforge:Cs C108
U 1 1 5EF85289
P 3800 2050
F 0 "C108" V 3750 2100 39  0000 L CNN
F 1 "4.7uF" V 3900 2000 39  0000 L CNN
F 2 "kicad-libraries:C0805E" H 3800 2050 60  0001 C CNN
F 3 "" H 3800 2050 60  0000 C CNN
	1    3800 2050
	-1   0    0    1   
$EndComp
Connection ~ 3800 1950
Wire Wire Line
	3800 1950 4000 1950
$Comp
L tinkerforge:GND #PWR0121
U 1 1 5EF858E5
P 3800 2450
F 0 "#PWR0121" H 3800 2450 30  0001 C CNN
F 1 "GND" H 3800 2380 30  0001 C CNN
F 2 "" H 3800 2450 60  0000 C CNN
F 3 "" H 3800 2450 60  0000 C CNN
	1    3800 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 2450 3800 2150
$Comp
L tinkerforge:Cs C109
U 1 1 5F0B174C
P 4000 2050
F 0 "C109" V 3950 2100 39  0000 L CNN
F 1 "100nF" V 4100 2000 39  0000 L CNN
F 2 "kicad-libraries:C0402F" H 4000 2050 60  0001 C CNN
F 3 "" H 4000 2050 60  0000 C CNN
	1    4000 2050
	-1   0    0    1   
$EndComp
Connection ~ 4000 1950
Wire Wire Line
	4000 1950 4100 1950
$Comp
L tinkerforge:GND #PWR0122
U 1 1 5F0B1E0B
P 4000 2450
F 0 "#PWR0122" H 4000 2450 30  0001 C CNN
F 1 "GND" H 4000 2380 30  0001 C CNN
F 2 "" H 4000 2450 60  0000 C CNN
F 3 "" H 4000 2450 60  0000 C CNN
	1    4000 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 2450 4000 2150
$Comp
L tinkerforge:DRILL F103
U 1 1 5F0CE04A
P 10750 6100
F 0 "F103" H 10800 6150 60  0001 C CNN
F 1 "DRILL" H 10650 6100 60  0000 L CNN
F 2 "kicad-libraries:DRILL_NP" H 10750 6100 60  0001 C CNN
F 3 "" H 10750 6100 60  0000 C CNN
	1    10750 6100
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:DRILL F101
U 1 1 5F0CE30F
P 10350 6100
F 0 "F101" H 10400 6150 60  0001 C CNN
F 1 "DRILL" H 10250 6100 60  0000 L CNN
F 2 "kicad-libraries:DRILL_NP" H 10350 6100 60  0001 C CNN
F 3 "" H 10350 6100 60  0000 C CNN
	1    10350 6100
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:DRILL F102
U 1 1 5F0CE564
P 10350 6350
F 0 "F102" H 10400 6400 60  0001 C CNN
F 1 "DRILL" H 10250 6350 60  0000 L CNN
F 2 "kicad-libraries:DRILL_NP" H 10350 6350 60  0001 C CNN
F 3 "" H 10350 6350 60  0000 C CNN
	1    10350 6350
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:DRILL F104
U 1 1 5F0CE6FC
P 10750 6350
F 0 "F104" H 10800 6400 60  0001 C CNN
F 1 "DRILL" H 10650 6350 60  0000 L CNN
F 2 "kicad-libraries:DRILL_NP" H 10750 6350 60  0001 C CNN
F 3 "" H 10750 6350 60  0000 C CNN
	1    10750 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 850  8000 1000
$Comp
L tinkerforge:CP1 C105
U 1 1 5F1747AD
P 8200 1000
F 0 "C105" V 8300 750 39  0000 L CNN
F 1 "100uF" V 8300 950 39  0000 L CNN
F 2 "kicad-libraries:ELKO_63" H 8200 1000 60  0001 C CNN
F 3 "" H 8200 1000 60  0000 C CNN
	1    8200 1000
	0    -1   -1   0   
$EndComp
Connection ~ 8000 1000
Wire Wire Line
	8000 1000 8000 1400
Wire Wire Line
	2550 3550 2650 3550
Wire Wire Line
	2350 5550 2800 5550
Wire Wire Line
	2800 5550 2800 3850
Wire Wire Line
	2550 3850 2800 3850
Connection ~ 2350 5550
Wire Wire Line
	2350 5550 2350 5350
$Comp
L tinkerforge:CONN_01X03 P101
U 1 1 5F1D7502
P 4500 6700
F 0 "P101" H 4578 6741 50  0000 L CNN
F 1 "PWR" H 4578 6650 50  0000 L CNN
F 2 "kicad-libraries:PIN_ARRAY_3X1" H 4578 6604 50  0001 L CNN
F 3 "" H 4500 6700 50  0000 C CNN
	1    4500 6700
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:GND #PWR0146
U 1 1 5F1DA011
P 4250 6700
F 0 "#PWR0146" H 4250 6700 30  0001 C CNN
F 1 "GND" H 4250 6630 30  0001 C CNN
F 2 "" H 4250 6700 60  0000 C CNN
F 3 "" H 4250 6700 60  0000 C CNN
	1    4250 6700
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:5V #PWR0147
U 1 1 5F1DCD07
P 4250 6600
F 0 "#PWR0147" H 4250 6700 40  0001 C CNN
F 1 "5V" H 4259 6756 40  0000 C CNN
F 2 "" H 4250 6600 60  0000 C CNN
F 3 "" H 4250 6600 60  0000 C CNN
	1    4250 6600
	0    -1   -1   0   
$EndComp
$Comp
L tinkerforge:3V3 #PWR0148
U 1 1 5F1E05B9
P 4250 6800
F 0 "#PWR0148" H 4250 6900 40  0001 C CNN
F 1 "3V3" H 4250 6925 40  0000 C CNN
F 2 "" H 4250 6800 60  0000 C CNN
F 3 "" H 4250 6800 60  0000 C CNN
	1    4250 6800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4250 6800 4300 6800
Wire Wire Line
	4300 6700 4250 6700
Wire Wire Line
	4250 6600 4300 6600
NoConn ~ 8500 2200
Wire Wire Line
	8200 4400 8300 4400
Wire Wire Line
	8300 2900 8300 4400
Wire Wire Line
	8200 4300 8400 4300
Wire Wire Line
	8400 4300 8400 3000
Wire Wire Line
	10150 2700 9900 2700
Wire Wire Line
	9900 2800 10150 2800
Wire Wire Line
	8500 2800 8400 2800
Wire Wire Line
	8400 2700 8500 2700
Wire Wire Line
	8500 2600 8400 2600
Wire Wire Line
	8400 2500 8500 2500
Text GLabel 8400 2100 0    39   Input ~ 0
ESP_ADC_VUSB
Text GLabel 8400 2000 0    39   Input ~ 0
ESP_ADC_5V
Text GLabel 1550 1950 0    39   Output ~ 0
ESP_ADC_VUSB
Text GLabel 1550 2150 0    39   Output ~ 0
ESP_ADC_5V
Wire Wire Line
	8400 2000 8500 2000
Wire Wire Line
	8500 2100 8400 2100
$Comp
L tinkerforge:R_PACK4 RP104
U 1 1 5F36B485
P 1850 2300
F 0 "RP104" H 1850 2865 50  0000 C CNN
F 1 "1k" H 1850 2774 50  0000 C CNN
F 2 "kicad-libraries:4X0402" H 1850 2300 50  0001 C CNN
F 3 "" H 1850 2300 50  0000 C CNN
	1    1850 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 1950 1650 1950
Wire Wire Line
	1650 2050 1650 1950
Connection ~ 1650 1950
Wire Wire Line
	1650 2250 1650 2150
Wire Wire Line
	1550 2150 1650 2150
Connection ~ 1650 2150
$Comp
L tinkerforge:GND #PWR0149
U 1 1 5F39448B
P 2100 2450
F 0 "#PWR0149" H 2100 2450 30  0001 C CNN
F 1 "GND" H 2100 2380 30  0001 C CNN
F 2 "" H 2100 2450 60  0000 C CNN
F 3 "" H 2100 2450 60  0000 C CNN
	1    2100 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 2250 2100 2250
Wire Wire Line
	2100 2250 2100 2450
Wire Wire Line
	2050 2150 2200 2150
Wire Wire Line
	2200 2150 2200 3550
Wire Wire Line
	2200 3550 2350 3550
Wire Wire Line
	2050 2050 2100 2050
Wire Wire Line
	2100 2050 2100 2250
Connection ~ 2100 2250
Wire Wire Line
	2050 1950 2350 1950
$Comp
L tinkerforge:R_PACK4 RP105
U 1 1 5F3E52E2
P 7450 3250
F 0 "RP105" H 7450 3815 50  0000 C CNN
F 1 "1k" H 7450 3724 50  0000 C CNN
F 2 "kicad-libraries:4X0402" H 7450 3250 50  0001 C CNN
F 3 "" H 7450 3250 50  0000 C CNN
	1    7450 3250
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:LED D105
U 1 1 5F3F268D
P 6950 2900
F 0 "D105" H 6950 3000 50  0000 C CNN
F 1 "green" H 6950 2800 50  0000 C CNN
F 2 "kicad-libraries:D0603F" H 6950 2900 50  0001 C CNN
F 3 "" H 6950 2900 50  0000 C CNN
	1    6950 2900
	1    0    0    1   
$EndComp
Wire Wire Line
	6750 2900 6750 3200
Connection ~ 6750 2900
Wire Wire Line
	7150 3200 7250 3200
Wire Wire Line
	7150 2900 7250 2900
NoConn ~ 7250 3000
NoConn ~ 7250 3100
NoConn ~ 7650 3100
NoConn ~ 7650 3000
Wire Wire Line
	7850 2900 7650 2900
NoConn ~ 8500 2300
Wire Wire Line
	8500 2400 7850 2400
Wire Wire Line
	7850 2400 7850 2900
Wire Wire Line
	7650 3200 8000 3200
Wire Wire Line
	8000 3200 8000 3800
NoConn ~ 8950 3550
NoConn ~ 9250 3550
NoConn ~ 9450 3550
NoConn ~ 9350 3550
Wire Wire Line
	9550 3550 9550 3800
Wire Wire Line
	8000 3800 9550 3800
Text GLabel 1400 4850 2    39   Output ~ 0
USB_GND
Text GLabel 1400 3850 2    39   Output ~ 0
USB_5V
Wire Wire Line
	1350 4850 1400 4850
Connection ~ 1350 4850
Wire Wire Line
	1350 4850 1350 5600
Wire Wire Line
	1400 3850 1350 3850
Wire Wire Line
	1350 3850 1350 3950
Connection ~ 1350 3950
Wire Wire Line
	1350 3950 2050 3950
$EndSCHEMATC
