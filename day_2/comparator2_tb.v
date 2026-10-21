module comparator2_tb;
    reg  [1:0] A, B;
    wire GT, EQ, LT;

    comparator2 dut (
        .A(A), .B(B),
        .GT(GT), .EQ(EQ), .LT(LT)
    );

    initial begin
        $dumpfile("comparator2.vcd");
        $dumpvars(0, comparator2_tb);

        A = 2'd3; B = 2'd1; #10;
        A = 2'd2; B = 2'd2; #10;
        A = 2'd0; B = 2'd3; #10;

        $finish;
    end

    initial
        $monitor("A=%d B=%d GT=%b EQ=%b LT=%b",
                 A, B, GT, EQ, LT);
endmodule
