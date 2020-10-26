module HALFADD (A, B, Cout, sum);
	input A, B;
	output Cout, sum;
	reg Cout, sum;
	reg [0:1] AB = {A, B};
	
	always @(A or B)
		case (AB)
			2'b00: begin Cout = 0; sum = 0; end
			2'b01: begin Cout = 0; sum = 1; end
			2'b10: begin Cout = 0; sum = 1; end
			2'b11: begin Cout = 1; sum = 0; end
			default: begin Cout = 1'bX; sum = 1'bX; end
		endcase
endmodule
//Check if this is correct
