`timescale 1ps/1ps
`include "MUX8WAY16.v"

module MUX8WAY16_tb;

reg [15:0] a, b, c, d, e, f, g, h;
reg [2:0] sel;
wire [15:0] out;

MUX8WAY16 uut (.a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g), .h(h), .sel(sel), .out(out));

initial begin

    $dumpfile("wave.vcd");
    $dumpvars(0, MUX8WAY16_tb);

    a = 16'b00000000000000000;
    b = 16'b00000000000000001;
    c = 16'b00000000000000010;
    d = 16'b00000000000000011;
    e = 16'b00000000000000100;
    f = 16'b00000000000000101;
    g = 16'b00000000000000110;
    h = 16'b00000000000000111;
    sel = 3'b000; // Select input a
    #10;
    sel = 3'b001; // Select input b
    #10;
    sel = 3'b010; // Select input c
    #10;
    sel = 3'b011; // Select input d
    #10;
    sel = 3'b100; // Select input e
    #10;
    sel = 3'b101; // Select input f
    #10;
    sel = 3'b110; // Select input g
    #10;
    sel = 3'b111; // Select input h
    #10;
    
    $display("Test completed successfully.");
    $finish;

end

endmodule