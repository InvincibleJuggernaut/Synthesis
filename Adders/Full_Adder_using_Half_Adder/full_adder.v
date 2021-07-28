`include "xor_2.v"
`include "and_2.v"
`include "half_adder.v"

module full_adder(A, B, Cin, S, Cout);

	input A, B, Cin;
	output S, Cout;

	wire w1, w2, w3;

half_adder HA1(A, B, w1, w2);
half_adder HA2(w1, Cin, S, w3);
or_2 o1(w2, w3, Cout);

endmodule
