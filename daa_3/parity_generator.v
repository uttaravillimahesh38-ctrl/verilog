module parity_generator(
    input A, B, C,
    output EvenParity, OddParity
);
    assign EvenParity = A ^ B ^ C;
    assign OddParity = ~EvenParity;
endmodule
