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
Sheet 6 6
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
L ROTARY-ENCODER-Ebay ROT?
U 1 1 5A83471A
P 6050 3650
F 0 "ROT?" H 5960 3900 60  0000 C CNN
F 1 "ROTARY-ENCODER" V 6300 3100 60  0000 C CNN
F 2 "Libs:ROTARY-ENCODER-Ebay" H 6050 3650 60  0001 C CNN
F 3 "" H 6050 3650 60  0000 C CNN
	1    6050 3650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5A834721
P 5700 3800
F 0 "#PWR?" H 5700 3550 50  0001 C CNN
F 1 "GND" H 5705 3627 50  0000 C CNN
F 2 "" H 5700 3800 50  0001 C CNN
F 3 "" H 5700 3800 50  0001 C CNN
	1    5700 3800
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x04 J?
U 1 1 5A834727
P 3850 4700
F 0 "J?" H 3850 4900 50  0000 C CNN
F 1 "LCD4x20" V 4000 4650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 3850 4700 50  0001 C CNN
F 3 "" H 3850 4700 50  0001 C CNN
	1    3850 4700
	1    0    0    -1  
$EndComp
$Comp
L C 1U?
U 1 1 5A83472E
P 4550 4900
F 0 "1U?" H 4665 4946 50  0000 L CNN
F 1 "0,1U" H 4665 4855 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4588 4750 50  0001 C CNN
F 3 "" H 4550 4900 50  0001 C CNN
	1    4550 4900
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 5A834735
P 4550 4750
F 0 "#PWR?" H 4550 4600 50  0001 C CNN
F 1 "VCC" H 4567 4923 50  0000 C CNN
F 2 "" H 4550 4750 50  0001 C CNN
F 3 "" H 4550 4750 50  0001 C CNN
	1    4550 4750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5A83473B
P 4550 5050
F 0 "#PWR?" H 4550 4800 50  0001 C CNN
F 1 "GND" H 4555 4877 50  0000 C CNN
F 2 "" H 4550 5050 50  0001 C CNN
F 3 "" H 4550 5050 50  0001 C CNN
	1    4550 5050
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 5A834741
P 3650 4600
F 0 "#PWR?" H 3650 4450 50  0001 C CNN
F 1 "VCC" H 3667 4773 50  0000 C CNN
F 2 "" H 3650 4600 50  0001 C CNN
F 3 "" H 3650 4600 50  0001 C CNN
	1    3650 4600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5A834747
P 3650 4900
F 0 "#PWR?" H 3650 4650 50  0001 C CNN
F 1 "GND" H 3655 4727 50  0000 C CNN
F 2 "" H 3650 4900 50  0001 C CNN
F 3 "" H 3650 4900 50  0001 C CNN
	1    3650 4900
	1    0    0    -1  
$EndComp
Text GLabel 3650 4700 0    60   Input ~ 0
SCL
Text GLabel 3650 4800 0    60   Input ~ 0
SDA
$Comp
L R R?
U 1 1 5A83474F
P 5650 3350
F 0 "R?" V 5730 3350 50  0000 C CNN
F 1 "10K" V 5650 3350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5580 3350 50  0001 C CNN
F 3 "" H 5650 3350 50  0001 C CNN
	1    5650 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 3550 5700 3550
Wire Wire Line
	5650 3550 5650 3500
Text GLabel 3800 3550 0    60   Input ~ 0
Rot_Enc_SW
$Comp
L 74HC14 U?
U 1 1 5A834759
P 8250 3550
F 0 "U?" H 8400 3650 50  0000 C CNN
F 1 "74HC14" H 8450 3450 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 8250 3550 50  0001 C CNN
F 3 "" H 8250 3550 50  0001 C CNN
	1    8250 3550
	1    0    0    -1  
$EndComp
$Comp
L 74HC14 U?
U 1 1 5A834760
P 8200 4600
F 0 "U?" H 8350 4700 50  0000 C CNN
F 1 "74HC14" H 8400 4500 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 8200 4600 50  0001 C CNN
F 3 "" H 8200 4600 50  0001 C CNN
	1    8200 4600
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5A834767
P 6600 4400
F 0 "R?" V 6680 4400 50  0000 C CNN
F 1 "10K" V 6600 4400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6530 4400 50  0001 C CNN
F 3 "" H 6600 4400 50  0001 C CNN
	1    6600 4400
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5A83476E
P 7300 4850
F 0 "C?" H 7415 4896 50  0000 L CNN
F 1 "0.1uF" H 7415 4805 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7338 4700 50  0001 C CNN
F 3 "" H 7300 4850 50  0001 C CNN
	1    7300 4850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5A834775
P 7300 5100
F 0 "#PWR?" H 7300 4850 50  0001 C CNN
F 1 "GND" H 7305 4927 50  0000 C CNN
F 2 "" H 7300 5100 50  0001 C CNN
F 3 "" H 7300 5100 50  0001 C CNN
	1    7300 5100
	1    0    0    -1  
$EndComp
$Comp
L D D?
U 1 1 5A83477B
P 7050 4400
F 0 "D?" H 7050 4184 50  0000 C CNN
F 1 "1m4148" H 7050 4275 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF_Handsoldering" H 7050 4400 50  0001 C CNN
F 3 "" H 7050 4400 50  0001 C CNN
	1    7050 4400
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 5A834782
P 7050 4600
F 0 "R?" V 6950 4650 50  0000 C CNN
F 1 "10K" V 7050 4600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6980 4600 50  0001 C CNN
F 3 "" H 7050 4600 50  0001 C CNN
	1    7050 4600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6400 4600 6900 4600
Wire Wire Line
	7200 4600 7750 4600
Connection ~ 7300 4600
Wire Wire Line
	7200 4400 7300 4400
Wire Wire Line
	6900 4400 6850 4400
Wire Wire Line
	6850 4400 6850 4600
Connection ~ 6850 4600
$Comp
L C C?
U 1 1 5A834790
P 7350 3850
F 0 "C?" H 7465 3896 50  0000 L CNN
F 1 "0.1uF" H 7465 3805 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7388 3700 50  0001 C CNN
F 3 "" H 7350 3850 50  0001 C CNN
	1    7350 3850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5A834797
P 7350 4100
F 0 "#PWR?" H 7350 3850 50  0001 C CNN
F 1 "GND" H 7355 3927 50  0000 C CNN
F 2 "" H 7350 4100 50  0001 C CNN
F 3 "" H 7350 4100 50  0001 C CNN
	1    7350 4100
	1    0    0    -1  
$EndComp
$Comp
L D D?
U 1 1 5A83479D
P 7100 3350
F 0 "D?" H 7100 3134 50  0000 C CNN
F 1 "1m4148" H 7100 3225 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF_Handsoldering" H 7100 3350 50  0001 C CNN
F 3 "" H 7100 3350 50  0001 C CNN
	1    7100 3350
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 5A8347A4
P 7100 3550
F 0 "R?" V 7000 3600 50  0000 C CNN
F 1 "10K" V 7100 3550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7030 3550 50  0001 C CNN
F 3 "" H 7100 3550 50  0001 C CNN
	1    7100 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6400 3550 6950 3550
Wire Wire Line
	7250 3550 7800 3550
Wire Wire Line
	7350 3350 7350 3700
Wire Wire Line
	7350 4000 7350 4100
Connection ~ 7350 3550
Wire Wire Line
	7250 3350 7350 3350
Wire Wire Line
	6950 3350 6900 3350
Wire Wire Line
	6900 3350 6900 3550
Connection ~ 6900 3550
$Comp
L R R?
U 1 1 5A8347B4
P 6650 3250
F 0 "R?" V 6730 3250 50  0000 C CNN
F 1 "10K" V 6650 3250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6580 3250 50  0001 C CNN
F 3 "" H 6650 3250 50  0001 C CNN
	1    6650 3250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5A8347BB
P 6600 3650
F 0 "#PWR?" H 6600 3400 50  0001 C CNN
F 1 "GND" H 6605 3477 50  0000 C CNN
F 2 "" H 6600 3650 50  0001 C CNN
F 3 "" H 6600 3650 50  0001 C CNN
	1    6600 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 3650 6600 3650
Wire Wire Line
	6650 3400 6650 3550
Connection ~ 6650 3550
Wire Wire Line
	6400 3750 6400 4600
Wire Wire Line
	6600 4550 6600 4600
Connection ~ 6600 4600
Wire Wire Line
	9000 3550 8700 3550
Wire Wire Line
	6600 4250 6600 4200
$Comp
L 74HC14 U?
U 1 1 5A8347C9
P 4250 3550
F 0 "U?" H 4400 3650 50  0000 C CNN
F 1 "74HC14" H 4450 3450 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 4250 3550 50  0001 C CNN
F 3 "" H 4250 3550 50  0001 C CNN
	1    4250 3550
	-1   0    0    1   
$EndComp
$Comp
L C C?
U 1 1 5A8347D0
P 5200 3850
F 0 "C?" H 5315 3896 50  0000 L CNN
F 1 "0.1uF" H 5315 3805 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5238 3700 50  0001 C CNN
F 3 "" H 5200 3850 50  0001 C CNN
	1    5200 3850
	1    0    0    -1  
$EndComp
$Comp
L D D?
U 1 1 5A8347D7
P 4950 3350
F 0 "D?" H 4950 3600 50  0000 C CNN
F 1 "1m4148" H 4950 3500 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF_Handsoldering" H 4950 3350 50  0001 C CNN
F 3 "" H 4950 3350 50  0001 C CNN
	1    4950 3350
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5A8347DE
P 4950 3550
F 0 "R?" V 4850 3600 50  0000 C CNN
F 1 "10K" V 4950 3550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4880 3550 50  0001 C CNN
F 3 "" H 4950 3550 50  0001 C CNN
	1    4950 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5200 3350 5200 3700
Wire Wire Line
	5200 4000 5200 4100
Connection ~ 5200 3550
Wire Wire Line
	5100 3350 5200 3350
Wire Wire Line
	4800 3350 4750 3350
Wire Wire Line
	4750 3350 4750 3550
Connection ~ 4750 3550
Wire Wire Line
	5700 3750 5700 3800
Wire Wire Line
	4700 3550 4800 3550
$Comp
L GND #PWR?
U 1 1 5A8347EE
P 5200 4100
F 0 "#PWR?" H 5200 3850 50  0001 C CNN
F 1 "GND" H 5205 3927 50  0000 C CNN
F 2 "" H 5200 4100 50  0001 C CNN
F 3 "" H 5200 4100 50  0001 C CNN
	1    5200 4100
	1    0    0    -1  
$EndComp
Text GLabel 9000 3550 2    60   Input ~ 0
Rot_Enc_A
Text GLabel 8950 4600 2    60   Input ~ 0
Rot_Enc_B
Wire Wire Line
	8650 4600 8950 4600
Wire Notes Line
	2950 2650 2950 5350
Wire Notes Line
	2950 5350 10100 5350
Wire Notes Line
	10100 5350 10100 2650
Wire Wire Line
	7300 4400 7300 4700
Wire Wire Line
	7300 5000 7300 5100
$Comp
L C 1U?
U 1 1 5A8347FC
P 7700 3100
F 0 "1U?" H 7815 3146 50  0000 L CNN
F 1 "0,1U" H 7815 3055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7738 2950 50  0001 C CNN
F 3 "" H 7700 3100 50  0001 C CNN
	1    7700 3100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5A834803
P 7700 3250
F 0 "#PWR?" H 7700 3000 50  0001 C CNN
F 1 "GND" H 7705 3077 50  0000 C CNN
F 2 "" H 7700 3250 50  0001 C CNN
F 3 "" H 7700 3250 50  0001 C CNN
	1    7700 3250
	1    0    0    -1  
$EndComp
Connection ~ 5650 3550
$Comp
L +3.3V #PWR?
U 1 1 5A83480A
P 5650 3200
F 0 "#PWR?" H 5650 3050 50  0001 C CNN
F 1 "+3.3V" H 5650 3340 50  0000 C CNN
F 2 "" H 5650 3200 50  0001 C CNN
F 3 "" H 5650 3200 50  0001 C CNN
	1    5650 3200
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 5A834810
P 6600 4200
F 0 "#PWR?" H 6600 4050 50  0001 C CNN
F 1 "+3.3V" H 6600 4340 50  0000 C CNN
F 2 "" H 6600 4200 50  0001 C CNN
F 3 "" H 6600 4200 50  0001 C CNN
	1    6600 4200
	1    0    0    -1  
$EndComp
$EndSCHEMATC
