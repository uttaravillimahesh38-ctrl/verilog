
`timescale 1ns/1ps

module tb_d_flip_flop;

    reg clk;
    reg rst;
    reg d;
    wire q;

    
    d_flip_flop dut (
        .clk(clk),
        .rst(rst),
        .d(d),
        .q(q)
    );

   
    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst = 1;
        d = 0;

        #12 rst = 0;

        #1 d = 1;
        #10 d = 0;
        #10 d = 1;
        #10 d = 0;

        #10 $finish;
    end

  
    initial begin
        $monitor("Time=%0t clk=%b rst=%b d=%b q=%b",
                  $time, clk, rst, d, q);
    end


    initial begin
        $dumpfile("d_flip_flop.vcd");
        $dumpvars(0, tb_d_flip_flop);
    end

endmodule

