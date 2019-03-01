`default_nettype none
module test_inout( inout wire io_pin, );
	reg a = 1'b0;
	reg oe = 0;
	assign io_pin = oe ? a : 1'bz;
endmodule 