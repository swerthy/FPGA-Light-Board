module fade(

	input clk,
	input rst,
	input fade,
	input [5642:0]qn,
	input [9:0]t,
	input [5642:0]data,
	output reg [5642:0]newdata,
	output reg done
	
	);
	
	reg [2:0]S;
	reg [2:0]NS;
	
	reg [4:0]sr;
	reg [27:0]sl;
	reg [7:0]dval;
	reg [27:0]count;
	
	reg [7:0]dval1;
	reg [7:0]dval2;
	reg [7:0]dval3;
	reg [7:0]dval4;
	reg [7:0]dval5;
	
	parameter 
		STAT=3'd0,		//Static state
		INIT=3'd1,		//Initialize fade
		FADE=3'd2,		//Fading
		WAIT=3'd3,		//Wait for step to end
		JUMP=3'd4,		//Final jump to next state
		DONE=3'd5;		//Done signal
		
	always@(posedge clk or negedge rst)
		if(rst==1'b0)
			S <= STAT;
		else
			S <= NS;
	
	always@(*)
		case(S)
			
			STAT:
			begin
				if(fade==0)
					NS = STAT;
				else	
					NS = INIT;
			end
			
			INIT:
			begin
				if(t>0)
					NS = FADE;
				else
					NS = JUMP;
			end
			
			FADE:
			if(dval > 0)
				NS = WAIT;
			else
				NS = JUMP;
				
			WAIT:
			if(count<sl)
				NS = WAIT;
			else
				NS = FADE;
			
			JUMP: NS = DONE;
			
			DONE: NS = STAT;
		
		endcase
	
	always@(posedge clk or negedge rst)
		if(rst==1'b0)
		begin
			done <= 1'b0;
			sr <= 5'd25;
			sl <= 28'd0;
			newdata <= data;
			count <= 28'd0;
		end
		else
		case(S)
		
			STAT: 
			begin
				done <= 0;
			end
			
			INIT: 
			begin
				sr <= 5'd25;			//Steps remaining
				sl <= t*200000;	//Step tick length
				newdata <= data;
			end
			
			FADE:
			begin
				dval <= dval1|dval2|dval3|dval4|dval5;
				count <= count+1'b1;
				sr <= sr-1'b1;
				if(newdata[19:12] < qn[19:12])
				begin
					dval1 <= (qn[19:12]-data[19:12])/sr;
					newdata[19:12] <= newdata[19:12]+dval1;
				end
				else
				begin
					dval1 <= (data[19:12]-qn[19:12])/sr;
					newdata[19:12] <= newdata[19:12]-dval1;
				end
				if(newdata[30:23] < qn[30:23])
				begin
					dval2 <= (qn[30:23]-data[30:23])/sr;
					newdata[30:23] <= newdata[30:23]+dval2;
				end
				else
				begin
					dval2 <= (data[30:23]-qn[30:23])/sr;
					newdata[30:23] <= newdata[30:23]-dval2;
				end
				if(newdata[41:34] < qn[41:34])
				begin
					dval3 <= (qn[41:34]-data[41:34])/sr;
					newdata[41:34] <= newdata[41:34]+dval3;
				end
				else
				begin
					dval3 <= (data[41:34]-qn[41:34])/sr;
					newdata[41:34] <= newdata[41:34]-dval3;
				end
				if(newdata[52:45] < qn[52:45])
				begin
					dval4 <= (qn[52:45]-data[52:45])/sr;
					newdata[52:45] <= newdata[52:45]+dval4;
				end
				else
				begin
					dval4 <= (data[52:45]-qn[52:45])/sr;
					newdata[52:45] <= newdata[52:45]-dval4;
				end
				if(newdata[63:56] < qn[63:56])
				begin
					dval5 <= (qn[63:56]-data[63:56])/sr;
					newdata[63:56] <= newdata[63:56]+dval5;
				end
				else
				begin
					dval5 <= (data[63:56]-qn[63:56])/sr;
					newdata[63:56] <= newdata[63:56]-dval5;
				end
			end

			WAIT: count <= count+1'b1;
			
			JUMP: newdata <= qn;
			
			DONE: done <= 1;
			
		endcase

endmodule