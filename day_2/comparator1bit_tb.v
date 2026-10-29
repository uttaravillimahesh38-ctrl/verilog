
`timescale 1ns/1ps
module comparator1bit_tb;
    reg A, B;
    wire Equal, Greater, Less;

    comparator1bit dut(A, B, Equal, Greater, Less);

    initial begin
        $dumpfile("comparator1bit.vcd");
        $dumpvars(0, comparator1bit_tb);
        A=0; B=0; #10;
        A=0; B=1; #10;
        A=1; B=0; #10;
        A=1; B=1; #10;
        $finish;
    end
endmodule
