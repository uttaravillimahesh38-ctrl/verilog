`timescale 1ns/1ps
module mux2to1_tb;
    reg A, B, S;
    wire Y;

    mux2to1 dut(.A(A), .B(B), .S(S), .Y(Y));

    initial begin
        $dumpfile("mux2to1.vcd");
        $dumpvars(0, mux2to1_tb);
        $monitor("A=%b B=%b S=%b Y=%b", A, B, S, Y);

        A=0; B=1; S=0; #10;
        S=1; #10;
        A=1; B=0; S=0; #10;
        S=1; #10;
        $finish;
    end
endmodule
