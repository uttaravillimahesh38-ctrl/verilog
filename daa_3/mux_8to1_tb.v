`timescale 1ns/1ps
module mux_8to1_tb;
 reg [7:0] in;
 reg [2:0] sel;
  wire y;
 
 mux_8to1 dut(
    .in(in),
    .sel(sel),
    .y(y)
 );

 integer i;
  initial begin
   $dumpfile("mux_8to1.vcd");
   $dumpvars(0,mux_8to1_tb);
    
    $display("time\t in\t sel\t y")
    $monitor("%0t\t %b\t %b\t ", $time ,in , sel ,y );
     
     in = 8'b10101010;
      for (i=0; i<=8 ;i=i+1)
      sel = i;
      #10;
      in = 8'b11111111;
      sel = 3'b101;
      #10;
      $finish;
      end

endmodule



