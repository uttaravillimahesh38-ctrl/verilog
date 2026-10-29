module up_down_counter(
    input clk, reset, mode,
    output reg [3:0] count
);
    always @(posedge clk) begin
        if (reset)
            count <= 4'd0;
        else if (mode)
            count <= count + 1'b1;
        else
            count <= count - 1'b1;
    end
endmodule
