module counter_3bit_up_tb;
    reg clk, reset;
    wire [2:0] count;

    counter_3bit_up dut(clk, reset, count);
    always #5 clk = ~clk;

    initial begin
        clk=0; reset=1;
        $monitor("t=%0t reset=%b count=%d (%b)",
                  $time, reset, count, count);
        #10 reset=0;
        #90 $finish;
    end
endmodule
