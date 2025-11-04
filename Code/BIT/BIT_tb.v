`timescale 1ps/1ps
`include "BIT.v"

module BIT_tb;

reg a, load;
wire out;

BIT uut (.a(a), .load(load), .out(out));

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, BIT_tb);

    a = 0; load = 0;
    #10;
    a = 1; load = 1;
    #10;
    a = 1; load = 1;
    #10;
    a = 1; load = 0;
    #10;
    a = 0; load = 0;
    #10;
    a = 0; load = 1;
    #10;

    $finish;

end

endmodule