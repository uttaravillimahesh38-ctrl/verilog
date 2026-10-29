module two_bit_adder(
    input [1:0] A, B,
    output [2:0] Sum
);
    assign Sum = A + B;
endmodule
