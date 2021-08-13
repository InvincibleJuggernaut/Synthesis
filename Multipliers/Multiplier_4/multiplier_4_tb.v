`timescale 1ns / 1ns
`include "multiplier_4.v"

module multiplier_4_tb;

reg [3:0] A, B;
wire [7:0] Y;

multiplier_4 m(A, B, Y);

initial
begin

	$dumpfile("multiplier_4_tb.vcd");
	$dumpvars(0, multiplier_4_tb);
	
	A=$random;
	B=$random;
	#20;
	
	A=$random;
	B=$random;
	#20;

	A=4'b0101;
	B=4'b1111;
	#20;
	
	$display("Test completed");

end

endmodule
