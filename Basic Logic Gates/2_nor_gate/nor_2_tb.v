`timescale 1ns / 1ns
`include "nor_2.v"

module nor_2_tb;

reg A, B;
wire C;

nor_2 n(A, B, C);

initial
begin

	$dumpfile("nor_2_tb.vcd");
	$dumpvars(0, nor_2_tb);
	
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
	
end

endmodule