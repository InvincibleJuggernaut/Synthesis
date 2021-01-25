`timescale 1ns / 1ns
`include "not.v"

module not_gate_tb;

reg A;
wire B;

not_gate n(A,B);

initial
begin

	$dumpfile("not_tb.vcd");
	$dumpvars(0, not_gate_tb);
	
	A=0;
	#20;
	
	A=1;
	#20;
	
	$display("Test completed");

end

endmodule