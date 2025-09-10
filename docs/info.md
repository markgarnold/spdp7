<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

Created in 1960s by Digital Equipment Corp., the PDP8 has a 4096 words of 12-bit wide memory. This design, which emulates a subset of PDP8 instruction, was inspired by Chapter 11 of my book, Verilog Digital Computer Design, Prentice Hall, 1998, using a tool called Verilog Implicit to One-hot (vito).  For simplicity and to fit within the pin count of TinyTapeout, memory size is reduced to 128 words (7-bit address, "ma"), and the data to and from memory is accessed one bit per clock cycle.  Because of this serial operation, the bit address ("ba") within the word must also be output (an extra 4 bits).     

## How to test

It takes a special script to emulate the serial memory that contains the software and data which the fabricated CPU will operate on.  As of September 2025, I have a verilog testbench to do this. This makes me confident the chip will function correctly 

To play with the fabricated chip, such test code needs to be in python.  At the time this is submitted for fab, this code does not yet exist in python, but by the time it is fabricated I hope the python script will be in this repo.

## External hardware

The design in my book connected an actual 1-bit wide RAM chip to ma and mb.  Using this proposed python app, this is not necessary.
