module magnitude_comparator_1(A, B, X, Y);
	
	input A, B;
	output reg X, Y;
	
	always @(A, B)
	begin
	if(A>B)
	begin
		X=1;
		Y=0;
	end
	else if(A<B)
	begin
		X=0;
		Y=1;
	end
	else
	begin
		X=0;
		Y=0;
	end
	end
	
endmodule
	
	
