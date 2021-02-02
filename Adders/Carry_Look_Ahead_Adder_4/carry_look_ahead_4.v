`include "and_2.v"
`include "xor_2.v"
`include "or_2.v"

module carry_look_ahead(A, B, Cout, S);
	
	input [3:0] A, B;
	output Cout;
	output [3:0] S;
	wire [3:0]P, G;
	wire [4:0] C;
	wire [3:0] w;
	
	assign C[0] = 0;
	
	genvar i;
	generate
		for(i=0;i<4;i=i+1)
		begin
		xor_2 x1(A[i], B[i], P[i]);
		and_2 a1(A[i], B[i], G[i]);
		xor_2 x2(P[i], C[i], S[i]);
		and_2 a2(P[i], C[i], w[i]);
		or_2 o1(G[i], w[i], C[i+1]);
		
		end
	endgenerate
	
	assign Cout = C[4];

endmodule