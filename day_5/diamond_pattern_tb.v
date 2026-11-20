module diamond_tb;

diamond uut();

initial
begin
    $display("Diamond Pattern:");

    uut.display_diamond();

    #10;
    $finish;
end

endmodule
