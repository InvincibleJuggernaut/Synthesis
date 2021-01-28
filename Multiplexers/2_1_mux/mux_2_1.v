module mux_2_1(A, B, S, O);

	input A, B, S;
	output O;
	
	assign O = (A & S) | (B & (~S));
	
endmodule