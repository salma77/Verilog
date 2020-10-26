module DFF (clock, Q, D);
	input D, clock;
	output Q;
	reg Q;
	always @ (posedge clock)
		assign Q = D;
endmodule
