`timescale 1ps/1ps
`include "HALF_ADDER.v"

module HALF_ADDER_tb;

reg a,b;
wire sum, carry;

HALF_ADDER uut ( .a(a), .b(b), .sum(sum), .carry(carry));

initial begin

    $dumpfile("wave.vcd");
    $dumpvars(0, HALF_ADDER_tb);
    
    a = 0; b = 0;
    #10;

    a = 0; b = 1;
    #10;

    a = 1; b = 0;
    #10;

    a = 1; b = 1;
    #10;

    $finish;

end

endmodule