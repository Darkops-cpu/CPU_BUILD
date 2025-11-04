`timescale 1ps/1ps
`include "DMUX4WAY.v"

module DMUX4WAY_tb;

reg s1, s2, din;
wire a, b, c, d;

DMUX4WAY uut (.a(a), .b(b), .c(c), .d(d), .s1(s1), .s2(s2), .din(din));

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, DMUX4WAY_tb);

    din = 1;
    s1 = 0; s2 = 0;
    #10;
    s1 = 0; s2 = 1;
    #10;
    s1 = 1; s2 = 0;
    #10;
    s1 = 1; s2 = 1;
    #10;

    din = 0;
    s1 = 0; s2 = 0;
    #10;
    s1 = 0; s2 = 1;
    #10;
    s1 = 1; s2 = 0;
    #10;
    s1 = 1; s2 = 1;
    #10;

    $finish;

end

endmodule