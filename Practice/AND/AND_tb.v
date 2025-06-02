`timescale 1ps/1ps
`include "AND.v"

module AND_tb;

    reg A;
    reg B;
    wire OUT;

    AND uut ( .A(A), .B(B), .OUT(OUT));

    initial begin 
        $dumpfile("wave.vcd");
        $dumpvars(0, AND_tb);
        A = 0; B = 0;
        #10;
        A = 0; B = 1;
        #10;
        A = 1; B = 0;
        #10;
        A = 1; B = 1;
        #10;

        $finish;
    end


endmodule