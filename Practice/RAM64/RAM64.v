module RAM64 (
    input [15:0] in,
    input [5:0] sel,
    input load,
    input clk,
    output reg [15:0] out
);

    reg [15:0] mem [63:0];

    always @(posedge clk) begin
        if (load == 1)begin
            mem[sel] <= in;
        end
    end

    always @(*) begin
        out = mem[sel];
    end

endmodule