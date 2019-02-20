module top(
        output P1A1
);
        wire clk;
        SB_HFOSC osc(
                .CLKHFPU(1'b1),
                .CLKHFEN(1'b1),
                .CLKHF(clk)
        );

        assign P1A1 = !clk;

endmodule
