EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 2 3
Title "Power, Mux/Demux, Connectors"
Date "2020-06-16"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Connection ~ 8100 5200
NoConn ~ 9200 5600
Connection ~ 7850 5200
$Comp
L ProximityMother_V1-rescue:D-Device D?
U 1 1 5C79812A
P 6350 5300
AR Path="/5C7934FF/55CCFEA2/5C79812A" Ref="D?"  Part="1" 
AR Path="/5C794189/5C79812A" Ref="D1"  Part="1" 
F 0 "D1" H 6350 5400 40  0000 C CNN
F 1 "DIODE" H 6350 5200 40  0000 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 6350 5300 60  0001 C CNN
F 3 "" H 6350 5300 60  0001 C CNN
F 4 "1A, 1000V, SILICON, SIGNAL DIODE, ROHS COMPLIANT, COMPACT, PLASTIC, CASE 403D-02, SMA, 2 PIN" H 6350 5300 60  0001 C CNN "Characteristics"
F 5 "Reverse Voltage Protection Diode" H 6350 5300 60  0001 C CNN "Description"
F 6 "ON Semi" H 6350 5300 60  0001 C CNN "MFN"
F 7 "MRA4007T3G" H 6350 5300 60  0001 C CNN "MFP"
F 8 "R-PDSO-J2" H 6350 5300 60  0001 C CNN "Package ID"
F 9 "ANY" H 6350 5300 60  0001 C CNN "Source"
F 10 "N" H 6350 5300 60  0001 C CNN "Critical"
F 11 "Voltage_Reg" H 6350 5300 60  0001 C CNN "Subsystem"
F 12 "~" H 6350 5300 60  0001 C CNN "Notes"
	1    6350 5300
	-1   0    0    1   
$EndComp
$Comp
L ProximityMother_V1-rescue:+3V3-power #PWR08
U 1 1 5C7A53B5
P 9700 5050
F 0 "#PWR08" H 9700 4900 50  0001 C CNN
F 1 "+3V3" H 9715 5223 50  0000 C CNN
F 2 "" H 9700 5050 50  0001 C CNN
F 3 "" H 9700 5050 50  0001 C CNN
	1    9700 5050
	1    0    0    -1  
$EndComp
$Comp
L ProximityMother_V1-rescue:GND-power #PWR03
U 1 1 5C7A9E18
P 7850 6000
F 0 "#PWR03" H 7850 5750 50  0001 C CNN
F 1 "GND" H 7855 5827 50  0000 C CNN
F 2 "" H 7850 6000 50  0001 C CNN
F 3 "" H 7850 6000 50  0001 C CNN
	1    7850 6000
	1    0    0    -1  
$EndComp
$Comp
L ProximityMother_V1-rescue:GND-power #PWR05
U 1 1 5C7A9E47
P 8700 6000
F 0 "#PWR05" H 8700 5750 50  0001 C CNN
F 1 "GND" H 8705 5827 50  0000 C CNN
F 2 "" H 8700 6000 50  0001 C CNN
F 3 "" H 8700 6000 50  0001 C CNN
	1    8700 6000
	1    0    0    -1  
$EndComp
$Comp
L ProximityMother_V1-rescue:GND-power #PWR07
U 1 1 5C7A9E76
P 9400 6000
F 0 "#PWR07" H 9400 5750 50  0001 C CNN
F 1 "GND" H 9405 5827 50  0000 C CNN
F 2 "" H 9400 6000 50  0001 C CNN
F 3 "" H 9400 6000 50  0001 C CNN
	1    9400 6000
	1    0    0    -1  
$EndComp
$Comp
L ProximityMother_V1-rescue:LP2985-33DBVR-dk_PMIC-Voltage-Regulators-Linear U2
U 1 1 5C7B2FAD
P 8700 5500
F 0 "U2" H 8700 6000 60  0000 C CNN
F 1 "LDO" H 8700 5894 60  0000 C CNN
F 2 "digikey-footprints:SOT-753" H 8900 5700 60  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/lp2985.pdf" H 8900 5800 60  0001 L CNN
F 4 "296-18476-1-ND" H 8900 5900 60  0001 L CNN "Digi-Key_PN"
F 5 "LP2985-33DBVR" H 8900 6000 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 8900 6100 60  0001 L CNN "Category"
F 7 "PMIC - Voltage Regulators - Linear" H 8900 6200 60  0001 L CNN "Family"
F 8 "http://www.ti.com/lit/ds/symlink/lp2985.pdf" H 8900 6300 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/texas-instruments/LP2985-33DBVR/296-18476-1-ND/809911" H 8900 6400 60  0001 L CNN "DK_Detail_Page"
F 10 "IC REG LINEAR 3.3V 150MA SOT23-5" H 8900 6500 60  0001 L CNN "Description"
F 11 "Texas Instruments" H 8900 6600 60  0001 L CNN "Manufacturer"
F 12 "Active" H 8900 6700 60  0001 L CNN "Status"
	1    8700 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 5200 8800 5200
Wire Wire Line
	8100 5500 8300 5500
Wire Wire Line
	8100 5200 8100 5500
Wire Wire Line
	9200 5600 9100 5600
Wire Wire Line
	9400 5550 9400 5500
Connection ~ 9400 5500
Wire Wire Line
	9100 5500 9400 5500
Wire Wire Line
	9400 5850 9400 6000
$Comp
L ProximityMother_V1-rescue:0.1UF-0402-16V-10%-SparkFun-Capacitors C5
U 1 1 5C7BD5C3
P 9700 5750
F 0 "C5" H 9808 5842 45  0000 L CNN
F 1 "100nF" H 9808 5758 45  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 9730 5900 20  0001 C CNN
F 3 "" H 9700 5750 60  0001 C CNN
	1    9700 5750
	1    0    0    -1  
$EndComp
Text Notes 5300 4750 0    50   ~ 0
Power supply:\nVIN is assumed to be 4.5V, maybe from 3x1.5V batteries.\nLow-battery level indicator works with this assumption. \nIt can be supplied by a bench power supply too.\nIdially, it is with 0.6V higher than VCC=3.3 V supplied to the MCU.
$Comp
L ProximityMother_V1-rescue:CP-Device C3
U 1 1 5C7D6937
P 9400 5700
F 0 "C3" H 9450 5800 40  0000 L CNN
F 1 "47uF" H 9450 5600 40  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_5x4.5" H 9500 5550 30  0001 C CNN
F 3 "" H 9400 5700 300 0001 C CNN
F 4 "CAPACITOR, ALUMINUM ELECTROLYTIC, NON SOLID, POLARIZED, 50 V, 47 uF, SURFACE MOUNT, 3131, CHIP, ROHS COMPLIANT" H 9400 5700 60  0001 C CNN "Characteristics"
F 5 "47uF Low ESR LDO Input Cap" H 9400 5700 60  0001 C CNN "Description"
F 6 "Vishay" H 9400 5700 60  0001 C CNN "MFN"
F 7 "MAL215371479E3" H 9400 5700 60  0001 C CNN "MFP"
F 8 "SMD 5.0 x 5.0 x 5.3" H 9400 5700 60  0001 C CNN "Package ID"
F 9 "ANY" H 9400 5700 60  0001 C CNN "Source"
F 10 "N" H 9400 5700 60  0001 C CNN "Critical"
F 11 "Voltage_Reg" H 9400 5700 60  0001 C CNN "Subsystem"
F 12 "ESR must fall between 0.33Ω and 22Ω" H 9400 5700 60  0001 C CNN "Notes"
	1    9400 5700
	1    0    0    -1  
$EndComp
$Comp
L ProximityMother_V1-rescue:GND-power #PWR09
U 1 1 5C7DC1A2
P 9700 6000
F 0 "#PWR09" H 9700 5750 50  0001 C CNN
F 1 "GND" H 9705 5827 50  0000 C CNN
F 2 "" H 9700 6000 50  0001 C CNN
F 3 "" H 9700 6000 50  0001 C CNN
	1    9700 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 5500 9700 5500
Wire Wire Line
	9700 5500 9700 5550
Wire Wire Line
	9700 5850 9700 6000
$Comp
L ProximityMother_V1-rescue:CP-Device C1
U 1 1 5C7F640B
P 7850 5700
F 0 "C1" H 7900 5800 40  0000 L CNN
F 1 "47uF" H 7900 5600 40  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_5x4.5" H 7950 5550 30  0001 C CNN
F 3 "" H 7850 5700 300 0001 C CNN
F 4 "CAPACITOR, ALUMINUM ELECTROLYTIC, NON SOLID, POLARIZED, 50 V, 47 uF, SURFACE MOUNT, 3131, CHIP, ROHS COMPLIANT" H 7850 5700 60  0001 C CNN "Characteristics"
F 5 "47uF Low ESR LDO Input Cap" H 7850 5700 60  0001 C CNN "Description"
F 6 "Vishay" H 7850 5700 60  0001 C CNN "MFN"
F 7 "MAL215371479E3" H 7850 5700 60  0001 C CNN "MFP"
F 8 "SMD 5.0 x 5.0 x 5.3" H 7850 5700 60  0001 C CNN "Package ID"
F 9 "ANY" H 7850 5700 60  0001 C CNN "Source"
F 10 "N" H 7850 5700 60  0001 C CNN "Critical"
F 11 "Voltage_Reg" H 7850 5700 60  0001 C CNN "Subsystem"
F 12 "ESR must fall between 0.33Ω and 22Ω" H 7850 5700 60  0001 C CNN "Notes"
	1    7850 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 5850 7850 6000
Wire Wire Line
	7850 5200 7850 5550
$Comp
L ProximityMother_V1-rescue:CONN_02-SparkFun-Connectors J?
U 1 1 5CB97555
P 5650 5300
AR Path="/5C7934FF/5CB97555" Ref="J?"  Part="1" 
AR Path="/5C7AE590/5CB97555" Ref="J?"  Part="1" 
AR Path="/5C794189/5CB97555" Ref="J1"  Part="1" 
F 0 "J1" H 5400 5350 45  0000 R CNN
F 1 "Power EXT" H 5700 5200 45  0000 R CNN
F 2 "Connectors:1X02" H 5650 5550 20  0001 C CNN
F 3 "" H 5650 5300 50  0001 C CNN
F 4 "" H 5422 5434 60  0000 R CNN "Field4"
	1    5650 5300
	1    0    0    1   
$EndComp
$Comp
L ProximityMother_V1-rescue:GND-power #PWR02
U 1 1 5CB9C13E
P 5850 6000
F 0 "#PWR02" H 5850 5750 50  0001 C CNN
F 1 "GND" H 5855 5827 50  0000 C CNN
F 2 "" H 5850 6000 50  0001 C CNN
F 3 "" H 5850 6000 50  0001 C CNN
	1    5850 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 5400 5850 5400
Text Notes 5300 5700 0    50   ~ 0
Two pin connector to supply power externally, \nfrom a bench power source or battery. 
$Comp
L ProximityMother_V1-rescue:SWITCH-SPDT-PTH-11.6X4.0MM-SparkFun-Switches S1
U 1 1 5C89860B
P 6950 5300
F 0 "S1" H 7050 5300 45  0000 L CNN
F 1 "Power" H 6750 5350 45  0000 L CNN
F 2 "Switches:SWITCH_SPDT_PTH_11.6X4.0MM" H 6950 5550 20  0001 C CNN
F 3 "" H 6950 5300 50  0001 C CNN
F 4 "" V 7084 5442 60  0000 L CNN "Field4"
	1    6950 5300
	1    0    0    -1  
$EndComp
Text Label 7400 5200 0    50   ~ 0
VIN_LDO
Text Label 9450 5500 0    50   ~ 0
+3V3
Wire Wire Line
	8700 5800 8700 6000
Wire Wire Line
	7150 5200 7850 5200
Wire Wire Line
	6500 5300 6850 5300
Wire Wire Line
	7850 5200 8100 5200
Wire Wire Line
	5850 5400 5850 6000
Wire Wire Line
	9700 5050 9700 5500
Connection ~ 9700 5500
Text Notes 5850 2450 0    50   ~ 0
Mux/Demux 1:2 2X\nNote: Symbol from SnapEDA,\nFootprint rom LibraryLoader!\n
$Comp
L ProximityMother_V1-rescue:+3V3-power #PWR04
U 1 1 5EFA6DF7
P 8650 1500
AR Path="/5C794189/5EFA6DF7" Ref="#PWR04"  Part="1" 
AR Path="/5C7AE590/5EFA6DF7" Ref="#PWR?"  Part="1" 
F 0 "#PWR04" H 8650 1350 50  0001 C CNN
F 1 "+3V3" H 8750 1600 50  0000 C CNN
F 2 "" H 8650 1500 50  0001 C CNN
F 3 "" H 8650 1500 50  0001 C CNN
	1    8650 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 1500 8650 1800
$Comp
L ProximityMother_V1-rescue:GND-power #PWR01
U 1 1 5EFA7BFA
P 4350 2300
F 0 "#PWR01" H 4350 2050 50  0001 C CNN
F 1 "GND" H 4355 2127 50  0000 C CNN
F 2 "" H 4350 2300 50  0001 C CNN
F 3 "" H 4350 2300 50  0001 C CNN
	1    4350 2300
	1    0    0    -1  
$EndComp
Text Label 4350 1900 0    50   ~ 0
GND
Text Label 8650 1800 0    50   ~ 0
VCC
$Comp
L ProximityMother_V1-rescue:TS5A23157DGSR-TS5A23157DGSR_MuxDemux21_2X U?
U 1 1 5EF081B2
P 5300 1600
AR Path="/5C7AE590/5EF081B2" Ref="U?"  Part="1" 
AR Path="/5C794189/5EF081B2" Ref="U1"  Part="1" 
F 0 "U1" H 6400 1987 60  0000 C CNN
F 1 "Mux2X" H 6400 1881 60  0000 C CNN
F 2 "library-loader:SOP50P490X110-10N" H 6400 1840 60  0001 C CNN
F 3 "" H 5300 1600 60  0000 C CNN
	1    5300 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 1800 4350 2300
Wire Wire Line
	4350 1800 5300 1800
Text HLabel 7850 1600 2    40   Input ~ 0
INA
Text HLabel 7850 2000 2    40   Input ~ 0
INB
Text Notes 7400 1500 0    50   ~ 0
INA, INB: Comm with LDC.\nNote: These go to the other \nSheet.
Wire Wire Line
	7500 2000 7850 2000
Wire Wire Line
	7500 1600 7850 1600
Text HLabel 4900 1600 0    40   Input ~ 0
IN1
Text HLabel 4900 2000 0    40   Input ~ 0
IN2
Text Notes 4200 1450 0    50   ~ 0
IN1, IN2 are set by MCU. They \ncontrol the two 1:2 Mux/Demux. \nNote: These go to the other Sheet
Wire Wire Line
	4900 1600 5300 1600
Wire Wire Line
	4900 2000 5300 2000
Text Label 5050 1600 0    50   ~ 0
IN1
Text Label 5050 2000 0    50   ~ 0
IN2
Text Label 7600 1600 0    50   ~ 0
INA
Text Label 7600 2000 0    50   ~ 0
INB
$Comp
L ProximityMother_V1-rescue:CONN_04-SparkFun-Connectors J?
U 1 1 5EF0D388
P 8400 3200
AR Path="/5C7AE590/5EF0D388" Ref="J?"  Part="1" 
AR Path="/5C794189/5EF0D388" Ref="J2"  Part="1" 
F 0 "J2" H 8150 3350 45  0000 C CNN
F 1 "LC Tanks" H 8300 3100 45  0000 C CNN
F 2 "Connectors:1X04" H 8400 3700 20  0001 C CNN
F 3 "" H 8400 3200 50  0001 C CNN
F 4 "" H 8356 3631 60  0000 C CNN "Field4"
	1    8400 3200
	-1   0    0    1   
$EndComp
Text Notes 7550 3050 0    50   ~ 0
Pair of two-port connectors to LC tanks\non the breakout board with the coil inductors.
Text Label 7850 3500 0    50   ~ 0
LC2_INB
Wire Wire Line
	7750 3500 8300 3500
Text Label 7350 3200 0    50   ~ 0
LC1_INA
Text GLabel 7300 3300 0    40   Input ~ 0
LC1_INB
Text GLabel 7300 3200 0    40   Input ~ 0
LC1_INA
Text GLabel 7750 3500 0    40   Input ~ 0
LC2_INB
Text GLabel 7750 3400 0    40   Input ~ 0
LC2_INA
Wire Wire Line
	7300 3200 8300 3200
Wire Wire Line
	7300 3300 8300 3300
Wire Wire Line
	7750 3400 8300 3400
Text Label 7350 3300 0    50   ~ 0
LC1_INB
Text Label 7850 3400 0    50   ~ 0
LC2_INA
Text GLabel 8200 1900 2    40   Input ~ 0
LC1_INB
Text GLabel 8200 1700 2    40   Input ~ 0
LC1_INA
Wire Wire Line
	8200 1700 7500 1700
Wire Wire Line
	8200 1900 7500 1900
Text Notes 8050 2200 0    50   ~ 0
Normally Connected (NC)\npins go to LC Tank 1.\n
Text Label 7600 1700 0    50   ~ 0
LC1_INA
Text Label 7600 1900 0    50   ~ 0
LC1_INB
Text GLabel 4900 1900 0    40   Input ~ 0
LC2_INB
Text GLabel 4900 1700 0    40   Input ~ 0
LC2_INA
Wire Wire Line
	4900 1700 5300 1700
Wire Wire Line
	4900 1900 5300 1900
Text Label 5000 1700 0    50   ~ 0
LC2_INA
Text Label 5000 1900 0    50   ~ 0
LC2_INB
Text Notes 4550 2350 0    50   ~ 0
Normally Open (NO) \nswitch pins go to \nLC Tank 2.\n
$Comp
L ProximityMother_V1-rescue:GND-power #PWR06
U 1 1 5EF19844
P 9350 2450
AR Path="/5C794189/5EF19844" Ref="#PWR06"  Part="1" 
AR Path="/5C7AE590/5EF19844" Ref="#PWR?"  Part="1" 
F 0 "#PWR06" H 9350 2200 50  0001 C CNN
F 1 "GND" H 9355 2277 50  0000 C CNN
F 2 "" H 9350 2450 50  0001 C CNN
F 3 "" H 9350 2450 50  0001 C CNN
	1    9350 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 2250 9200 2400
$Comp
L ProximityMother_V1-rescue:0.1UF-0402-16V-10%-SparkFun-Capacitors C4
U 1 1 5EF1984B
P 9500 2150
AR Path="/5C794189/5EF1984B" Ref="C4"  Part="1" 
AR Path="/5C7AE590/5EF1984B" Ref="C?"  Part="1" 
F 0 "C4" H 9608 2242 45  0000 L CNN
F 1 "100nF" H 9608 2158 45  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 9530 2300 20  0001 C CNN
F 3 "" H 9500 2150 60  0001 C CNN
	1    9500 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 2250 9500 2400
Wire Wire Line
	9200 2400 9350 2400
Wire Wire Line
	9350 2450 9350 2400
Connection ~ 9350 2400
Wire Wire Line
	9350 2400 9500 2400
Wire Wire Line
	9200 1800 9200 1950
Wire Wire Line
	9500 1800 9500 1950
Wire Wire Line
	9200 1800 9500 1800
Wire Wire Line
	7500 1800 8650 1800
Wire Wire Line
	8650 1800 9200 1800
Connection ~ 8650 1800
Connection ~ 9200 1800
$Comp
L ProximityMother_V1-rescue:VIN-SparkFun-PowerSymbols #SUPPLY01
U 1 1 5EF176A9
P 5850 5100
AR Path="/5C794189/5EF176A9" Ref="#SUPPLY01"  Part="1" 
AR Path="/5C7AE590/5EF176A9" Ref="#SUPPLY?"  Part="1" 
F 0 "#SUPPLY01" H 5900 5100 45  0001 L BNN
F 1 "VIN" H 5850 5270 45  0000 C CNN
F 2 "" H 5750 5100 60  0000 C CNN
F 3 "" H 5850 5100 60  0001 C CNN
	1    5850 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 5100 5850 5300
Wire Wire Line
	5750 5300 5850 5300
Connection ~ 5850 5300
Wire Wire Line
	5850 5300 6200 5300
Text Label 5950 5300 0    50   ~ 0
VIN
$Comp
L ProximityMother_V1-rescue:0.1UF-0402-16V-10%-SparkFun-Capacitors C2
U 1 1 5EF1835F
P 9200 2150
AR Path="/5C794189/5EF1835F" Ref="C2"  Part="1" 
AR Path="/5C7AE590/5EF1835F" Ref="C?"  Part="1" 
F 0 "C2" H 9308 2242 45  0000 L CNN
F 1 "10nF" H 9308 2158 45  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 9230 2300 20  0001 C CNN
F 3 "" H 9200 2150 60  0001 C CNN
	1    9200 2150
	1    0    0    -1  
$EndComp
$EndSCHEMATC
