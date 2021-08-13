`include "xor_2.v"
`include "and_2.v"

module half_adder(A, B, S, Cout);

	input A, B;
	output S, Cout;

xor_2 x(A, B, S);
and_2 a(A, B, Cout);

endmodule