`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: KJSSE
// Engineer: Arnav M Vinod, Saniya V Naik (Courtesy: TRUNG-KHANH LE et All.)
// 
// Create Date: 03.08.2026 21:53:06
// Design Name: ASYNCHRONOUS D-FLIP FLOP
// Module Name: dff_async
// Project Name: RAF_Neuron
// Target Devices: PYNQ-Z2
// Tool Versions: Vivado 2025.2
// Description: 
// 
// Dependencies: 
// 
// Revision:0
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module dff_async(
    input wire clk,
    input wire reset,
    input wire d,
    output reg q
    );
    
  always @(posedge clk or posedge reset)
  begin
    if (reset)
        q <= 1'b0;
    else
        q <= d;
    end
endmodule
