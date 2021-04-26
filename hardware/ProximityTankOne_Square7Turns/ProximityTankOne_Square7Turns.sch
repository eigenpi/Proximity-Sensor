EESchema Schematic File Version 4
EELAYER 30 0
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
L ProximityTankOne_Square7Turns-rescue:MountingHole_Pad-Mechanical H1
U 1 1 5F0F263F
P 5250 3650
F 0 "H1" H 5350 3701 50  0000 L CNN
F 1 "1" H 5350 3610 50  0000 L CNN
F 2 "Hardware:STANDOFF_GROUNDING" H 5250 3650 50  0001 C CNN
F 3 "~" H 5250 3650 50  0001 C CNN
	1    5250 3650
	1    0    0    -1  
$EndComp
$Comp
L ProximityTankOne_Square7Turns-rescue:MountingHole_Pad-Mechanical H3
U 1 1 5F0F2646
P 6250 3650
F 0 "H3" H 6350 3701 50  0000 L CNN
F 1 "3" H 6350 3610 50  0000 L CNN
F 2 "Hardware:STANDOFF_GROUNDING" H 6250 3650 50  0001 C CNN
F 3 "~" H 6250 3650 50  0001 C CNN
	1    6250 3650
	1    0    0    -1  
$EndComp
$Comp
L ProximityTankOne_Square7Turns-rescue:MountingHole_Pad-Mechanical H2
U 1 1 5F0F264D
P 5250 3950
F 0 "H2" H 5350 4001 50  0000 L CNN
F 1 "2" H 5350 3910 50  0000 L CNN
F 2 "Hardware:STANDOFF_GROUNDING" H 5250 3950 50  0001 C CNN
F 3 "~" H 5250 3950 50  0001 C CNN
	1    5250 3950
	1    0    0    -1  
$EndComp
$Comp
L ProximityTankOne_Square7Turns-rescue:MountingHole_Pad-Mechanical H4
U 1 1 5F0F2654
P 6250 3950
F 0 "H4" H 6350 4001 50  0000 L CNN
F 1 "4" H 6350 3910 50  0000 L CNN
F 2 "Hardware:STANDOFF_GROUNDING" H 6250 3950 50  0001 C CNN
F 3 "~" H 6250 3950 50  0001 C CNN
	1    6250 3950
	1    0    0    -1  
$EndComp
$Comp
L ProximityTankOne_Square7Turns-rescue:CONN_04-SparkFun-Connectors J?
U 1 1 5F0F265C
P 5350 2750
AR Path="/5C7AE590/5F0F265C" Ref="J?"  Part="1" 
AR Path="/5C794189/5F0F265C" Ref="J?"  Part="1" 
AR Path="/5F0F265C" Ref="J1"  Part="1" 
F 0 "J1" H 5100 2900 45  0000 C CNN
F 1 "LC Tanks" H 5250 2650 45  0000 C CNN
F 2 "Connectors:1X04" H 5350 3250 20  0001 C CNN
F 3 "" H 5350 2750 50  0001 C CNN
F 4 "" H 5306 3181 60  0000 C CNN "Field4"
	1    5350 2750
	1    0    0    1   
$EndComp
Text Notes 5100 2550 0    50   ~ 0
Pair of two-port connectors to \nMother Board where the LDC\nscans the LC Tanks here. 
Text Label 6400 2750 2    50   ~ 0
LC1
Wire Wire Line
	6450 2750 5450 2750
Wire Wire Line
	6450 2850 5450 2850
Text Label 6400 2850 2    50   ~ 0
LC1
$Comp
L ProximityTankOne_Square7Turns-rescue:0.1UF-0402-16V-10%-SparkFun-Capacitors C?
U 1 1 5F0F2668
P 6750 2850
AR Path="/5EF3CB5D/5F0F2668" Ref="C?"  Part="1" 
AR Path="/5F0F2668" Ref="C1"  Part="1" 
F 0 "C1" H 6858 2942 45  0000 L CNN
F 1 "270pF" H 6858 2858 45  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6780 3000 20  0001 C CNN
F 3 "" H 6750 2850 60  0001 C CNN
	1    6750 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 2750 6450 2650
Wire Wire Line
	6450 2650 6750 2650
Wire Wire Line
	6450 2850 6450 2950
Wire Wire Line
	6450 2950 6750 2950
$EndSCHEMATC
