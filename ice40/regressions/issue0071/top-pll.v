/* Machine-generated using Migen */
module top(
	input clk16,
	input usb_d_p,
	input usb_d_n,
	output usb_pullup,
	output user_led
);

wire sys_clk;
reg sys_rst = 1'd0;
wire clk16_1;
wire clk16b;
reg [23:0] count = 24'd0;


// Adding a dummy event (using a dummy signal 'dummy_s') to get the simulator
// to run the combinatorial process once at the beginning.
// synthesis translate_off
reg dummy_s;
initial dummy_s <= 1'd0;
// synthesis translate_on

assign clk16_1 = clk16;
assign usb_pullup = 1'd0;
assign user_led = count[22];

always @(posedge sys_clk) begin
	count <= (count + 1'd1);
	if (sys_rst) begin
		count <= 24'd0;
	end
end

SB_PLL40_CORE #(
	.DIVF(6'd63),
	.DIVQ(3'd6),
	.DIVR(1'd0),
	.FILTER_RANGE(3'd1)
) SB_PLL40_CORE (
	.REFERENCECLK(clk16_1),
	.RESETB(1'd1),
	.PLLOUTCORE(clk16b)
);

SB_GB SB_GB(
	.USER_SIGNAL_TO_GLOBAL_BUFFER(clk16b),
	.GLOBAL_BUFFER_OUTPUT(sys_clk)
);

endmodule
