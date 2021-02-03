`include "full_adder.v"

module carry_save(A, B, C, Cout, S);

	input [3:0] A, B,C;
	output [3:0] S;
	output Cout;
	wire [3:0]w, c, s;;
	
	assign Cin = 0;
	
	full_adder f0(A[0], B[0], C[0], s[0], c[0]);
	full_adder f1(A[1], B[1], C[1], s[1], c[1]);
	full_adder f2(A[2], B[2], C[2], s[2], c[2]);
	full_adder f3(A[3], B[3], C[3], s[3], c[3]);		
	
	full_adder f4(s[1], c[0], Cin, S[1], w[0]);
	full_adder f5(s[2], c[1], w[0], S[2], w[1]);
	full_adder f6(s[3], c[2], w[1], S[3], w[2]);
	full_adder f7(Cin, c[3], w[2], Cout, w[3]);
	
	assign S[0] = s[0];
	
endmodule
			
			
	