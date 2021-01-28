`timescale 1ns / 1ns
`include "mux_4_1.v"

module mux_4_1_tb;

reg A, B, C, D, S0, S1;
wire O;

mux_4_1 m(A, B, C, D, S0, S1, O);

initial
begin

	$dumpfile("mux_4_1_tb.vcd");
	$dumpvars(0, mux_4_1_tb);
	
	A=0;
	B=0;
	C=0;
	D=0;
	S0=0;
	S1=0;
	#20;
	
	A=1;
	B=0;
	C=0;
	D=0;
	S0=0;
	S1=0;
	#20;
	
	A=0;
	B=0;
	C=0;
	D=0;
	S0=1;
	S1=0;
	#20;
	
	A=0;
	B=1;
	C=0;
	D=0;
	S0=1;
	S1=0;
	#20;
	
	A=0;
	B=0;
	C=0;
	D=0;
	S0=0;
	S1=1;
	#20;
	
	A=0;
	B=0;
	C=1;
	D=0;
	S0=0;
	S1=1;
	#20;
	
	A=0;
	B=0;
	C=0;
	D=0;
	S0=1;
	S1=1;
	#20;
	
	A=0;
	B=0;
	C=0;
	D=1;
	S0=1;
	S1=1;
	#20;
	
	$display("Test completed");

end
	
endmodule

	