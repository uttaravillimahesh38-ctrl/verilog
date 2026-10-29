
`timescale 1ns/1ps

module t_flip_flop_tb;

reg clk;
reg t;
wire q;

t_flip_flop dut (
    .clk(clk),
    .t(t),
    .q(q)
);

always #5 clk = ~clk;

initial begin
    $dumpfile("t_flip_flop.vcd");
    $dumpvars(0, t_flip_flop_tb);

    clk = 0;
    t = 0;

    #10 t = 1;
    #40 t = 0;
    #20 t = 1;
    #30;

    $finish;
end

initial begin
    $monitor("Time=%0t clk=%b t=%b q=%b",
             $time, clk, t, q);
end

endmodule
