module decoder_2x4(i,y);
	input [1:0] i;
	output [3:0] y;
	assign y[0]=~i[1]&~i[0];
	assign y[1]=~i[1]&i[0];
	assign y[2]=i[1]&~i[0];
	assign y[3]=i[1]& i[0];
	
endmodule

	
