`timescale 1ns/1ps
module demux1to4_tb;
    reg D;
    reg [1:0] S;
    wire [3:0] Y;

    demux1to4 dut(.D(D), .S(S), .Y(Y));

    initial begin
        $dumpfile("demux1to4.vcd");
        $dumpvars(0, demux1to4_tb);
        D=1; S=0; #10;
        S=1; #10;
        S=2; #10;
        S=3; #10;
        D=0; #10;
        $finish;
    end
endmodule
