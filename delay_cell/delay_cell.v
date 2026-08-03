`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2026 01:27:16
// Design Name: 
// Module Name: delay_cell
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


module delay_cell(
    input  wire clk,
    input  wire reset,
    input  wire signal_in,
    output wire signal_out
);

wire rst_internal;

// Reset if either:
// 1. Global reset
// 2. Input signal goes LOW

assign rst_internal = reset | (~signal_in);

dff_async delay_ff (
    .clk(clk),
    .reset(rst_internal),
    .d(signal_in),
    .q(signal_out)
);

endmodule
