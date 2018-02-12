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
P 9350 1000
F 0 "1U5" H 9465 1046 50  0000 L CNN
F 1 "0,1U" H 9465 955 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9388 850 50  0001 C CNN
F 3 "" H 9350 1000 50  0001 C CNN
	1    9350 1000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR031
U 1 1 5A674CAB
P 9350 1150
F 0 "#PWR031" H 9350 900 50  0001 C CNN
F 1 "GND" H 9355 977 50  0000 C CNN
F 2 "" H 9350 1150 50  0001 C CNN
F 3 "" H 9350 1150 50  0001 C CNN
	1    9350 1150
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
Text GLabel 4550 2000 2    60   Input ~ 0
LED
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
L ROTARY-ENCODER-Ebay ROT1
U 1 1 5A707412
P 7100 4800
F 0 "ROT1" H 7010 5050 60  0000 C CNN
F 1 "ROTARY-ENCODER" V 7350 4250 60  0000 C CNN
F 2 "Libs:ROTARY-ENCODER-Ebay" H 7100 4800 60  0001 C CNN
F 3 "" H 7100 4800 60  0000 C CNN
	1    7100 4800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR036
U 1 1 5A707419
P 6750 4950
F 0 "#PWR036" H 6750 4700 50  0001 C CNN
F 1 "GND" H 6755 4777 50  0000 C CNN
F 2 "" H 6750 4950 50  0001 C CNN
F 3 "" H 6750 4950 50  0001 C CNN
	1    6750 4950
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x04 J2
U 1 1 5A70741F
P 4900 5850
F 0 "J2" H 4900 6050 50  0000 C CNN
F 1 "LCD4x20" V 5050 5800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 4900 5850 50  0001 C CNN
F 3 "" H 4900 5850 50  0001 C CNN
	1    4900 5850
	1    0    0    -1  
$EndComp
$Comp
L C 1U6
U 1 1 5A707426
P 5600 6050
F 0 "1U6" H 5715 6096 50  0000 L CNN
F 1 "0,1U" H 5715 6005 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5638 5900 50  0001 C CNN
F 3 "" H 5600 6050 50  0001 C CNN
	1    5600 6050
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR037
U 1 1 5A70742D
P 5600 5900
F 0 "#PWR037" H 5600 5750 50  0001 C CNN
F 1 "VCC" H 5617 6073 50  0000 C CNN
F 2 "" H 5600 5900 50  0001 C CNN
F 3 "" H 5600 5900 50  0001 C CNN
	1    5600 5900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR038
U 1 1 5A707433
P 5600 6200
F 0 "#PWR038" H 5600 5950 50  0001 C CNN
F 1 "GND" H 5605 6027 50  0000 C CNN
F 2 "" H 5600 6200 50  0001 C CNN
F 3 "" H 5600 6200 50  0001 C CNN
	1    5600 6200
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR039
U 1 1 5A707439
P 4700 5750
F 0 "#PWR039" H 4700 5600 50  0001 C CNN
F 1 "VCC" H 4717 5923 50  0000 C CNN
F 2 "" H 4700 5750 50  0001 C CNN
F 3 "" H 4700 5750 50  0001 C CNN
	1    4700 5750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR040
U 1 1 5A70743F
P 4700 6050
F 0 "#PWR040" H 4700 5800 50  0001 C CNN
F 1 "GND" H 4705 5877 50  0000 C CNN
F 2 "" H 4700 6050 50  0001 C CNN
F 3 "" H 4700 6050 50  0001 C CNN
	1    4700 6050
	1    0    0    -1  
$EndComp
Text GLabel 4700 5850 0    60   Input ~ 0
SCL
Text GLabel 4700 5950 0    60   Input ~ 0
SDA
$Comp
L R R19
U 1 1 5A707447
P 6700 4500
F 0 "R19" V 6780 4500 50  0000 C CNN
F 1 "10K" V 6700 4500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6630 4500 50  0001 C CNN
F 3 "" H 6700 4500 50  0001 C CNN
	1    6700 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 4700 6750 4700
Wire Wire Line
	6700 4700 6700 4650
Text GLabel 4850 4700 0    60   Input ~ 0
Rot_Enc_SW
$Comp
L 74HC14 U11
U 1 1 5A707457
P 9300 4700
F 0 "U11" H 9450 4800 50  0000 C CNN
F 1 "74HC14" H 9500 4600 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 9300 4700 50  0001 C CNN
F 3 "" H 9300 4700 50  0001 C CNN
	1    9300 4700
	1    0    0    -1  
$EndComp
$Comp
L 74HC14 U11
U 2 1 5A70745E
P 9250 5750
F 0 "U11" H 9400 5850 50  0000 C CNN
F 1 "74HC14" H 9450 5650 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 9250 5750 50  0001 C CNN
F 3 "" H 9250 5750 50  0001 C CNN
	2    9250 5750
	1    0    0    -1  
$EndComp
$Comp
L R R20
U 1 1 5A707465
P 7650 5550
F 0 "R20" V 7730 5550 50  0000 C CNN
F 1 "10K" V 7650 5550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7580 5550 50  0001 C CNN
F 3 "" H 7650 5550 50  0001 C CNN
	1    7650 5550
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 5A70746C
P 8350 6000
F 0 "C7" H 8465 6046 50  0000 L CNN
F 1 "0.1uF" H 8465 5955 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8388 5850 50  0001 C CNN
F 3 "" H 8350 6000 50  0001 C CNN
	1    8350 6000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR041
U 1 1 5A707473
P 8350 6250
F 0 "#PWR041" H 8350 6000 50  0001 C CNN
F 1 "GND" H 8355 6077 50  0000 C CNN
F 2 "" H 8350 6250 50  0001 C CNN
F 3 "" H 8350 6250 50  0001 C CNN
	1    8350 6250
	1    0    0    -1  
$EndComp
$Comp
L D D11
U 1 1 5A707479
P 8100 5550
F 0 "D11" H 8100 5334 50  0000 C CNN
F 1 "1m4148" H 8100 5425 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF_Handsoldering" H 8100 5550 50  0001 C CNN
F 3 "" H 8100 5550 50  0001 C CNN
	1    8100 5550
	-1   0    0    1   
$EndComp
$Comp
L R R22
U 1 1 5A707480
P 8100 5750
F 0 "R22" V 8000 5800 50  0000 C CNN
F 1 "10K" V 8100 5750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8030 5750 50  0001 C CNN
F 3 "" H 8100 5750 50  0001 C CNN
	1    8100 5750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7450 5750 7950 5750
Wire Wire Line
	8250 5750 8800 5750
Connection ~ 8350 5750
Wire Wire Line
	8250 5550 8350 5550
Wire Wire Line
	7950 5550 7900 5550
Wire Wire Line
	7900 5550 7900 5750
Connection ~ 7900 5750
$Comp
L C C8
U 1 1 5A70748E
P 8400 5000
F 0 "C8" H 8515 5046 50  0000 L CNN
F 1 "0.1uF" H 8515 4955 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8438 4850 50  0001 C CNN
F 3 "" H 8400 5000 50  0001 C CNN
	1    8400 5000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR042
U 1 1 5A707495
P 8400 5250
F 0 "#PWR042" H 8400 5000 50  0001 C CNN
F 1 "GND" H 8405 5077 50  0000 C CNN
F 2 "" H 8400 5250 50  0001 C CNN
F 3 "" H 8400 5250 50  0001 C CNN
	1    8400 5250
	1    0    0    -1  
$EndComp
$Comp
L D D12
U 1 1 5A70749B
P 8150 4500
F 0 "D12" H 8150 4284 50  0000 C CNN
F 1 "1m4148" H 8150 4375 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF_Handsoldering" H 8150 4500 50  0001 C CNN
F 3 "" H 8150 4500 50  0001 C CNN
	1    8150 4500
	-1   0    0    1   
$EndComp
$Comp
L R R23
U 1 1 5A7074A2
P 8150 4700
F 0 "R23" V 8050 4750 50  0000 C CNN
F 1 "10K" V 8150 4700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8080 4700 50  0001 C CNN
F 3 "" H 8150 4700 50  0001 C CNN
	1    8150 4700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7450 4700 8000 4700
Wire Wire Line
	8300 4700 8850 4700
Wire Wire Line
	8400 4500 8400 4850
Wire Wire Line
	8400 5150 8400 5250
Connection ~ 8400 4700
Wire Wire Line
	8300 4500 8400 4500
Wire Wire Line
	8000 4500 7950 4500
Wire Wire Line
	7950 4500 7950 4700
Connection ~ 7950 4700
$Comp
L R R21
U 1 1 5A7074B8
P 7700 4400
F 0 "R21" V 7780 4400 50  0000 C CNN
F 1 "10K" V 7700 4400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7630 4400 50  0001 C CNN
F 3 "" H 7700 4400 50  0001 C CNN
	1    7700 4400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR043
U 1 1 5A7074C5
P 7650 4800
F 0 "#PWR043" H 7650 4550 50  0001 C CNN
F 1 "GND" H 7655 4627 50  0000 C CNN
F 2 "" H 7650 4800 50  0001 C CNN
F 3 "" H 7650 4800 50  0001 C CNN
	1    7650 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 4800 7650 4800
Wire Wire Line
	7700 4550 7700 4700
Connection ~ 7700 4700
Wire Wire Line
	7700 4250 7700 4200
Wire Wire Line
	7450 4900 7450 5750
Wire Wire Line
	7650 5700 7650 5750
Connection ~ 7650 5750
Wire Wire Line
	10050 4700 9750 4700
Wire Wire Line
	7650 5400 7650 5350
$Comp
L 74HC14 U11
U 3 1 5A7074D4
P 5300 4700
F 0 "U11" H 5450 4800 50  0000 C CNN
F 1 "74HC14" H 5500 4600 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 5300 4700 50  0001 C CNN
F 3 "" H 5300 4700 50  0001 C CNN
	3    5300 4700
	-1   0    0    1   
$EndComp
$Comp
L C C6
U 1 1 5A7074DB
P 6250 5000
F 0 "C6" H 6365 5046 50  0000 L CNN
F 1 "0.1uF" H 6365 4955 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6288 4850 50  0001 C CNN
F 3 "" H 6250 5000 50  0001 C CNN
	1    6250 5000
	1    0    0    -1  
$EndComp
$Comp
L D D10
U 1 1 5A7074E2
P 6000 4500
F 0 "D10" H 6000 4750 50  0000 C CNN
F 1 "1m4148" H 6000 4650 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF_Handsoldering" H 6000 4500 50  0001 C CNN
F 3 "" H 6000 4500 50  0001 C CNN
	1    6000 4500
	1    0    0    -1  
$EndComp
$Comp
L R R18
U 1 1 5A7074E9
P 6000 4700
F 0 "R18" V 5900 4750 50  0000 C CNN
F 1 "10K" V 6000 4700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5930 4700 50  0001 C CNN
F 3 "" H 6000 4700 50  0001 C CNN
	1    6000 4700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6250 4500 6250 4850
Wire Wire Line
	6250 5150 6250 5250
Connection ~ 6250 4700
Wire Wire Line
	6150 4500 6250 4500
Wire Wire Line
	5850 4500 5800 4500
Wire Wire Line
	5800 4500 5800 4700
Connection ~ 5800 4700
Wire Wire Line
	6750 4900 6750 4950
Wire Wire Line
	5750 4700 5850 4700
$Comp
L GND #PWR044
U 1 1 5A7074F9
P 6250 5250
F 0 "#PWR044" H 6250 5000 50  0001 C CNN
F 1 "GND" H 6255 5077 50  0000 C CNN
F 2 "" H 6250 5250 50  0001 C CNN
F 3 "" H 6250 5250 50  0001 C CNN
	1    6250 5250
	1    0    0    -1  
$EndComp
Text GLabel 10050 4700 2    60   Input ~ 0
Rot_Enc_A
Text GLabel 10000 5750 2    60   Input ~ 0
Rot_Enc_B
Wire Wire Line
	9700 5750 10000 5750
Wire Notes Line
	4000 3800 4000 6500
Wire Notes Line
	4000 6500 11150 6500
Wire Notes Line
	11150 6500 11150 3800
Wire Notes Line
	11150 3800 4000 3800
Wire Wire Line
	8350 5550 8350 5850
Wire Wire Line
	8350 6150 8350 6250
Text Notes 9800 4100 0    60   ~ 0
Menu encoder and display
$Comp
L C 1U7
U 1 1 5A707509
P 8750 4250
F 0 "1U7" H 8865 4296 50  0000 L CNN
F 1 "0,1U" H 8865 4205 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8788 4100 50  0001 C CNN
F 3 "" H 8750 4250 50  0001 C CNN
	1    8750 4250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR045
U 1 1 5A707516
P 8750 4400
F 0 "#PWR045" H 8750 4150 50  0001 C CNN
F 1 "GND" H 8755 4227 50  0000 C CNN
F 2 "" H 8750 4400 50  0001 C CNN
F 3 "" H 8750 4400 50  0001 C CNN
	1    8750 4400
	1    0    0    -1  
$EndComp
Connection ~ 6700 4700
Wire Wire Line
	5100 1200 5100 1050
Wire Wire Line
	2800 2900 2400 2900
$Comp
L +3.3V #PWR046
U 1 1 5A7153CF
P 2400 2900
F 0 "#PWR046" H 2400 2750 50  0001 C CNN
F 1 "+3.3V" H 2400 3040 50  0000 C CNN
F 2 "" H 2400 2900 50  0001 C CNN
F 3 "" H 2400 2900 50  0001 C CNN
	1    2400 2900
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR047
U 1 1 5A715491
P 8850 900
F 0 "#PWR047" H 8850 750 50  0001 C CNN
F 1 "+3.3V" H 8850 1040 50  0000 C CNN
F 2 "" H 8850 900 50  0001 C CNN
F 3 "" H 8850 900 50  0001 C CNN
	1    8850 900 
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR048
U 1 1 5A7154F3
P 8550 900
F 0 "#PWR048" H 8550 750 50  0001 C CNN
F 1 "+3.3V" H 8550 1040 50  0000 C CNN
F 2 "" H 8550 900 50  0001 C CNN
F 3 "" H 8550 900 50  0001 C CNN
	1    8550 900 
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR049
U 1 1 5A715555
P 9350 850
F 0 "#PWR049" H 9350 700 50  0001 C CNN
F 1 "+3.3V" H 9350 990 50  0000 C CNN
F 2 "" H 9350 850 50  0001 C CNN
F 3 "" H 9350 850 50  0001 C CNN
	1    9350 850 
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR050
U 1 1 5A71590E
P 5100 1050
F 0 "#PWR050" H 5100 900 50  0001 C CNN
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
L GND #PWR051
U 1 1 5A7162E9
P 10500 2750
F 0 "#PWR051" H 10500 2500 50  0001 C CNN
F 1 "GND" H 10505 2577 50  0000 C CNN
F 2 "" H 10500 2750 50  0001 C CNN
F 3 "" H 10500 2750 50  0001 C CNN
	1    10500 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 2700 10500 2750
Text Notes 6150 3300 0    60   ~ 0
int motor2_input1 = PA8;\nint motor2_input2 = PA10;\nint motor1_input1 = PB8;\nint motor1_input2 = PB9;\n\nint step_M1 = PB10;\nint cmd_M1 = PB11;\nint step_M2 = PA11;\nint cmd_M2 = PA12;\n\nconst int limitUpper_M1 = PB0;\nconst int limitLower_M1= PB1;\nconst int limitUpper_M2 = PB12;\nconst int limitLower_M2 = PB13;\n\nconst int out_M1 = PB15;\nconst int out_M2 = PB14;\n\nint motor2_Enc_A = PA3;\nint motor2_Enc_B = PA4;\nint motor1_Enc_A = PA6;\nint motor1_Enc_B = PA7;\nint rot_EncA = PA0;\nint rot_EncB = PA1;\nint rot_EncBTN = PA2;\n
$Comp
L +3.3V #PWR052
U 1 1 5A7C2226
P 6700 4350
F 0 "#PWR052" H 6700 4200 50  0001 C CNN
F 1 "+3.3V" H 6700 4490 50  0000 C CNN
F 2 "" H 6700 4350 50  0001 C CNN
F 3 "" H 6700 4350 50  0001 C CNN
	1    6700 4350
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR053
U 1 1 5A7C22E5
P 7700 4200
F 0 "#PWR053" H 7700 4050 50  0001 C CNN
F 1 "+3.3V" H 7700 4340 50  0000 C CNN
F 2 "" H 7700 4200 50  0001 C CNN
F 3 "" H 7700 4200 50  0001 C CNN
	1    7700 4200
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR054
U 1 1 5A7C234A
P 8750 4100
F 0 "#PWR054" H 8750 3950 50  0001 C CNN
F 1 "+3.3V" H 8750 4240 50  0000 C CNN
F 2 "" H 8750 4100 50  0001 C CNN
F 3 "" H 8750 4100 50  0001 C CNN
	1    8750 4100
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR055
U 1 1 5A7C2463
P 7650 5350
F 0 "#PWR055" H 7650 5200 50  0001 C CNN
F 1 "+3.3V" H 7650 5490 50  0000 C CNN
F 2 "" H 7650 5350 50  0001 C CNN
F 3 "" H 7650 5350 50  0001 C CNN
	1    7650 5350
	1    0    0    -1  
$EndComp
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
L VDD #PWR056
U 1 1 5A7C31A2
P 10500 2300
F 0 "#PWR056" H 10500 2150 50  0001 C CNN
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
$EndSCHEMATC
