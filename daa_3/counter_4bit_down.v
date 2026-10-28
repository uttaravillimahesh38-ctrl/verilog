module counter_4bit_down(
    input clk, reset,
    output reg [3:0] count
);
    always @(posedge clk) begin
        if (reset)
            count <= 4'd15;
        else
            count <= count - 1'b1;
    end
endmodule
