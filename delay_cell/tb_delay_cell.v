`timescale 1ns/1ps

module tb_delay_cell;

reg clk;
reg reset;
reg signal_in;

wire signal_out;

delay_cell uut (
    .clk(clk),
    .reset(reset),
    .signal_in(signal_in),
    .signal_out(signal_out)
);

always #5 clk = ~clk;

initial begin

    clk = 0;
    reset = 1;
    signal_in = 0;

    #20;
    reset = 0;

    // Pulse 1
    #10 signal_in = 1;
    #10 signal_in = 0;

    // Pulse 2
    #30 signal_in = 1;
    #10 signal_in = 0;

    // Pulse 3
    #40 signal_in = 1;
    #10 signal_in = 0;

    #100;
    $finish;

end

endmodule
