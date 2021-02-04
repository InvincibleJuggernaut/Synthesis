module magnitude_comparator(A, B, X, Y, Z);
	
	input [3:0] A, B;
	output reg X, Y, Z;
	
	always @(A, B)
	begin
	if(A>B)
	begin
		X=1;
		Y=0;
		Z=0;
	end
	else if(A==B)
	begin
		X=0;
		Y=1;
		Z=0;
	end
	else
	begin
		X=0;
		Y=0;
		Z=1;
	end
	end
	
endmodule
	
	