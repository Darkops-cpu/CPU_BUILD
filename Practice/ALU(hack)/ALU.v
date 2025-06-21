module ALU (a, b, zx, nx, zy, ny, f, no, out);

    input [15:0] a, b;
    input zx, nx, zy, ny, f, no;
    output reg [15:0] out;

    reg [15:0] a_temp, b_temp;
    reg [15:0] out_temp;

    always @(*) begin
        // for only input a a.k.a x
        if (zx == 1) begin
            a_temp = 16'b0;
            
            if (nx==1) begin
                a_temp = ~a_temp;
            end
        end
        else begin
            a_temp = a;
            if (nx) begin
                a_temp = ~a_temp;
            end
        end

        // for only input b a.k.a y

        if (zy == 1) begin
            b_temp = 16'b0;
            
            if (ny==1) begin
                b_temp = ~b_temp;
            end
        end
        else begin
            b_temp = b;
            if (ny) begin
                b_temp = ~b_temp;
            end
        end

        // for f input
        if (f) begin
            out_temp = a_temp + b_temp;
        end
        else begin
            out_temp = a_temp&b_temp;
        end

        // for no input

        if (no) begin
            out_temp = ~out_temp;
        end
        
        out = out_temp;

    end


endmodule