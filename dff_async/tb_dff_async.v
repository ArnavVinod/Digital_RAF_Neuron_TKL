`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2026 22:06:21
// Design Name: 
// Module Name: tb_dff_async
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



module tb_dff_async;

reg clk;
reg reset;
reg d;

wire q;

dff_async uut
(
    .clk(clk),
    .reset(reset),
    .d(d),
    .q(q)
);

// Clock generation
always #5 clk = ~clk;

initial
begin

    clk = 0;
    reset = 1;
    d = 0;

    #20;

    reset = 0;

    d = 1;
    #10;

    d = 0;
    #10;

    d = 1;
    #10;

    reset = 1;
    #10;

    reset = 0;
    d = 1;

    #20;

    $finish;

end

endmodule
