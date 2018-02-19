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
LIBS:a4973
LIBS:a3968
LIBS:lm2675
LIBS:adp3338akcz
LIBS:bluepill_breakouts
LIBS:dispenser-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 5
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
L C 1U3
U 1 1 5A674C8B
P 8550 1050
F 0 "1U3" H 8665 1096 50  0000 L CNN
F 1 "0,1U" H 8665 1005 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8588 900 50  0001 C CNN
F 3 "" H 8550 1050 50  0001 C CNN
	1    8550 1050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR030
U 1 1 5A674C98
P 8550 1200
F 0 "#PWR030" H 8550 950 50  0001 C CNN
F 1 "GND" H 8555 1027 50  0000 C CNN
F 2 "" H 8550 1200 50  0001 C CNN
F 3 "" H 8550 1200 50  0001 C CNN
	1    8550 1200
	1    0    0    -1  
$EndComp
$Comp
L C 1U5
U 1 1 5A674C9E
P 9250 1050
F 0 "1U5" H 9365 1096 50  0000 L CNN
F 1 "0,1U" H 9365 1005 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9288 900 50  0001 C CNN
F 3 "" H 9250 1050 50  0001 C CNN
	1    9250 1050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR031
U 1 1 5A674CAB
P 9250 1200
F 0 "#PWR031" H 9250 950 50  0001 C CNN
F 1 "GND" H 9255 1027 50  0000 C CNN
F 2 "" H 9250 1200 50  0001 C CNN
F 3 "" H 9250 1200 50  0001 C CNN
	1    9250 1200
	1    0    0    -1  
$EndComp
Text GLabel 4550 1300 2    60   Input ~ 0
reset_in
Text GLabel 2800 1300 0    60   Input ~ 0
OUT_M1
Text GLabel 4550 1500 2    60   Input ~ 0
Step_M1
Text GLabel 2800 1800 0    60   Input ~ 0
CMD_M2
$Comp
L C 1U4
U 1 1 5A674CCD
P 8850 1050
F 0 "1U4" H 8965 1096 50  0000 L CNN
F 1 "0,1U" H 8965 1005 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8888 900 50  0001 C CNN
F 3 "" H 8850 1050 50  0001 C CNN
	1    8850 1050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR032
U 1 1 5A674CDA
P 8850 1200
F 0 "#PWR032" H 8850 950 50  0001 C CNN
F 1 "GND" H 8855 1027 50  0000 C CNN
F 2 "" H 8850 1200 50  0001 C CNN
F 3 "" H 8850 1200 50  0001 C CNN
	1    8850 1200
	1    0    0    -1  
$EndComp
Text GLabel 4550 2100 2    60   Input ~ 0
ENC_B_M2
Text GLabel 4550 2200 2    60   Input ~ 0
ENC_A_M2
Text GLabel 4550 1800 2    60   Input ~ 0
ENC_B_M1
Text GLabel 4550 1900 2    60   Input ~ 0
ENC_A_M1
Text GLabel 2800 2400 0    60   Input ~ 0
SDA
Text GLabel 2800 2300 0    60   Input ~ 0
SCL
Text GLabel 1250 2350 0    60   Input ~ 0
Motor_Input_1A
Text GLabel 1200 3050 0    60   Input ~ 0
Motor_Input_1B
Text GLabel 1250 1650 0    60   Input ~ 0
Motor_Input_2A
Text GLabel 1250 1400 0    60   Input ~ 0
Motor_Input_2B
Text GLabel 4550 1600 2    60   Input ~ 0
Limit_LOWER_M1
Text GLabel 2800 1000 0    60   Input ~ 0
Limit_upper_M2
Text GLabel 4550 1700 2    60   Input ~ 0
Limit_UPPER_M1
Text GLabel 2800 1100 0    60   Input ~ 0
Limit_LOWER_M2
Text GLabel 4550 2300 2    60   Input ~ 0
Rot_Enc_SW
Text GLabel 4550 2400 2    60   Input ~ 0
Rot_Enc_B
Text GLabel 4550 2500 2    60   Input ~ 0
Rot_Enc_A
Text GLabel 4550 1400 2    60   Input ~ 0
CMD_M1
Text GLabel 2800 1700 0    60   Input ~ 0
Step_M2
$Comp
L BluePill_STM32F103C U9
U 1 1 5A679310
P 3700 2200
F 0 "U9" H 3250 850 50  0000 C CNN
F 1 "BluePill_STM32F103C" H 3750 3050 50  0000 C CNN
F 2 "Libs:BluePill_STM32F103C" H 3750 600 50  0001 C CNN
F 3 "www.rogerclark.net" H 3700 700 50  0001 C CNN
	1    3700 2200
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR033
U 1 1 5A679D8E
P 4650 1000
F 0 "#PWR033" H 4650 750 50  0001 C CNN
F 1 "GND" H 4655 827 50  0000 C CNN
F 2 "" H 4650 1000 50  0001 C CNN
F 3 "" H 4650 1000 50  0001 C CNN
	1    4650 1000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4550 1000 4650 1000
Wire Wire Line
	4650 1000 4650 1100
Wire Wire Line
	4650 1100 4550 1100
Connection ~ 4650 1000
$Comp
L GND #PWR034
U 1 1 5A679DFB
P 2800 2800
F 0 "#PWR034" H 2800 2550 50  0001 C CNN
F 1 "GND" H 2805 2627 50  0000 C CNN
F 2 "" H 2800 2800 50  0001 C CNN
F 3 "" H 2800 2800 50  0001 C CNN
	1    2800 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	4550 1200 5100 1200
$Comp
L 74HC14 U10
U 1 1 5A67D171
P 1650 3050
F 0 "U10" H 1800 3150 50  0000 C CNN
F 1 "74HC14" H 1850 2950 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 1650 3050 50  0001 C CNN
F 3 "" H 1650 3050 50  0001 C CNN
	1    1650 3050
	-1   0    0    1   
$EndComp
$Comp
L 74HC14 U10
U 2 1 5A67D1B2
P 1700 2350
F 0 "U10" H 1850 2450 50  0000 C CNN
F 1 "74HC14" H 1900 2250 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 1700 2350 50  0001 C CNN
F 3 "" H 1700 2350 50  0001 C CNN
	2    1700 2350
	-1   0    0    1   
$EndComp
$Comp
L 74HC14 U10
U 5 1 5A67D1FD
P 1700 1400
F 0 "U10" H 1850 1500 50  0000 C CNN
F 1 "74HC14" H 1900 1300 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 1700 1400 50  0001 C CNN
F 3 "" H 1700 1400 50  0001 C CNN
	5    1700 1400
	-1   0    0    1   
$EndComp
$Comp
L 74HC14 U10
U 4 1 5A67D24A
P 1700 1650
F 0 "U10" H 1850 1750 50  0000 C CNN
F 1 "74HC14" H 1900 1550 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 1700 1650 50  0001 C CNN
F 3 "" H 1700 1650 50  0001 C CNN
	4    1700 1650
	-1   0    0    1   
$EndComp
Text GLabel 2800 1200 0    60   Input ~ 0
OUT_M2
Text GLabel 10050 1400 0    60   Input ~ 0
SDA
Text GLabel 10050 1550 0    60   Input ~ 0
SCL
$Comp
L R R16
U 1 1 5A68C9D7
P 10400 1150
F 0 "R16" V 10480 1150 50  0000 C CNN
F 1 "2K" V 10400 1150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 10330 1150 50  0001 C CNN
F 3 "" H 10400 1150 50  0001 C CNN
	1    10400 1150
	1    0    0    -1  
$EndComp
$Comp
L R R17
U 1 1 5A68CA3A
P 10700 1150
F 0 "R17" V 10780 1150 50  0000 C CNN
F 1 "2K" V 10700 1150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 10630 1150 50  0001 C CNN
F 3 "" H 10700 1150 50  0001 C CNN
	1    10700 1150
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR035
U 1 1 5A68CA96
P 10550 900
F 0 "#PWR035" H 10550 750 50  0001 C CNN
F 1 "+3.3V" H 10550 1040 50  0000 C CNN
F 2 "" H 10550 900 50  0001 C CNN
F 3 "" H 10550 900 50  0001 C CNN
	1    10550 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 1000 10700 1000
Wire Wire Line
	10550 1000 10550 900 
Connection ~ 10550 1000
Wire Wire Line
	10400 1300 10400 1400
Wire Wire Line
	10400 1400 10050 1400
Wire Wire Line
	10050 1550 10700 1550
Wire Wire Line
	10700 1550 10700 1300
$Comp
L VCC #PWR036
U 1 1 5A707439
P 6700 1050
F 0 "#PWR036" H 6700 900 50  0001 C CNN
F 1 "VCC" H 6717 1223 50  0000 C CNN
F 2 "" H 6700 1050 50  0001 C CNN
F 3 "" H 6700 1050 50  0001 C CNN
	1    6700 1050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR037
U 1 1 5A70743F
P 6700 1750
F 0 "#PWR037" H 6700 1500 50  0001 C CNN
F 1 "GND" H 6705 1577 50  0000 C CNN
F 2 "" H 6700 1750 50  0001 C CNN
F 3 "" H 6700 1750 50  0001 C CNN
	1    6700 1750
	1    0    0    -1  
$EndComp
Text GLabel 6700 1300 0    60   Input ~ 0
SCL
Text GLabel 6700 1200 0    60   Input ~ 0
SDA
Wire Wire Line
	5100 1200 5100 1050
Wire Wire Line
	2800 2900 2400 2900
$Comp
L +3.3V #PWR038
U 1 1 5A7153CF
P 2400 2900
F 0 "#PWR038" H 2400 2750 50  0001 C CNN
F 1 "+3.3V" H 2400 3040 50  0000 C CNN
F 2 "" H 2400 2900 50  0001 C CNN
F 3 "" H 2400 2900 50  0001 C CNN
	1    2400 2900
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR039
U 1 1 5A715491
P 8850 900
F 0 "#PWR039" H 8850 750 50  0001 C CNN
F 1 "+3.3V" H 8850 1040 50  0000 C CNN
F 2 "" H 8850 900 50  0001 C CNN
F 3 "" H 8850 900 50  0001 C CNN
	1    8850 900 
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR040
U 1 1 5A7154F3
P 8550 900
F 0 "#PWR040" H 8550 750 50  0001 C CNN
F 1 "+3.3V" H 8550 1040 50  0000 C CNN
F 2 "" H 8550 900 50  0001 C CNN
F 3 "" H 8550 900 50  0001 C CNN
	1    8550 900 
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR041
U 1 1 5A715555
P 9250 900
F 0 "#PWR041" H 9250 750 50  0001 C CNN
F 1 "+3.3V" H 9250 1040 50  0000 C CNN
F 2 "" H 9250 900 50  0001 C CNN
F 3 "" H 9250 900 50  0001 C CNN
	1    9250 900 
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR042
U 1 1 5A71590E
P 5100 1050
F 0 "#PWR042" H 5100 900 50  0001 C CNN
F 1 "+3.3V" H 5100 1190 50  0000 C CNN
F 2 "" H 5100 1050 50  0001 C CNN
F 3 "" H 5100 1050 50  0001 C CNN
	1    5100 1050
	1    0    0    -1  
$EndComp
$Comp
L 74HC14 U10
U 6 1 5A715D65
P 10550 2600
F 0 "U10" H 10700 2700 50  0000 C CNN
F 1 "74HC14" H 10750 2500 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 10550 2600 50  0001 C CNN
F 3 "" H 10550 2600 50  0001 C CNN
	6    10550 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 2400 10500 2500
$Comp
L GND #PWR043
U 1 1 5A7162E9
P 10500 2750
F 0 "#PWR043" H 10500 2500 50  0001 C CNN
F 1 "GND" H 10505 2577 50  0000 C CNN
F 2 "" H 10500 2750 50  0001 C CNN
F 3 "" H 10500 2750 50  0001 C CNN
	1    10500 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 2700 10500 2750
Text Notes 6200 6100 0    60   ~ 0
int motor2_input1 = PA8;\nint motor2_input2 = PA10;\nint motor1_input1 = PB8;\nint motor1_input2 = PB9;\n\nint step_M1 = PB10;\nint cmd_M1 = PB11;\nint step_M2 = PA11;\nint cmd_M2 = PA12;\n\nconst int limitUpper_M1 = PB0;\nconst int limitLower_M1= PB1;\nconst int limitUpper_M2 = PB12;\nconst int limitLower_M2 = PB13;\n\nconst int out_M1 = PB15;\nconst int out_M2 = PB14;\n\nint motor2_Enc_A = PA3;\nint motor2_Enc_B = PA4;\nint motor1_Enc_A = PA6;\nint motor1_Enc_B = PA7;\nint rot_EncA = PA0;\nint rot_EncB = PA1;\nint rot_EncBTN = PA2;\n
Wire Wire Line
	2150 1400 2800 1400
Wire Wire Line
	2800 1600 2150 1600
Wire Wire Line
	2150 1600 2150 1650
Wire Wire Line
	2350 2500 2800 2500
Wire Wire Line
	2350 2350 2350 2500
Wire Wire Line
	2100 2600 2800 2600
$Comp
L VDD #PWR044
U 1 1 5A7C31A2
P 10500 2300
F 0 "#PWR044" H 10500 2150 50  0001 C CNN
F 1 "+5V" H 10500 2450 50  0000 C CNN
F 2 "" H 10500 2300 50  0001 C CNN
F 3 "" H 10500 2300 50  0001 C CNN
	1    10500 2300
	1    0    0    -1  
$EndComp
Text GLabel 2800 1900 0    60   Input ~ 0
LED
Wire Wire Line
	2150 2350 2350 2350
Wire Wire Line
	2100 3050 2100 2600
Text GLabel 6700 1500 0    60   Input ~ 0
Rot_Enc_A
Text GLabel 6700 1600 0    60   Input ~ 0
Rot_Enc_B
Text GLabel 6700 1400 0    60   Input ~ 0
Rot_Enc_SW
$Comp
L Conn_01x07 J2
U 1 1 5A8AB16A
P 6900 1400
F 0 "J2" H 6900 1800 50  0000 C CNN
F 1 "LCD_and_RotEnc" V 7050 1400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x07_Pitch2.54mm" H 6900 1400 50  0001 C CNN
F 3 "" H 6900 1400 50  0001 C CNN
	1    6900 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 1750 6700 1700
Wire Wire Line
	6700 1050 6700 1100
$EndSCHEMATC
