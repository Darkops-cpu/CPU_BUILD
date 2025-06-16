`timescale 1ps/1ps
`include "FULL_ADDER.v"

module FULL_ADDER_tb;

    reg a, b, c;
    wire sum, carry;

    FULL_ADDER uut (.a(a), .b(b), .c(c), .sum(sum), .carry(carry));

    initial begin

        $dumpfile("wave.vcd");
        $dumpvars(0, FULL_ADDER_tb);

        a = 0; b = 0; c = 0;
        #10;
        a = 0; b = 0; c = 1;
        #10;
        a = 0; b = 1; c = 0;
        #10;
        a = 0; b = 1; c = 1;
        #10;
        a = 1; b = 0; c = 0;
        #10;
        a = 1; b = 0; c = 1;
        #10;
        a = 1; b = 1; c = 0;
        #10;
        a = 1; b = 1; c = 1;
        #10;
        $finish;
    end
    

endmodule