`timescale 1ns / 1ns
`include "ripple_carry_adder_4.v"

module ripple_carry_adder_4_tb;

reg [3:0] A, B;
reg CTRL;
wire [4:0] S;

ripple_carry_adder_4 r(A, B, CTRL, S);

initial
begin

	$dumpfile("ripple_carry_adder_4_tb.vcd");
	$dumpvars(0, ripple_carry_adder_4_tb);
	
	A[3:0] = 4'b1001;
	B[3:0] = 4'b0011;
	CTRL = 1;
	#20;
	
	A[3:0] = $random;
	B[3:0] = $random;
	CTRL = 1;
	#20;
	
	A[3:0] = $random;
	B[3:0] = $random;
	CTRL = 1;
	#20;

end

endmodule
	
