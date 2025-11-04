`timescale 1ps/1ps
`include "NOT.v"

module NOT_tb;

    reg A;
    wire OUT;

    NOT uut(.A(A), .OUT(OUT));

    initial begin
        
        $dumpfile("wave.vcd");
        $dumpvars(0, NOT_tb);

        A = 0;
        #10;
        A = 1;
        #10;

        $finish;


    end


endmodule