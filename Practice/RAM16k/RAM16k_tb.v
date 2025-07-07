`timescale 1ps/1ps
`include "RAM16k.v"

module RAM16k_tb;

reg [15:0] in;
reg load, clk;
reg [13:0] sel;
wire [15:0] out;

RAM16k uut (.in(in), .load(load), .clk(clk), .sel(sel), .out(out));

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, RAM16k_tb);

    clk = 0; load = 0;
    in = 16'hDEAF;
    sel = 14'b10111000111011;
    #10;

    clk = 1; load = 1;

    #10;

    clk = 0; load = 0;
    in = 16'hC0DE;
    sel = 14'b11100010001100;

    #10;

    load = 1;
    clk = 1;
    #10;
    $finish;
end

endmodule