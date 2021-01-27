`timescale 1ns / 1ns
`include "half_adder.v"

module half_adder_tb;

reg A, B;
wire S, Cout;

half_adder ha(A, B, S, Cout);

initial
begin
	
	$dumpfile("half_adder_tb.vcd");
	$dumpvars(0, half_adder_tb);
	
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