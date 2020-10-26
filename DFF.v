module DFF (clock, Q, D);
	always @ (posedge clock)
		Q = D;
endmodule
