module Ripple_carry_adder(input a0,a1,a2,a3, b0,b1,b2,b3, cin, output  sum0, sum1, sum2, sum3, cout);

    wire c1, c2, c3;;

    //first full adder 

    assign sum0 = ((~a0&~b0) | (a0&b0))&cin | ~a0&b0&(~cin) | a0&~b0&(~cin);
    assign c1 = (~a0&b0 | a0&~b0) & cin | a0&b0;

    //second full adder

    assign sum1 = ((~a1&~b1) | (a1&b1))&c1 | ~a1&b1&(~c1) | a1&~b1&(~c1);
    assign c2 = (~a1&b1 | a1&~b1) & c1 | a1&b1;

    //third full adder

    assign sum2 = ((~a2&~b2) | (a2&b2))&c2 | ~a2&b2&(~c2) | a2&~b2&(~c2);
    assign c3 = (~a2&b2 | a2&~b2) & c2 | a2&b2;

    //last full adder

    assign sum3 = ((~a3&~b3) | (a3&b3))&c3 | ~a3&b3&(~c3) | a3&~b3&(~c3);
    assign cout = (~a3&b3 | a3&~b3) & c3 | a3&b3;

    // structure for the 4 bit ripple carry adder
    // bit1 bit2 bit3 bit4
    //  a3   a2   a1   a0
    //+ b3   b2   b1   b0
    //= sum3 sum2 sum1 sum0
    //the extra bit on the addition of a3 and b3 will tell us the carry out digit (cout)

endmodule