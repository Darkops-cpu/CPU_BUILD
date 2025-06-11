`timescale 1ps/1ps
`include "or8way.v"

module or8way_tb;

    reg [7:0] in;
    wire out;

    or8way uut (.in(in), .out(out));

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, or8way_tb);

        in = 8'b0000_0000;
        #10;
        in = 8'b0101_0101;
        #10;
        in = 8'b1111_1111;
        #10;

        $finish;
    end

endmodule