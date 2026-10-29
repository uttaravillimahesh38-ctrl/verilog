module comparator4(
    input  [3:0] A, B,
    output GT, EQ, LT
);
    assign GT = (A > B);
    assign EQ = (A == B);
    assign LT = (A < B);
endmodule
