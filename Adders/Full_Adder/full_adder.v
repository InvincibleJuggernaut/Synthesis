`include "xor_2.v"

module full_adder(A, B, Cin, S, Cout);

	input A, B, Cin;
	output S, Cout;
	wire w1;
	
	assign Cout = (A & Cin) | (B & Cin) | (A & B);
	
xor_2 x1(A, B, w1);
xor_2 x2(w1, Cin, S);

endmodule
