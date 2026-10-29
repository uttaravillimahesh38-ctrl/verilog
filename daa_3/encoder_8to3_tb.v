
`timescale 1ns/1ps

module encoder_8to3_tb;

reg  [7:0] in;
wire [2:0] out;

encoder_8to3 dut (
    .in(in),
    .out(out)
);

integer i;

initial begin
    $dumpfile("encoder_8to3.vcd");
    $dumpvars(0,encoder_8to3_tb); 

    $monitor("Time=%0t in=%b out=%b",
             $time, in, out);

    for (i = 0; i < 8; i = i + 1) begin
        in = 8'b00000001 << i;
        #20;
    end

    $finish;
  end
endmodule
