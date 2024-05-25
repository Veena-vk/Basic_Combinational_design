# Seven Segment Display

A binary to 7-segment decoder is the central combinational logic module that translates a binary input (representing a digit) into the appropriate signals to drive a 7-segment display.

Inputs: Typically 4 bits (binary representation of a decimal digit 0-9).
Outputs: 7 bits (each corresponding to one segment of the 7-segment display, labeled as a, b, c, d, e, f, g).

To compare different design methodologies, it was implemented using two different methods, the case statement and using boolean equation.
Comment out the style which you do not want to use.

The sample RTL is provided for different design techniques. As you can see, if case statement is used, it simply synthesizes it into a ROM type memory on FPGA.
Whereas, when simplified boolean equations are used, it turns it into some gate level netlist. The images are attached.
