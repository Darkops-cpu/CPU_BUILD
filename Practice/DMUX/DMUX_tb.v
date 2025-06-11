`timescale 1ps/1ps
`include "DMUX.v"

module DMUX_tb;

    reg sel, din;
    wire [1:0] dout;

    DMUX uut ( .sel(sel), .din(din), .dout1(dout1), .dout2(dout2));

    initial begin 

        $dumpfile("wave.vcd");
        $dumpvars(0, DMUX_tb);

        din = 0;
        sel = 0;
        #10;
        sel = 1;
        #10;

        din = 1;
        sel = 0;
        #10;
        sel = 1;
        #10;

        $finish;
    end

endmodule