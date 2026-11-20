module ripple_carry_adder_tb;

reg [3:0] a, b;
reg cin;

wire [3:0] sum;
wire cout;

ripple_carry_adder #(4) uut(
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
);

initial
begin
    $monitor("Time=%0t A=%b B=%b Cin=%b Sum=%b Cout=%b",
              $time, a, b, cin, sum, cout);

    a=4'b0000; b=4'b0000; cin=0;
    #10;

    a=4'b0101; b=4'b0011; cin=0;
    #10;

    a=4'b1111; b=4'b0001; cin=0;
    #10;

    a=4'b1010; b=4'b0101; cin=1;
    #10;

    $finish;
end

endmodule
