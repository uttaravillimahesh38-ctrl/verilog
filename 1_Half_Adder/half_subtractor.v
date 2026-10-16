module half_subtractor (
    input A,
    input B,
    output D,
    output Bout

);
 assign D = A ^ B;
 assign Bout = ~A & B;
  
endmodule
