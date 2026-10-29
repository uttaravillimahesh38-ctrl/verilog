module counter_2bit_up_tb;
    reg clk, reset;
    wire [1:0] count;

    counter_2bit_up dut(clk, reset, count);

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        reset = 1;
        $monitor("Time=%0t clk=%b reset=%b count=%d (%b)",
                  $time, clk, reset, count, count);

        #10 reset = 0;
        #60 reset = 1;
        #10 reset = 0;
        #30 $finish;
    end
endmodule
