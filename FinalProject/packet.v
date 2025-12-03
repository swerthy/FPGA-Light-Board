module packet(

	input clk,
	input rst,
	input send,
	input [5642:0]data,
	output reg pos,
	output reg done

);

reg [15:0]count;
reg [7:0]bitcount;
reg [5642:0]sends;

reg [2:0]S;
reg [2:0]NS;

parameter 
	BREAK=3'd0, //Break between DMX packets
	MARK1=3'd1, //Start of a packet
	DATA=3'd2,  //Bits of a packet
	NEXT=3'd3,  //Move to next data bit
	MARK2=3'd4, //End of a packet
	DONE=3'd5,	//Done signal
	ERROR=3'hF; //Error
	
always@(posedge clk or negedge rst)
	if(rst==1'b0)
		S <= BREAK;
	else
		S <= NS;

always@(*)
	case(S)
		
		BREAK:
		if(send==0)
			NS <= BREAK;
		else
			NS <= MARK1;
		
		MARK1:
			if(count<50000) //1ms
				NS <= MARK1;
			else
				NS <= DATA;

		DATA:
			if(sends==5643'd0) //All data sent
				NS <= MARK2;
			else
			begin
				if(bitcount<200) //4us
					NS <= DATA;
				else
					NS <= NEXT;
			end
		
		NEXT: NS <= DATA;

		MARK2:
			if(count<25000) //0.5ms
				NS <= MARK2;
			else
				NS <= DONE;
		
		DONE: NS <= BREAK;
		
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
			count <= 0;
			bitcount <= 0;
			sends <= data;
			pos <= 0;
		end
		
		MARK1:
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
			bitcount <= 0;
		end
		
		MARK2:
		begin
			pos <= 1;
			count <= count+1'b1;
		end
		
		DONE:
		begin
			pos <= 1;
			done <= 1;
		end
		
	endcase

endmodule