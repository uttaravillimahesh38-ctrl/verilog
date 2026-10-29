module mod5_counter_tb;
    reg clk, reset;
    wire [2:0] count;

    mod5_counter dut(clk, reset, count);
    always #5 clk = ~clk;

    initial begin
        clk=0; reset=1;
        $monitor("t=%0t count=%d", $time, count);

        #10 reset=0;
        #100 $finish;
    end
endmodule
