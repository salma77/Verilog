module MUX2 (SEL, A, B, F);
	input SEL, A, B;
	output F;
	
	INV G1 (.A(SEL), .F(SELB));
	AOI G2 (.A(SELB), .B(A), .C(SEL), .D(B), .F(FB));
	INV G3 (.A(FB), .F(F));
endmodule
