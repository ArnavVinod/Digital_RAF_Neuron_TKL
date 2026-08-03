`timescale 1ns/1ps

module tb_coincidence_detector;

reg clk;
reg reset;
reg resonance;

wire spike_out;

coincidence_detector uut(

    .clk(clk),
    .reset(reset),
    .resonance(resonance),
    .spike_out(spike_out)

);

always #5 clk = ~clk;

initial
begin

    clk = 0;
    reset = 1;
    resonance = 0;

    #20;
    reset = 0;

    // First resonance
    #10 resonance = 1;
    #10 resonance = 0;

    // Second resonance
    #20 resonance = 1;
    #10 resonance = 0;

    // Third resonance -> FIRE
    #20 resonance = 1;
    #10 resonance = 0;

    // Repeat

    #30 resonance = 1;
    #10 resonance = 0;

    #20 resonance = 1;
    #10 resonance = 0;

    #20 resonance = 1;
    #10 resonance = 0;

    #40;

    $finish;

end

endmodule
