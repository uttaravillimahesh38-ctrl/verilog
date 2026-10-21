`timescale 1ns/1ps
module priority_encoder4to2_tb;
    reg [3:0] D;
    wire [1:0] Y;
    wire V;

    priority_encoder4to2 dut(.D(D), .Y(Y), .V(V));

initial begin
        $dumpfile("priority_encoder4to2.vcd");
        $dumpvars(0, priority_encoder4to2_tb);
        D=4'b0000; #10;
        D=4'b0001; #10;
        D=4'b0110; #10;
        D=4'b1100; #10;
        $finish;
    end
endmodule
