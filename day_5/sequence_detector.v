module sequence_detector(
    input clk,
    input reset,
    input x,
    output reg y
);

reg [2:0] state;

parameter S0 = 3'b000,
          Z1 = 3'b001,
          Z2 = 3'b010,
          O1 = 3'b011,
          O2 = 3'b100;

always @(posedge clk or posedge reset)
begin
    if(reset)
        state <= S0;

    else
    begin
        case(state)

            S0:
                if(x == 0)
                    state <= Z1;
                else
                    state <= O1;

            Z1:
                if(x == 0)
                    state <= Z2;
                else
                    state <= O1;

            Z2:
                if(x == 0)
                    state <= Z2;
                else
                    state <= O1;

            O1:
                if(x == 1)
                    state <= O2;
                else
                    state <= Z1;

            O2:
                if(x == 1)
                    state <= O2;
                else
                    state <= Z1;

            default:
                state <= S0;

        endcase
    end
end


always @(*)
begin
    y = 0;

    if((state == Z2 && x == 0) ||
       (state == O2 && x == 1))
        y = 1;
end

endmodule
