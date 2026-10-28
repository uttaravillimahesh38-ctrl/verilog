module counter_4bit_up_tb;
    reg clk, reset;
    wire [3:0] count;

    counter_4bit_up dut(clk, reset, count);
    always #5 clk = ~clk;

    initial begin
        clk=0; reset=1;
        $monitor("t=%0t reset=%b count=%d",
                  $time, reset, count);
        #10 reset=0;
     #180 $finish;
    end
endmodule
