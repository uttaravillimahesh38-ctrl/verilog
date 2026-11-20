module clock_100hz(
    input clk_50mhz,
    input reset,
    output reg clk_100hz
);

reg [17:0] count;

always @(posedge clk_50mhz or posedge reset)
begin
    if(reset)
    begin
        count <= 0;
        clk_100hz <= 0;
    end

    else
    begin
        if(count == 249999)
        begin
            count <= 0;
            clk_100hz <= ~clk_100hz;
        end

        else
        begin
            count <= count + 1;
        end
    end
end

endmodule
