`timescale 1ps/1ps
`include "or16.v"

module or16_tb;

  reg [15:0] a;
  wire out;

  or16 uut (.a(a), .out(out));

  initial begin

    $dumpfile("wave.vcd");
    $dumpvars(0, or16_tb);

    a = 16'b0000000000000000; // shall output 0
    #10;
    a = 16'b0000000000000001; // shall output 1
    #10;
    a = 16'b0101010101010101; // shall output 1
    #10;
    a = 16'b1111111111111111; // shall output 1
    #10;

    $finish; 
  end

endmodule