`timescale 1ps/1ps
`include "Ripple_carry_adder.v"

module Ripple_carry_adder_tb;

    reg  a0,a1,a2,a3, b0,b1,b2,b3, cin;
    wire sum0, sum1, sum2, sum3, cout;

    Ripple_carry_adder uut ( .a0(a0), .a1(a1), .a2(a2), .a3(a3), .b0(b0), .b1(b1), .b2(b2), .b3(b3), .cin(cin), .sum0(sum0), .sum1(sum1), .sum2(sum2), .sum3(sum3), .cout(cout));

    initial begin

        $dumpfile("wave.vcd");
        $dumpvars(0, Ripple_carry_adder_tb);

        // 4 custom test cases will be used here, i dont want to type all 32 ones and 0 again and again.
        // the test cases are 2 + 5; 7 + 10; 8 + 9; 12 + 13;

        cin = 0;

        //test 1

        a3 = 0; a2 = 0; a1 = 1; a0 = 0;
        b3 = 0; b2 = 1; b1 = 0; b0 = 1;
        #10;

        a3 = 0; a2 = 1; a1 = 1; a0 = 1;
        b3 = 1; b2 = 0; b1 = 1; b0 = 0;
        #10;

        a3 = 1; a2 = 1; a1 = 0; a0 = 0;
        b3 = 0; b2 = 1; b1 = 0; b0 = 1;
        #10;

        a3 = 1; a2 = 0; a1 = 0; a0 = 0;
        b3 = 1; b2 = 0; b1 = 0; b0 = 1;
        #10;
        

        $finish;

    end

endmodule