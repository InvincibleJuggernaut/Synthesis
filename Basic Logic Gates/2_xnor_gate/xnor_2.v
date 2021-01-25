module xnor_2(A, B, C);

	input A, B;
	output C;
	
	assign C = ((~A)&(~B)) | A&B;

endmodule