`timescale 1ns / 1ns
`include "nand_2.v"

module nand_2_tb;

reg A, B;
wire C;

nand_2 n(A, B, C);

initial
begin

	$dumpfile("nand_2_tb.vcd");
	$dumpvars(0, nand_2_tb);
	
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