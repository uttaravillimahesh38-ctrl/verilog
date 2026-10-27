
`timescale 1ns/1ps

module tb_sr_flip_flop;

    reg clk;
    reg s, r;
    wire q;

    sr_flip_flop dut (
        .clk(clk),
        .s(s),
        .r(r),
        .q(q)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        s = 0;
        r = 0;

        #10 s = 1; r = 0; 
        #10 s = 0; r = 0; 
        #10 s = 0; r = 1;  
        #10 s = 1; r = 0;  
        #10 s = 1; r = 1;  
        #10 s = 0; r = 0;

        #10 $finish;
    end

    initial begin
        $monitor("time=%0t clk=%b s=%b r=%b q=%b",
                 $time, clk, s, r, q);
    end

    initial begin
        $dumpfile("sr_flip_flop.vcd");
        $dumpvars(0, tb_sr_flip_flop);
    end

endmodule
