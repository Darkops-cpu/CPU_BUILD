module RAM8 (input [15:0] in, input [2:0] sel, input load, output reg [15:0] out);

// this is going to be a ram unit with 8 registers
// the select bit will select which ram bit to access and which to write, using the formula D = log(n) with base 2.
// will be using a combination of mux and demux to input into the registers.
reg [15:0] R [7:0];
// first part (demux part for selection of register of choice)

always @(*) begin
    if (sel == 3'b000) begin
        R[0] = in;
    end
    else begin
        if (sel == 3'b001) begin
            R[1] = in;
        end
        else begin
            if (sel == 3'b010) begin
                R[2] = in;
            end
            else begin
                if (sel == 3'b011) begin
                    R[3] = in;
                end
                else begin
                    if (sel == 3'b100) begin
                        R[4] = in;
                    end
                    else begin
                        if (sel == 3'b101) begin
                            R[5] = in;
                        end
                        else begin
                            if (sel == 3'b110) begin
                                R[6] = in;
                            end
                            else begin
                                if (sel == 3'b111) begin
                                    R[7] = in;
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end

// second part (demux outputs are fed into mux as inputs and then selected for out)

always @(*) begin
    if(load == 1) begin
        out = (sel == 3'b000) ? R[0] : (sel == 3'b001) ? R[1] : (sel == 3'b010) ? R[2] : (sel == 3'b011) ? R[3] : (sel == 3'b100) ? R[4] : (sel == 3'b101) ? R[5] : (sel == 3'b110) ? R[6] : R[7]; 
    end
end

endmodule