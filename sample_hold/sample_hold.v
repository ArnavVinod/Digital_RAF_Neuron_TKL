`timescale 1ns / 1ps



module sample_hold(

    input clk,
    input reset,
    input spike_in,

    output reg held_spike

);

always @(posedge clk or posedge reset)

begin

    if(reset)

        held_spike <= 0;

    else

        held_spike <= spike_in;

end

endmodule
