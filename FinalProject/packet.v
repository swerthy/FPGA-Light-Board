module packet(

	input clk,
	input rst,
	input send,
	input [5642:0]data,
	output reg pos,
	output reg done

);

	reg [22:0]count;
	reg [7:0]bitcount;
	reg [5642:0]sends;

	reg [2:0]S;
	reg [2:0]NS;

	parameter 
		BREAK=3'd0, //Break to start next DMX packets (low)
		START=3'd1,	//Reset counter and start packet (low)
		MARK=3'd2,	//Start of a packet (high)
		DATA=3'd3,  //Bits of a packet
		NEXT=3'd4,  //Move to next data bit 
		WAIT=3'd5,	//Idle between packets (high)
		RESET=3'd6; //Reset for next packet (high)
		
	always@(posedge clk or negedge rst)
		if(rst==1'b0)
			S <= BREAK;
		else
			S <= NS;

	always@(*)
		case(S)
			
			BREAK:
			if(count<5000) //>22 bits
				NS = BREAK;
			else
				NS = START;
				
			START: NS <= MARK;
			
			MARK:
				if(count<500) //>2 bits
					NS = MARK;
				else
					NS = DATA;

			DATA:
				if(sends==5643'd0) //All data sent
					NS = WAIT;
				else
				begin
					if(bitcount<200) //4us (per bit)
						NS = DATA;
					else
						NS = NEXT;
				end
			
			NEXT: NS = DATA;
			
			WAIT:
				if(count<3865900) //About 77ms between packets (total packet length of 100ms)
					NS = WAIT;
				else
					NS = RESET;
			
			RESET: NS = BREAK;
			
			
		endcase

	always@(posedge clk or negedge rst)
	if(rst==1'b0)
	begin
			count <= 0;
			bitcount <= 0;
			sends <= data;
			pos <= 0;
			done <= 0;
	end
	else
		case(S)
		
			BREAK: 
			begin
				count <= count+1'b1;
				sends <= data;
				pos <= 0;
			end
			
			START:
			begin
				count <= 0;
				sends <= data;
				pos <= 0;
			end
			
			MARK:
			begin
				pos <= 1;
				count <= count+1'b1;
			end
			
			DATA:
			begin
				pos <= sends[0];
				count <= 0;
				bitcount <= bitcount+1'b1;
			end
			
			NEXT: 
			begin
				sends <= sends/2;
				//sends <= sends >> 1;
				bitcount <= 0;
			end
			
			WAIT: 
			begin
				count <= count+1'b1;
				pos <= 1;
				done <= 1;
			end
			
			RESET:
			begin
				count <= 0;
				pos <= 1;
				done <= 0;
			end
			
		endcase

endmodule