module up_down_counter_tb;
    reg clk, reset, mode;
    wire [3:0] count;

    up_down_counter dut(clk, reset, mode, count);
    always #5 clk = ~clk;

    initial begin
        clk=0; reset=1; mode=1;
        $monitor("t=%0t mode=%b count=%d",
                  $time, mode, count);

        #10 reset=0;
        #40 mode=0;
        #40 mode=1;
        #30 $finish;
    end
endmodule
