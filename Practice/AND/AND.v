module AND (A, B, OUT);
    input A, B;
    output OUT;
    wire TEMP;

    assign TEMP = ~(A&B);

    assign OUT = ~(TEMP&TEMP);

    
endmodule