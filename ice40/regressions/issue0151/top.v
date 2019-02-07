module top (
  input wire in_n,
  output wire out
);

wire clk;

SB_GB_IO #(
  .PIN_TYPE(6'b000000),
  .IO_STANDARD("SB_LVDS_INPUT")
) differential_clock_input (
  .PACKAGE_PIN(in_n),
  .GLOBAL_BUFFER_OUTPUT(clk)
);

assign out = cntr;
reg cntr = 1'd0;

always @(posedge clk) begin
  cntr <= !cntr;
end

endmodule
