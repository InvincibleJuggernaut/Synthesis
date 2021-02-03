`timescale 1ns / 1ns
`include "carry_save_4.v"

module carry_save_tb;

reg [3:0] A, B, C;
wire [3:0] S;
wire Cout;

carry_save c(A, B, C, Cout, S);

initial
begin

	$dumpfile("carry_save_tb.vcd");
	$dumpvars(0, carry_save_tb);
	
	A[3:0] = $random;
	B[3:0] = $random;
	C[3:0] = $random;
	#20;
	
	A[3:0] = $random;
	B[3:0] = $random;
	C[3:0] = $random;
	#20;
	
	A[3:0] = $random;
	B[3:0] = $random;
	C[3:0] = $random;
	#20;
	
end

endmodule
	