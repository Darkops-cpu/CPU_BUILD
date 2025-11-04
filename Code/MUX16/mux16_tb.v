`timescale 1ps/1ps
`include "mux16.v"

module mux16_tb;

  reg [15:0] a, b;
  reg sel;
  wire [15:0] out;

  mux16 uut (.a(a), .b(b), .sel(sel), .out(out));

  initial begin

    $dumpfile("wave.vcd");
    $dumpvars(0, mux16_tb);

    // Test case 1
    a = 16'b0000000000000000; 
    b = 16'b0000000000000001; 
    sel = 0; // Select input a
    #10; 

    // Test case 2
    a = 16'b1111111111111111; 
    b = 16'b0000000000000000; 
    sel = 1; // Select input b
    #10;

    // Test case 3
    a = 16'b1010101010101010; 
    b = 16'b0101010101010101; 
    sel = 0; // Select input a
    #10;

    a = 16'b1100110011001100; 
    b = 16'b0011001100110011; 
    sel = 1; 
    #10;

    $finish; 
  end

endmodule