module diamond;

task display_diamond;
integer i, j, k;
begin
    
    for (i = 1; i <= 5; i = i + 1)
    begin
        for (j = 1; j <= 5-i; j = j + 1)
            $write(" ");

        for (k = 1; k <= i; k = k + 1)
            $write("%0d", i);

        $write("\n");
    end

    
    for (i = 4; i >= 1; i = i - 1)
    begin
        for (j = 1; j <= 5-i; j = j + 1)
            $write(" ");

        for (k = 1; k <= i; k = k + 1)
            $write("%0d", i);

        $write("\n");
    end
end
endtask

endmodule
