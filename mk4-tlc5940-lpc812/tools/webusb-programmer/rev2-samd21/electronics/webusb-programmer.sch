EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "WebUSB Programmer for Light Controller Mk4"
Date "2020-03-16"
Rev "1"
Comp "LANE Boys RC"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L wla-atsamd21:SAMD21E15A-MU U2
U 1 1 5E6F4A3D
P 5300 2550
F 0 "U2" H 5300 4067 50  0000 C CNN
F 1 "SAMD21E15A-MU" H 5300 3976 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-32-1EP_5x5mm_P0.5mm_EP3.6x3.6mm" H 5300 1550 50  0001 C CIN
F 3 "" H 5300 2550 50  0001 C CNN
	1    5300 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 5E6F6F74
P 5000 5700
F 0 "D2" V 5039 5583 50  0000 R CNN
F 1 "OK" V 4948 5583 50  0000 R CNN
F 2 "WLA_LED_reverse_mount:LED_1204_reverse_mout" H 5000 5700 50  0001 C CNN
F 3 "2011131907_TUOZHAN-TZ-P2-1204YGCTA1-1-5T" H 5000 5700 50  0001 C CNN
F 4 "C91608" V 5000 5700 50  0001 C CNN "LCSC part number"
	1    5000 5700
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D3
U 1 1 5E6F790B
P 5600 5700
F 0 "D3" V 5639 5582 50  0000 R CNN
F 1 "BUSY" V 5548 5582 50  0000 R CNN
F 2 "WLA_LED_reverse_mount:LED_1204_reverse_mout" H 5600 5700 50  0001 C CNN
F 3 "2009041237_TUOZHAN-TZ-P2-1204-0TA1-1-5T" H 5600 5700 50  0001 C CNN
F 4 "C779805" V 5600 5700 50  0001 C CNN "LCSC part number"
	1    5600 5700
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D4
U 1 1 5E6F7DEF
P 6200 5700
F 0 "D4" V 6239 5583 50  0000 R CNN
F 1 "ERROR" V 6148 5583 50  0000 R CNN
F 2 "WLA_LED_reverse_mount:LED_1204_reverse_mout" H 6200 5700 50  0001 C CNN
F 3 "1905151403_MEIHUA-MHS110KECT" H 6200 5700 50  0001 C CNN
F 4 "C389527" V 6200 5700 50  0001 C CNN "LCSC part number"
	1    6200 5700
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D1
U 1 1 5E6F89A9
P 3300 6350
F 0 "D1" V 3339 6233 50  0000 R CNN
F 1 "MCU POWER" V 3248 6233 50  0000 R CNN
F 2 "WLA_LED_reverse_mount:LED_1204_reverse_mout" H 3300 6350 50  0001 C CNN
F 3 "2009041237_TUOZHAN-TZ-P2-1204WYS2-1-5T" H 3300 6350 50  0001 C CNN
F 4 "C779804" V 3300 6350 50  0001 C CNN "LCSC part number"
	1    3300 6350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D5
U 1 1 5E6F8DF4
P 9600 3400
F 0 "D5" V 9639 3282 50  0000 R CNN
F 1 "LC POWER" V 9548 3282 50  0000 R CNN
F 2 "WLA_LED_reverse_mount:LED_1204_reverse_mout" H 9600 3400 50  0001 C CNN
F 3 "2009041238_TUOZHAN-TZ-P2-1204BTS2-1-5T" H 9600 3400 50  0001 C CNN
F 4 "C779807" V 9600 3400 50  0001 C CNN "LCSC part number"
	1    9600 3400
	0    -1   -1   0   
$EndComp
$Comp
L Regulator_Linear:MCP1703A-3302_SOT23 U1
U 1 1 5E6F9513
P 2150 5700
F 0 "U1" H 2150 5942 50  0000 C CNN
F 1 "MCP1703A-3302_SOT23" H 2150 5851 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23W_Handsoldering" H 2150 5900 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20005122B.pdf" H 2150 5650 50  0001 C CNN
	1    2150 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5E6F9D7B
P 2650 5950
F 0 "C2" H 2768 5996 50  0000 L CNN
F 1 "10u" H 2768 5905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 2688 5800 50  0001 C CNN
F 3 "~" H 2650 5950 50  0001 C CNN
	1    2650 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5E6FA34F
P 1650 5950
F 0 "C1" H 1765 5996 50  0000 L CNN
F 1 "1u" H 1765 5905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1688 5800 50  0001 C CNN
F 3 "~" H 1650 5950 50  0001 C CNN
	1    1650 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5E6FABAC
P 5000 5300
F 0 "R2" H 5070 5346 50  0000 L CNN
F 1 "2k7" H 5070 5255 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4930 5300 50  0001 C CNN
F 3 "~" H 5000 5300 50  0001 C CNN
	1    5000 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5E6FBCF2
P 5600 5300
F 0 "R3" H 5670 5346 50  0000 L CNN
F 1 "1k2" H 5670 5255 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5530 5300 50  0001 C CNN
F 3 "~" H 5600 5300 50  0001 C CNN
	1    5600 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5E6FC0B8
P 6200 5300
F 0 "R4" H 6270 5346 50  0000 L CNN
F 1 "1k2" H 6270 5255 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6130 5300 50  0001 C CNN
F 3 "~" H 6200 5300 50  0001 C CNN
	1    6200 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5E6FD03E
P 9600 3000
F 0 "R7" H 9670 3046 50  0000 L CNN
F 1 "1k8" H 9670 2955 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9530 3000 50  0001 C CNN
F 3 "~" H 9600 3000 50  0001 C CNN
	1    9600 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5E6FD675
P 3300 5950
F 0 "R1" H 3370 5996 50  0000 L CNN
F 1 "1k8" H 3370 5905 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3230 5950 50  0001 C CNN
F 3 "~" H 3300 5950 50  0001 C CNN
	1    3300 5950
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Male J2
U 1 1 5E6FE83D
P 10300 2650
F 0 "J2" H 10272 2532 50  0000 R CNN
F 1 "Light Controller" H 10272 2623 50  0000 R CNN
F 2 "WLA_pinheader:PinHeader_1x06_P2.54mm_Flat" H 10300 2650 50  0001 C CNN
F 3 "~" H 10300 2650 50  0001 C CNN
	1    10300 2650
	-1   0    0    1   
$EndComp
$Comp
L wla-atsamd21:STMPS2141STR U3
U 1 1 5E709E73
P 8150 2750
F 0 "U3" H 8150 3117 50  0000 C CNN
F 1 "STMPS2141STR" H 8150 3026 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5_HandSoldering" H 8150 3250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tps22917.pdf" H 8200 2050 50  0001 C CNN
	1    8150 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 5E710261
P 9600 3650
F 0 "#PWR022" H 9600 3400 50  0001 C CNN
F 1 "GND" H 9605 3477 50  0000 C CNN
F 2 "" H 9600 3650 50  0001 C CNN
F 3 "" H 9600 3650 50  0001 C CNN
	1    9600 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 5E71085D
P 8150 3150
F 0 "#PWR019" H 8150 2900 50  0001 C CNN
F 1 "GND" H 8155 2977 50  0000 C CNN
F 2 "" H 8150 3150 50  0001 C CNN
F 3 "" H 8150 3150 50  0001 C CNN
	1    8150 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 3050 8150 3150
Wire Wire Line
	9600 3150 9600 3250
Wire Wire Line
	9600 3550 9600 3650
$Comp
L power:GND #PWR023
U 1 1 5E713E19
P 10000 2950
F 0 "#PWR023" H 10000 2700 50  0001 C CNN
F 1 "GND" H 10005 2777 50  0000 C CNN
F 2 "" H 10000 2950 50  0001 C CNN
F 3 "" H 10000 2950 50  0001 C CNN
	1    10000 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 2950 10000 2850
Wire Wire Line
	10000 2850 10100 2850
$Comp
L power:+5V #PWR02
U 1 1 5E718ABF
P 1650 5350
F 0 "#PWR02" H 1650 5200 50  0001 C CNN
F 1 "+5V" H 1665 5523 50  0000 C CNN
F 2 "" H 1650 5350 50  0001 C CNN
F 3 "" H 1650 5350 50  0001 C CNN
	1    1650 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 5450 5000 5550
Wire Wire Line
	5600 5450 5600 5550
Wire Wire Line
	6200 5450 6200 5550
$Comp
L power:GND #PWR014
U 1 1 5E730E75
P 5000 5950
F 0 "#PWR014" H 5000 5700 50  0001 C CNN
F 1 "GND" H 5005 5777 50  0000 C CNN
F 2 "" H 5000 5950 50  0001 C CNN
F 3 "" H 5000 5950 50  0001 C CNN
	1    5000 5950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5E73101A
P 5600 5950
F 0 "#PWR015" H 5600 5700 50  0001 C CNN
F 1 "GND" H 5605 5777 50  0000 C CNN
F 2 "" H 5600 5950 50  0001 C CNN
F 3 "" H 5600 5950 50  0001 C CNN
	1    5600 5950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5E73121D
P 6200 5950
F 0 "#PWR016" H 6200 5700 50  0001 C CNN
F 1 "GND" H 6205 5777 50  0000 C CNN
F 2 "" H 6200 5950 50  0001 C CNN
F 3 "" H 6200 5950 50  0001 C CNN
	1    6200 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 5850 6200 5950
Wire Wire Line
	5600 5850 5600 5950
Wire Wire Line
	5000 5850 5000 5950
$Comp
L power:GND #PWR06
U 1 1 5E73DD0C
P 2650 6200
F 0 "#PWR06" H 2650 5950 50  0001 C CNN
F 1 "GND" H 2655 6027 50  0000 C CNN
F 2 "" H 2650 6200 50  0001 C CNN
F 3 "" H 2650 6200 50  0001 C CNN
	1    2650 6200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5E73F918
P 3300 6600
F 0 "#PWR09" H 3300 6350 50  0001 C CNN
F 1 "GND" H 3305 6427 50  0000 C CNN
F 2 "" H 3300 6600 50  0001 C CNN
F 3 "" H 3300 6600 50  0001 C CNN
	1    3300 6600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5E741307
P 2150 6100
F 0 "#PWR05" H 2150 5850 50  0001 C CNN
F 1 "GND" H 2155 5927 50  0000 C CNN
F 2 "" H 2150 6100 50  0001 C CNN
F 3 "" H 2150 6100 50  0001 C CNN
	1    2150 6100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5E7415B1
P 1650 6200
F 0 "#PWR03" H 1650 5950 50  0001 C CNN
F 1 "GND" H 1655 6027 50  0000 C CNN
F 2 "" H 1650 6200 50  0001 C CNN
F 3 "" H 1650 6200 50  0001 C CNN
	1    1650 6200
	1    0    0    -1  
$EndComp
NoConn ~ 1500 3300
$Comp
L power:GND #PWR01
U 1 1 5E74A406
P 1200 3600
F 0 "#PWR01" H 1200 3350 50  0001 C CNN
F 1 "GND" H 1205 3427 50  0000 C CNN
F 2 "" H 1200 3600 50  0001 C CNN
F 3 "" H 1200 3600 50  0001 C CNN
	1    1200 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 3500 1200 3550
Wire Wire Line
	1650 5350 1650 5700
Wire Wire Line
	1650 6100 1650 6200
Wire Wire Line
	1850 5700 1650 5700
Wire Wire Line
	2650 6100 2650 6200
Wire Wire Line
	3300 6100 3300 6200
Wire Wire Line
	3300 6500 3300 6600
Wire Wire Line
	2150 6000 2150 6100
$Comp
L power:+5V #PWR04
U 1 1 5E75A54A
P 1850 2750
F 0 "#PWR04" H 1850 2600 50  0001 C CNN
F 1 "+5V" H 1865 2923 50  0000 C CNN
F 2 "" H 1850 2750 50  0001 C CNN
F 3 "" H 1850 2750 50  0001 C CNN
	1    1850 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 2750 1850 2900
Wire Wire Line
	1850 2900 1500 2900
$Comp
L power:+5V #PWR018
U 1 1 5E75CDA0
P 7550 2450
F 0 "#PWR018" H 7550 2300 50  0001 C CNN
F 1 "+5V" H 7565 2623 50  0000 C CNN
F 2 "" H 7550 2450 50  0001 C CNN
F 3 "" H 7550 2450 50  0001 C CNN
	1    7550 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 2450 7550 2650
Wire Wire Line
	7550 2650 7750 2650
Wire Wire Line
	9900 2650 10100 2650
Wire Wire Line
	9900 2550 10100 2550
Wire Wire Line
	9900 2350 10100 2350
Wire Wire Line
	5000 5150 5000 4750
Wire Wire Line
	5600 4750 5600 5150
Wire Wire Line
	6200 4750 6200 5150
$Comp
L power:GND #PWR013
U 1 1 5E770B6C
P 4050 3900
F 0 "#PWR013" H 4050 3650 50  0001 C CNN
F 1 "GND" H 4055 3727 50  0000 C CNN
F 2 "" H 4050 3900 50  0001 C CNN
F 3 "" H 4050 3900 50  0001 C CNN
	1    4050 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 3700 4050 3800
Connection ~ 4050 3800
Wire Wire Line
	4050 3800 4050 3900
Wire Wire Line
	9500 2550 9200 2550
Wire Wire Line
	9200 2650 9500 2650
Text Label 9200 2650 0    50   ~ 0
TX
Text Label 9200 2550 0    50   ~ 0
RX
Wire Wire Line
	9200 2350 9500 2350
Text Label 9200 2350 0    50   ~ 0
ISP
Text Label 9200 2750 0    50   ~ 0
VLIGHT
Wire Wire Line
	6550 3100 7150 3100
Wire Wire Line
	7150 3200 6550 3200
Text Label 7150 3100 2    50   ~ 0
TX
Text Label 7150 3200 2    50   ~ 0
RX
Wire Wire Line
	7150 3300 6550 3300
Wire Wire Line
	7150 3400 6550 3400
Text Label 7150 3300 2    50   ~ 0
USB-DM
Text Label 7150 3400 2    50   ~ 0
USB-DP
Wire Wire Line
	1500 3100 2300 3100
Wire Wire Line
	2300 3200 1500 3200
Text Label 2300 3100 2    50   ~ 0
USB-DP
Text Label 2300 3200 2    50   ~ 0
USB-DM
$Comp
L power:+3V3 #PWR08
U 1 1 5E788A3B
P 3300 5350
F 0 "#PWR08" H 3300 5200 50  0001 C CNN
F 1 "+3V3" H 3315 5523 50  0000 C CNN
F 2 "" H 3300 5350 50  0001 C CNN
F 3 "" H 3300 5350 50  0001 C CNN
	1    3300 5350
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR011
U 1 1 5E78CDCD
P 3850 1600
F 0 "#PWR011" H 3850 1450 50  0001 C CNN
F 1 "+3V3" H 3865 1773 50  0000 C CNN
F 2 "" H 3850 1600 50  0001 C CNN
F 3 "" H 3850 1600 50  0001 C CNN
	1    3850 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 1700 3850 1700
Wire Wire Line
	3850 1700 3850 1600
Wire Wire Line
	3850 1700 3850 2200
Wire Wire Line
	3850 2200 4050 2200
Connection ~ 3850 1700
$Comp
L Device:C C5
U 1 1 5E78EC25
P 3850 2350
F 0 "C5" H 3965 2396 50  0000 L CNN
F 1 "100n" H 3965 2305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3888 2200 50  0001 C CNN
F 3 "~" H 3850 2350 50  0001 C CNN
	1    3850 2350
	1    0    0    -1  
$EndComp
Connection ~ 3850 2200
$Comp
L power:GND #PWR012
U 1 1 5E78FA6F
P 3850 2600
F 0 "#PWR012" H 3850 2350 50  0001 C CNN
F 1 "GND" H 3855 2427 50  0000 C CNN
F 2 "" H 3850 2600 50  0001 C CNN
F 3 "" H 3850 2600 50  0001 C CNN
	1    3850 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 2500 3850 2600
$Comp
L Device:C C4
U 1 1 5E7914FA
P 3500 2000
F 0 "C4" H 3615 2046 50  0000 L CNN
F 1 "1u" H 3615 1955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3538 1850 50  0001 C CNN
F 3 "~" H 3500 2000 50  0001 C CNN
	1    3500 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5E79198F
P 3500 2600
F 0 "#PWR010" H 3500 2350 50  0001 C CNN
F 1 "GND" H 3505 2427 50  0000 C CNN
F 2 "" H 3500 2600 50  0001 C CNN
F 3 "" H 3500 2600 50  0001 C CNN
	1    3500 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 2150 3500 2600
Wire Wire Line
	3500 1850 4050 1850
$Comp
L power:GND #PWR07
U 1 1 5E7940E5
P 3150 2600
F 0 "#PWR07" H 3150 2350 50  0001 C CNN
F 1 "GND" H 3155 2427 50  0000 C CNN
F 2 "" H 3150 2600 50  0001 C CNN
F 3 "" H 3150 2600 50  0001 C CNN
	1    3150 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5E799517
P 3150 1450
F 0 "C3" H 3265 1496 50  0000 L CNN
F 1 "100n" H 3265 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3188 1300 50  0001 C CNN
F 3 "~" H 3150 1450 50  0001 C CNN
	1    3150 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 1300 4050 1300
Wire Wire Line
	3150 1600 3150 2600
Text Label 5000 4750 3    50   ~ 0
OK
Text Label 5600 4750 3    50   ~ 0
BUSY
Text Label 6200 4750 3    50   ~ 0
ERROR
Wire Wire Line
	8550 2750 9050 2750
Wire Wire Line
	9600 2850 9600 2750
Connection ~ 9600 2750
Wire Wire Line
	9600 2750 10100 2750
Wire Wire Line
	1650 5700 1650 5800
Connection ~ 1650 5700
Wire Wire Line
	3300 5700 3300 5800
Wire Wire Line
	2450 5700 2650 5700
Wire Wire Line
	3250 5350 3300 5350
Wire Wire Line
	3300 5350 3300 5700
Connection ~ 3300 5350
Connection ~ 3300 5700
Wire Wire Line
	2650 5800 2650 5700
Wire Wire Line
	6550 1700 7150 1700
Wire Wire Line
	7150 1800 6550 1800
Wire Wire Line
	7150 1900 6550 1900
Text Label 7150 1700 2    50   ~ 0
OK
Text Label 7150 1800 2    50   ~ 0
BUSY
Text Label 7150 1900 2    50   ~ 0
ERROR
Text Label 7150 3500 2    50   ~ 0
ISP
NoConn ~ 7750 2850
Text Label 7150 1600 2    50   ~ 0
EN
Wire Wire Line
	7750 2750 7350 2750
NoConn ~ 6550 1300
NoConn ~ 6550 1400
NoConn ~ 6550 1500
NoConn ~ 6550 2200
NoConn ~ 6550 2300
NoConn ~ 6550 2400
NoConn ~ 6550 2500
NoConn ~ 6550 2600
NoConn ~ 6550 2700
NoConn ~ 6550 2800
NoConn ~ 6550 3600
Text Label 3550 1300 0    50   ~ 0
RESET
Text Label 3550 1850 0    50   ~ 0
VDDCORE
Wire Wire Line
	7150 3500 6550 3500
NoConn ~ 6550 3000
$Comp
L webusb-programmer-rescue:USB_B_Micro-Connector J1
U 1 1 5E6F135C
P 1200 3100
F 0 "J1" H 1257 3567 50  0000 C CNN
F 1 "USB_B_Micro" H 1257 3476 50  0000 C CNN
F 2 "USB:Mirco_USB_Type_B_LCSC_C40943" H 1350 3050 50  0001 C CNN
F 3 "~" H 1350 3050 50  0001 C CNN
F 4 "C40943" H 1200 3100 50  0001 C CNN "LCSC part number"
	1    1200 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 3500 1100 3550
Wire Wire Line
	1100 3550 1200 3550
Connection ~ 1200 3550
Wire Wire Line
	1200 3550 1200 3600
Wire Wire Line
	2650 5700 3300 5700
Connection ~ 2650 5700
Wire Wire Line
	7150 3700 6550 3700
Wire Wire Line
	7150 3800 6550 3800
Text Label 7150 3700 2    50   ~ 0
SWCLK
Text Label 7150 3800 2    50   ~ 0
SWDIO
$Comp
L Connector:TestPoint_Alt TP1
U 1 1 5E719FC1
P 9100 5350
F 0 "TP1" V 9050 5300 50  0000 L CNN
F 1 "SWDIO" V 9100 5550 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 9300 5350 50  0001 C CNN
F 3 "~" H 9300 5350 50  0001 C CNN
	1    9100 5350
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint_Alt TP2
U 1 1 5E71A590
P 9100 5500
F 0 "TP2" V 9050 5450 50  0000 L CNN
F 1 "SWCLK" V 9100 5700 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 9300 5500 50  0001 C CNN
F 3 "~" H 9300 5500 50  0001 C CNN
	1    9100 5500
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint_Alt TP3
U 1 1 5E71A86D
P 9100 5650
F 0 "TP3" V 9050 5600 50  0000 L CNN
F 1 "GND" V 9100 5850 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 9300 5650 50  0001 C CNN
F 3 "~" H 9300 5650 50  0001 C CNN
	1    9100 5650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR021
U 1 1 5E71B7BF
P 9000 5800
F 0 "#PWR021" H 9000 5550 50  0001 C CNN
F 1 "GND" H 9005 5627 50  0000 C CNN
F 2 "" H 9000 5800 50  0001 C CNN
F 3 "" H 9000 5800 50  0001 C CNN
	1    9000 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 5650 9000 5650
Wire Wire Line
	9000 5650 9000 5800
Wire Wire Line
	9100 5350 8250 5350
Wire Wire Line
	8250 5500 9100 5500
Text Label 8250 5500 0    50   ~ 0
SWCLK
Text Label 8250 5350 0    50   ~ 0
SWDIO
$Comp
L Device:R R5
U 1 1 5E73F8FA
P 7350 1300
F 0 "R5" V 7300 1100 50  0000 C CNN
F 1 "10k" V 7300 1500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7280 1300 50  0001 C CNN
F 3 "~" H 7350 1300 50  0001 C CNN
	1    7350 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	7350 1450 7350 1600
$Comp
L power:+3V3 #PWR017
U 1 1 5E741E2B
P 7350 1000
F 0 "#PWR017" H 7350 850 50  0001 C CNN
F 1 "+3V3" H 7365 1173 50  0000 C CNN
F 2 "" H 7350 1000 50  0001 C CNN
F 3 "" H 7350 1000 50  0001 C CNN
	1    7350 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 1000 7350 1150
$Comp
L Transistor_FET:BSS138 Q1
U 1 1 5E77A5F9
P 8950 3400
F 0 "Q1" H 9154 3446 50  0000 L CNN
F 1 "PMV30UN" H 9154 3355 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 9150 3325 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/BS/BSS138.pdf" H 8950 3400 50  0001 L CNN
	1    8950 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 5E7943C7
P 9050 3650
F 0 "#PWR020" H 9050 3400 50  0001 C CNN
F 1 "GND" H 9055 3477 50  0000 C CNN
F 2 "" H 9050 3650 50  0001 C CNN
F 3 "" H 9050 3650 50  0001 C CNN
	1    9050 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 3600 9050 3650
$Comp
L Device:R R6
U 1 1 5E7997E9
P 9050 3000
F 0 "R6" H 9120 3046 50  0000 L CNN
F 1 "10" H 9120 2955 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8980 3000 50  0001 C CNN
F 3 "~" H 9050 3000 50  0001 C CNN
	1    9050 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 3150 9050 3200
Wire Wire Line
	9050 2850 9050 2750
Connection ~ 9050 2750
Wire Wire Line
	9050 2750 9600 2750
Text Label 7150 2000 2    50   ~ 0
SHORT
Text Label 8400 3400 0    50   ~ 0
SHORT
Wire Wire Line
	8400 3400 8750 3400
Wire Wire Line
	6550 1600 7350 1600
Connection ~ 7350 1600
Wire Wire Line
	7350 1600 7350 2750
Wire Wire Line
	6550 2000 7150 2000
NoConn ~ 6550 2100
Wire Wire Line
	9900 2450 10100 2450
Wire Wire Line
	9500 2450 9200 2450
Text Label 9200 2450 0    50   ~ 0
CH3
Wire Wire Line
	6550 2900 7150 2900
Text Label 7150 2900 2    50   ~ 0
CH3
$Comp
L Device:R_Pack04 RN1
U 1 1 5FDCE5F9
P 9700 2550
F 0 "RN1" V 9283 2550 50  0000 C CNN
F 1 "1k" V 9374 2550 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0603" V 9975 2550 50  0001 C CNN
F 3 "~" H 9700 2550 50  0001 C CNN
	1    9700 2550
	0    1    1    0   
$EndComp
Text Notes 1000 2350 0    50   ~ 0
Important: for mechanical \nstability use a Micro-USB \nconnector that uses \nthrough-hole mountings.
Text Notes 7650 4550 0    50   ~ 0
The transistor shorts the power \nsupply of the light controller to\nground via 10 Ohms. \nThis discharges the large cap \nin the light controller, otherwise \nsubsequant programming \nattempts may fail as the MCU in \nthe light controller is still residually\npowered (when no firmware is \nflashed yet!)
Text Notes 9750 5550 0    50   ~ 0
MCU programming \nvia SWD
Text Notes 7850 2300 0    50   ~ 0
High-side power switch,\nactive low
Text Notes 3450 6550 0    50   ~ 0
White
Text Notes 5150 5900 0    50   ~ 0
Green
Text Notes 5750 5900 0    50   ~ 0
Yellow
Text Notes 6350 5900 0    50   ~ 0
Red
Text Notes 9750 3600 0    50   ~ 0
Blue
Text Notes 1950 5350 0    50   ~ 0
LCSC equivalent part:\nNanjing Micro One Elec\nME6209A33M3G\n
$EndSCHEMATC
