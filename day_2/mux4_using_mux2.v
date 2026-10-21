module mux2to1(
    input I0, I1, S,
    output Y
);
    assign Y = S ? I1 : I0;
endmodule

module mux4_using_mux2(
    input I0, I1, I2, I3,
    input [1:0] S,
    output Y
);
    wire W0, W1;

    mux2to1 M1(I0, I1, S[0], W0);
    mux2to1 M2(I2, I3, S[0], W1);
    mux2to1 M3(W0, W1, S[1], Y);
endmodule
