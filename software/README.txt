cristinel.ababei, 2020

Code here is used in the first generation of a proximity sensor design formed by:

1--base board = Atmega328p + LDC inductance to digital converter
   this is called also Proximity Board in the comments of the code here;
2--two separate sensor boards, one LC tanks, two LC tanks
   each of the sensor boards is a plug-and-play board; the one with one LC tank
   can be used for detecting metal targets approaching perpendicularly to
   the sensor board plane' the sensor board with two LC tanks can be used for
   detecting metal targets moving laterally;

The LDC inductance to digital converter has two operation modes, which
you can select in the code below by selecting one of the following when
the "my_ldc" variable is declared:
1-- LDC_LHR_OPERATION (high-resolution, 24 it, inductance measurement) <--- default 
2-- LDC_RP_PLUS_L_OPERATION (equivalent parallel resistance RP and inductance, 16 bit, measurement)

NOTES:

1) The board uses the Atmega328p, 3.3V supply, and a crystal 8MHz.
If you power it with the USB-2-UART converter, set the jumper on 5V.

2) Please see the additional documentation and files of this project for details:
Our papers and the report for this project, the source code on github and 
PCB layout files. See the LDC1101 datasheet NOW to be in a good position to
read this code!

3) ProximityBoard is programmed in the easiest way from Arduino IDE - just like 
an Arduino Pro Mini board (3.3V) because this is how I designed it. 
But, not all the pins are with the same meaning/definition
as for an actual Pro Mini. To understand that you need to look at the schematic
diagram of the ProximityBoard and at the pin-out diagram of the ProMini.
The other way you can code and program the ProximityBoard is by using directly avrdude.