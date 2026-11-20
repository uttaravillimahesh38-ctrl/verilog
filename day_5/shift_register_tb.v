`timescale 1ns/1ps

module shift_register_tb;

reg clk, reset, serial_in;
wire serial_out;

shift_register dut(
    .clk(clk),
    .reset(reset),
    .serial_in(serial_in),
    .serial_out(serial_out)
);

always #5 clk = ~clk;

initial begin
    $monitor("Time=%0t | Input=%b | Register=%b | Output=%b",
             $time, serial_in, dut.temp, serial_out);

    clk = 0;
    reset = 1;
    serial_in = 0;

    #10 reset = 0;

    serial_in = 1; #10;
    serial_in = 0; #10;
    serial_in = 1; #10;
    serial_in = 1; #10;
    serial_in = 0; #10;

    $finish;
end

endmodule
