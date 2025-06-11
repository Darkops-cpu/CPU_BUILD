module mux16 (input [15:0] a, input [15:0] b, input sel, output [15:0] out);

/* A MUX16 is no different from a 2:1 MUX, the only difference being that the MUX inputs are of 16 bits rather than 1 bit. */

assign out = (a|b|sel)&(a|b|~sel)&(~a|b|~sel)&(a|~b|sel);

endmodule