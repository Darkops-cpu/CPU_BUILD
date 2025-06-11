`timescale 1ps/1ps
`include "MUX4WAY16.v"

module MUX4WAY16_tb;

reg [15:0] a, b, c, d;
reg [1:0] sel;
wire [15:0] out;

MUX4WAY16 uut (.a(a), .b(b), .c(c), .d(d), .sel(sel), .out(out));
initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, MUX4WAY16_tb);

    // Test case 1: Select input a
    a = 16'hAAAA; b = 16'hBBBB; c = 16'hCCCC; d = 16'hDDDD; sel = 2'b00;
    #10;
    
    // Test case 2: Select input b
    sel = 2'b01;
    #10;

    // Test case 3: Select input c
    sel = 2'b10;
    #10;

    // Test case 4: Select input d
    sel = 2'b11;
    #10;

    $finish;
end

endmodule