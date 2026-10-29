`timescale 1ns/1ps

module full_Subtractor_tb;

    reg A, B, Bin;
    wire D, Bout;

    full_Subtractor dut(
        .A(A),
        .B(B),
        .Bin(Bin),
        .D(D),
        .Bout(Bout)
    );

    initial begin
        $dumpfile("full_Subtractor.vcd");
        $dumpvars(0, full_Subtractor_tb);

        $monitor("A=%b B=%b Bin=%b | D=%b Bout=%b",
                 A, B, Bin, D, Bout);

        A=0; B=0; Bin=0; #10;
        A=0; B=0; Bin=1; #10;
        A=0; B=1; Bin=0; #10;
        A=0; B=1; Bin=1; #10;
        A=1; B=0; Bin=0; #10;
        A=1; B=0; Bin=1; #10;
        A=1; B=1; Bin=0; #10;
        A=1; B=1; Bin=1; #10;

        $finish;
    end

endmodule
