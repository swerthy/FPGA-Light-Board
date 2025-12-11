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
	
	reg [3:0]S;
	reg [3:0]NS;
	
	parameter
		START = 4'd0,
		SHIFT = 4'd1,
		DVAL = 4'd2,
		DVALGO = 4'd3,
		WAITDVAL = 4'd4,
		DPACK = 4'd5,
		DPACKGO = 4'd6,
		WAITDPACK = 4'd7,
		PACKWAIT = 4'd8,
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
			begin
				if(t==0)
					NS = DONE;
				else
				begin
					if(t<=s)
						NS = DVAL;
					else
						NS = DPACK;
				end
			end
			
			DVAL: NS = DVALGO;
			
			DVALGO: NS = WAITDVAL;
			
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
			
			DPACK: NS = DPACKGO;
			
			DPACKGO: NS = WAITDPACK;
			
			WAITDPACK:
			begin
				if(count<5000000)
					NS = WAITDPACK;
				else
				begin
					if(pw<dpack)
						NS = PACKWAIT;
					else
					begin
						if(newM>n)
							NS = DPACKGO;
						else
							NS = DONE;
					end
				end
			end
			
			PACKWAIT: NS = WAITDPACK;
			
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
				s <= c-n;
			end
			
//			SHIFT: 
			
			DVAL: dval <= s/t;
			
			DVALGO:
			begin
				newM <= newM - dval;
				count <= 23'd0;
				tp <= tp+1'b1;
			end
			
			WAITDVAL: count <= count+1'b1;
			
			DPACK: dpack <= t/s;
			
			DPACKGO:
			begin
				newM <= newM - 1'b1;
				count <= 23'd0;
				pw <= 10'd0;
				tp <= tp+1'b1;
			end
			
			WAITDPACK: count <= count+1'b1;
			
			PACKWAIT:
			begin
				count <= 23'd0;
				pw <= pw+1'b1;
			end
			
			DONE: 
			begin
				newM <= n;
				done <= 1'b1;
			end
		endcase
	
endmodule
				