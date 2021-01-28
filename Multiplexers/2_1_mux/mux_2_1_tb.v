`timescale 1ns / 1ns
`include "mux_2_1.v"

module mux_2_1_tb;

reg A, B, S;
wire O;

mux_2_1 m(A, B, S, O);

initial
begin

	$dumpfile("mux_2_1_tb.vcd");
	$dumpvars(0, mux_2_1_tb);
	
	A=0;
	B=0;
	S=0;
	#20;
	
	A=0;
	B=1;
	S=0;
	#20;
	
	A=1;
	B=0;
	S=0;
	#20;
	
	A=1;
	B=1;
	S=0;
	#20;
	
	A=0;
	B=0;
	S=1;
	#20;
	
	A=0;
	B=1;
	S=1;
	#20;
	
	A=1;
	B=0;
	S=1;
	#20;
	
	A=1;
	B=1;
	S=1;
	#20;
	
	$display("Test completed");

end

endmodule