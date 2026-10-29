module counter_2bit_up(
    input clk,
    input reset,
    output reg [1:0] count
);
    always @(posedge clk) begin
        if (reset)
            count <= 2'b00;
        else
            count <= count + 1'b1;
    end
endmodule
