module INC16 (input [15:0] a,  output [15:0] value);

//  can be seen in two ways, but the function remains the same, it will justincrement the input by 1, now if the user want to increment the input 16 time then it will be INC16, or if you want you can go ahead and make a bus of 16 bits and then increment it by one, i will be following the first approach

assign value = a + 1;

endmodule