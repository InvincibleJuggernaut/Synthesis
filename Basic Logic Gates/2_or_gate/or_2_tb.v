`timescale 1ns / 1ns
`include "or_2.v"

module or_2_tb;

reg A, B;
wire C;

or_2 uut(A, B, C);

initial
begin

	$dumpfile("or_2_tb.vcd");
	$dumpvars(0, or_2_tb);
	
	A=0;
	B=0;
	#20;
	
	A=1;
	B=0;
	#20;
	
	A=0;
	B=1;
	#20;
	
	A=1;
	B=1;
	#20;
	
	$display("Test completed");

end

endmodule