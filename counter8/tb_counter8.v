`timescale 1ns/1ps

module tb_counter8;

reg clk;
reg reset;
reg enable;

wire [7:0] count;

counter8 uut(
    .clk(clk),
    .reset(reset),
    .enable(enable),
    .count(count)
);

always #5 clk = ~clk;

initial begin

    clk = 0;
    reset = 1;
    enable = 0;

    #20;
    reset = 0;

    enable = 1;

    #120;

    enable = 0;

    #40;

    enable = 1;

    #80;

    $finish;

end

endmodule
