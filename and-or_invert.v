module AOI(A, B, C, D, F);
	input A, B, C, D;
	output F;

	//wire F;
	//wire AB, CD, O;

	/*
	assign AB = A & B;
	assign CD = C & D;
	assign O = AB | CD;
	assign F = ~O;
	*/

	assign F = ~((A & B) | (C & D));
endmodule
