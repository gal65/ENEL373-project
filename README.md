### rxnmongroup4

--------------------------------------------------------------------------------

### Authors:
Jarrod Zhu, jzh173@uclive.ac.nz, 39721130 

Tristin Weastell, twe34@uclive.ac.nz, 88939076
 
Gordon Lay, gal65@uclive.ac.nz, 75846097

--------------------------------------------------------------------------------

### ENEL 373 Reaction Timer Project
The goal of this project was to produce a reaction timer, implemented on a 
Nexys-4 DDR FPGA development kit.The main project output was a bitstream file 
generated from VHDL code that uses the pre-existing LEDs, seven-segment 
displays, buttons and switches on the Nexys-4 DDR development kit. 

### How it Works
Pressing the button on the FPGA initiates a starting sequence, where 3 dots 
count down 3 seconds (1 dot disappears for each second). At 0 seconds, the timer
begins and is displayed counting upwards using the seven-segment display. When 
the user 'reacts', that is, presses the button again, the timer stops counting 
and displays the time elapsed. Pressing the button at this point will reset the 
FPGA into a blank state, where pressing the button again will initiate the 
starting sequence once again.

### Notes
The template folders house all of the source, constraint and testbench files
project_1 folder contains the raw folder where the code was loaded into Vivado