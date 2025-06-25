module BIT (input a, load, output reg out);

// output does not change until load is set to 1;
// a multiplxer would be cool to use here, a 2:1 mux specifically, as it can take in the input from both input and output and the load bit will act like the select and this will inturn tell the bit to which output ot be passed.

always @(*) begin
    if (load == 1)begin

        out = a;

    end
end
endmodule
