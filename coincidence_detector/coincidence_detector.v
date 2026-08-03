`timescale 1ns / 1ps
module coincidence_detector(

    input clk,
    input reset,
    input resonance,

    output reg spike_out

);

reg [1:0] count;

always @(posedge clk or posedge reset)
begin

    if(reset)
    begin
        count <= 2'd0;
        spike_out <= 1'b0;
    end

    else
    begin

        spike_out <= 1'b0;

        if(resonance)
        begin

            if(count == 2'd2)
            begin
                spike_out <= 1'b1;
                count <= 2'd0;
            end

            else
            begin
                count <= count + 1'b1;
            end

        end

    end

end

endmodule
