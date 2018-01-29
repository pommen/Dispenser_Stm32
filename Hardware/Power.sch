EESchema Schematic File Version 2
LIBS:dispenser-rescue
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:Peters
LIBS:L298N
LIBS:WS2812B
LIBS:a3968
LIBS:lm2675
LIBS:adp3338akcz
LIBS:bluepill_breakouts
LIBS:dispenser-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
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
L Screw_Terminal_01x02 J5
U 1 1 5A7063CF
P 2000 2550
F 0 "J5" H 1920 2225 50  0000 C CNN
F 1 "Vin" H 1920 2316 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 2000 2550 50  0001 C CNN
F 3 "" H 2000 2550 50  0001 C CNN
	1    2000 2550
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR082
U 1 1 5A7063D6
P 2200 2650
F 0 "#PWR082" H 2200 2400 50  0001 C CNN
F 1 "GND" H 2205 2477 50  0000 C CNN
F 2 "" H 2200 2650 50  0001 C CNN
F 3 "" H 2200 2650 50  0001 C CNN
	1    2200 2650
	1    0    0    -1  
$EndComp
$Comp
L +24V #PWR083
U 1 1 5A7063DC
P 2750 2350
F 0 "#PWR083" H 2750 2200 50  0001 C CNN
F 1 "+24V" H 2765 2523 50  0000 C CNN
F 2 "" H 2750 2350 50  0001 C CNN
F 3 "" H 2750 2350 50  0001 C CNN
	1    2750 2350
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG084
U 1 1 5A7063E8
P 8950 2800
F 0 "#FLG084" H 8950 2875 50  0001 C CNN
F 1 "PWR_FLAG" H 8950 2974 50  0000 C CNN
F 2 "" H 8950 2800 50  0001 C CNN
F 3 "" H 8950 2800 50  0001 C CNN
	1    8950 2800
	1    0    0    -1  
$EndComp
$Comp
L D D13
U 1 1 5A7063EE
P 2750 2600
F 0 "D13" V 2704 2679 50  0000 L CNN
F 1 "D" V 2795 2679 50  0000 L CNN
F 2 "Diodes_SMD:D_SMB-SMC_Universal_Handsoldering" H 2750 2600 50  0001 C CNN
F 3 "" H 2750 2600 50  0001 C CNN
	1    2750 2600
	0    1    1    0   
$EndComp
$Comp
L GND #PWR085
U 1 1 5A7063F5
P 2750 2950
F 0 "#PWR085" H 2750 2700 50  0001 C CNN
F 1 "GND" H 2755 2777 50  0000 C CNN
F 2 "" H 2750 2950 50  0001 C CNN
F 3 "" H 2750 2950 50  0001 C CNN
	1    2750 2950
	1    0    0    -1  
$EndComp
$Comp
L Fuse F1
U 1 1 5A7063FB
P 2450 2450
F 0 "F1" V 2253 2450 50  0000 C CNN
F 1 "500mA" V 2344 2450 50  0000 C CNN
F 2 "Fuse_Holders_and_Fuses:Fuse_TE5_Littlefuse-395Series" V 2380 2450 50  0001 C CNN
F 3 "" H 2450 2450 50  0001 C CNN
	1    2450 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	2200 2550 2200 2650
Wire Wire Line
	2750 2350 2750 2450
Connection ~ 2750 2450
Wire Wire Line
	5800 2750 7100 2750
Connection ~ 6200 2750
Wire Wire Line
	2750 2750 2750 2950
Wire Wire Line
	2300 2450 2200 2450
$Comp
L L L1
U 1 1 5A706409
P 5650 2750
F 0 "L1" V 5600 2750 50  0000 C CNN
F 1 "47uH" V 5725 2750 50  0000 C CNN
F 2 "Inductors_SMD:L_7.3x7.3_H4.5" H 5650 2750 50  0001 C CNN
F 3 "" H 5650 2750 50  0001 C CNN
	1    5650 2750
	0    -1   -1   0   
$EndComp
$Comp
L D_Schottky D14
U 1 1 5A706410
P 5450 3000
F 0 "D14" H 5450 3100 50  0000 C CNN
F 1 "D_Schottky" H 5450 2900 50  0000 C CNN
F 2 "Diodes_SMD:D_SMC_Handsoldering" H 5450 3000 50  0001 C CNN
F 3 "" H 5450 3000 50  0001 C CNN
	1    5450 3000
	0    1    1    0   
$EndComp
$Comp
L R R28
U 1 1 5A706417
P 5850 2400
F 0 "R28" V 5930 2400 50  0000 C CNN
F 1 "3K" V 5850 2400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5780 2400 50  0001 C CNN
F 3 "" H 5850 2400 50  0001 C CNN
	1    5850 2400
	0    1    1    0   
$EndComp
$Comp
L C_Small C13
U 1 1 5A70641E
P 5350 2600
F 0 "C13" V 5400 2450 50  0000 L CNN
F 1 "10nf" V 5250 2550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5350 2600 50  0001 C CNN
F 3 "" H 5350 2600 50  0001 C CNN
	1    5350 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 2750 5500 2750
Wire Wire Line
	5450 2600 5450 2850
Connection ~ 5450 2750
$Comp
L GND #PWR086
U 1 1 5A706428
P 5450 3200
F 0 "#PWR086" H 5450 2950 50  0001 C CNN
F 1 "GND" H 5455 3027 50  0000 C CNN
F 2 "" H 5450 3200 50  0001 C CNN
F 3 "" H 5450 3200 50  0001 C CNN
	1    5450 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 3150 5450 3200
Wire Wire Line
	5050 2600 5250 2600
$Comp
L CP C14
U 1 1 5A706430
P 6050 2900
F 0 "C14" H 6075 3000 50  0000 L CNN
F 1 "68Uf" H 6075 2800 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_10x10" H 6088 2750 50  0001 C CNN
F 3 "" H 6050 2900 50  0001 C CNN
	1    6050 2900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR087
U 1 1 5A706437
P 6050 3200
F 0 "#PWR087" H 6050 2950 50  0001 C CNN
F 1 "GND" H 6055 3027 50  0000 C CNN
F 2 "" H 6050 3200 50  0001 C CNN
F 3 "" H 6050 3200 50  0001 C CNN
	1    6050 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 3050 6050 3200
Connection ~ 6050 3150
Wire Wire Line
	6200 2750 6200 2700
Connection ~ 6050 2750
$Comp
L GND #PWR088
U 1 1 5A706441
P 4050 2900
F 0 "#PWR088" H 4050 2650 50  0001 C CNN
F 1 "GND" H 4055 2727 50  0000 C CNN
F 2 "" H 4050 2900 50  0001 C CNN
F 3 "" H 4050 2900 50  0001 C CNN
	1    4050 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 2750 4150 2750
Wire Wire Line
	4050 2750 4050 2900
$Comp
L CP C12
U 1 1 5A706449
P 3350 2600
F 0 "C12" H 3375 2700 50  0000 L CNN
F 1 "4.7uF tant" H 3375 2500 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-C_EIA-6032-28_Hand" H 3388 2450 50  0001 C CNN
F 3 "" H 3350 2600 50  0001 C CNN
	1    3350 2600
	1    0    0    -1  
$EndComp
$Comp
L CP C11
U 1 1 5A706450
P 3050 2600
F 0 "C11" H 3075 2700 50  0000 L CNN
F 1 "4.7uF tant" H 3075 2500 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-C_EIA-6032-28_Hand" H 3088 2450 50  0001 C CNN
F 3 "" H 3050 2600 50  0001 C CNN
	1    3050 2600
	1    0    0    -1  
$EndComp
$Comp
L C 1U13
U 1 1 5A706457
P 3650 2600
F 0 "1U13" H 3765 2646 50  0000 L CNN
F 1 "0.1uf" H 3765 2555 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3688 2450 50  0001 C CNN
F 3 "" H 3650 2600 50  0001 C CNN
	1    3650 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 2450 4150 2450
Connection ~ 3650 2450
Connection ~ 3350 2450
Connection ~ 3350 2750
Connection ~ 4050 2750
Connection ~ 3650 2750
Wire Wire Line
	6000 2400 6050 2400
Wire Wire Line
	6050 2400 6050 2750
Wire Wire Line
	5700 2400 5150 2400
Wire Wire Line
	5150 2150 5150 2450
$Comp
L R R29
U 1 1 5A706468
P 5900 2150
F 0 "R29" V 5980 2150 50  0000 C CNN
F 1 "1K" V 5900 2150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5830 2150 50  0001 C CNN
F 3 "" H 5900 2150 50  0001 C CNN
	1    5900 2150
	0    1    1    0   
$EndComp
$Comp
L GND #PWR089
U 1 1 5A70646F
P 6100 2200
F 0 "#PWR089" H 6100 1950 50  0001 C CNN
F 1 "GND" H 6105 2027 50  0000 C CNN
F 2 "" H 6100 2200 50  0001 C CNN
F 3 "" H 6100 2200 50  0001 C CNN
	1    6100 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 2150 6100 2150
Wire Wire Line
	6100 2150 6100 2200
Wire Wire Line
	5750 2150 5150 2150
Connection ~ 5150 2400
Connection ~ 3050 2450
Wire Wire Line
	5150 2450 5050 2450
Text Notes 2000 3150 0    60   ~ 0
V IN MAX 30V
Wire Notes Line
	1750 1850 1750 3450
Wire Notes Line
	1750 3450 6800 3450
Wire Notes Line
	6800 3450 6800 1850
Wire Notes Line
	6800 1850 1750 1850
Text Notes 1950 2100 0    60   ~ 0
5V Reg\nMotor voltage = Vin
$Comp
L ADP3338AKCZ U17
U 1 1 5A706481
P 7500 2450
F 0 "U17" H 7750 1700 60  0000 C CNN
F 1 "ADP3338AKCZ" H 7550 2200 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223-3_TabPin2" H 7650 1600 60  0001 C CNN
F 3 "http://www.analog.com/media/en/technical-documentation/data-sheets/ADP3338.pdf" H 7750 1700 60  0001 C CNN
	1    7500 2450
	1    0    0    -1  
$EndComp
$Comp
L CP C17
U 1 1 5A706488
P 8000 3050
F 0 "C17" H 8025 3150 50  0000 L CNN
F 1 "1u" H 8025 2950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8038 2900 50  0001 C CNN
F 3 "" H 8000 3050 50  0001 C CNN
	1    8000 3050
	1    0    0    -1  
$EndComp
$Comp
L CP C16
U 1 1 5A70648F
P 7100 3100
F 0 "C16" H 7125 3200 50  0000 L CNN
F 1 "1u" H 7125 3000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7138 2950 50  0001 C CNN
F 3 "" H 7100 3100 50  0001 C CNN
	1    7100 3100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR090
U 1 1 5A706496
P 7550 3300
F 0 "#PWR090" H 7550 3050 50  0001 C CNN
F 1 "GND" H 7555 3127 50  0000 C CNN
F 2 "" H 7550 3300 50  0001 C CNN
F 3 "" H 7550 3300 50  0001 C CNN
	1    7550 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR091
U 1 1 5A70649C
P 7100 3300
F 0 "#PWR091" H 7100 3050 50  0001 C CNN
F 1 "GND" H 7105 3127 50  0000 C CNN
F 2 "" H 7100 3300 50  0001 C CNN
F 3 "" H 7100 3300 50  0001 C CNN
	1    7100 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR092
U 1 1 5A7064A2
P 8000 3250
F 0 "#PWR092" H 8000 3000 50  0001 C CNN
F 1 "GND" H 8005 3077 50  0000 C CNN
F 2 "" H 8000 3250 50  0001 C CNN
F 3 "" H 8000 3250 50  0001 C CNN
	1    8000 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 3250 8000 3200
Wire Wire Line
	7100 3300 7100 3250
Wire Wire Line
	7150 2850 7100 2850
Connection ~ 7100 2850
Connection ~ 8000 2850
Wire Wire Line
	8250 2850 8250 2700
$Comp
L GND #PWR093
U 1 1 5A7064C3
P 8950 2850
F 0 "#PWR093" H 8950 2600 50  0001 C CNN
F 1 "GND" H 8955 2677 50  0000 C CNN
F 2 "" H 8950 2850 50  0001 C CNN
F 3 "" H 8950 2850 50  0001 C CNN
	1    8950 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 2800 8950 2850
Connection ~ 8250 2850
$Comp
L CP C15
U 1 1 5A7064CC
P 6350 2900
F 0 "C15" H 6375 3000 50  0000 L CNN
F 1 "120Uf" H 6375 2800 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_10x10" H 6388 2750 50  0001 C CNN
F 3 "" H 6350 2900 50  0001 C CNN
	1    6350 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 3150 6350 3150
Wire Wire Line
	6350 3150 6350 3050
$Comp
L LM2675 U16
U 1 1 5A7064D5
P 3750 2700
F 0 "U16" H 4650 2550 60  0000 C CNN
F 1 "LM2675" H 4600 3050 60  0000 C CNN
F 2 "Housings_SOIC:SO-8_5.3x6.2mm_Pitch1.27mm" H 3750 2700 60  0001 C CNN
F 3 "" H 3750 2700 60  0001 C CNN
	1    3750 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 2900 8000 2850
Wire Wire Line
	7100 2750 7100 2950
Connection ~ 6350 2750
$Comp
L PWR_FLAG #FLG095
U 1 1 5A7063E2
P 9000 2050
F 0 "#FLG095" H 9000 2125 50  0001 C CNN
F 1 "PWR_FLAG" H 9000 2224 50  0000 C CNN
F 2 "" H 9000 2050 50  0001 C CNN
F 3 "" H 9000 2050 50  0001 C CNN
	1    9000 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 2850 8250 2850
$Comp
L +5V #PWR?
U 1 1 5A712DE9
P 7100 2750
F 0 "#PWR?" H 7100 2600 50  0001 C CNN
F 1 "+5V" H 7100 2890 50  0000 C CNN
F 2 "" H 7100 2750 50  0001 C CNN
F 3 "" H 7100 2750 50  0001 C CNN
	1    7100 2750
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 5A712E1F
P 8250 2700
F 0 "#PWR?" H 8250 2550 50  0001 C CNN
F 1 "+3.3V" H 8250 2840 50  0000 C CNN
F 2 "" H 8250 2700 50  0001 C CNN
F 3 "" H 8250 2700 50  0001 C CNN
	1    8250 2700
	1    0    0    -1  
$EndComp
$EndSCHEMATC
