module RAM4k (
    input [15:0] in,
    input load, clk,
    input [11:0] sel,
    output reg [15:0] out
);

// a ram module with 4096 memory registers to store data, each storage of 16 bits

reg [15:0] registors [4095:0];

    always @(posedge clk) begin
        if (load == 1) begin

            registors[sel] <= in;
            
        end
        
    end

    always @(*) begin
        out = registors[sel];
    end

endmodule