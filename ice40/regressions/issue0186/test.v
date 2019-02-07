`include "pll.v"

module top (
	input pclk,              // 100MHz clock
	output led1,
	output led2,
	output led3
);

	reg [20:0] cntr;
	wire lock;
	wire fclock;
	
	pll mypll(pclk,fclock,lock);
	
	always@(posedge fclock) begin
		if (lock) cntr <= 21'h00000000;
		else cntr<= cntr+1;
	end
	
	assign led1 = cntr[18];
	assign led2 = cntr[19];
	assign led3 = cntr[20];
	
	endmodule
	
