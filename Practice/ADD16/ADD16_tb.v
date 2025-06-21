`timescale 1ps/1ps
`include "ADD16.v"

module ADD16_tb;

    reg [15:0] a, b;
    reg cin;
    wire [15:0] sum;
    wire cout;

    ADD16 uut ( .a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

    initial begin

        $dumpfile("wave.vcd");
        $dumpvars(0, ADD16_tb);
        
        cin = 0;
        a = 16'h0000; b = 16'h0000;
        #10;
        a = 16'h0001; b = 16'h0001;
        #10;
        a = 16'hABCD; b = 16'h1234;
        #10;
        a = 16'hFFFF; b = 16'h0001;
        #10;

        cin = 1;
        a = 16'h0000; b = 16'h0000;
        #10;
        a = 16'h0001; b = 16'h0001;
        #10;
        a = 16'hABCD; b = 16'h1234;
        #10;
        a = 16'hFFFF; b = 16'h0001;
        #10;

        $finish;


    end

endmodule