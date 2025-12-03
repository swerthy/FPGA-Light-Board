module LightBoard(
	input CLOCK_50,
	input [3:0]KEY,
	input [9:0]SW,
	output [9:0]LEDR
	);
	
	wire clk;
	assign clk = CLOCK_50;
	wire rst;
	assign rst = KEY[0];
	wire send;
	assign send = !KEY[1];
	wire enter;
	assign enter = !KEY[3];
	wire [5642:0]bo;
	assign bo = 5643'b11000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000111000000001110000000011100000000100000000000;
	reg [5642:0]data;
	reg shifted;
	wire out;
	wire done;
 
	reg [8:0]addr;
	reg [7:0]val;
	reg [2:0]q;
	reg [4:0]qstack;
	assign LEDR[4:0] = qstack;
	
	reg [5642:0]q0;
	reg [9:0]t0;	
	
	reg [5642:0]q1;
	reg [9:0]t1;
	
	reg [5642:0]q2;
	reg [9:0]t2;
	
	reg [5642:0]q3;
	reg [9:0]t3;
	
	reg [5642:0]q4;
	reg [9:0]t4;
	
	reg [4:0]S;
	reg [4:0]NS;
	
	assign LEDR[9:5] = S;
	
	parameter 
		HOME=5'd0, 		//Home
		//Modify Address (val[1:0]==2'b11)
		ADDRX=5'd1, 	//Address selection debounce
		ADDR=5'd2, 		//Address selection
		VALX=5'd3,		//Value selection debounce
		VAL=5'd4,		//Value selection
		RECAX=5'd5,		//Record address debounce
		RECA=5'd6,		//Record address
		//Modify Cue (val[1:0]==2'b10)
		QNUMX=5'd7,		//Cue selection debounce
		QNUM=5'd8,		//Cue selection
		TIMEX=5'd9,		//Fade time selection debounce
		TIME=5'd10,		//Fade time selection
		RECQX=5'd11,	//Record cue debounce
		RECQ=5'd12,		//Record cue
		//Go to Cue (val[1:0]==2'b01)
		QGOX=5'd13,		//Destination selection debounce
		QGO=5'd14,		//Destination selection
		SETX=5'd15,		//Set cue debounce
		SET=5'd16,		//Set cue
		//Go to next cue (val[1:0]==2'b00)
		SHIFT=5'd17,	//Fade
		//Other
		ERROR=5'hff;
		
		
	always@(posedge clk or negedge rst)
		if(rst==1'b0)
			S <= HOME;
		else
			S <= NS;

	always@(*)
		case(S)
			
			HOME:
			begin
				if(enter==0)
					NS <= HOME;
				else
				begin
					case(SW[1:0])
						
						2'b11: NS <= ADDRX;
						2'b10: NS <= QNUMX;
						2'b01: NS <= QGOX;
						2'b00: NS <= SHIFT;
						
					endcase
				end
			end
			
			ADDRX: 
			if(enter==1)
				NS <= ADDRX;
			else
				NS <= ADDR;
			
			ADDR:
			if(enter==0)
				NS <= ADDR;
			else
				NS <= VALX;
			
			VALX:
			if(enter==1)
				NS <= VALX;
			else
				NS <= VAL;
			
			VAL:
			if(enter==0)
				NS <= VAL;
			else
				NS <= RECAX;
			
			RECAX:
			if(enter==1)
				NS <= RECAX;
			else
				NS <= RECA;
				
			RECA: NS <= HOME;
			
			QNUMX:
			if(enter==1)
				NS <= QNUMX;
			else
				NS <= QNUM;
				
			QNUM:
			if(enter==0)
				NS <= QNUM;
			else
				NS <= TIMEX;
			
			TIMEX:
			if(enter==1)
				NS <= TIMEX;
			else
				NS <= TIME;
			
			TIME:
			if(enter==0)
				NS <= TIME;
			else
				NS <= RECQX;
			
			RECQX:
			if(enter==1)
				NS <= RECQX;
			else
				NS <= RECQ;
			
			RECQ: NS <= HOME;
			
			QGOX:
			if(enter==1)
				NS <= QGOX;
			else
				NS <= QGO;
			
			QGO:
			if(enter==0)
				NS <= QGO;
			else
				NS <= SETX;
			
			SETX:
			if(enter==1)
				NS <= SETX;
			else
				NS <= SET;
			
			SET: NS <= HOME;
			
			SHIFT:
			if(shifted==1)
				NS <= HOME;
			else
				NS <= SHIFT;

		endcase

	always@(posedge clk or negedge rst)
		if(rst==1'b0)
		begin
			data <= bo;
			q0 <= bo;
			q1 <= bo;
			q2 <= bo;
			q3 <= bo;
			q4 <= bo;
			t0 <= 10'd0;
			t1 <= 10'd0;
			t2 <= 10'd0;
			t3 <= 10'd0;
			t4 <= 10'd0;	
		end
		else
		begin
		case(S)
			
//			HOME: 
		
			ADDRX: addr <= SW[8:0];
			
			ADDR: addr <= SW[8:0];
			
			VALX: val <= SW[7:0];

			VAL: val <= SW[7:0]; 
			
//			RECAX: 
			
//			RECA: 
			
			QNUMX: q <= SW[2:0];
			
			QNUM: q <= SW[2:0];
			
			TIMEX: 
			case(q)
				3'd0: t0 <= SW[9:0];
				3'd1: t1 <= SW[9:0];
				3'd2: t2 <= SW[9:0];
				3'd3: t3 <= SW[9:0];
				3'd4: t4 <= SW[9:0];
//				default: S <= ERROR;
			endcase
			
			TIME:
			case(q)
				3'd0: t0 <= SW[9:0];
				3'd1: t1 <= SW[9:0];
				3'd2: t2 <= SW[9:0];
				3'd3: t3 <= SW[9:0];
				3'd4: t4 <= SW[9:0];
//				default: S <= ERROR;
			endcase
			
			RECQX:
			case(q)
			
				3'd0: 
				begin
					q0 <= data;
					qstack[0] <= 1;
				end
				
				3'd1: 
				begin
					q1 <= data;
					qstack[1] <= 1;
				end
				
				3'd2: 
				begin
					q2 <= data;
					qstack[2] <= 1;
				end
				
				3'd3: 
				begin
					q3 <= data;
					qstack[3] <= 1;
				end
				
				3'd4: 
				begin
					q4 <= data;
					qstack[4] <= 1;
				end
				
//				default: S <= ERROR;
				
			endcase
			
			RECQ:
			case(q)
			
				3'd0: 
				begin
					q0 <= data;
					qstack[0] <= 1;
				end
				
				3'd1: 
				begin
					q1 <= data;
					qstack[1] <= 1;
				end
				
				3'd2: 
				begin
					q2 <= data;
					qstack[2] <= 1;
				end
				
				3'd3: 
				begin
					q3 <= data;
					qstack[3] <= 1;
				end
				
				3'd4: 
				begin
					q4 <= data;
					qstack[4] <= 1;
				end
				
//				default: S <= ERROR;
				
			endcase
			
			QGOX: q <= SW[2:0];
			
			QGO: q <= SW[2:0];
			
			SETX: 
			case(q)
				3'd0: data <= q0;
				3'd1: data <= q1;
				3'd2: data <= q2;
				3'd3: data <= q3;
				3'd4: data <= q4;
//				default: S <= ERROR;
			endcase
			
			SET: 
			case(q)
				3'd0: data <= q0;
				3'd1: data <= q1;
				3'd2: data <= q2;
				3'd3: data <= q3;
				3'd4: data <= q4;
//				default: S <= ERROR;
			endcase
			
//			SHIFT:
			
		endcase
		end
	
	packet sendpacket(clk,rst,send,data,out,done);
	//packet sendpacket(clk,rst,send,data,output,done);
	
endmodule
