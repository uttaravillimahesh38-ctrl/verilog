`timescale 1ns/1ps

module clock_100hz_tb;

reg clk_50mhz;
reg reset;

wire clk_100hz;

// DUT
clock_100hz uut(
    .clk_50mhz(clk_50mhz),
    .reset(reset),
    .clk_100hz(clk_100hz)
);

// 50 MHz clock generation
initial
begin
    clk_50mhz = 0;
    forever #10 clk_50mhz = ~clk_50mhz;
end

// Test stimulus
initial
begin
    reset = 1;

    #100;
    reset = 0;

    // Run simulation for 20 ms
    #20000000;

    $finish;
end

// Display output clock transitions
always @(posedge clk_100hz or negedge clk_100hz)
begin
    $strobe("Time=%0t ns | 100Hz Clock=%b",
             $time, clk_100hz);
end

endmodule
