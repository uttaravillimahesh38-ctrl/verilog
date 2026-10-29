
module code5;
reg a, b, c;

initial begin
    a = 1;
    b = a;
    c = b;
    $display("%b %b %b", a, b, c);
end
endmodule
