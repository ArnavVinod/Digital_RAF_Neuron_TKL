`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2026 01:55:17
// Design Name: 
// Module Name: comparator8
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


  module comparator8(
    input wire [7:0] a,
    input wire [7:0] b,

    output wire equal,
    output wire greater,
    output wire less
);

assign equal   = (a == b);
assign greater = (a > b);
assign less    = (a < b);

endmodule
