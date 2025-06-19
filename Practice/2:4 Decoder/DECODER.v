module DECODER (input a, b, output out1, out2, out3, out4);

    assign out1 = ~a & ~b; // 00
    assign out2 = ~a & b;  // 01
    assign out3 = a & ~b;  // 10
    assign out4 = a & b;   // 11

endmodule