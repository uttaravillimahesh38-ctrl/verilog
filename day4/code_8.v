
module code15;
reg a, b, x, y;

initial begin
    a = 1;
    b = 0;

    x = a;
    y = x;

    $display("Blocking: x=%b y=%b", x, y);

    x = 0;
    y = 0;

    x <= a;
    y <= x;

    #1 $display("Non-Blocking: x=%b y=%b", x, y);
end
endmodule
