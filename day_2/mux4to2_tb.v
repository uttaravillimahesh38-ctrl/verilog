`timescale 1ns/1ps
module mux4to1_tb;
    reg I0, I1, I2, I3;
    reg [1:0] S;
    wire Y;

    mux4to1 dut(.I0(I0), .I1(I1), .I2(I2), .I3(I3), .S(S), .Y(Y));

initial begin
        $dumpfile("mux4to1.vcd");
        $dumpvars(0, mux4to1_tb);
        I0=0; I1=1; I2=0; I3=1;
        S=0; #10;
        S=1; #10;
        S=2; #10;
        S=3; #10;
        $finish;
    end
endmodule
