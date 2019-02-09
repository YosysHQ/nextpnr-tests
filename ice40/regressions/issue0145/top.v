module top (
    input CLK_OSC100,
    output LED1
);

wire clk;

(* BEL="X16/Y33/pll_3" *)
SB_PLL40_PAD #(
    .FEEDBACK_PATH("SIMPLE"),
    .DIVR(4'b0100),
    .DIVF(7'b0101111),
    .DIVQ(3'b101),
    .FILTER_RANGE(3'b010)
) pll (
    .RESETB(1'b1),
    .BYPASS(1'b0),
    .PACKAGEPIN(CLK_OSC100),
    .PLLOUTCORE(clk)
);

reg [24:0] count;
assign LED1 = count[24];

always @(posedge clk) begin
    count <= count + 1;
end

endmodule
