`timescale 1ns / 1ns
`include "and_2.v"

module and_2_tb;

reg A, B;
wire C;

and_2 uut(A, B, C);

initial 
begin
	
	$dumpfile("and_2_tb.vcd");
	$dumpvars(0, and_2_tb);
	
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
	
	$display("Test complete");

end

endmodule
	
	