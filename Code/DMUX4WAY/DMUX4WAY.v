module DMUX4WAY (input s1, s2, din, output a, b, c, d);

assign a = din&(~s1&~s2);
assign b = din&(~s1&s2);
assign c = din&(s1&~s2);
assign d = din&(s1&s2);

endmodule