EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 3
Title "Proximity Sensor - Mother Board"
Date "2020-06-16"
Rev "V1"
Comp "Marquette Rapid Prototyping Labs"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 2000 1850 1650 2350
U 5C794189
F0 "Power, Mux/Demux, Connectors" 50
F1 "Power.sch" 50
F2 "INA" I R 3650 3100 50 
F3 "INB" I R 3650 3350 50 
F4 "IN1" I R 3650 2300 50 
F5 "IN2" I R 3650 2500 50 
$EndSheet
$Sheet
S 6050 1850 1900 2350
U 5C7AE590
F0 "ATMEGA328P MCU, CLK Gen, LDC" 50
F1 "ATMEGA328P.sch" 50
F2 "INA" I L 6050 3100 50 
F3 "INB" I L 6050 3350 50 
F4 "IN1" I L 6050 2300 50 
F5 "IN2" I L 6050 2500 50 
$EndSheet
Wire Wire Line
	6050 3350 3650 3350
Wire Wire Line
	3650 3100 6050 3100
$Comp
L ProximityMother_V1-rescue:MountingHole_Pad-Mechanical H1
U 1 1 5C89626C
P 2250 5300
F 0 "H1" H 2350 5351 50  0000 L CNN
F 1 "1" H 2350 5260 50  0000 L CNN
F 2 "Hardware:STANDOFF_GROUNDING" H 2250 5300 50  0001 C CNN
F 3 "~" H 2250 5300 50  0001 C CNN
	1    2250 5300
	1    0    0    -1  
$EndComp
$Comp
L ProximityMother_V1-rescue:MountingHole_Pad-Mechanical H3
U 1 1 5C896314
P 3250 5300
F 0 "H3" H 3350 5351 50  0000 L CNN
F 1 "3" H 3350 5260 50  0000 L CNN
F 2 "Hardware:STANDOFF_GROUNDING" H 3250 5300 50  0001 C CNN
F 3 "~" H 3250 5300 50  0001 C CNN
	1    3250 5300
	1    0    0    -1  
$EndComp
$Comp
L ProximityMother_V1-rescue:MountingHole_Pad-Mechanical H2
U 1 1 5C896389
P 2250 5600
F 0 "H2" H 2350 5651 50  0000 L CNN
F 1 "2" H 2350 5560 50  0000 L CNN
F 2 "Hardware:STANDOFF_GROUNDING" H 2250 5600 50  0001 C CNN
F 3 "~" H 2250 5600 50  0001 C CNN
	1    2250 5600
	1    0    0    -1  
$EndComp
$Comp
L ProximityMother_V1-rescue:MountingHole_Pad-Mechanical H4
U 1 1 5C8963A7
P 3250 5600
F 0 "H4" H 3350 5651 50  0000 L CNN
F 1 "4" H 3350 5560 50  0000 L CNN
F 2 "Hardware:STANDOFF_GROUNDING" H 3250 5600 50  0001 C CNN
F 3 "~" H 3250 5600 50  0001 C CNN
	1    3250 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 2300 6050 2300
Wire Wire Line
	3650 2500 6050 2500
Text Notes 4200 2250 0    50   ~ 0
IN1, IN2 are set by MCU. They \ncontrol the two 1:2 Mux/Demux. 
Text Notes 4200 3100 0    50   ~ 0
INA, INB: Communication with LDC \n(inductance-2-digital converter).
$EndSCHEMATC
