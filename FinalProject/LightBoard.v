module LightBoard(

	input CLOCK_50,
	input [3:0]KEY,
	input [9:0]SW,
	output [9:0]LEDR,
	output [6:0]HEX2,
	output [6:0]HEX1,
	output [6:0]HEX0
	
	);
	
	wire clk;
	assign clk = CLOCK_50;
	wire rst;
	assign rst = KEY[0];
	wire enter;
	assign enter = !KEY[3];
	wire [5642:0]bo;
	assign bo = 5643'b11000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000110000000001100000000011000000000;
	wire [5642:0]newdata;
	reg [5642:0]data;
	wire out;
	wire done;
	wire faded[4:0];
 
	reg [8:0]addr;
	reg [7:0]val;
	reg [2:0]q;
	reg [4:0]qstack;
	
	assign LEDR[4:1] = qstack[4:1];
	assign LEDR[0] = out;
	
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
	
	reg [5642:0]qn;
	reg [9:0]t;
	
	wire send;
	assign send = !KEY[1];
	reg fade;
	
	reg [4:0]S;
	reg [4:0]NS;
	
	assign LEDR[7:5] = S;
	assign LEDR[9:8] = addr[1:0];
	
	parameter 
		HOME=5'd0, 		//Home
		//Modify Address (SW[1:0]==2'b11)
		ADDRX=5'd1, 	//Address selection debounce
		ADDR=5'd2, 		//Address selection
		VALX=5'd3,		//Value selection debounce
		VAL=5'd4,		//Value selection
		RECAX=5'd5,		//Record address debounce
		RECA=5'd6,		//Record address
		//Modify Cue (SW[1:0]==2'b10)
		QNUMX=5'd7,		//Cue selection debounce
		QNUM=5'd8,		//Cue selection
		TIMEX=5'd9,		//Fade time selection debounce
		TIME=5'd10,		//Fade time selection
		RECQX=5'd11,	//Record cue debounce
		RECQ=5'd12,		//Record cue
		//Go to Cue (SW[1:0]==2'b01)
		QGOX=5'd13,		//Destination selection debounce
		QGO=5'd14,		//Destination selection
		SETX=5'd15,		//Set cue debounce
		SET=5'd16,		//Set cue
		//Fade to next cue (SW[1:0]==2'b00)
		DEFSHIFT=5'd17,//Define fade parameters
		FADEWAIT=5'd18,//Wait for fade to complete
		FADEDONE=5'd19,//All addresses faded
		//Other
		INIT=5'd31,		//Initialize system
		ERROR=5'hff;	//Error state
		
		
	always@(posedge clk or negedge rst)
		if(rst==1'b0)
			S <= HOME;
		else
			S <= NS;

	always@(*)
		case(S)
			
			INIT: NS = HOME;
			
			HOME:
			begin
				if(enter==0)
					NS = HOME;
				else
				begin
					case(SW[1:0])
						
						2'b11: NS = ADDRX;
						2'b10: NS = QNUMX;
						2'b01: NS = QGOX;
						2'b00: NS = DEFSHIFT;
						
					endcase
				end
			end
			
			ADDRX: 
			if(enter==1)
				NS = ADDRX;
			else
				NS = ADDR;
			
			ADDR:
			if(enter==0)
				NS = ADDR;
			else
				NS = VALX;
			
			VALX:
			if(enter==1)
				NS = VALX;
			else
				NS = VAL;
			
			VAL:
			if(enter==0)
				NS = VAL;
			else
				NS = RECAX;
			
			RECAX:
			if(enter==1)
				NS = RECAX;
			else
				NS = RECA;
				
			RECA: NS = HOME;
			
			QNUMX:
			if(enter==1)
				NS = QNUMX;
			else
				NS = QNUM;
				
			QNUM:
			if(enter==0)
				NS = QNUM;
			else
				NS = TIMEX;
			
			TIMEX:
			if(enter==1)
				NS = TIMEX;
			else
				NS = TIME;
			
			TIME:
			if(enter==0)
				NS = TIME;
			else
				NS = RECQX;
			
			RECQX:
			if(enter==1)
				NS = RECQX;
			else
				NS = RECQ;
			
			RECQ: NS = HOME;
			
			QGOX:
			if(enter==1)
				NS = QGOX;
			else
				NS = QGO;
			
			QGO:
			if(enter==0)
				NS = QGO;
			else
				NS = SETX;
			
			SETX:
			if(enter==1)
				NS = SETX;
			else
				NS = SET;
			
			SET: NS = HOME;
			
			DEFSHIFT: NS = FADEWAIT;
			
			FADEWAIT: 
			if(faded[0]&faded[1]&faded[2]&faded[3]&faded[4]==1'b1)
				NS = FADEWAIT;
			else
				NS = FADEDONE;
				
			FADEDONE: NS = HOME;
			
			// BUG
			default: NS = ERROR;
		endcase

	always@(posedge clk or negedge rst)
		if(rst==1'b0)
		begin
			addr <= 0;
			data <= 0;
			q0 <= 0;
			q1 <= 0;
			q2 <= 0;
			q3 <= 0;
			q4 <= 0;
			t0 <= 10'd0;
			t1 <= 10'd0;
			t2 <= 10'd0;
			t3 <= 10'd0;
			t4 <= 10'd0;	
			qstack <= 5'b00000;
		end
		else
		begin
		case(S)
			
			INIT:
			begin
				addr <= 0;
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
				qstack <= 5'b00000;
			end
			
//			HOME: 
		
			ADDRX: addr <= SW[8:0];
			
			ADDR: addr <= SW[8:0];
			
			VALX: val <= SW[7:0];

			VAL: val <= SW[7:0]; 
			
			RECAX: val <= SW[7:0];
			
			RECA: 
			case(addr)
				9'd1: data[19:12] <= val;
				9'd2: data[30:23] <= val;
				9'd3: data[41:34] <= val;
				9'd4: data[52:45] <= val;
				9'd5: data[63:56] <= val;
				//repeat for future addresses
			endcase
			
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
			
			DEFSHIFT:
			begin
				fade <= 1'b1;
				case(q)
				
					3'd0:
					begin
						if(qstack[1]==1)
						begin
							qn <= q1;
							t <= t1;
						end
						else
						begin
							if(qstack[2]==1)
							begin
								qn <= q2;
								t <= t2;
							end
							else
							begin
								if(qstack[3]==1)
								begin
									qn <= q3;
									t <= t3;
								end
								else
								begin
									if(qstack[4]==1)
									begin
										qn <= q4;
										t <= t4;
									end
									else
									begin
										qn <= q0;
										t <= 10'd0;
									end
								end
							end
						end
					end
					
					3'd1:
					begin
						data <= q1;
						if(qstack[2]==1)
						begin
							qn <= q2;
							t <= t2;
						end
						else
						begin
							if(qstack[3]==1)
							begin
								qn <= q3;
								t <= t3;
							end
							else
							begin
								if(qstack[4]==1)
								begin
									qn <= q4;
									t <= t4;
								end
								else
								begin
									if(qstack[0]==1)
									begin
										qn <= q0;
										t <= t0;
									end
									else
									begin
										qn <= q1;
										t <= 10'd0;
									end
								end
							end
						end
					end
					
					3'd2:
					begin
						data <= q2;
						if(qstack[3]==1)
						begin
							qn <= q3;
							t <= t3;
						end
						else
						begin
							if(qstack[4]==1)
							begin
								qn <= q4;
								t <= t4;
							end
							else
							begin
								if(qstack[0]==1)
								begin
									qn <= q0;
									t <= t0;
								end
								else
								begin
									if(qstack[0]==1)
									begin
										qn <= q0;
										t <= t0;
									end
									else
									begin
										qn <= q2;
										t <= 10'd0;
									end
								end
							end
						end
					end
					
					3'd3:
					begin
						data <= q0;
						if(qstack[1]==1)
						begin
							qn <= q1;
							t <= t1;
						end
						else
						begin
							if(qstack[2]==1)
							begin
								qn <= q2;
								t <= t2;
							end
							else
							begin
								if(qstack[3]==1)
								begin
									qn <= q3;
									t <= t3;
								end
								else
								begin
									if(qstack[4]==1)
									begin
										qn <= q4;
										t <= t4;
									end
									else
									begin
										qn <= q3;
										t <= 10'd0;
									end
								end
							end
						end
					end
					
					3'd4:
					begin
						data <= q4;
						if(qstack[0]==1)
						begin
							qn <= q0;
							t <= t0;
						end
						else
						begin
							if(qstack[1]==1)
							begin
								qn <= q1;
								t <= t1;
							end
							else
							begin
								if(qstack[2]==1)
								begin
									qn <= q2;
									t <= t2;
								end
								else
								begin
									if(qstack[3]==1)
									begin
										qn <= q3;
										t <= t3;
									end
									else
									begin
										qn <= q4;
										t <= 10'd0;
									end
								end
							end
						end
					end
				
				endcase
			end
			
			FADEWAIT: 
			begin
				data[19:12] <= newdata[19:12];
				data[30:23] <= newdata[30:23];
				data[41:34] <= newdata[41:34];
				data[52:45] <= newdata[52:45];
				data[63:56] <= newdata[63:56];
			end
			
			FADEDONE: 
			begin
				fade <= 1'b0;
				data[19:12] <= newdata[19:12];
				data[30:23] <= newdata[30:23];
				data[41:34] <= newdata[41:34];
				data[52:45] <= newdata[52:45];
				data[63:56] <= newdata[63:56];
			end

		endcase
			
		end
	
	packet sendpacket(clk,rst,send,data,out,done);
	
	reg [7:0]segval;
	
	always@(*)
	begin
		segval[7:0] = data[19:12];
		addr1_1s[3:0] = segval%10;
		addr1_10s[3:0] = segval/10%10;
		addr1_100s[3:0] = segval/100;
	end
	
	reg [3:0]addr1_1s; 
	seven_segment seven_segment_1s(addr1_1s,HEX0[6:0]);
	
	reg [3:0]addr1_10s; 
	seven_segment seven_segment_10s(addr1_10s,HEX1[6:0]);
	
	reg [3:0]addr1_100s; 
	seven_segment seven_segment_100s(addr1_100s,HEX2[6:0]);
	
	fade fade1(clk,rst,fade,qn[19:12],t,data[19:12],newdata[19:12],faded[0]);
	fade fade2(clk,rst,fade,qn[30:23],t,data[30:23],newdata[30:23],faded[1]);
	fade fade3(clk,rst,fade,qn[41:34],t,data[41:34],newdata[41:34],faded[2]);
	fade fade4(clk,rst,fade,qn[52:45],t,data[52:45],newdata[52:45],faded[3]);
	fade fade5(clk,rst,fade,qn[63:56],t,data[63:56],newdata[63:56],faded[4]);
	
endmodule
