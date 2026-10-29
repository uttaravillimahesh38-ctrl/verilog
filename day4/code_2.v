
module code2;
reg a, b;

initial begin
    a = 0;
    b = 1;
    a <= 1;
    b <= a;
    #1 $display("a=%b b=%b", a, b);
end
endmodule
