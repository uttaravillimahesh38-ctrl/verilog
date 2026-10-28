module jk_flip_flop_tb;

    reg clk, J, K;
    wire Q, Qbar;

    jk_flip_flop dut (
        .clk(clk),
        .J(J),
        .K(K),
        .Q(Q),
        .Qbar(Qbar)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        J = 0;
        K = 0;
        $dumpfile("jk_flip_flop.vcd");
        $dumpvars(0,jk_flip_flop_tb);

        $monitor("Time=%0t CLK=%b J=%b K=%b Q=%b Qbar=%b",
                  $time, clk, J, K, Q, Qbar);

      
        @(negedge clk);
        J = 1; K = 0;

        
        @(negedge clk);
        J = 0; K = 1;

      
        @(negedge clk);
        J = 1; K = 0;

        
        @(negedge clk);
        J = 1; K = 1;

       
        @(negedge clk);
        J = 1; K = 1;

        
        @(negedge clk);
        J = 0; K = 0;

        #2;
        $finish;
    end

endmodule
