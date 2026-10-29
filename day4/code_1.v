
module code1;
reg a, b;

initial begin
    a = 0;
    b = a;
    $display("a=%b b=%b", a, b);
end
endmodule
