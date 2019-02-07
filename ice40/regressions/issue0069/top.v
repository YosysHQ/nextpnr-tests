/* Machine-generated using Migen */
module top(
	input clk16,
	output out
);

wire sys_clk;
wire clk16_1;
wire clk32;


// Adding a dummy event (using a dummy signal 'dummy_s') to get the simulator
// to run the combinatorial process once at the beginning.
// synthesis translate_off
reg dummy_s;
initial dummy_s <= 1'd0;
// synthesis translate_on

assign clk16_1 = clk16;
assign out = sys_clk;

SB_PLL40_CORE #(
	.DIVF(6'd63),
	.DIVQ(3'd5),
	.DIVR(1'd0),
	.FILTER_RANGE(3'd1)
) SB_PLL40_CORE (
	.REFERENCECLK(clk16_1),
	.RESETB(1'd1),
	.PLLOUTGLOBAL(clk32)
);

SB_GB SB_GB(
	.USER_SIGNAL_TO_GLOBAL_BUFFER(clk32),
	.GLOBAL_BUFFER_OUTPUT(sys_clk)
);

endmodule
