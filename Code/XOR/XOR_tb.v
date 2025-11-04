`timescale 1ps/1ps
`include "XOR.v"

module XOR_tb;

    reg a, b;
    wire out;

    XOR uut (.a(a), .b(b), .out(out));

    initial begin

        $dumpfile("wave.vcd");
        $dumpvars(0, XOR_tb);

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