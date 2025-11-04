module DMUX (input sel, input din, output dout1, output dout2);

// this is a 1:2 demultiplexer

assign dout1 = ~sel & din;
assign dout2 = sel & din;

endmodule