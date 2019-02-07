`include "pll.v"

module top (
	input pclk,              // 100MHz clock
	output led1,
	output led2,
	input  button,
	output led3
);
	
	reg button_read;
	reg [20:0] cntr;
	wire lock;
	wire fclock;
	
	pll mypll(pclk,fclock,lock);
	
	always@(posedge fclock) begin
		if (~lock) cntr <= 21'h00000000;
		else cntr<= cntr+1;
		button_read <= button;
	end
	
	assign led1 = button_read;
	assign led2 = cntr[19];
	assign led3 = cntr[20];
	
	endmodule
	
