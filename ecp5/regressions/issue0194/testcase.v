module top(
	input clk,
	inout pin_IO,
);

wire pin_I;
reg pin_O = 16'd0;
reg pin_OE = 1'd0;
reg state = 1'd0;
reg next_state;

always @(*) begin
	pin_IO <= 16'd0;
	next_state <= state;
	case (state)
		1'd1: begin
			next_state <= 1'd0;
		end
		default: begin
			pin_IO <= 1'd1;
			next_state <= 1'd1;
		end
	endcase
end

always @(posedge clk) begin
	state <= next_state;
end

TRELLIS_IO #(
	.DIR("BIDIR")
) TRELLIS_IO (
	.I(pin_O),
	.T(pin_OE),
	.B(pin_IO),
	.O(pin_I)
);

endmodule