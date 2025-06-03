module MUX (A, B, SEL, OUT);

input A, B, SEL;
output OUT;

assign OUT = (A|B|SEL)&(A|B|~SEL)&(A|~B|SEL)&(~A|B|~SEL);

endmodule