// test.v
module test (input  PIN_5, output wire PIN_18);
   lvds_clock_input in (PIN_5, PIN_18);
endmodule

module lvds_clock_input ( input pin, output wire rd );
   SB_GB_IO #(.PIN_TYPE(6'b0000_00),
           .IO_STANDARD("SB_LVDS_INPUT")) lvds_in
     (.PACKAGE_PIN(pin), .GLOBAL_BUFFER_OUTPUT(rd));
endmodule
