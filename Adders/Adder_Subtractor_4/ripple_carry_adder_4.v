`include "full_adder.v"

module ripple_carry_adder_4(A, B, CTRL, S);

	input [3:0] A, B;
	input CTRL;
	output [4:0] S;
	wire w[3:0];
	wire o[3:0];
	
	xor_2 x0(B[0], CTRL, o[0]);
	xor_2 x1(B[1], CTRL, o[1]);
	xor_2 x2(B[2], CTRL, o[2]);
	xor_2 x3(B[3], CTRL, o[3]);
	
	assign Cin = CTRL | 0;
	
	full_adder f0(A[0], o[0], Cin, S[0], w[0]);
	full_adder f1(A[1], o[1], w[0], S[1], w[1]);
	full_adder f2(A[2], o[2], w[1], S[2], w[2]);
	full_adder f3(A[3], o[3], w[2], S[3], w[3]);
	
	xor_2 x4(w[3], 1'b1, S[4]);
	
endmodule
