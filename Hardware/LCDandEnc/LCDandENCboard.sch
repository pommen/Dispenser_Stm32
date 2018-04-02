EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
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
LIBS:LCDandENCboard-cache
EELAYER 25 0
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
L ROTARY-ENCODER-Ebay ROT1
U 1 1 5A8367FD
P 6050 3650
F 0 "ROT1" H 5960 3900 60  0000 C CNN
F 1 "ROTARY-ENCODER" V 6300 3100 60  0000 C CNN
F 2 "Libs:ROTARY-ENCODER-Ebay" H 6050 3650 60  0001 C CNN
F 3 "" H 6050 3650 60  0000 C CNN
	1    6050 3650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 5A8367FE
P 5700 3800
F 0 "#PWR01" H 5700 3550 50  0001 C CNN
F 1 "GND" H 5705 3627 50  0000 C CNN
F 2 "" H 5700 3800 50  0001 C CNN
F 3 "" H 5700 3800 50  0001 C CNN
	1    5700 3800
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x04 J2
U 1 1 5A8367FF
P 1800 4150
F 0 "J2" H 1800 4350 50  0000 C CNN
F 1 "LCD4x20" V 1950 4100 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 1800 4150 50  0001 C CNN
F 3 "" H 1800 4150 50  0001 C CNN
	1    1800 4150
	1    0    0    -1  
$EndComp
$Comp
L C 1U1
U 1 1 5A836800
P 4300 4050
F 0 "1U1" H 4415 4096 50  0000 L CNN
F 1 "0,1U" H 4415 4005 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4338 3900 50  0001 C CNN
F 3 "" H 4300 4050 50  0001 C CNN
	1    4300 4050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5A836802
P 4300 4200
F 0 "#PWR02" H 4300 3950 50  0001 C CNN
F 1 "GND" H 4305 4027 50  0000 C CNN
F 2 "" H 4300 4200 50  0001 C CNN
F 3 "" H 4300 4200 50  0001 C CNN
	1    4300 4200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5A836804
P 1600 4150
F 0 "#PWR03" H 1600 3900 50  0001 C CNN
F 1 "GND" H 1605 3977 50  0000 C CNN
F 2 "" H 1600 4150 50  0001 C CNN
F 3 "" H 1600 4150 50  0001 C CNN
	1    1600 4150
	0    1    1    0   
$EndComp
Text GLabel 1600 4350 0    60   Input ~ 0
SCL
Text GLabel 1600 4250 0    60   Input ~ 0
SDA
$Comp
L R R2
U 1 1 5A836805
P 5650 3350
F 0 "R2" V 5730 3350 50  0000 C CNN
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
L 74HC14 U1
U 3 1 5A836806
P 8250 3550
F 0 "U1" H 8400 3650 50  0000 C CNN
F 1 "74HC14" H 8450 3450 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 8250 3550 50  0001 C CNN
F 3 "" H 8250 3550 50  0001 C CNN
	3    8250 3550
	1    0    0    -1  
$EndComp
$Comp
L 74HC14 U1
U 4 1 5A836807
P 8200 4600
F 0 "U1" H 8350 4700 50  0000 C CNN
F 1 "74HC14" H 8400 4500 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 8200 4600 50  0001 C CNN
F 3 "" H 8200 4600 50  0001 C CNN
	4    8200 4600
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5A836808
P 6600 4400
F 0 "R3" V 6680 4400 50  0000 C CNN
F 1 "10K" V 6600 4400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6530 4400 50  0001 C CNN
F 3 "" H 6600 4400 50  0001 C CNN
	1    6600 4400
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5A836809
P 7300 4850
F 0 "C2" H 7415 4896 50  0000 L CNN
F 1 "0.1uF" H 7415 4805 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7338 4700 50  0001 C CNN
F 3 "" H 7300 4850 50  0001 C CNN
	1    7300 4850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 5A83680A
P 7300 5100
F 0 "#PWR04" H 7300 4850 50  0001 C CNN
F 1 "GND" H 7305 4927 50  0000 C CNN
F 2 "" H 7300 5100 50  0001 C CNN
F 3 "" H 7300 5100 50  0001 C CNN
	1    7300 5100
	1    0    0    -1  
$EndComp
$Comp
L D D2
U 1 1 5A83680B
P 7050 4400
F 0 "D2" H 7050 4184 50  0000 C CNN
F 1 "1m4148" H 7050 4275 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF_Handsoldering" H 7050 4400 50  0001 C CNN
F 3 "" H 7050 4400 50  0001 C CNN
	1    7050 4400
	-1   0    0    1   
$EndComp
$Comp
L R R5
U 1 1 5A83680C
P 7050 4600
F 0 "R5" V 6950 4650 50  0000 C CNN
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
L C C3
U 1 1 5A83680D
P 7350 3850
F 0 "C3" H 7465 3896 50  0000 L CNN
F 1 "0.1uF" H 7465 3805 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7388 3700 50  0001 C CNN
F 3 "" H 7350 3850 50  0001 C CNN
	1    7350 3850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 5A83680E
P 7350 4100
F 0 "#PWR05" H 7350 3850 50  0001 C CNN
F 1 "GND" H 7355 3927 50  0000 C CNN
F 2 "" H 7350 4100 50  0001 C CNN
F 3 "" H 7350 4100 50  0001 C CNN
	1    7350 4100
	1    0    0    -1  
$EndComp
$Comp
L D D3
U 1 1 5A83680F
P 7100 3350
F 0 "D3" H 7100 3134 50  0000 C CNN
F 1 "1m4148" H 7100 3225 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF_Handsoldering" H 7100 3350 50  0001 C CNN
F 3 "" H 7100 3350 50  0001 C CNN
	1    7100 3350
	-1   0    0    1   
$EndComp
$Comp
L R R6
U 1 1 5A836810
P 7100 3550
F 0 "R6" V 7000 3600 50  0000 C CNN
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
L R R4
U 1 1 5A836811
P 6650 3250
F 0 "R4" V 6730 3250 50  0000 C CNN
F 1 "10K" V 6650 3250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6580 3250 50  0001 C CNN
F 3 "" H 6650 3250 50  0001 C CNN
	1    6650 3250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5A836812
P 6600 3650
F 0 "#PWR06" H 6600 3400 50  0001 C CNN
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
L 74HC14 U1
U 1 1 5A836813
P 4250 3550
F 0 "U1" H 4400 3650 50  0000 C CNN
F 1 "74HC14" H 4450 3450 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 4250 3550 50  0001 C CNN
F 3 "" H 4250 3550 50  0001 C CNN
	1    4250 3550
	-1   0    0    1   
$EndComp
$Comp
L C C1
U 1 1 5A836814
P 5200 3850
F 0 "C1" H 5315 3896 50  0000 L CNN
F 1 "0.1uF" H 5315 3805 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5238 3700 50  0001 C CNN
F 3 "" H 5200 3850 50  0001 C CNN
	1    5200 3850
	1    0    0    -1  
$EndComp
$Comp
L D D1
U 1 1 5A836815
P 4950 3350
F 0 "D1" H 4950 3600 50  0000 C CNN
F 1 "1m4148" H 4950 3500 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF_Handsoldering" H 4950 3350 50  0001 C CNN
F 3 "" H 4950 3350 50  0001 C CNN
	1    4950 3350
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5A836816
P 4950 3550
F 0 "R1" V 4850 3600 50  0000 C CNN
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
L GND #PWR07
U 1 1 5A836817
P 5200 4100
F 0 "#PWR07" H 5200 3850 50  0001 C CNN
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
Wire Wire Line
	7300 4400 7300 4700
Wire Wire Line
	7300 5000 7300 5100
$Comp
L C 1U2
U 1 1 5A836818
P 7700 3100
F 0 "1U2" H 7815 3146 50  0000 L CNN
F 1 "0,1U" H 7815 3055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7738 2950 50  0001 C CNN
F 3 "" H 7700 3100 50  0001 C CNN
	1    7700 3100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 5A836819
P 7700 3250
F 0 "#PWR08" H 7700 3000 50  0001 C CNN
F 1 "GND" H 7705 3077 50  0000 C CNN
F 2 "" H 7700 3250 50  0001 C CNN
F 3 "" H 7700 3250 50  0001 C CNN
	1    7700 3250
	1    0    0    -1  
$EndComp
Connection ~ 5650 3550
Text GLabel 1850 5450 2    60   Input ~ 0
Rot_Enc_SW
Text GLabel 1850 5650 2    60   Input ~ 0
Rot_Enc_B
Text GLabel 1850 5550 2    60   Input ~ 0
Rot_Enc_A
$Comp
L Conn_01x07_Female J1
U 1 1 5AB7719A
P 1650 5450
F 0 "J1" H 1650 5850 50  0000 C CNN
F 1 "Connection to mainBoard" H 1700 5000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x07_Pitch2.54mm" H 1650 5450 50  0001 C CNN
F 3 "" H 1650 5450 50  0001 C CNN
	1    1650 5450
	-1   0    0    1   
$EndComp
Wire Wire Line
	1850 5150 2150 5150
Wire Wire Line
	2150 5150 2150 5000
$Comp
L GND #PWR09
U 1 1 5AB774AA
P 1850 5750
F 0 "#PWR09" H 1850 5500 50  0001 C CNN
F 1 "GND" H 1850 5600 50  0000 C CNN
F 2 "" H 1850 5750 50  0001 C CNN
F 3 "" H 1850 5750 50  0001 C CNN
	1    1850 5750
	1    0    0    -1  
$EndComp
Text GLabel 1850 5350 2    60   Input ~ 0
SCL
$Comp
L +3.3V #PWR010
U 1 1 5AB77B1A
P 4400 6100
F 0 "#PWR010" H 4400 5950 50  0001 C CNN
F 1 "+3.3V" H 4400 6240 50  0000 C CNN
F 2 "" H 4400 6100 50  0001 C CNN
F 3 "" H 4400 6100 50  0001 C CNN
	1    4400 6100
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR011
U 1 1 5AB77E9B
P 2150 5000
F 0 "#PWR011" H 2150 4850 50  0001 C CNN
F 1 "+5V" H 2150 5140 50  0000 C CNN
F 2 "" H 2150 5000 50  0001 C CNN
F 3 "" H 2150 5000 50  0001 C CNN
	1    2150 5000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR012
U 1 1 5AB77F59
P 1600 4050
F 0 "#PWR012" H 1600 3900 50  0001 C CNN
F 1 "+5V" H 1600 4190 50  0000 C CNN
F 2 "" H 1600 4050 50  0001 C CNN
F 3 "" H 1600 4050 50  0001 C CNN
	1    1600 4050
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR013
U 1 1 5AB78157
P 4300 3900
F 0 "#PWR013" H 4300 3750 50  0001 C CNN
F 1 "+3.3V" H 4300 4040 50  0000 C CNN
F 2 "" H 4300 3900 50  0001 C CNN
F 3 "" H 4300 3900 50  0001 C CNN
	1    4300 3900
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR014
U 1 1 5AB784AD
P 5650 3200
F 0 "#PWR014" H 5650 3050 50  0001 C CNN
F 1 "+3.3V" H 5650 3340 50  0000 C CNN
F 2 "" H 5650 3200 50  0001 C CNN
F 3 "" H 5650 3200 50  0001 C CNN
	1    5650 3200
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR015
U 1 1 5AB784FD
P 6650 3100
F 0 "#PWR015" H 6650 2950 50  0001 C CNN
F 1 "+3.3V" H 6650 3240 50  0000 C CNN
F 2 "" H 6650 3100 50  0001 C CNN
F 3 "" H 6650 3100 50  0001 C CNN
	1    6650 3100
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR016
U 1 1 5AB7854D
P 7700 2950
F 0 "#PWR016" H 7700 2800 50  0001 C CNN
F 1 "+3.3V" H 7700 3090 50  0000 C CNN
F 2 "" H 7700 2950 50  0001 C CNN
F 3 "" H 7700 2950 50  0001 C CNN
	1    7700 2950
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR017
U 1 1 5AB7859D
P 6600 4200
F 0 "#PWR017" H 6600 4050 50  0001 C CNN
F 1 "+3.3V" H 6600 4340 50  0000 C CNN
F 2 "" H 6600 4200 50  0001 C CNN
F 3 "" H 6600 4200 50  0001 C CNN
	1    6600 4200
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG018
U 1 1 5AB78B78
P 5250 5900
F 0 "#FLG018" H 5250 5975 50  0001 C CNN
F 1 "PWR_FLAG" H 5250 6050 50  0000 C CNN
F 2 "" H 5250 5900 50  0001 C CNN
F 3 "" H 5250 5900 50  0001 C CNN
	1    5250 5900
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR019
U 1 1 5AB78C14
P 5250 5900
F 0 "#PWR019" H 5250 5750 50  0001 C CNN
F 1 "+3.3V" H 5250 6040 50  0000 C CNN
F 2 "" H 5250 5900 50  0001 C CNN
F 3 "" H 5250 5900 50  0001 C CNN
	1    5250 5900
	-1   0    0    1   
$EndComp
$Comp
L XC6206P332MR U2
U 1 1 5AB78EF9
P 3850 6200
F 0 "U2" H 3900 6650 60  0000 C CNN
F 1 "XC6206P332MR" H 3900 6550 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:TSOT-23_HandSoldering" H 3850 6200 60  0001 C CNN
F 3 "" H 3850 6200 60  0001 C CNN
	1    3850 6200
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 5AB79068
P 3300 6350
F 0 "C4" H 3325 6450 50  0000 L CNN
F 1 "1u" H 3325 6250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3338 6200 50  0001 C CNN
F 3 "" H 3300 6350 50  0001 C CNN
	1    3300 6350
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 5AB790CF
P 4400 6400
F 0 "C5" H 4425 6500 50  0000 L CNN
F 1 "100n" H 4425 6300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4438 6250 50  0001 C CNN
F 3 "" H 4400 6400 50  0001 C CNN
	1    4400 6400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 5AB791F4
P 3850 6650
F 0 "#PWR020" H 3850 6400 50  0001 C CNN
F 1 "GND" H 3850 6500 50  0000 C CNN
F 2 "" H 3850 6650 50  0001 C CNN
F 3 "" H 3850 6650 50  0001 C CNN
	1    3850 6650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR021
U 1 1 5AB7924B
P 3300 6600
F 0 "#PWR021" H 3300 6350 50  0001 C CNN
F 1 "GND" H 3300 6450 50  0000 C CNN
F 2 "" H 3300 6600 50  0001 C CNN
F 3 "" H 3300 6600 50  0001 C CNN
	1    3300 6600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR022
U 1 1 5AB7929B
P 4400 6650
F 0 "#PWR022" H 4400 6400 50  0001 C CNN
F 1 "GND" H 4400 6500 50  0000 C CNN
F 2 "" H 4400 6650 50  0001 C CNN
F 3 "" H 4400 6650 50  0001 C CNN
	1    4400 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 6650 4400 6550
Wire Wire Line
	4400 6150 4300 6150
Wire Wire Line
	3300 6600 3300 6500
Wire Wire Line
	3400 6150 3300 6150
Wire Wire Line
	3300 6100 3300 6200
Wire Wire Line
	3850 6650 3850 6600
Wire Wire Line
	4400 6100 4400 6250
Connection ~ 4400 6150
Text GLabel 1850 5250 2    60   Input ~ 0
SDA
$Comp
L +5V #PWR023
U 1 1 5AB7A3EB
P 3300 6100
F 0 "#PWR023" H 3300 5950 50  0001 C CNN
F 1 "+5V" H 3300 6240 50  0000 C CNN
F 2 "" H 3300 6100 50  0001 C CNN
F 3 "" H 3300 6100 50  0001 C CNN
	1    3300 6100
	1    0    0    -1  
$EndComp
Connection ~ 3300 6150
$EndSCHEMATC
