module comparator1bit(
    input A, B,
    output Equal, Greater, Less
);
    assign Equal   = ~(A ^ B);
    assign Greater = A & ~B;
    assign Less    = ~A & B;
endmodule
