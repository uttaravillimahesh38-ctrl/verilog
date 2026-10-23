`timescale 1ns/1ps
module xnor_gate_tb;
 reg A,B;
 wire Y;

     xnor_gate dut (
    .A(A),
    .B(B),
    .Y(Y)
 );
 initial begin
 $dumpfile("xnor_gate.vcd");
 $dumpvars(0,xnor_gate_tb);
   
       $monitor("Time=%0t A=%b B=%b Y=%b",$time, A, B, Y);

     A= 0; B=0; #10;
     A= 0; B=1; #10;
     A= 1; B=0; #10;
     A= 1; B=1; #10;

     $finish;
       
       end 
endmodule
