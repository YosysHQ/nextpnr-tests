`timescale 1ns / 1ps

module top(input clock,
	   output led);

   reg [23:0] 	 count = 0;

   always @ (posedge clock)
     begin
	count <= count + 1'b1;
     end

   assign led = count[23];

endmodule
