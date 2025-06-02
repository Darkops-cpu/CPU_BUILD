`timescale 1ps/1ps
`include "NAND.v"

module NAND_tb;

    reg A, B;
    wire OUT;

    NAND uut (.A(A), .B(B), .OUT(OUT));

    initial begin
        
        $dumpfile("wave.vcd");
        $dumpvars(0, NAND_tb);

        A = 0; B = 0;
        #10;
        A = 0; B = 1;
        #10;
        A = 1; B = 0;
        #10;
        A = 1; B = 1;
        #10;

        $display("Test completed");
        $finish;

    end
endmodule