`timescale 1ps/1ps
`include "RAM8.v"

module RAM8_tb;

reg [15:0] in;
reg [2:0] sel;
reg load;
wire [15:0] out;

RAM8 uut (.in(in), .sel(sel), .load(load), .out(out));

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, RAM8_tb);


    // Step 1: Initialize
    in = 16'b0; sel = 3'b000; load = 0;
    #10;

    // Step 2: Write unique values to each RAM location
    $display("---- Writing ----");
    in = 16'h1111; sel = 3'b000; load = 1; #10; load = 0; #10;
    in = 16'h2222; sel = 3'b001; load = 1; #10; load = 0; #10;
    in = 16'h3333; sel = 3'b010; load = 1; #10; load = 0; #10;
    in = 16'h4444; sel = 3'b011; load = 1; #10; load = 0; #10;
    in = 16'h5555; sel = 3'b100; load = 1; #10; load = 0; #10;
    in = 16'h6666; sel = 3'b101; load = 1; #10; load = 0; #10;
    in = 16'h7777; sel = 3'b110; load = 1; #10; load = 0; #10;
    in = 16'h8888; sel = 3'b111; load = 1; #10; load = 0; #10;

    // Step 3: Read values back
    $display("---- Reading ----");
    sel = 3'b000; #10; $display("R0: %h", out);
    sel = 3'b001; #10; $display("R1: %h", out);
    sel = 3'b010; #10; $display("R2: %h", out);
    sel = 3'b011; #10; $display("R3: %h", out);
    sel = 3'b100; #10; $display("R4: %h", out);
    sel = 3'b101; #10; $display("R5: %h", out);
    sel = 3'b110; #10; $display("R6: %h", out);
    sel = 3'b111; #10; $display("R7: %h", out);


    $finish;
end

endmodule