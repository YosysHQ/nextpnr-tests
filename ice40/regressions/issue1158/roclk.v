
module roclk (
  output wire dclk_o
);

wire ro1;
wire ro2;
wire ro3;

(* keep *) SB_LUT4 #(
  .LUT_INIT(16'd1)
) i_inv1 (
  .O  ( ro2  ),
  .I0 ( ro1  ),
  .I1 ( 1'b0 ),
  .I2 ( 1'b0 ),
  .I3 ( 1'b0 )
);

(* keep *) SB_LUT4 #(
  .LUT_INIT(16'd1)
) i_inv2 (
  .O  ( ro3 ),
  .I0 ( ro2  ),
  .I1 ( 1'b0 ),
  .I2 ( 1'b0 ),
  .I3 ( 1'b0 )
);

(* keep *) SB_LUT4 #(
  .LUT_INIT(16'd1)
) i_inv3 (
  .O  ( ro1  ),
  .I0 ( ro3  ),
  .I1 ( 1'b0 ),
  .I2 ( 1'b0 ),
  .I3 ( 1'b0 )
);

reg flop;

assign dclk_o = flop;

always @(posedge ro3) begin
  flop <= ~flop;
end

endmodule