`include "full_adder.v"

module ripple_carry_adder_4(A, B, Cout, S);

	input [3:0] A, B;
	output [3:0] S;
	output Cout;
	wire w[2:0];
	assign Cin = 0;
	
	full_adder f0(A[0], B[0], Cin, S[0], w[0]);
	full_adder f1(A[1], B[1], w[0], S[1], w[1]);
	full_adder f2(A[2], B[2], w[1], S[2], w[2]);
	full_adder f3(A[3], B[3], w[2], S[3], Cout);
	
endmodule