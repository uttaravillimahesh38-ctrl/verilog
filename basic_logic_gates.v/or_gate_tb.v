`timescale 1ns/1ps

module or_gate_tb;

    reg A, B;
    wire Y;

    or_gate dut (
        .A(A),
        .B(B),
        .Y(Y)
    );

    initial begin
        $dumpfile("or_gate.vcd");
        $dumpvars(0, or_gate_tb);

        $monitor("A=%b B=%b Y=%b", A, B, Y);

        A=0; B=0; #10;
        A=0; B=1; #10;
        A=1; B=0; #10;
        A=1; B=1; #10;

        $finish;
    end

endmodule
