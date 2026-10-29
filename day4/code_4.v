
module code4;
reg a, b;

initial begin
    a = 0;
    b = 1;
    a <= b;
    b <= a;
    #1 $display("a=%b b=%b", a, b);
end
endmodule
