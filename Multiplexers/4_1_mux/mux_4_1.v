module mux_4_1(A, B, C, D, S0, S1, O);
	
	input A, B, C, D, S0, S1;
	output O;
	
	assign O = ((~S1)&(~S0)&A) | ((~S1)&(S0)&B) | ((S1)&(~S0)&C) | ((S1)&(S0)&D);
	
endmodule