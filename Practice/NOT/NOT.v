module NOT(A, OUT);

    input A;
    output OUT;

    assign OUT = ~(A&A);

endmodule