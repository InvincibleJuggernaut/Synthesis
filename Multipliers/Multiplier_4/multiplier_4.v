`include "full_adder.v"

module multiplier_4(A, B, Y);
    
    input [3:0] A, B;
    output [7:0] Y;
    wire [15:0] w;
    wire [16:0] i;
    
    genvar k, j;
    generate
    	for(k=0; k<4; k=k+1)
    		begin
    			for(j=0; j<4; j=j+1)
                       	begin
                            		and_2 a1(A[j], B[k], w[(4*k)+j]);
                        	end
                end
    endgenerate

    assign Y[0] = w[0];
    half_adder ha1(w[1], w[4], Y[1], i[0]);
    
    full_adder fa1(w[2], w[5], i[0], i[1], i[2]);
    full_adder fa2(w[3], w[6], i[2], i[3], i[4]);
    half_adder ha2(w[7], i[4], i[5], i[6]);
    half_adder ha3(w[8], i[1], Y[2], i[7]);
    
    full_adder fa3(w[9], i[3], i[7], i[8], i[9]);
    full_adder fa4(w[10], i[5], i[9], i[10], i[11]);
    full_adder fa5(w[11], i[6], i[11], i[12], i[13]);
    half_adder ha4(w[12], i[8], Y[3], i[14]);
    
    full_adder fa6(w[13], i[10], i[14], Y[4], i[15]);
    
    full_adder fa7(w[14], i[12], i[15], Y[5], i[16]);
    
    full_adder fa8(w[15], i[13], i[16], Y[6], Y[7]);
    
endmodule   
