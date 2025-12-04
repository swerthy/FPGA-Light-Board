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
	
	reg [4:0]S;
	reg [4:0]NS;
	
	assign LEDR[9:5] = S;
	
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
		//Go to next cue (SW[1:0]==2'b00)
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
			qstack <= 5'b00000;
		end
		else
		begin
		case(S)
			
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
				9'd6: data[74:67] <= val;
				9'd7: data[85:78] <= val;
				9'd8: data[96:89] <= val;
				9'd9: data[107:100] <= val;
				9'd10: data[118:111] <= val;
				9'd11: data[129:122] <= val;
				9'd12: data[140:133] <= val;
				9'd13: data[151:144] <= val;
				9'd14: data[162:155] <= val;
				9'd15: data[173:166] <= val;
				9'd16: data[184:177] <= val;
				9'd17: data[195:188] <= val;
				9'd18: data[206:199] <= val;
				9'd19: data[217:210] <= val;
				9'd20: data[228:221] <= val;
				9'd21: data[239:232] <= val;
				9'd22: data[250:243] <= val;
				9'd23: data[261:254] <= val;
				9'd24: data[272:265] <= val;
				9'd25: data[283:276] <= val;
				9'd26: data[294:287] <= val;
				9'd27: data[305:298] <= val;
				9'd28: data[316:309] <= val;
				9'd29: data[327:320] <= val;
				9'd30: data[338:331] <= val;
				9'd31: data[349:342] <= val;
				9'd32: data[360:353] <= val;
				9'd33: data[371:364] <= val;
				9'd34: data[382:375] <= val;
				9'd35: data[393:386] <= val;
				9'd36: data[404:397] <= val;
				9'd37: data[415:408] <= val;
				9'd38: data[426:419] <= val;
				9'd39: data[437:430] <= val;
				9'd40: data[448:441] <= val;
				9'd41: data[459:452] <= val;
				9'd42: data[470:463] <= val;
				9'd43: data[481:474] <= val;
				9'd44: data[492:485] <= val;
				9'd45: data[503:496] <= val;
				9'd46: data[514:507] <= val;
				9'd47: data[525:518] <= val;
				9'd48: data[536:529] <= val;
				9'd49: data[547:540] <= val;
				9'd50: data[558:551] <= val;
				9'd51: data[569:562] <= val;
				9'd52: data[580:573] <= val;
				9'd53: data[591:584] <= val;
				9'd54: data[602:595] <= val;
				9'd55: data[613:606] <= val;
				9'd56: data[624:617] <= val;
				9'd57: data[635:628] <= val;
				9'd58: data[646:639] <= val;
				9'd59: data[657:650] <= val;
				9'd60: data[668:661] <= val;
				9'd61: data[679:672] <= val;
				9'd62: data[690:683] <= val;
				9'd63: data[701:694] <= val;
				9'd64: data[712:705] <= val;
				9'd65: data[723:716] <= val;
				9'd66: data[734:727] <= val;
				9'd67: data[745:738] <= val;
				9'd68: data[756:749] <= val;
				9'd69: data[767:760] <= val;
				9'd70: data[778:771] <= val;
				9'd71: data[789:782] <= val;
				9'd72: data[800:793] <= val;
				9'd73: data[811:804] <= val;
				9'd74: data[822:815] <= val;
				9'd75: data[833:826] <= val;
				9'd76: data[844:837] <= val;
				9'd77: data[855:848] <= val;
				9'd78: data[866:859] <= val;
				9'd79: data[877:870] <= val;
				9'd80: data[888:881] <= val;
				9'd81: data[899:892] <= val;
				9'd82: data[910:903] <= val;
				9'd83: data[921:914] <= val;
				9'd84: data[932:925] <= val;
				9'd85: data[943:936] <= val;
				9'd86: data[954:947] <= val;
				9'd87: data[965:958] <= val;
				9'd88: data[976:969] <= val;
				9'd89: data[987:980] <= val;
				9'd90: data[998:991] <= val;
				9'd91: data[1009:1002] <= val;
				9'd92: data[1020:1013] <= val;
				9'd93: data[1031:1024] <= val;
				9'd94: data[1042:1035] <= val;
				9'd95: data[1053:1046] <= val;
				9'd96: data[1064:1057] <= val;
				9'd97: data[1075:1068] <= val;
				9'd98: data[1086:1079] <= val;
				9'd99: data[1097:1090] <= val;
				9'd100: data[1108:1101] <= val;
				9'd101: data[1119:1112] <= val;
				9'd102: data[1130:1123] <= val;
				9'd103: data[1141:1134] <= val;
				9'd104: data[1152:1145] <= val;
				9'd105: data[1163:1156] <= val;
				9'd106: data[1174:1167] <= val;
				9'd107: data[1185:1178] <= val;
				9'd108: data[1196:1189] <= val;
				9'd109: data[1207:1200] <= val;
				9'd110: data[1218:1211] <= val;
				9'd111: data[1229:1222] <= val;
				9'd112: data[1240:1233] <= val;
				9'd113: data[1251:1244] <= val;
				9'd114: data[1262:1255] <= val;
				9'd115: data[1273:1266] <= val;
				9'd116: data[1284:1277] <= val;
				9'd117: data[1295:1288] <= val;
				9'd118: data[1306:1299] <= val;
				9'd119: data[1317:1310] <= val;
				9'd120: data[1328:1321] <= val;
				9'd121: data[1339:1332] <= val;
				9'd122: data[1350:1343] <= val;
				9'd123: data[1361:1354] <= val;
				9'd124: data[1372:1365] <= val;
				9'd125: data[1383:1376] <= val;
				9'd126: data[1394:1387] <= val;
				9'd127: data[1405:1398] <= val;
				9'd128: data[1416:1409] <= val;
				9'd129: data[1427:1420] <= val;
				9'd130: data[1438:1431] <= val;
				9'd131: data[1449:1442] <= val;
				9'd132: data[1460:1453] <= val;
				9'd133: data[1471:1464] <= val;
				9'd134: data[1482:1475] <= val;
				9'd135: data[1493:1486] <= val;
				9'd136: data[1504:1497] <= val;
				9'd137: data[1515:1508] <= val;
				9'd138: data[1526:1519] <= val;
				9'd139: data[1537:1530] <= val;
				9'd140: data[1548:1541] <= val;
				9'd141: data[1559:1552] <= val;
				9'd142: data[1570:1563] <= val;
				9'd143: data[1581:1574] <= val;
				9'd144: data[1592:1585] <= val;
				9'd145: data[1603:1596] <= val;
				9'd146: data[1614:1607] <= val;
				9'd147: data[1625:1618] <= val;
				9'd148: data[1636:1629] <= val;
				9'd149: data[1647:1640] <= val;
				9'd150: data[1658:1651] <= val;
				9'd151: data[1669:1662] <= val;
				9'd152: data[1680:1673] <= val;
				9'd153: data[1691:1684] <= val;
				9'd154: data[1702:1695] <= val;
				9'd155: data[1713:1706] <= val;
				9'd156: data[1724:1717] <= val;
				9'd157: data[1735:1728] <= val;
				9'd158: data[1746:1739] <= val;
				9'd159: data[1757:1750] <= val;
				9'd160: data[1768:1761] <= val;
				9'd161: data[1779:1772] <= val;
				9'd162: data[1790:1783] <= val;
				9'd163: data[1801:1794] <= val;
				9'd164: data[1812:1805] <= val;
				9'd165: data[1823:1816] <= val;
				9'd166: data[1834:1827] <= val;
				9'd167: data[1845:1838] <= val;
				9'd168: data[1856:1849] <= val;
				9'd169: data[1867:1860] <= val;
				9'd170: data[1878:1871] <= val;
				9'd171: data[1889:1882] <= val;
				9'd172: data[1900:1893] <= val;
				9'd173: data[1911:1904] <= val;
				9'd174: data[1922:1915] <= val;
				9'd175: data[1933:1926] <= val;
				9'd176: data[1944:1937] <= val;
				9'd177: data[1955:1948] <= val;
				9'd178: data[1966:1959] <= val;
				9'd179: data[1977:1970] <= val;
				9'd180: data[1988:1981] <= val;
				9'd181: data[1999:1992] <= val;
				9'd182: data[2010:2003] <= val;
				9'd183: data[2021:2014] <= val;
				9'd184: data[2032:2025] <= val;
				9'd185: data[2043:2036] <= val;
				9'd186: data[2054:2047] <= val;
				9'd187: data[2065:2058] <= val;
				9'd188: data[2076:2069] <= val;
				9'd189: data[2087:2080] <= val;
				9'd190: data[2098:2091] <= val;
				9'd191: data[2109:2102] <= val;
				9'd192: data[2120:2113] <= val;
				9'd193: data[2131:2124] <= val;
				9'd194: data[2142:2135] <= val;
				9'd195: data[2153:2146] <= val;
				9'd196: data[2164:2157] <= val;
				9'd197: data[2175:2168] <= val;
				9'd198: data[2186:2179] <= val;
				9'd199: data[2197:2190] <= val;
				9'd200: data[2208:2201] <= val;
				9'd201: data[2219:2212] <= val;
				9'd202: data[2230:2223] <= val;
				9'd203: data[2241:2234] <= val;
				9'd204: data[2252:2245] <= val;
				9'd205: data[2263:2256] <= val;
				9'd206: data[2274:2267] <= val;
				9'd207: data[2285:2278] <= val;
				9'd208: data[2296:2289] <= val;
				9'd209: data[2307:2300] <= val;
				9'd210: data[2318:2311] <= val;
				9'd211: data[2329:2322] <= val;
				9'd212: data[2340:2333] <= val;
				9'd213: data[2351:2344] <= val;
				9'd214: data[2362:2355] <= val;
				9'd215: data[2373:2366] <= val;
				9'd216: data[2384:2377] <= val;
				9'd217: data[2395:2388] <= val;
				9'd218: data[2406:2399] <= val;
				9'd219: data[2417:2410] <= val;
				9'd220: data[2428:2421] <= val;
				9'd221: data[2439:2432] <= val;
				9'd222: data[2450:2443] <= val;
				9'd223: data[2461:2454] <= val;
				9'd224: data[2472:2465] <= val;
				9'd225: data[2483:2476] <= val;
				9'd226: data[2494:2487] <= val;
				9'd227: data[2505:2498] <= val;
				9'd228: data[2516:2509] <= val;
				9'd229: data[2527:2520] <= val;
				9'd230: data[2538:2531] <= val;
				9'd231: data[2549:2542] <= val;
				9'd232: data[2560:2553] <= val;
				9'd233: data[2571:2564] <= val;
				9'd234: data[2582:2575] <= val;
				9'd235: data[2593:2586] <= val;
				9'd236: data[2604:2597] <= val;
				9'd237: data[2615:2608] <= val;
				9'd238: data[2626:2619] <= val;
				9'd239: data[2637:2630] <= val;
				9'd240: data[2648:2641] <= val;
				9'd241: data[2659:2652] <= val;
				9'd242: data[2670:2663] <= val;
				9'd243: data[2681:2674] <= val;
				9'd244: data[2692:2685] <= val;
				9'd245: data[2703:2696] <= val;
				9'd246: data[2714:2707] <= val;
				9'd247: data[2725:2718] <= val;
				9'd248: data[2736:2729] <= val;
				9'd249: data[2747:2740] <= val;
				9'd250: data[2758:2751] <= val;
				9'd251: data[2769:2762] <= val;
				9'd252: data[2780:2773] <= val;
				9'd253: data[2791:2784] <= val;
				9'd254: data[2802:2795] <= val;
				9'd255: data[2813:2806] <= val;
				9'd256: data[2824:2817] <= val;
				9'd257: data[2835:2828] <= val;
				9'd258: data[2846:2839] <= val;
				9'd259: data[2857:2850] <= val;
				9'd260: data[2868:2861] <= val;
				9'd261: data[2879:2872] <= val;
				9'd262: data[2890:2883] <= val;
				9'd263: data[2901:2894] <= val;
				9'd264: data[2912:2905] <= val;
				9'd265: data[2923:2916] <= val;
				9'd266: data[2934:2927] <= val;
				9'd267: data[2945:2938] <= val;
				9'd268: data[2956:2949] <= val;
				9'd269: data[2967:2960] <= val;
				9'd270: data[2978:2971] <= val;
				9'd271: data[2989:2982] <= val;
				9'd272: data[3000:2993] <= val;
				9'd273: data[3011:3004] <= val;
				9'd274: data[3022:3015] <= val;
				9'd275: data[3033:3026] <= val;
				9'd276: data[3044:3037] <= val;
				9'd277: data[3055:3048] <= val;
				9'd278: data[3066:3059] <= val;
				9'd279: data[3077:3070] <= val;
				9'd280: data[3088:3081] <= val;
				9'd281: data[3099:3092] <= val;
				9'd282: data[3110:3103] <= val;
				9'd283: data[3121:3114] <= val;
				9'd284: data[3132:3125] <= val;
				9'd285: data[3143:3136] <= val;
				9'd286: data[3154:3147] <= val;
				9'd287: data[3165:3158] <= val;
				9'd288: data[3176:3169] <= val;
				9'd289: data[3187:3180] <= val;
				9'd290: data[3198:3191] <= val;
				9'd291: data[3209:3202] <= val;
				9'd292: data[3220:3213] <= val;
				9'd293: data[3231:3224] <= val;
				9'd294: data[3242:3235] <= val;
				9'd295: data[3253:3246] <= val;
				9'd296: data[3264:3257] <= val;
				9'd297: data[3275:3268] <= val;
				9'd298: data[3286:3279] <= val;
				9'd299: data[3297:3290] <= val;
				9'd300: data[3308:3301] <= val;
				9'd301: data[3319:3312] <= val;
				9'd302: data[3330:3323] <= val;
				9'd303: data[3341:3334] <= val;
				9'd304: data[3352:3345] <= val;
				9'd305: data[3363:3356] <= val;
				9'd306: data[3374:3367] <= val;
				9'd307: data[3385:3378] <= val;
				9'd308: data[3396:3389] <= val;
				9'd309: data[3407:3400] <= val;
				9'd310: data[3418:3411] <= val;
				9'd311: data[3429:3422] <= val;
				9'd312: data[3440:3433] <= val;
				9'd313: data[3451:3444] <= val;
				9'd314: data[3462:3455] <= val;
				9'd315: data[3473:3466] <= val;
				9'd316: data[3484:3477] <= val;
				9'd317: data[3495:3488] <= val;
				9'd318: data[3506:3499] <= val;
				9'd319: data[3517:3510] <= val;
				9'd320: data[3528:3521] <= val;
				9'd321: data[3539:3532] <= val;
				9'd322: data[3550:3543] <= val;
				9'd323: data[3561:3554] <= val;
				9'd324: data[3572:3565] <= val;
				9'd325: data[3583:3576] <= val;
				9'd326: data[3594:3587] <= val;
				9'd327: data[3605:3598] <= val;
				9'd328: data[3616:3609] <= val;
				9'd329: data[3627:3620] <= val;
				9'd330: data[3638:3631] <= val;
				9'd331: data[3649:3642] <= val;
				9'd332: data[3660:3653] <= val;
				9'd333: data[3671:3664] <= val;
				9'd334: data[3682:3675] <= val;
				9'd335: data[3693:3686] <= val;
				9'd336: data[3704:3697] <= val;
				9'd337: data[3715:3708] <= val;
				9'd338: data[3726:3719] <= val;
				9'd339: data[3737:3730] <= val;
				9'd340: data[3748:3741] <= val;
				9'd341: data[3759:3752] <= val;
				9'd342: data[3770:3763] <= val;
				9'd343: data[3781:3774] <= val;
				9'd344: data[3792:3785] <= val;
				9'd345: data[3803:3796] <= val;
				9'd346: data[3814:3807] <= val;
				9'd347: data[3825:3818] <= val;
				9'd348: data[3836:3829] <= val;
				9'd349: data[3847:3840] <= val;
				9'd350: data[3858:3851] <= val;
				9'd351: data[3869:3862] <= val;
				9'd352: data[3880:3873] <= val;
				9'd353: data[3891:3884] <= val;
				9'd354: data[3902:3895] <= val;
				9'd355: data[3913:3906] <= val;
				9'd356: data[3924:3917] <= val;
				9'd357: data[3935:3928] <= val;
				9'd358: data[3946:3939] <= val;
				9'd359: data[3957:3950] <= val;
				9'd360: data[3968:3961] <= val;
				9'd361: data[3979:3972] <= val;
				9'd362: data[3990:3983] <= val;
				9'd363: data[4001:3994] <= val;
				9'd364: data[4012:4005] <= val;
				9'd365: data[4023:4016] <= val;
				9'd366: data[4034:4027] <= val;
				9'd367: data[4045:4038] <= val;
				9'd368: data[4056:4049] <= val;
				9'd369: data[4067:4060] <= val;
				9'd370: data[4078:4071] <= val;
				9'd371: data[4089:4082] <= val;
				9'd372: data[4100:4093] <= val;
				9'd373: data[4111:4104] <= val;
				9'd374: data[4122:4115] <= val;
				9'd375: data[4133:4126] <= val;
				9'd376: data[4144:4137] <= val;
				9'd377: data[4155:4148] <= val;
				9'd378: data[4166:4159] <= val;
				9'd379: data[4177:4170] <= val;
				9'd380: data[4188:4181] <= val;
				9'd381: data[4199:4192] <= val;
				9'd382: data[4210:4203] <= val;
				9'd383: data[4221:4214] <= val;
				9'd384: data[4232:4225] <= val;
				9'd385: data[4243:4236] <= val;
				9'd386: data[4254:4247] <= val;
				9'd387: data[4265:4258] <= val;
				9'd388: data[4276:4269] <= val;
				9'd389: data[4287:4280] <= val;
				9'd390: data[4298:4291] <= val;
				9'd391: data[4309:4302] <= val;
				9'd392: data[4320:4313] <= val;
				9'd393: data[4331:4324] <= val;
				9'd394: data[4342:4335] <= val;
				9'd395: data[4353:4346] <= val;
				9'd396: data[4364:4357] <= val;
				9'd397: data[4375:4368] <= val;
				9'd398: data[4386:4379] <= val;
				9'd399: data[4397:4390] <= val;
				9'd400: data[4408:4401] <= val;
				9'd401: data[4419:4412] <= val;
				9'd402: data[4430:4423] <= val;
				9'd403: data[4441:4434] <= val;
				9'd404: data[4452:4445] <= val;
				9'd405: data[4463:4456] <= val;
				9'd406: data[4474:4467] <= val;
				9'd407: data[4485:4478] <= val;
				9'd408: data[4496:4489] <= val;
				9'd409: data[4507:4500] <= val;
				9'd410: data[4518:4511] <= val;
				9'd411: data[4529:4522] <= val;
				9'd412: data[4540:4533] <= val;
				9'd413: data[4551:4544] <= val;
				9'd414: data[4562:4555] <= val;
				9'd415: data[4573:4566] <= val;
				9'd416: data[4584:4577] <= val;
				9'd417: data[4595:4588] <= val;
				9'd418: data[4606:4599] <= val;
				9'd419: data[4617:4610] <= val;
				9'd420: data[4628:4621] <= val;
				9'd421: data[4639:4632] <= val;
				9'd422: data[4650:4643] <= val;
				9'd423: data[4661:4654] <= val;
				9'd424: data[4672:4665] <= val;
				9'd425: data[4683:4676] <= val;
				9'd426: data[4694:4687] <= val;
				9'd427: data[4705:4698] <= val;
				9'd428: data[4716:4709] <= val;
				9'd429: data[4727:4720] <= val;
				9'd430: data[4738:4731] <= val;
				9'd431: data[4749:4742] <= val;
				9'd432: data[4760:4753] <= val;
				9'd433: data[4771:4764] <= val;
				9'd434: data[4782:4775] <= val;
				9'd435: data[4793:4786] <= val;
				9'd436: data[4804:4797] <= val;
				9'd437: data[4815:4808] <= val;
				9'd438: data[4826:4819] <= val;
				9'd439: data[4837:4830] <= val;
				9'd440: data[4848:4841] <= val;
				9'd441: data[4859:4852] <= val;
				9'd442: data[4870:4863] <= val;
				9'd443: data[4881:4874] <= val;
				9'd444: data[4892:4885] <= val;
				9'd445: data[4903:4896] <= val;
				9'd446: data[4914:4907] <= val;
				9'd447: data[4925:4918] <= val;
				9'd448: data[4936:4929] <= val;
				9'd449: data[4947:4940] <= val;
				9'd450: data[4958:4951] <= val;
				9'd451: data[4969:4962] <= val;
				9'd452: data[4980:4973] <= val;
				9'd453: data[4991:4984] <= val;
				9'd454: data[5002:4995] <= val;
				9'd455: data[5013:5006] <= val;
				9'd456: data[5024:5017] <= val;
				9'd457: data[5035:5028] <= val;
				9'd458: data[5046:5039] <= val;
				9'd459: data[5057:5050] <= val;
				9'd460: data[5068:5061] <= val;
				9'd461: data[5079:5072] <= val;
				9'd462: data[5090:5083] <= val;
				9'd463: data[5101:5094] <= val;
				9'd464: data[5112:5105] <= val;
				9'd465: data[5123:5116] <= val;
				9'd466: data[5134:5127] <= val;
				9'd467: data[5145:5138] <= val;
				9'd468: data[5156:5149] <= val;
				9'd469: data[5167:5160] <= val;
				9'd470: data[5178:5171] <= val;
				9'd471: data[5189:5182] <= val;
				9'd472: data[5200:5193] <= val;
				9'd473: data[5211:5204] <= val;
				9'd474: data[5222:5215] <= val;
				9'd475: data[5233:5226] <= val;
				9'd476: data[5244:5237] <= val;
				9'd477: data[5255:5248] <= val;
				9'd478: data[5266:5259] <= val;
				9'd479: data[5277:5270] <= val;
				9'd480: data[5288:5281] <= val;
				9'd481: data[5299:5292] <= val;
				9'd482: data[5310:5303] <= val;
				9'd483: data[5321:5314] <= val;
				9'd484: data[5332:5325] <= val;
				9'd485: data[5343:5336] <= val;
				9'd486: data[5354:5347] <= val;
				9'd487: data[5365:5358] <= val;
				9'd488: data[5376:5369] <= val;
				9'd489: data[5387:5380] <= val;
				9'd490: data[5398:5391] <= val;
				9'd491: data[5409:5402] <= val;
				9'd492: data[5420:5413] <= val;
				9'd493: data[5431:5424] <= val;
				9'd494: data[5442:5435] <= val;
				9'd495: data[5453:5446] <= val;
				9'd496: data[5464:5457] <= val;
				9'd497: data[5475:5468] <= val;
				9'd498: data[5486:5479] <= val;
				9'd499: data[5497:5490] <= val;
				9'd500: data[5508:5501] <= val;
				9'd501: data[5519:5512] <= val;
				9'd502: data[5530:5523] <= val;
				9'd503: data[5541:5534] <= val;
				9'd504: data[5552:5545] <= val;
				9'd505: data[5563:5556] <= val;
				9'd506: data[5574:5567] <= val;
				9'd507: data[5585:5578] <= val;
				9'd508: data[5596:5589] <= val;
				9'd509: data[5607:5600] <= val;
				9'd510: data[5618:5611] <= val;
				9'd511: data[5629:5622] <= val;
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
			
//			SHIFT:
			
		endcase
		end
	
	packet sendpacket(clk,rst,send,data,out,done);
	//packet sendpacket(clk,rst,send,data,output,done);
	
endmodule
