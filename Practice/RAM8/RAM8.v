module RAM8 (input [15:0] in, input [2:0] sel, input load, output reg [15:0] out);

// this is going to be a ram unit with 8 registers
// the select bit will select which ram bit to access and which to write, using the formula D = log(n) with base 2.
// will be using a combination of mux and demux to input into the registers.

// first part (demux part for selection of register of choice)

wire [15:0] R [7:0];

assign R[0] = in&((~sel[0]&~sel[1])&~sel[2]);
assign R[1] = in&((~sel[0]&~sel[1])&sel[2]);
assign R[2] = in&((~sel[0]&sel[1])&~sel[2]);
assign R[3] = in&((~sel[0]&sel[1])&sel[2]);
assign R[4] = in&((sel[0]&~sel[1])&~sel[2]);
assign R[5] = in&((sel[0]&~sel[1])&sel[2]);
assign R[6] = in&((sel[0]&sel[1])&~sel[2]);
assign R[7] = in&((sel[0]&sel[1])&sel[2]);

// second part (demux outputs are fed into mux as inputs and then selected for out)

always @(*) begin
    if(load == 1) begin
        out = (sel == 3'b000) ? R[0] : (sel == 3'b001) ? R[1] : (sel == 3'b010) ? R[2] : (sel == 3'b011) ? R[3] : (sel == 3'b100) ? R[4] : (sel == 3'b101) ? R[5] : (sel == 3'b110) ? R[6] : R[7]; 
    end
end

endmodule