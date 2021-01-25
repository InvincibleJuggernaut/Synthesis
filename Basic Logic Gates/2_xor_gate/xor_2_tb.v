`timescale 1ns / 1ns
`include "xor_2.v"

module xor_2_tb;

reg A, B;
wire C;

xor_2 x(A, B, C);

initial
begin

	$dumpfile("xor_2_tb.vcd");
	$dumpvars(0, xor_2_tb);
	
	A=0;
	B=0;
	#20;
	
	A=0;
	B=1;
	#20;
	
	A=1;
	B=0;
	#20;
	
	A=1;
	B=1;
	#20;
	
	$display("Test completed");

end

endmodule