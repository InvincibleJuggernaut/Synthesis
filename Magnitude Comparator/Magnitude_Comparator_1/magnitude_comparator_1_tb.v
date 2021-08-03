`timescale 1ns / 1ns
`include "magnitude_comparator_1.v"

module magnitude_comparator_1_tb;

reg A, B;
wire X, Y;

magnitude_comparator_1 m(A, B, X, Y);

initial
begin

	$dumpfile("magnitude_comparator_1_tb.vcd");
	$dumpvars(0, magnitude_comparator_1_tb);
	
	A = $random;
	B = $random;
	#20;
	
	A = $random;
	B = $random;
	#20;
	
	A = $random;
	B = $random;
	#20;
	
end

endmodule
