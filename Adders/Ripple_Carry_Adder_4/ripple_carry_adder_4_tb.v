`timescale 1ns / 1ns
`include "ripple_carry_adder_4.v"

module ripple_carry_adder_4_tb;

reg [3:0] A, B;
wire [3:0] S;
wire Cout;

ripple_carry_adder_4 r(A, B, Cout, S);

initial
begin

	$dumpfile("ripple_carry_adder_4_tb.vcd");
	$dumpvars(0, ripple_carry_adder_4_tb);
	
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
	