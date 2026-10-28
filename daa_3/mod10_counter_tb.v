module mod10_counter_tb;
    reg clk, reset;
    wire [3:0] count;

    mod10_counter dut(clk, reset, count);
    always #5 clk = ~clk;

    initial begin
        clk=0; reset=1;
        $monitor("t=%0t reset=%b count=%d",
                  $time, reset, count);

        #10 reset=0;
        #200 $finish;
    end
endmodule
