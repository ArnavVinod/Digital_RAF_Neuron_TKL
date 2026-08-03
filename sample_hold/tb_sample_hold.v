`timescale 1ns/1ps

module tb_sample_hold;

reg clk;
reg reset;
reg spike_in;

wire held_spike;

sample_hold uut(

.clk(clk),
.reset(reset),
.spike_in(spike_in),
.held_spike(held_spike)

);

always #5 clk = ~clk;

initial

begin

clk=0;
reset=1;
spike_in=0;

#20;

reset=0;

#10 spike_in=1;

#10 spike_in=0;

#20 spike_in=1;

#10 spike_in=0;

#40;

$finish;

end

endmodule
