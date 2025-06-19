`timescale 1ps/1ps
`include "DECODER.v"

module DECODER_tb;

    reg a, b;
    wire out1, out2, out3, out4;

    DECODER uut ( .a(a), .b(b), .out1(out1), .out2(out2), .out3(out3), .out4(out4));

    initial begin

        $dumpfile("wave.vcd");
        $dumpvars(0, DECODER_tb);

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