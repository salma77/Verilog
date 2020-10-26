module HALFADD (A, B, Cout, sum);
	input A, B;
	output Cout, sum;
	reg [0:1] AB = {A, B}
	
	always @(A and B)
		case (AB)
			2'b00: Cout = 0; sum = 0;
			2'b01: Cout = 0; sum = 1;
			2'b10: Cout = 0; sum = 1;
			2'b11: Cout = 1; sum = 0;
			default: Cout = 1'bX; sum = 1'bX;
		endcase
endmodule
//Check if this is correct
