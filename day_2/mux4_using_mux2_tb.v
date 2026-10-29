
`timescale 1ns/1ps

module mux4_using_mux2_tb;

    reg I0, I1, I2, I3;
    reg [1:0] S;
    wire Y;

    mux4_using_mux2 dut (
        .I0(I0),
        .I1(I1),
        .I2(I2),
        .I3(I3),
        .S(S),
        .Y(Y)
    );

    initial begin
        $dumpfile("mux4_using_mux2.vcd");
        $dumpvars(0, mux4_using_mux2_tb);

        I0=0; I1=1; I2=0; I3=1;

        S=2'b00; #10;
        $display("S=%b Y=%b", S, Y);

        S=2'b01; #10;
        $display("S=%b Y=%b", S, Y);

        S=2'b10; #10;
        $display("S=%b Y=%b", S, Y);

        S=2'b11; #10;
        $display("S=%b Y=%b", S, Y);

        $finish;
    end

endmodule
