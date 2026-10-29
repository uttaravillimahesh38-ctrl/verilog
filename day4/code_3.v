
module code3;
reg a, b;

initial begin
    a = 0;
    b = 1;
    a = b;
    b = a;
    $display("a=%b b=%b", a, b);
end
endmodule
