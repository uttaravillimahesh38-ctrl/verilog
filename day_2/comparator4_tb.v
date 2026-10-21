module comparator4_tb;
    reg  [3:0] A, B;
    wire GT, EQ, LT;

    comparator4 dut (
        .A(A), .B(B),
        .GT(GT), .EQ(EQ), .LT(LT)
    );

    initial begin
        $dumpfile("comparator4.vcd");
        $dumpvars(0, comparator4_tb);

        A = 4'd12; B = 4'd5;  #10;
        A = 4'd7;  B = 4'd7;  #10;
        A = 4'd2;  B = 4'd10; #10;

        $finish;
    end

    initial
        $monitor("A=%d B=%d GT=%b EQ=%b LT=%b",
                 A, B, GT, EQ, LT);
endmodule
