`timescale 1ns / 1ns
`include "xnor_2.v"

module xnor_2_tb;

reg A, B;
wire C;

xnor_2 x(A, B, C);

initial
begin

	$dumpfile("xnor_2_tb.vcd");
	$dumpvars(0, xnor_2_tb);
	
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