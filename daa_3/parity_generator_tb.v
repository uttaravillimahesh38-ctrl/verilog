module parity_generator_tb;
    reg A, B, C;
    wire EvenParity, OddParity;

    parity_generator dut(A, B, C, EvenParity, OddParity);

    initial begin
        $monitor("A=%b B=%b C=%b Even=%b Odd=%b",
                  A, B, C, EvenParity, OddParity);
        A=0; B=0; C=0; #10;
        A=0; B=0; C=1; #10;
        A=0; B=1; C=1; #10;
        A=1; B=1; C=1; #10;
        $finish;
    end
endmodule
