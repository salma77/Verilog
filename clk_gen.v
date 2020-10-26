module ClockGen (clock);
	output clock;
	reg clock;
	//initializing clock by zero
	initial 
		clock = 0;
	//changing clock from zero to one each half period
	always
		#5 clock = ~clock;
endmodule
