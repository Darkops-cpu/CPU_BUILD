module DMUX8WAY (input s1, s2, s3, din, output a, b, c ,d , e, f, g, h);

assign a = din&(((~s1)&(~s2))&(~s3));
assign b = din&(((~s1)&(~s2))&(s3));
assign c = din&(((~s1)&(s2))&(~s3));
assign d = din&(((~s1)&(s2))&(s3));
assign e = din&(((s1)&(~s2))&(~s3));
assign f = din&(((s1)&(~s2))&(s3));
assign g = din&(((s1)&(s2))&(~s3));
assign h = din&(((s1)&(s2))&(s3));

endmodule