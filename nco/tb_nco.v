`timescale 1ns/1ps

module tb_nco;

reg clk;
reg reset;
reg enable;
reg [7:0] weight;

wire osc;

nco uut(
    .clk(clk),
    .reset(reset),
    .enable(enable),
    .weight(weight),
    .osc(osc)
);

always #5 clk = ~clk;

initial
begin

clk = 0;
reset = 1;
enable = 0;
weight = 8'd10;

#20;

reset = 0;
enable = 1;

#250;

weight = 8'd5;

#150;

weight = 8'd20;

#300;

$finish;

end

endmodule
