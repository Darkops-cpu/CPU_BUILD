module or16 ( input [15:0] a, output out);

/* Lets assume two inputs A and B to make make a OR using only NAND's we would have to implment the following equation which can be shown with the use of 3 NAND gates, ~(~(A&A) & ~(B&B)), which when further simplified using demorgans law equals to nothing more than 
A|B, the standard equation of an OR gate. */

wire t1, t2, t3, t4, t5, t6, t7;

assign t1 = ~(~(a[0]) & ~(a[1]));
assign t2 = ~(~(a[2]) & ~(a[3]));
assign t3 = ~(~(a[4]) & ~(a[5]));
assign t4 = ~(~(a[6]) & ~(a[7]));
assign t5 = ~(~(a[8]) & ~(a[9]));
assign t6 = ~(~(a[10]) & ~(a[11]));
assign t7 = ~(~(a[12]) & ~(a[13]));
assign out = ~(~(a[14]) & ~(a[15]));



endmodule