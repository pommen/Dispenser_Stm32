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
Sheet 2 5
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
L R R2
U 1 1 5A67C89A
P 2750 4900
F 0 "R2" V 2543 4900 50  0000 C CNN
F 1 "1K" V 2634 4900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2680 4900 50  0001 C CNN
F 3 "" H 2750 4900 50  0001 C CNN
	1    2750 4900
	0    1    1    0   
$EndComp
$Comp
L GND #PWR07
U 1 1 5A67C8A1
P 4200 4950
F 0 "#PWR07" H 4200 4700 50  0001 C CNN
F 1 "GND" H 4205 4777 50  0000 C CNN
F 2 "" H 4200 4950 50  0001 C CNN
F 3 "" H 4200 4950 50  0001 C CNN
	1    4200 4950
	1    0    0    -1  
$EndComp
$Comp
L PC817 U4
U 1 1 5A67C8A7
P 3800 4700
F 0 "U4" H 3800 4400 50  0000 C CNN
F 1 "PC817" H 3800 4500 50  0000 C CNN
F 2 "Libs:817opto" H 3600 4500 50  0001 L CIN
F 3 "" H 3800 4700 50  0001 L CNN
	1    3800 4700
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 5A67C8B4
P 3600 5950
F 0 "R4" V 3393 5950 50  0000 C CNN
F 1 "1K" V 3484 5950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3530 5950 50  0001 C CNN
F 3 "" H 3600 5950 50  0001 C CNN
	1    3600 5950
	0    1    1    0   
$EndComp
$Comp
L GND #PWR08
U 1 1 5A67C8BB
P 5050 6000
F 0 "#PWR08" H 5050 5750 50  0001 C CNN
F 1 "GND" H 5055 5827 50  0000 C CNN
F 2 "" H 5050 6000 50  0001 C CNN
F 3 "" H 5050 6000 50  0001 C CNN
	1    5050 6000
	1    0    0    -1  
$EndComp
$Comp
L PC817 U6
U 1 1 5A67C8C1
P 4650 5750
F 0 "U6" H 4650 5450 50  0000 C CNN
F 1 "PC817" H 4650 5550 50  0000 C CNN
F 2 "Libs:817opto" H 4450 5550 50  0001 L CIN
F 3 "" H 4650 5750 50  0001 L CNN
	1    4650 5750
	1    0    0    -1  
$EndComp
$Comp
L R R11
U 1 1 5A67C8C8
P 5050 5350
F 0 "R11" H 4980 5304 50  0000 R CNN
F 1 "10K" H 4980 5395 50  0000 R CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4980 5350 50  0001 C CNN
F 3 "" H 5050 5350 50  0001 C CNN
	1    5050 5350
	-1   0    0    1   
$EndComp
$Comp
L R R7
U 1 1 5A67C8D5
P 4150 6600
F 0 "R7" V 3943 6600 50  0000 C CNN
F 1 "120R" V 4034 6600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4080 6600 50  0001 C CNN
F 3 "" H 4150 6600 50  0001 C CNN
	1    4150 6600
	0    -1   -1   0   
$EndComp
$Comp
L PC817 U2
U 1 1 5A67C8DC
P 3100 6450
F 0 "U2" H 3100 6775 50  0000 C CNN
F 1 "PC817" H 3100 6684 50  0000 C CNN
F 2 "Libs:817opto" H 2900 6250 50  0001 L CIN
F 3 "" H 3100 6450 50  0001 L CNN
	1    3100 6450
	-1   0    0    1   
$EndComp
$Comp
L LED D5
U 1 1 5A67C8EA
P 4200 5950
F 0 "D5" H 4191 6166 50  0000 C CNN
F 1 "LED" H 4191 6075 50  0000 C CNN
F 2 "LEDs:LED_0805_HandSoldering" H 4200 5950 50  0001 C CNN
F 3 "" H 4200 5950 50  0001 C CNN
	1    4200 5950
	1    0    0    -1  
$EndComp
$Comp
L LED D3
U 1 1 5A67C8F1
P 3350 4900
F 0 "D3" H 3341 5116 50  0000 C CNN
F 1 "LED" H 3341 5025 50  0000 C CNN
F 2 "LEDs:LED_0805_HandSoldering" H 3350 4900 50  0001 C CNN
F 3 "" H 3350 4900 50  0001 C CNN
	1    3350 4900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 5A67C8F8
P 4550 6250
F 0 "#PWR09" H 4550 6000 50  0001 C CNN
F 1 "GND" H 4555 6077 50  0000 C CNN
F 2 "" H 4550 6250 50  0001 C CNN
F 3 "" H 4550 6250 50  0001 C CNN
	1    4550 6250
	1    0    0    -1  
$EndComp
Text Label 5650 5750 0    60   ~ 0
Step
Text Label 5650 6900 0    60   ~ 0
OUT
Text GLabel 7750 4600 2    60   Input ~ 0
CMD_M2
Text GLabel 5850 6950 2    60   Input ~ 0
OUT_M2
$Comp
L C C3
U 1 1 5A67C903
P 6400 4900
F 0 "C3" H 6515 4946 50  0000 L CNN
F 1 "0.1uF" H 6515 4855 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6438 4750 50  0001 C CNN
F 3 "" H 6400 4900 50  0001 C CNN
	1    6400 4900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 5A67C90A
P 6400 5150
F 0 "#PWR010" H 6400 4900 50  0001 C CNN
F 1 "GND" H 6405 4977 50  0000 C CNN
F 2 "" H 6400 5150 50  0001 C CNN
F 3 "" H 6400 5150 50  0001 C CNN
	1    6400 5150
	1    0    0    -1  
$EndComp
$Comp
L D D7
U 1 1 5A67C910
P 6150 4400
F 0 "D7" H 6150 4184 50  0000 C CNN
F 1 "1m4148" H 6150 4275 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF_Handsoldering" H 6150 4400 50  0001 C CNN
F 3 "" H 6150 4400 50  0001 C CNN
	1    6150 4400
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR011
U 1 1 5A67C917
P 6450 6350
F 0 "#PWR011" H 6450 6100 50  0001 C CNN
F 1 "GND" H 6455 6177 50  0000 C CNN
F 2 "" H 6450 6350 50  0001 C CNN
F 3 "" H 6450 6350 50  0001 C CNN
	1    6450 6350
	1    0    0    -1  
$EndComp
$Comp
L D D9
U 1 1 5A67C91D
P 6200 5600
F 0 "D9" H 6200 5384 50  0000 C CNN
F 1 "1n4148" H 6200 5475 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF_Handsoldering" H 6200 5600 50  0001 C CNN
F 3 "" H 6200 5600 50  0001 C CNN
	1    6200 5600
	-1   0    0    1   
$EndComp
$Comp
L R R15
U 1 1 5A67C930
P 6200 5800
F 0 "R15" V 6100 5800 50  0000 C CNN
F 1 "10K" V 6200 5800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6130 5800 50  0001 C CNN
F 3 "" H 6200 5800 50  0001 C CNN
	1    6200 5800
	0    -1   -1   0   
$EndComp
$Comp
L R R13
U 1 1 5A67C937
P 6150 4600
F 0 "R13" V 6050 4600 50  0000 C CNN
F 1 "10K" V 6150 4600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6080 4600 50  0001 C CNN
F 3 "" H 6150 4600 50  0001 C CNN
	1    6150 4600
	0    -1   -1   0   
$EndComp
$Comp
L R R9
U 1 1 5A67C93E
P 4200 4300
F 0 "R9" H 4130 4254 50  0000 R CNN
F 1 "10K" H 4130 4345 50  0000 R CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4130 4300 50  0001 C CNN
F 3 "" H 4200 4300 50  0001 C CNN
	1    4200 4300
	-1   0    0    1   
$EndComp
$Comp
L C C5
U 1 1 5A67C945
P 6450 6100
F 0 "C5" H 6565 6146 50  0000 L CNN
F 1 "0.1uF" H 6565 6055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6488 5950 50  0001 C CNN
F 3 "" H 6450 6100 50  0001 C CNN
	1    6450 6100
	1    0    0    -1  
$EndComp
Text Notes 2950 7000 0    60   ~ 0
VF=1,2v\nI=20 mA
Text Notes 4450 5550 0    60   ~ 0
VF=1,2v\nI=20 mA
Text Notes 4400 4950 0    60   ~ 0
VF=1,2v\nI=20 mA
$Comp
L RJ45 J1
U 1 1 5A67C9DC
P 1100 3750
F 0 "J1" H 1300 4250 50  0000 C CNN
F 1 "RJ45" H 950 4250 50  0000 C CNN
F 2 "Connectors:RJ45_8" H 1100 3750 50  0001 C CNN
F 3 "" H 1100 3750 50  0001 C CNN
	1    1100 3750
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 5A67D6A9
P 2850 1800
F 0 "R3" V 2643 1800 50  0000 C CNN
F 1 "1K" V 2734 1800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2780 1800 50  0001 C CNN
F 3 "" H 2850 1800 50  0001 C CNN
	1    2850 1800
	0    1    1    0   
$EndComp
$Comp
L GND #PWR012
U 1 1 5A67D6AF
P 4200 1850
F 0 "#PWR012" H 4200 1600 50  0001 C CNN
F 1 "GND" H 4205 1677 50  0000 C CNN
F 2 "" H 4200 1850 50  0001 C CNN
F 3 "" H 4200 1850 50  0001 C CNN
	1    4200 1850
	1    0    0    -1  
$EndComp
$Comp
L PC817 U3
U 1 1 5A67D6B5
P 3800 1600
F 0 "U3" H 3800 1300 50  0000 C CNN
F 1 "PC817" H 3800 1400 50  0000 C CNN
F 2 "Libs:817opto" H 3600 1400 50  0001 L CIN
F 3 "" H 3800 1600 50  0001 L CNN
	1    3800 1600
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 5A67D6C1
P 3750 2850
F 0 "R5" V 3543 2850 50  0000 C CNN
F 1 "1K" V 3634 2850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3680 2850 50  0001 C CNN
F 3 "" H 3750 2850 50  0001 C CNN
	1    3750 2850
	0    1    1    0   
$EndComp
$Comp
L GND #PWR013
U 1 1 5A67D6C7
P 5050 2900
F 0 "#PWR013" H 5050 2650 50  0001 C CNN
F 1 "GND" H 5055 2727 50  0000 C CNN
F 2 "" H 5050 2900 50  0001 C CNN
F 3 "" H 5050 2900 50  0001 C CNN
	1    5050 2900
	1    0    0    -1  
$EndComp
$Comp
L PC817 U5
U 1 1 5A67D6CD
P 4650 2650
F 0 "U5" H 4650 2350 50  0000 C CNN
F 1 "PC817" H 4650 2450 50  0000 C CNN
F 2 "Libs:817opto" H 4450 2450 50  0001 L CIN
F 3 "" H 4650 2650 50  0001 L CNN
	1    4650 2650
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 5A67D6D3
P 5050 2250
F 0 "R10" H 4980 2204 50  0000 R CNN
F 1 "10K" H 4980 2295 50  0000 R CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4980 2250 50  0001 C CNN
F 3 "" H 5050 2250 50  0001 C CNN
	1    5050 2250
	-1   0    0    1   
$EndComp
$Comp
L R R6
U 1 1 5A67D6DF
P 4150 3500
F 0 "R6" V 3943 3500 50  0000 C CNN
F 1 "120R" V 4034 3500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4080 3500 50  0001 C CNN
F 3 "" H 4150 3500 50  0001 C CNN
	1    4150 3500
	0    -1   -1   0   
$EndComp
$Comp
L PC817 U1
U 1 1 5A67D6E5
P 3100 3350
F 0 "U1" H 3100 3675 50  0000 C CNN
F 1 "PC817" H 3100 3584 50  0000 C CNN
F 2 "Libs:817opto" H 2900 3150 50  0001 L CIN
F 3 "" H 3100 3350 50  0001 L CNN
	1    3100 3350
	-1   0    0    1   
$EndComp
$Comp
L LED D4
U 1 1 5A67D6F1
P 4200 2850
F 0 "D4" H 4191 3066 50  0000 C CNN
F 1 "LED" H 4191 2975 50  0000 C CNN
F 2 "LEDs:LED_0805_HandSoldering" H 4200 2850 50  0001 C CNN
F 3 "" H 4200 2850 50  0001 C CNN
	1    4200 2850
	1    0    0    -1  
$EndComp
$Comp
L LED D2
U 1 1 5A67D6F7
P 3350 1800
F 0 "D2" H 3341 2016 50  0000 C CNN
F 1 "LED" H 3341 1925 50  0000 C CNN
F 2 "LEDs:LED_0805_HandSoldering" H 3350 1800 50  0001 C CNN
F 3 "" H 3350 1800 50  0001 C CNN
	1    3350 1800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 5A67D6FD
P 4550 3150
F 0 "#PWR014" H 4550 2900 50  0001 C CNN
F 1 "GND" H 4555 2977 50  0000 C CNN
F 2 "" H 4550 3150 50  0001 C CNN
F 3 "" H 4550 3150 50  0001 C CNN
	1    4550 3150
	1    0    0    -1  
$EndComp
Text Label 5650 2650 0    60   ~ 0
Step
Text Label 5650 3800 0    60   ~ 0
OUT
Text GLabel 7750 1500 2    60   Input ~ 0
CMD_M1
Text GLabel 7900 2700 2    60   Input ~ 0
Step_M1
Text GLabel 5850 3850 2    60   Input ~ 0
OUT_M1
$Comp
L C C2
U 1 1 5A67D708
P 6400 1800
F 0 "C2" H 6515 1846 50  0000 L CNN
F 1 "0.1uF" H 6515 1755 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6438 1650 50  0001 C CNN
F 3 "" H 6400 1800 50  0001 C CNN
	1    6400 1800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 5A67D70E
P 6400 2050
F 0 "#PWR015" H 6400 1800 50  0001 C CNN
F 1 "GND" H 6405 1877 50  0000 C CNN
F 2 "" H 6400 2050 50  0001 C CNN
F 3 "" H 6400 2050 50  0001 C CNN
	1    6400 2050
	1    0    0    -1  
$EndComp
$Comp
L D D6
U 1 1 5A67D714
P 6150 1300
F 0 "D6" H 6150 1084 50  0000 C CNN
F 1 "1m4148" H 6150 1175 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF_Handsoldering" H 6150 1300 50  0001 C CNN
F 3 "" H 6150 1300 50  0001 C CNN
	1    6150 1300
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR016
U 1 1 5A67D71A
P 6450 3250
F 0 "#PWR016" H 6450 3000 50  0001 C CNN
F 1 "GND" H 6455 3077 50  0000 C CNN
F 2 "" H 6450 3250 50  0001 C CNN
F 3 "" H 6450 3250 50  0001 C CNN
	1    6450 3250
	1    0    0    -1  
$EndComp
$Comp
L D D8
U 1 1 5A67D720
P 6200 2500
F 0 "D8" H 6200 2284 50  0000 C CNN
F 1 "1n4148" H 6200 2375 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF_Handsoldering" H 6200 2500 50  0001 C CNN
F 3 "" H 6200 2500 50  0001 C CNN
	1    6200 2500
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR017
U 1 1 5A67D72C
P 9200 3600
F 0 "#PWR017" H 9200 3350 50  0001 C CNN
F 1 "GND" H 9205 3427 50  0000 C CNN
F 2 "" H 9200 3600 50  0001 C CNN
F 3 "" H 9200 3600 50  0001 C CNN
	1    9200 3600
	1    0    0    -1  
$EndComp
$Comp
L R R14
U 1 1 5A67D732
P 6200 2700
F 0 "R14" V 6100 2700 50  0000 C CNN
F 1 "10K" V 6200 2700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6130 2700 50  0001 C CNN
F 3 "" H 6200 2700 50  0001 C CNN
	1    6200 2700
	0    -1   -1   0   
$EndComp
$Comp
L R R12
U 1 1 5A67D738
P 6150 1500
F 0 "R12" V 6050 1500 50  0000 C CNN
F 1 "10K" V 6150 1500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6080 1500 50  0001 C CNN
F 3 "" H 6150 1500 50  0001 C CNN
	1    6150 1500
	0    -1   -1   0   
$EndComp
$Comp
L R R8
U 1 1 5A67D73E
P 4200 1200
F 0 "R8" H 4130 1154 50  0000 R CNN
F 1 "10K" H 4130 1245 50  0000 R CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4130 1200 50  0001 C CNN
F 3 "" H 4200 1200 50  0001 C CNN
	1    4200 1200
	-1   0    0    1   
$EndComp
$Comp
L C C4
U 1 1 5A67D744
P 6450 3000
F 0 "C4" H 6565 3046 50  0000 L CNN
F 1 "0.1uF" H 6565 2955 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6488 2850 50  0001 C CNN
F 3 "" H 6450 3000 50  0001 C CNN
	1    6450 3000
	1    0    0    -1  
$EndComp
Text Notes 2950 3200 0    60   ~ 0
VF=1,2v\nI=20 mA
Text Notes 4450 2450 0    60   ~ 0
VF=1,2v\nI=20 mA
Text Notes 3650 1400 0    60   ~ 0
VF=1,2v\nI=20 mA
$Comp
L C 1U2
U 1 1 5A67D792
P 9200 3450
F 0 "1U2" H 9315 3496 50  0000 L CNN
F 1 "0,1U" H 9315 3405 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9238 3300 50  0001 C CNN
F 3 "" H 9200 3450 50  0001 C CNN
	1    9200 3450
	1    0    0    -1  
$EndComp
$Comp
L 74HC14 U8
U 1 1 5A688A70
P 7300 1500
F 0 "U8" H 7450 1600 50  0000 C CNN
F 1 "74HC14" H 7500 1400 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 7300 1500 50  0001 C CNN
F 3 "" H 7300 1500 50  0001 C CNN
	1    7300 1500
	1    0    0    -1  
$EndComp
$Comp
L 74HC14 U8
U 2 1 5A688B69
P 7450 2700
F 0 "U8" H 7600 2800 50  0000 C CNN
F 1 "74HC14" H 7650 2600 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 7450 2700 50  0001 C CNN
F 3 "" H 7450 2700 50  0001 C CNN
	2    7450 2700
	1    0    0    -1  
$EndComp
$Comp
L 74HC14 U8
U 4 1 5A688CAB
P 7450 5800
F 0 "U8" H 7600 5900 50  0000 C CNN
F 1 "74HC14" H 7650 5700 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 7450 5800 50  0001 C CNN
F 3 "" H 7450 5800 50  0001 C CNN
	4    7450 5800
	1    0    0    -1  
$EndComp
Text GLabel 7900 5800 2    60   Input ~ 0
Step_M2
Wire Wire Line
	2100 4550 3500 4550
Wire Wire Line
	3500 4550 3500 4600
Wire Wire Line
	3500 4900 3500 4800
Wire Wire Line
	4100 4800 4200 4800
Wire Wire Line
	4200 4800 4200 4950
Wire Wire Line
	4100 4600 6000 4600
Wire Wire Line
	4200 4600 4200 4450
Wire Wire Line
	4200 4150 4200 4100
Connection ~ 4200 4600
Wire Wire Line
	2650 5600 4350 5600
Wire Wire Line
	4350 5600 4350 5650
Wire Wire Line
	4350 5950 4350 5850
Wire Wire Line
	4950 5850 5050 5850
Wire Wire Line
	5050 5850 5050 6000
Wire Wire Line
	4950 5650 5200 5650
Wire Wire Line
	5050 5650 5050 5500
Wire Wire Line
	5050 5200 5050 5150
Connection ~ 5050 5650
Wire Wire Line
	3400 6600 4000 6600
Wire Wire Line
	3400 6600 3400 6550
Wire Wire Line
	4300 6600 5500 6600
Wire Wire Line
	3400 6250 3400 6350
Wire Wire Line
	3400 6250 4550 6250
Wire Wire Line
	2400 6350 2800 6350
Wire Wire Line
	2650 5600 2650 5500
Wire Wire Line
	2650 5500 2000 5500
Wire Wire Line
	2400 6350 2400 5700
Wire Wire Line
	2400 5700 1900 5700
Wire Wire Line
	2200 6550 2800 6550
Wire Wire Line
	5500 6600 5500 6950
Wire Wire Line
	5500 6950 5850 6950
Wire Wire Line
	6300 4600 6850 4600
Wire Wire Line
	6400 4400 6400 4750
Wire Wire Line
	6400 5050 6400 5150
Connection ~ 6400 4600
Wire Wire Line
	6300 4400 6400 4400
Wire Wire Line
	6000 4400 5950 4400
Wire Wire Line
	5950 4400 5950 4600
Connection ~ 5950 4600
Wire Wire Line
	6350 5800 7000 5800
Wire Wire Line
	6450 5600 6450 5950
Wire Wire Line
	6450 6250 6450 6350
Connection ~ 6450 5800
Wire Wire Line
	6350 5600 6450 5600
Wire Wire Line
	6050 5600 6000 5600
Wire Wire Line
	6000 5600 6000 5800
Connection ~ 6000 5800
Wire Wire Line
	5200 5800 6050 5800
Wire Wire Line
	5200 5650 5200 5800
Wire Wire Line
	2100 1450 3500 1450
Wire Wire Line
	3500 1450 3500 1500
Wire Wire Line
	3500 1800 3500 1700
Wire Wire Line
	4100 1700 4200 1700
Wire Wire Line
	4200 1700 4200 1850
Wire Wire Line
	4100 1500 6000 1500
Wire Wire Line
	4200 1500 4200 1350
Wire Wire Line
	4200 1050 4200 1000
Connection ~ 4200 1500
Wire Wire Line
	1650 2500 4350 2500
Wire Wire Line
	4350 2500 4350 2550
Wire Wire Line
	4350 2850 4350 2750
Wire Wire Line
	4950 2750 5050 2750
Wire Wire Line
	5050 2750 5050 2900
Wire Wire Line
	4950 2550 5200 2550
Wire Wire Line
	5050 2550 5050 2400
Wire Wire Line
	5050 2100 5050 2050
Connection ~ 5050 2550
Wire Wire Line
	3400 3500 4000 3500
Wire Wire Line
	3400 3500 3400 3450
Wire Wire Line
	4300 3500 5500 3500
Wire Wire Line
	3400 3150 3400 3250
Wire Wire Line
	3400 3150 4550 3150
Wire Wire Line
	2400 3250 2800 3250
Wire Wire Line
	2100 2400 2100 1450
Wire Wire Line
	2400 2600 2400 3250
Wire Wire Line
	1750 2600 2400 2600
Wire Wire Line
	1850 3450 2800 3450
Wire Wire Line
	5500 3500 5500 3850
Wire Wire Line
	5500 3850 5850 3850
Wire Wire Line
	6300 1500 6850 1500
Wire Wire Line
	6400 1300 6400 1650
Wire Wire Line
	6400 1950 6400 2050
Connection ~ 6400 1500
Wire Wire Line
	6300 1300 6400 1300
Wire Wire Line
	6000 1300 5950 1300
Wire Wire Line
	5950 1300 5950 1500
Connection ~ 5950 1500
Wire Wire Line
	6350 2700 7000 2700
Wire Wire Line
	6450 2500 6450 2850
Wire Wire Line
	6450 3150 6450 3250
Connection ~ 6450 2700
Wire Wire Line
	6350 2500 6450 2500
Wire Wire Line
	6050 2500 6000 2500
Wire Wire Line
	6000 2500 6000 2700
Connection ~ 6000 2700
Wire Wire Line
	5200 2700 6050 2700
Wire Wire Line
	5200 2550 5200 2700
Wire Wire Line
	6850 1750 6850 1800
$Comp
L GNDD #PWR018
U 1 1 5A69E1AB
P 2550 1850
F 0 "#PWR018" H 2550 1600 50  0001 C CNN
F 1 "GNDD" H 2550 1725 50  0000 C CNN
F 2 "" H 2550 1850 50  0001 C CNN
F 3 "" H 2550 1850 50  0001 C CNN
	1    2550 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 1800 3000 1800
Wire Wire Line
	2700 1800 2550 1800
Wire Wire Line
	2550 1800 2550 1850
Wire Wire Line
	4050 2850 3900 2850
$Comp
L GNDD #PWR019
U 1 1 5A69E91D
P 3400 2850
F 0 "#PWR019" H 3400 2600 50  0001 C CNN
F 1 "GNDD" H 3400 2725 50  0000 C CNN
F 2 "" H 3400 2850 50  0001 C CNN
F 3 "" H 3400 2850 50  0001 C CNN
	1    3400 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 2850 3400 2850
Wire Wire Line
	3200 4900 2900 4900
$Comp
L GNDD #PWR020
U 1 1 5A69F612
P 2550 4950
F 0 "#PWR020" H 2550 4700 50  0001 C CNN
F 1 "GNDD" H 2550 4825 50  0000 C CNN
F 2 "" H 2550 4950 50  0001 C CNN
F 3 "" H 2550 4950 50  0001 C CNN
	1    2550 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 4900 2550 4900
Wire Wire Line
	2550 4900 2550 4950
Wire Wire Line
	4050 5950 3750 5950
$Comp
L GNDD #PWR021
U 1 1 5A69FED8
P 3400 6000
F 0 "#PWR021" H 3400 5750 50  0001 C CNN
F 1 "GNDD" H 3400 5875 50  0000 C CNN
F 2 "" H 3400 6000 50  0001 C CNN
F 3 "" H 3400 6000 50  0001 C CNN
	1    3400 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 5950 3400 5950
Wire Wire Line
	3400 5950 3400 6000
Wire Wire Line
	1550 2400 2100 2400
Wire Wire Line
	1550 2400 1550 3400
Wire Wire Line
	1650 2500 1650 3500
Wire Wire Line
	1650 3500 1550 3500
Wire Wire Line
	1750 2600 1750 3600
Wire Wire Line
	1750 3600 1550 3600
Wire Wire Line
	1850 3450 1850 3700
Wire Wire Line
	1550 3700 2100 3700
Text GLabel 2100 3700 2    60   Input ~ 0
+24Logic
Text GLabel 2200 6550 0    60   Input ~ 0
+24Logic
Wire Wire Line
	2100 4550 2100 3800
Wire Wire Line
	2100 3800 1550 3800
Wire Wire Line
	1550 3900 2000 3900
Wire Wire Line
	2000 3900 2000 5500
Wire Wire Line
	1900 5700 1900 4000
Wire Wire Line
	1900 4000 1550 4000
$Comp
L GNDD #PWR022
U 1 1 5A6A1925
P 1600 4200
F 0 "#PWR022" H 1600 3950 50  0001 C CNN
F 1 "GNDD" H 1600 4075 50  0000 C CNN
F 2 "" H 1600 4200 50  0001 C CNN
F 3 "" H 1600 4200 50  0001 C CNN
	1    1600 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 4100 1600 4100
Wire Wire Line
	1600 4100 1600 4200
$Comp
L 74HC14 U8
U 3 1 5A688BF4
P 7300 4600
F 0 "U8" H 7450 4700 50  0000 C CNN
F 1 "74HC14" H 7500 4500 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 7300 4600 50  0001 C CNN
F 3 "" H 7300 4600 50  0001 C CNN
	3    7300 4600
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR023
U 1 1 5A716CAE
P 4200 1000
F 0 "#PWR023" H 4200 850 50  0001 C CNN
F 1 "+3.3V" H 4200 1140 50  0000 C CNN
F 2 "" H 4200 1000 50  0001 C CNN
F 3 "" H 4200 1000 50  0001 C CNN
	1    4200 1000
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR024
U 1 1 5A716D32
P 5050 2050
F 0 "#PWR024" H 5050 1900 50  0001 C CNN
F 1 "+3.3V" H 5050 2190 50  0000 C CNN
F 2 "" H 5050 2050 50  0001 C CNN
F 3 "" H 5050 2050 50  0001 C CNN
	1    5050 2050
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR025
U 1 1 5A717541
P 9200 3300
F 0 "#PWR025" H 9200 3150 50  0001 C CNN
F 1 "+3.3V" H 9200 3440 50  0000 C CNN
F 2 "" H 9200 3300 50  0001 C CNN
F 3 "" H 9200 3300 50  0001 C CNN
	1    9200 3300
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR026
U 1 1 5A7175BE
P 4200 4100
F 0 "#PWR026" H 4200 3950 50  0001 C CNN
F 1 "+3.3V" H 4200 4240 50  0000 C CNN
F 2 "" H 4200 4100 50  0001 C CNN
F 3 "" H 4200 4100 50  0001 C CNN
	1    4200 4100
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR027
U 1 1 5A71763B
P 5050 5150
F 0 "#PWR027" H 5050 5000 50  0001 C CNN
F 1 "+3.3V" H 5050 5290 50  0000 C CNN
F 2 "" H 5050 5150 50  0001 C CNN
F 3 "" H 5050 5150 50  0001 C CNN
	1    5050 5150
	1    0    0    -1  
$EndComp
$Comp
L 74HC14 U8
U 6 1 5A718A9D
P 9250 4750
F 0 "U8" H 9400 4850 50  0000 C CNN
F 1 "74HC14" H 9450 4650 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 9250 4750 50  0001 C CNN
F 3 "" H 9250 4750 50  0001 C CNN
	6    9250 4750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR028
U 1 1 5A7190F0
P 9200 4900
F 0 "#PWR028" H 9200 4650 50  0001 C CNN
F 1 "GND" H 9205 4727 50  0000 C CNN
F 2 "" H 9200 4900 50  0001 C CNN
F 3 "" H 9200 4900 50  0001 C CNN
	1    9200 4900
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR029
U 1 1 5A71925A
P 9200 4600
F 0 "#PWR029" H 9200 4450 50  0001 C CNN
F 1 "+3.3V" H 9200 4740 50  0000 C CNN
F 2 "" H 9200 4600 50  0001 C CNN
F 3 "" H 9200 4600 50  0001 C CNN
	1    9200 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 4600 9200 4650
Wire Wire Line
	9200 4900 9200 4850
Connection ~ 1850 3700
$EndSCHEMATC
