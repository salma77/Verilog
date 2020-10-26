module test;
	wire F;
	reg A, B, C, D;

	AOI test1(A, B, C, D, F);
	
	initial 
		begin
			A = 1'b0; B = 1'b0; C = 1'b0; D = 1'b0;
			#10 A = 1'b1; B = 1'b1; C = 1'b1; D = 1'b1;
			#10 A = 1'b0; B = 1'b1; C = 1'b0; D = 1'b1;
			#10 A = 1'b1; B = 1'b0; C = 1'b1; D = 1'b0;

			#100 $finish;
		end
endmodule
