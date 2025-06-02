module XOR (a, b, out);

    input a, b;
    output out;
    wire temp1, temp2, temp3, temp4;

    assign temp1 = ~(a&a);
    assign temp2 = ~(b&b);
    assign temp3 = ~(temp1&b);
    assign temp4 = ~(a&temp2);
    assign out = ~(temp3&temp4);

endmodule