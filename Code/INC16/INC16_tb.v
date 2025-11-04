`timescale 1ps/1ps
`include "INC16.v"

module INC16_tb;

    reg [15:0] a;
    wire [15:0] value;

    INC16 uut (.a(a), .value(value));

    initial begin

        $dumpfile("wave.vcd");
        $dumpvars(0, INC16_tb);

        a = 16'h0000;
        #10;
        a = 16'h000E;
        #10;

        $finish;
    end

endmodule