module full_adder (
    input A,
    input B,
    input Cin,
    output Sum,
    output Cout
);

    assign Sum  = A ^ B ^ Cin;
    assign Comut = (A & B) | (A & Cin) | (B & Cin);

endmodule
