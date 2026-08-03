`timescale 1ns/1ps

module tb_resonance_detector;

reg held_spike;
reg osc;

wire resonance;

resonance_detector uut(

.held_spike(held_spike),
.osc(osc),
.resonance(resonance)

);

initial
begin

held_spike = 0;
osc = 0;

#20;

held_spike = 1;

#20;

osc = 1;

#20;

held_spike = 0;

#20;

osc = 0;

#20;

held_spike = 1;
osc = 1;

#20;

$finish;

end

endmodule
