module top(input CLK_16MHZ, output DATA_OUT);
wire clk;
reg [4:0] crash_data;
reg [2:0] crash_counter;
assign DATA_OUT = crash_data[crash_counter];

SB_PLL40_CORE #(.FEEDBACK_PATH("SIMPLE"), .DIVR(4'b0000), .DIVF(7'b0111111), .DIVQ(3'b100)) 
pll_inst (
    .DYNAMICDELAY(8'b0),
    .REFERENCECLK(CLK_16MHZ),
    .PLLOUTCORE(clk),
);

always @(posedge clk) begin
    crash_counter <= crash_counter + 1;
    crash_data <= !clk; // By the way, shouldn't Yosys deduce clk as a constant here? Writing a 0 compiles "cleanly".
end
endmodule
