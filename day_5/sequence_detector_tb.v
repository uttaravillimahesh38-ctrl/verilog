`timescale 1ns/1ps

module sequence_detector_tb;

reg clk;
reg reset;
reg x;

wire y;


sequence_detector uut(
    .clk(clk),
    .reset(reset),
    .x(x),
    .y(y)
);


initial
begin
    clk = 0;
    forever #5 clk = ~clk;
end


task send_bit;
input bit_in;
begin
    @(negedge clk);
    x = bit_in;

    @(posedge clk);
    #1;

    $display("Time=%0t x=%b y=%b",
              $time, x, y);
end
endtask

initial
begin
    reset = 1;
    x = 0;

    #12;
    reset = 0;

    $display("----- Detect 0000 -----");

    send_bit(0);
    send_bit(0);
    send_bit(0);
    send_bit(0);

    $display("----- Detect 1111 -----");

    send_bit(1);
    send_bit(1);
    send_bit(1);
    send_bit(1);

    $display("----- Detect 00100 -----");

    send_bit(0);
    send_bit(0);
    send_bit(1);
    send_bit(0);
    send_bit(0);

    $display("----- Detect 11111 -----");

    send_bit(1);
    send_bit(1);
    send_bit(1);
    send_bit(1);
    send_bit(1);

    #10;
    $finish;
end

endmodule
