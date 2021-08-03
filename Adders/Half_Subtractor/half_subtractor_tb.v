`timescale 1ns / 1ns
`include "half_subtractor.v"

module half_subtractor_tb;

reg A, B;
wire D, Borrow;

half_subtractor hs(A, B, D, Borrow);

initial
begin
	
	$dumpfile("half_subtractor_tb.vcd");
	$dumpvars(0, half_subtractor_tb);
	
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
