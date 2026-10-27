module ripple_adder_tb;
    reg [3:0] A, B;
    reg Cin;
    wire [3:0] Sum;
    wire Cout;

    ripple_adder dut(A, B, Cin, Sum, Cout);

    initial begin
        $dumpfile("ripple_adder.vcd");
        $dumpvars(0,ripple_adder_tb);
        
        $monitor("A=%d B=%d Cin=%b Sum=%d Cout=%b",
                  A, B, Cin, Sum, Cout);
        A=4'd3;  B=4'd2;  Cin=0; #10;
        A=4'd7;  B=4'd5;  Cin=0; #10;
        A=4'd15; B=4'd1;  Cin=0; #10;
        A=4'd9;  B=4'd6;  Cin=1; #10;
        $finish;
    end
endmodule
