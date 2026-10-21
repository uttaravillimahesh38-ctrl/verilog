module priority_encoder4to2(
    input [3:0] D,
    output reg [1:0] Y,
    output reg V
);
    always @(*) begin
        V = 1'b1;
        casex (D)
            4'b1xxx: Y = 2'b11;
            4'b01xx: Y = 2'b10;
            4'b001x: Y = 2'b01;
            4'b0001: Y = 2'b00;
            default: begin
                Y = 2'b00;
                V = 1'b0;
            end
        endcase
    end
endmodule
