`timescale 1ps/1ps
`include "RAM4k.v"

module RAM4k_tb;

reg [15:0] in;
reg load, clk;
reg [11:0] sel;
wire [15:0] out;

RAM4k uut (.in(in), .load(load), .clk(clk), .sel(sel), .out(out));

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, RAM4k_tb);

    clk = 0;
    load = 0;
    in = 16'hF00D;
    sel = 12'b100101011000;

    #10;

    load = 1;

    #10;

    clk = 1;

    #10;

    load = 0;

    #10;

    clk = 0;
    #10;   

    $finish;
end

endmodule