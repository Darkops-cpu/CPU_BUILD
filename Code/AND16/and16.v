module and16( input [15:0] a, output out );



wire t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14;

assign t1 = ~(~(a[0]&a[1]) & ~(a[0]&a[1]));
assign t2 = ~(~(t1&a[2]) & ~(t1&a[2]));
assign t3 = ~(~(t2&a[3]) & ~(t2&a[3]));
assign t4 = ~(~(t3&a[4]) & ~(t3&a[4]));
assign t5 = ~(~(t4&a[5]) & ~(t4&a[5]));
assign t6 = ~(~(t5&a[6]) & ~(t5&a[6]));
assign t7 = ~(~(t6&a[7]) & ~(t6&a[7]));
assign t8 = ~(~(t7&a[8]) & ~(t7&a[8]));
assign t9 = ~(~(t8&a[9]) & ~(t8&a[9]));
assign t10 = ~(~(t9&a[10]) & ~(t9&a[10]));
assign t11 = ~(~(t10&a[11]) & ~(t10&a[11]));
assign t12 = ~(~(t11&a[12]) & ~(t11&a[12]));
assign t13 = ~(~(t12&a[13]) & ~(t12&a[13]));
assign t14 = ~(~(t13&a[14]) & ~(t13&a[14]));
assign out = ~(~(t14&a[15]) & ~(t14&a[15]));



endmodule