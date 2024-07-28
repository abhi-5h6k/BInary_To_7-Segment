Top Module

This repository contains a Verilog module named top that takes a 4-bit input and produces a 7-bit output. 

The module is designed to map the 4-bit input to a specific 7-bit output based on predefined cases.

Module Description

Inputs and Outputs
  Input:
  in (4 bits): The input signal to the module.
  Output:
  y (7 bits): The output signal from the module.
  Internal Registers
  temp (8 bits): A temporary register used to store intermediate values based on the input.
  
Functionality

  The module uses a combinational always block to evaluate the input and assign a corresponding value to the temp register. 
  The value of temp is then assigned to the output y, excluding the least significant bit.

  Detailed Explanation
  
1. Timescale Directive:
   
     timescale 1ns / 1ps: This directive specifies the time unit and time precision for the simulation.
   
2. Module Declaration:
   
     module top: Declares the module named top with a 4-bit input in and a 7-bit output y.
   
3. Register Declaration:
   
    reg [7:0] temp = 0;: Declares an 8-bit register temp initialized to 0.
   
4. Always Block:
   
    always@(*): A combinational always block that executes whenever there is a change in the input signals.
    case(in): A case statement that assigns specific values to temp based on the value of in.
   
5. Output Assignment:
   
assign y = temp[7:1];: Assigns the 7 most significant bits of temp to the output y.
