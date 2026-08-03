`timescale 1ns / 1ps



module nco(
    input clk,
    input reset,
    input enable,
    input [7:0] weight,

    output reg osc
);

wire reached;
wire [7:0] count;

reg counter_reset;

counter8 counter_inst(
    .clk(clk),
    .reset(counter_reset | reset),
    .enable(enable),
    .count(count)
);

comparator8 comp_inst(
    .a(count),
    .b(weight),
    .equal(reached)
);

always @(posedge clk or posedge reset)
begin
    if(reset)
    begin
        osc <= 0;
        counter_reset <= 0;
    end

    else if(enable)
    begin
        if(reached)
        begin
            osc <= ~osc;
            counter_reset <= 1;
        end
        else
        begin
            counter_reset <= 0;
        end
    end
end

endmodule
