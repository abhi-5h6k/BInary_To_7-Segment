`timescale 1ns / 1ps

module top_tb;

  // Testbench signals
  reg [3:0] in;
  wire [6:0] y;

  // Instantiate the module under test (MUT)
  top uut (
    .in(in),
    .y(y)
  );

  // Testbench process
  initial begin
    // Initialize inputs
    in = 4'b0000;
    
    // Monitor changes
    $monitor("Time = %0t | in = %b | y = %b", $time, in, y);
    
    // Apply test vectors
    #10 in = 4'b0000; // Expected y = 7'b1111110
    #10 in = 4'b0001; // Expected y = 7'b0110000
    #10 in = 4'b0010; // Expected y = 7'b1011010
    #10 in = 4'b0011; // Expected y = 7'b1110010
    #10 in = 4'b0100; // Expected y = 7'b0110110
    #10 in = 4'b0101; // Expected y = 7'b1011011
    #10 in = 4'b0110; // Expected y = 7'b1011111
    #10 in = 4'b0111; // Expected y = 7'b1110000
    #10 in = 4'b1000; // Expected y = 7'b1111111
    #10 in = 4'b1001; // Expected y = 7'b1110110
    #10 $finish; // End of simulation
  end

endmodule
