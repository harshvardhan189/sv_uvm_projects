module mux4x1(s,i,y);
	input  [1:0]s;
	input  [3:0]i;
	output reg y;


	always@(*)
		begin
			case(s)
				2'b00 : y = i[0];
				2'b01 : y = i[1];
				2'b10 : y = i[2];
				2'b11 : y = i[3];
				default : y=1'bz;
			endcase
		end
	endmodule
