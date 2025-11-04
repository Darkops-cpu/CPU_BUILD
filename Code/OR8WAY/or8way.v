module or8way (input [7:0] in, output out);

/* An OR8WAY is a 8-input OR gate. It outputs 1 if any of the inputs are 1, otherwise it outputs 0. */

wire [6:0] t;;

assign t[0] = ~(~in[0] & ~in[1]);
assign t[1] = ~(~t[0]& ~in[2]);
assign t[2] = ~(~t[1] & ~in[3]);
assign t[3] = ~(~t[2] & ~in[4]);
assign t[4] = ~(~t[3] & ~in[5]);
assign t[5] = ~(~t[4] & ~in[6]);
assign t[6] = ~(~t[5] & ~in[7]);
assign out = t[6];

endmodule