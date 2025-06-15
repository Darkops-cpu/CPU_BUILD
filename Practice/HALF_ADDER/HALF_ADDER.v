module HALF_ADDER(a, b, sum, carry);

    input a, b;
    output sum, carry;

    wire temp1, temp2, temp3, temp4;
    // Using NAND gates for Sum
    assign temp1 = ~(a&a);
    assign temp2 = ~(b&b);
    assign temp3 = ~(temp1&b);
    assign temp4 = ~(a&temp2);
    assign sum = ~(temp3&temp4);

    // Using NAND gates for Carry
    assign temp5 = ~(a&b);
    assign carry = ~(temp5&temp5);

endmodule