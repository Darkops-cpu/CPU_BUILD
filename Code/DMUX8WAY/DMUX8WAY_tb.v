`timescale 1ps/1ps
`include "DMUX8WAY.v"

module DMUX8WAY_tb;

    reg s1, s2, s3, din;
    wire a, b, c, d, e, f, g, h;

    DMUX8WAY uut (
        .s1(s1),
        .s2(s2),
        .s3(s3),
        .din(din),
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .e(e),
        .f(f),
        .g(g),
        .h(h)
    );

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, DMUX8WAY_tb);

        din = 1;
        s1 = 0; s2 = 0; s3 = 0; #10;
        s1 = 0; s2 = 0; s3 = 1; #10;
        s1 = 0; s2 = 1; s3 = 0; #10;
        s1 = 0; s2 = 1; s3 = 1; #10;
        s1 = 1; s2 = 0; s3 = 0; #10;
        s1 = 1; s2 = 0; s3 = 1; #10;
        s1 = 1; s2 = 1; s3 = 0; #10;
        s1 = 1; s2 = 1; s3 = 1; #10;

        $finish;

    end

endmodule