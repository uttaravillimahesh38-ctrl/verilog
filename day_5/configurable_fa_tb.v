module configurable_fa_tb;

reg [7:0] A8, B8;
reg Cin8;
wire [7:0] Sum8;
wire Cout8;


configurable_fa #(8) FA8 (
    .A(A8),
    .B(B8),
    .Cin(Cin8),
    .Sum(Sum8),
    .Cout(Cout8)
);

initial begin
 
    A8 = 8'd10;
    B8 = 8'd20;
    Cin8 = 0;

    #10;
    $strobe("8-bit: A=%d B=%d Cin=%b Sum=%d Cout=%b",
             A8,B8,Cin8,Sum8,Cout8);

    A8 = 8'd255;
    B8 = 8'd1;
    Cin8 = 0;

    #10;
    $strobe("8-bit: A=%d B=%d Cin=%b Sum=%d Cout=%b",
             A8,B8,Cin8,Sum8,Cout8);

    A8 = 8'd100;
    B8 = 8'd50;
    Cin8 = 1;

    #10;
    $strobe("8-bit: A=%d B=%d Cin=%b Sum=%d Cout=%b",
             A8,B8,Cin8,Sum8,Cout8);

    
    $finish;

end

endmodule
