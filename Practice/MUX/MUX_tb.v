`timescale 1ps/1ps
`include "MUX.v"

module MUX_tb;

    reg A, B, SEL;
    wire OUT;

    MUX uut (.A(A), .B(B), .SEL(SEL), .OUT(OUT));

    initial begin

        $dumpfile("wave.vcd");
        $dumpvars(0, MUX_tb);

        A = 0; B = 0; SEL = 0;
        #10
        A = 0; B = 0; SEL = 1;
        #10
        A = 0; B = 1; SEL = 0;
        #10
        A = 0; B = 1; SEL = 1;
        #10
        A = 1; B = 0; SEL = 0;
        #10
        A = 1; B = 0; SEL = 1;
        #10
        A = 1; B = 1; SEL = 0;
        #10
        A = 1; B = 1; SEL = 1;
        #10

        $finish;


    
    end

endmodule