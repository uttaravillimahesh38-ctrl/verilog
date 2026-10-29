
module mux2(
    input a, b, sel,
    output reg y
);
always @(*) begin
    if (sel == 0)
        y = a;
    else
        y = b;
end
endmodule
