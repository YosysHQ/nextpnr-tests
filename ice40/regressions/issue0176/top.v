module top(
    input CLK,
    output reg IGNORE_ME,

    inout INOUT,
    output reg PROBE
);

always @(posedge CLK)
    IGNORE_ME <= ~IGNORE_ME; // Pretend to do work (silence warning).

// <<< Variations go here! >>>
`ifdef CONST_INOUT
assign INOUT= 'b1;
`elsif CONST_CLK_ASSIGN
assign INOUT = 'b1;

always @(posedge CLK)
    PROBE <= INOUT;
`elsif CONST_ASSIGN
assign INOUT = 'b1;

assign PROBE = INOUT;
`elsif DYN_INOUT
assign INOUT = CLK ? 'bz : 'b0;
`elsif DYN_CLK_ASSIGN
assign INOUT = CLK ? 'bz : 'b0;

always @(posedge CLK)
    PROBE <= INOUT;
`elsif DYN_ASSIGN
assign INOUT = CLK ? 'bz : 'b0;

assign PROBE = INOUT;
`elsif CIRCULAR_INOUT
assign INOUT = INOUT ? 'bz : 'b0;
`elsif CIRCULAR_ASSIGN
assign INOUT = INOUT ? 'bz : 'b0;

assign PROBE = INOUT;
`endif

endmodule
