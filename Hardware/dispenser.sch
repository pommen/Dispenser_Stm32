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
Sheet 1 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 10450 1950 0    60   ~ 0
RGB led
Wire Notes Line
	8950 1750 10850 1750
Wire Notes Line
	10850 1750 10850 3350
Wire Notes Line
	10850 3350 8950 3350
Wire Notes Line
	8950 3350 8950 1750
$Comp
L C 1U1
U 1 1 5A0864EF
P 9100 2250
F 0 "1U1" H 9215 2296 50  0000 L CNN
F 1 "0,1U" H 9215 2205 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9138 2100 50  0001 C CNN
F 3 "" H 9100 2250 50  0001 C CNN
	1    9100 2250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5A0864FC
P 9100 2400
F 0 "#PWR03" H 9100 2150 50  0001 C CNN
F 1 "GND" H 9105 2227 50  0000 C CNN
F 2 "" H 9100 2400 50  0001 C CNN
F 3 "" H 9100 2400 50  0001 C CNN
	1    9100 2400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 5A08A0E4
P 10550 2750
F 0 "#PWR04" H 10550 2500 50  0001 C CNN
F 1 "GND" H 10555 2577 50  0000 C CNN
F 2 "" H 10550 2750 50  0001 C CNN
F 3 "" H 10550 2750 50  0001 C CNN
	1    10550 2750
	1    0    0    -1  
$EndComp
Text GLabel 9700 2950 0    60   Input ~ 0
LED
$Comp
L WS2812B D1
U 1 1 5A089D02
P 10300 2650
F 0 "D1" H 10125 2483 50  0000 C CNN
F 1 "WS2812B" H 10125 2574 50  0000 C CNN
F 2 "Libs:WS2812B" H 10100 2050 50  0001 L BNN
F 3 "Adafruit Industries" H 10250 3200 50  0001 L BNN
F 4 "Intelligent Control Led Integrated Light Source Pack Of 10" H 10200 3300 50  0001 L BNN "Description"
F 5 "5.56 USD" H 10250 3500 50  0001 L BNN "Price"
F 6 "WS2812B" H 10300 3800 50  0001 L BNN "MP"
	1    10300 2650
	1    0    0    1   
$EndComp
$Sheet
S 4050 4350 2050 900 
U 5A67C196
F0 "Inputs" 60
F1 "Controller-Inputs.sch" 60
$EndSheet
$Sheet
S 800  4250 1850 1150
U 5A674742
F0 "MCU" 60
F1 "MCU.sch" 60
$EndSheet
$Sheet
S 4000 1050 2250 1500
U 5A7057E9
F0 "MotorDriver" 60
F1 "MotorDriver.sch" 60
$EndSheet
$Sheet
S 850  650  2500 1900
U 5A705E76
F0 "Power" 60
F1 "Power.sch" 60
$EndSheet
Text Notes 1600 1450 0    60   ~ 0
POWER
Text Notes 4600 1650 0    60   ~ 0
Motor Driver
Text Notes 1450 4900 0    60   ~ 0
MCU
Text Notes 4800 4750 0    60   ~ 0
Inputs
$Comp
L VDD #PWR05
U 1 1 5AAFCA42
P 9100 2100
F 0 "#PWR05" H 9100 1950 50  0001 C CNN
F 1 "VDD" H 9100 2250 50  0000 C CNN
F 2 "" H 9100 2100 50  0001 C CNN
F 3 "" H 9100 2100 50  0001 C CNN
	1    9100 2100
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR06
U 1 1 5AAFCA63
P 9700 2750
F 0 "#PWR06" H 9700 2600 50  0001 C CNN
F 1 "VDD" H 9700 2900 50  0000 C CNN
F 2 "" H 9700 2750 50  0001 C CNN
F 3 "" H 9700 2750 50  0001 C CNN
	1    9700 2750
	1    0    0    -1  
$EndComp
$EndSCHEMATC
