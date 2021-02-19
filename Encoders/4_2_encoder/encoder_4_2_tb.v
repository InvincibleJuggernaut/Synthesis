`timescale 1ns / 1ns
`include "encoder_4_2.v"

module encoder_4_2_tb;

reg [3:0] A;
wire [1:0] B;

encoder_4_2 e(A, B);

initial
begin

	$dumpfile("encoder_4_2_tb.vcd");
	$dumpvars(0, encoder_4_2_tb);
	
	A[0] = 1;
	A[1] = 0;
	A[2] = 0;
	A[3] = 0;
	#20;
	
	A[0] = 0;
	A[1] = 1;
	A[2] = 0;
	A[3] = 0;
	#20;
	
	A[0] = 0;
	A[1] = 0;
	A[2] = 1;
	A[3] = 0;
	#20;
	
	A[0] = 0;
	A[1] = 0;
	A[2] = 0;
	A[3] = 1;
	#20;
	
end

endmodule
	