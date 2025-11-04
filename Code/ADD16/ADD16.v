module ADD16 (input [15:0] a, input [15:0] b, input cin, output [15:0] sum, output cout);

// will add a 16 bit bus, input are 16bit output is also 16bit, leaving cout as it will be a single bit

    assign sum = ((~a&~b) | (a&b))&cin | ~a&b&(~cin) | a&~b&(~cin);
    assign cout = (~a&b | a&~b) & cin | a&b;

endmodule