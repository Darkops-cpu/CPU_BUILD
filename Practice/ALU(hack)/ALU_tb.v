`timescale 1ps/1ps
`include "ALU.v"

module ALU_tb;

    reg [15:0] a, b;
    reg zx, nx, zy, ny, f, no;
    wire [15:0] out;

    ALU uut ( .a(a), .b(b), .zx(zx), .nx(nx), .zy(zy), .ny(ny), .f(f), .no(no), .out(out));

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, ALU_tb);

        a = 16'h1100; b = 16'h1011;
        
        zx = 0; nx = 0; zy = 1; ny = 1; f = 0; no = 1; //should give ~a
        #10;
        $finish;
    end


endmodule