`timescale 1ns / 1ns
`include "magnitude_comparator_4.v"

module magnitude_comparator_tb;

reg [3:0] A, B;
wire X, Y, Z;

magnitude_comparator m(A, B, X, Y, Z);

initial
begin

	$dumpfile("magnitude_comparator_4_tb.vcd");
	$dumpvars(0, magnitude_comparator_tb);
	
	A[3:0] = $random;
	B[3:0] = $random;
	#20;
	
	A[3:0] = $random;
	B[3:0] = $random;
	#20;
	
	A[3:0] = $random;
	B[3:0] = $random;
	#20;
	
end

endmodule