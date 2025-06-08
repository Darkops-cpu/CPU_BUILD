`timescale 1ps/1ps
`include "not16.v"


module not16_tb;

    reg [15:0] a;
    wire [15:0] out;

    not16 uut (.a(a), .out(out));

    initial begin

        $dumpfile("wave.vcd");
        $dumpvars(0, not16_tb);
        
        // Test all combinations of a[15:0]
        a = 16'b0000000000000000;
        #10;
        a = 16'b0000000000000001; 
        #10;
        a = 16'b0000000000000010; 
        #10;
        a = 16'b0000000000000011; 
        #10;
        a = 16'b1111111111111111; 
        #10;
        a = 16'b1010101010101010; 
        #10;
        a = 16'b0101010101010101; 
        #10;
        
        // Test with all bits set
        a = 16'b1111111111111111; 
        #10;

        // Test with all bits cleared
        a = 16'b0000000000000000; 
        #10;

        $finish;

    end

endmodule