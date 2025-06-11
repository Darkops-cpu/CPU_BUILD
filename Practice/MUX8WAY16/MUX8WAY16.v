module MUX8WAY16 (input [15:0] a, input [15:0] b, input [15:0] c, input [15:0] d, input [15:0] e, input [15:0] f, input [15:0] g, input [15:0] h, input [2:0] sel, output [15:0] out);

/*A MUX8WAY16 takes 8 inputs and each is of 16 bits and these inputs are then feeded out through one output, that too of 16 bits. */

assign out = (sel == 3'b000) ? a : (sel == 3'b 001) ? b : (sel == 3'b 010) ? c : (sel == 3'b011) ? d : (sel == 3'b100) ? e : (sel == 3'b 101) ? f : (sel == 3'b110) ? g : h;

endmodule