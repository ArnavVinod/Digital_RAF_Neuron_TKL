`timescale 1ns / 1ps

module resonance_detector(

    input held_spike,
    input osc,

    output resonance

);

assign resonance = held_spike & osc;

endmodule
