`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2026 01:43:19
// Design Name: 
// Module Name: counter8
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module counter8 (
    input wire clk,
    input wire reset,
    input wire enable,

    output reg [7:0] count
);

always @(posedge clk or posedge reset)
begin
    if (reset)
        count <= 8'd0;

    else if (enable)
        count <= count + 8'd1;

    else
        count <= count;
end

endmodule
