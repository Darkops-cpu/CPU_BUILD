`timescale 1ps/1ps
`include "RAM64.v"

module RAM64_tb;

reg [15:0] in;
reg [5:0] sel;
reg load, clk;
wire [15:0] out;

RAM64 uut (.in(in), .sel(sel), .clk(clk), .out(out), .load(load));

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, RAM64_tb);


    in = 16'hAAAA;
    sel = 6'd0;
    load = 1;
    clk = 0;
    #5; clk = 1; #5; clk = 0; // Write to mem[0]

    in = 16'h1234;
    sel = 6'd1;
    #5; clk = 1; #5; clk = 0; // Write to mem[1]

    in = 16'hDEAD;
    sel = 6'd2;
    #5; clk = 1; #5; clk = 0; // Write to mem[2]

    // Disable load, test read
    load = 0;

    sel = 6'd0;
    #2; $display("mem[0] = %h", out); // Should print AAAA

    sel = 6'd1;
    #2; $display("mem[1] = %h", out); // Should print 1234

    sel = 6'd2;
    #2; $display("mem[2] = %h", out); // Should print DEAD

    $finish;

end

endmodule