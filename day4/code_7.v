
module code7;
reg [3:0] a, b, sum;

initial begin
    a = 4'd5;
    b = 4'd3;
    sum = a + b;
    $display("sum=%d", sum);
end
endmodule
