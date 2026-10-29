module comparator2(
    input  [1:0] A, B,
    output GT, EQ, LT
);
    assign GT = (A > B);
    assign EQ = (A == B);
    assign LT = (A < B);
endmodule
