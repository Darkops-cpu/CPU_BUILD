module MUX4WAY16 (input [15:0] a, input [15:0] b, input [15:0] c, input [15:0] d, input [1:0] sel, output [15:0] out);
/* A 4-way 16-bit multiplexer. It selects one of the four 16-bit inputs based on the 2-bit selector. */

    assign out = (sel == 2'b00) ? a: (sel==2'b01) ? b : (sel == 2'b10) ? c : d;

endmodule