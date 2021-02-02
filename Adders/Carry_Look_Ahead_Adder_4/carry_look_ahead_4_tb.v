`timescale 1ns / 1ns
`include "carry_look_ahead_4.v"

module carry_look_ahead_tb;

reg [3:0] A, B;
wire [3:0] S;
wire Cout;

carry_look_ahead cla(A, B, Cout, S);

initial 
begin

	$dumpfile("carry_look_ahead_tb.vcd");
	$dumpvars(0, carry_look_ahead_tb);
	
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