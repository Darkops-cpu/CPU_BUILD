module OR (a, b, out);

    input a, b;
    output out;
    wire temp1, temp2;

    assign temp1 = ~(a&a);
    assign temp2 = ~(b&b);
    assign out = ~(temp1&temp2);

endmodule