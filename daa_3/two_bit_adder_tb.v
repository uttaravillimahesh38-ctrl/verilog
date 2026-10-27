`timescale 1ns/1ps

module two_bit_adder_tb;
    reg [1:0] A, B;
    wire [2:0] Sum;

    two_bit_adder dut(A, B, Sum);

    initial begin
        $dumpfile("two_bit_adder");
        $dumpvars(0,two_bit_adder_tb);

        $monitor("A=%d B=%d Sum=%d", A, B, Sum);
        A=0; B=0; #10;
        A=1; B=2; #10;
        A=2; B=3; #10;
        A=3; B=3; #10;
        $finish;
    end
endmodule
