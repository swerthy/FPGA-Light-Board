module fade(

	input clk,
	input rst,
	input start,
	input [7:0]n,
	input [9:0]t,
	input [7:0]c,
	output reg [7:0]newM,
	output reg done
	
	);
	
	reg [7:0]s;
	reg [9:0]tp;
	reg [9:0]pw;
	reg [22:0]count;
	reg [7:0]dval;
	reg [9:0]dpack;
	reg [9:0]leap;
	reg [9:0]leapfreq;
	
	reg [3:0]S;
	reg [3:0]NS;
	
	parameter
		START = 4'd0,
		SHIFT = 4'd1,
		DVAL = 4'd2,
		DVALGO = 4'd3,
		WAITDVAL = 4'd4,
		LEAP = 4'd5,
		DONE = 4'd9;
		
	always@(posedge clk or negedge rst)
		if(rst==1'b0)
			S <= START;
		else
			S <= NS;

	always@(*)
		case(S)
			
			START:
			if(start==1'b0)
				NS = START;
			else
				NS = SHIFT;
			
			SHIFT:
				if(t==0)
					NS = DONE;
				else
					NS = DVAL;
			
			DVAL: NS = DVALGO;
			
			DVALGO: 
			if(leap<leapfreq)
				NS = WAITDVAL;
			else
				NS = LEAP;
			
			LEAP: NS = WAITDVAL;
			
			WAITDVAL:
			begin
				if(count<5000000)
					NS = WAITDVAL;
				else
				begin
					if((n+dval)<newM)
						NS = DVALGO;
					else
						NS = DONE;
				end
			end
			
			DONE:
			if(start==1'b0)
				NS = START;
			else
				NS = DONE;
			
			// (PAJ) - BUG
			default: NS = START;
		
		endcase
	
	always@(posedge clk or negedge rst)
		if(rst==1'b0)
		begin
			s <= 8'd0;
			tp <= 10'd0;
			count <= 23'd0;
			dval <= 8'd0;
			dpack <= 10'd0;
			newM <= 0;
			done <= 1'b0;
			leap <= 10'd0;
			leapfreq <= 10'd0;
		end
		else
		case(S)
		
			START:
			begin
				s <= 8'd0;
				tp <= 10'd0;
				count <= 23'd0;
				dval <= 8'd0;
				dpack <= 10'd0;
				newM <= c;
				done <= 1'b0;
				leap <= 10'd0;
				leapfreq <= 10'd0;
				s <= c-n;
			end
			
//			SHIFT: 
			
			DVAL: 
			begin
				dval <= s/t;
				if(s%t>0)
					leapfreq <= t/(s%t);
				else
					leapfreq <= 10'b1111111111;
			end
			
			DVALGO:
			begin
				newM <= newM - dval;
				count <= 23'd0;
				tp <= tp+1'b1;
				leap <= leap+1'b1;
			end
			
			LEAP:
			begin
				newM <= newM -1;
				leap <= 0;
			end
			
			WAITDVAL: count <= count+1'b1;
			
			DONE: 
			begin
				newM <= n;
				done <= 1'b1;
			end
		endcase
	
endmodule
				