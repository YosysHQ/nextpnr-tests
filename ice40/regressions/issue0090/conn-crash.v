/* Machine-generated using Migen */
module top(
	output sevenseg_segment7,
	output sevenseg_segment6,
	output sevenseg_segment5,
	output sevenseg_segment4,
	output sevenseg_segment3,
	output sevenseg_segment2,
	output sevenseg_segment1,
	output sevenseg_enable0,
	input clk12
);

wire sys_clk;
wire sys_rst;
wire por_clk;
reg int_rst = 1'd1;


// Adding a dummy event (using a dummy signal 'dummy_s') to get the simulator
// to run the combinatorial process once at the beginning.
// synthesis translate_off
reg dummy_s;
initial dummy_s <= 1'd0;
// synthesis translate_on

assign sevenseg_enable0 = 1'd1;
assign sevenseg_segment7 = 1'd1;
assign sevenseg_segment6 = 1'd1;
assign sevenseg_segment5 = 1'd1;
assign sevenseg_segment4 = 1'd1;
assign sevenseg_segment3 = 1'd1;
assign sevenseg_segment2 = 1'd1;
assign sevenseg_segment1 = 1'd1;
assign sys_clk = clk12;
assign por_clk = clk12;
assign sys_rst = int_rst;

always @(posedge por_clk) begin
	int_rst <= 1'd0;
end

endmodule
