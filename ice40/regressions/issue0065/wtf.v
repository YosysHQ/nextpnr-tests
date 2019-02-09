`default_nettype none

module wtf(
    input clk_12,
    output fast
);

wire clk_216;

ice40_pll_12_216 pll(
    .clock_in(clk_12),
    .clock_out(clk_216)
);

assign fast = clk_216;

endmodule
