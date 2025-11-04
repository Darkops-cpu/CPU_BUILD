module RAM512(
    input [15:0] in,
    input load, clk, 
    input [8:0] sel, 
    output reg [15:0] out
);
// a ram with 512 registers to store memory
reg [15:0] mem [511:0];

always @(posedge clk) begin
        if (load == 1)begin
            mem[sel] <= in;
        end
    end

always @(*) begin
    out = mem[sel];
end

endmodule