
module code6;
reg a, b, c;

initial begin
    a = 1;
    b = 0;
    c = 0;
    b <= a;
    c <= b;
    #1 $display("%b %b %b", a, b, c);
end
endmodule
