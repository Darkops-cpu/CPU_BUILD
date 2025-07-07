module RAM16k (
    input [15:0] in,
    input [13:0] sel,
    input load, clk,
    output reg [15:0] out
);

    reg [15:0] regsiters [16383:0];

    always @(posedge clk) begin

        if (load == 1) begin

            regsiters[sel] <= in;
            
        end
        
    end

    always @(*) begin
        out = regsiters[sel];
    end

endmodule