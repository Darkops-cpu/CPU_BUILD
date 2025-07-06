`timescale 1ps/1ps
`include "RAM512.v"

module RAM512_tb;

reg [15:0] in;
reg [8:0] sel;
reg load, clk;
wire [15:0] out;

RAM512 uut (.in(in), .sel(sel), .clk(clk), .load(load), .out(out));

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, RAM512_tb);
    
    in = 16'hC0DE; sel = 9'd0;   load = 1; clk = 0; #5; clk = 1; #5; clk = 0;
    in = 16'hDEAF; sel = 9'd128; load = 1; clk = 0; #5; clk = 1; #5; clk = 0;
    in = 16'hF00D; sel = 9'd511; load = 1; clk = 0; #5; clk = 1; #5; clk = 0;

    // Disable write
    load = 0;

    // Read and display those values
    sel = 9'd0;   #2; $display("mem[0]   = %h", out);   // Expect C0DE
    sel = 9'd128; #2; $display("mem[128] = %h", out);   // Expect BEEF
    sel = 9'd511; #2; $display("mem[511] = %h", out);   // Expect F00D

    $finish;

end

endmodule