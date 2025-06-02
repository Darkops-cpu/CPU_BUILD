`timescale 1ps/1ps
`include "OR.v"

module OR_tb;

    reg a, b;
    wire out;

    OR uut (.a(a), .b(b), .out(out));

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, OR_tb);

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