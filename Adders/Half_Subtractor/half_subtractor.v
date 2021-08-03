module half_subtractor(A, B, D, Borrow);

	input A, B;
	output D, Borrow;
	wire w;

xor_2 x(A, B, D);
not_gate n(A, w);
and_2 a(w, B, Borrow);

endmodule
