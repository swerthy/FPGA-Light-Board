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
	reg [7:0]dval6;
	reg [7:0]dval7;
	reg [7:0]dval8;
	reg [7:0]dval9;
	reg [7:0]dval10;
	reg [7:0]dval11;
	reg [7:0]dval12;
	reg [7:0]dval13;
	reg [7:0]dval14;
	reg [7:0]dval15;
	reg [7:0]dval16;
	reg [7:0]dval17;
	reg [7:0]dval18;
	reg [7:0]dval19;
	reg [7:0]dval20;
	reg [7:0]dval21;
	reg [7:0]dval22;
	reg [7:0]dval23;
	reg [7:0]dval24;
	reg [7:0]dval25;
	reg [7:0]dval26;
	reg [7:0]dval27;
	reg [7:0]dval28;
	reg [7:0]dval29;
	reg [7:0]dval30;
	reg [7:0]dval31;
	reg [7:0]dval32;
	reg [7:0]dval33;
	reg [7:0]dval34;
	reg [7:0]dval35;
	reg [7:0]dval36;
	reg [7:0]dval37;
	reg [7:0]dval38;
	reg [7:0]dval39;
	reg [7:0]dval40;
	reg [7:0]dval41;
	reg [7:0]dval42;
	reg [7:0]dval43;
	reg [7:0]dval44;
	reg [7:0]dval45;
	reg [7:0]dval46;
	reg [7:0]dval47;
	reg [7:0]dval48;
	reg [7:0]dval49;
	reg [7:0]dval50;
	reg [7:0]dval51;
	reg [7:0]dval52;
	reg [7:0]dval53;
	reg [7:0]dval54;
	reg [7:0]dval55;
	reg [7:0]dval56;
	reg [7:0]dval57;
	reg [7:0]dval58;
	reg [7:0]dval59;
	reg [7:0]dval60;
	reg [7:0]dval61;
	reg [7:0]dval62;
	reg [7:0]dval63;
	reg [7:0]dval64;
	reg [7:0]dval65;
	reg [7:0]dval66;
	reg [7:0]dval67;
	reg [7:0]dval68;
	reg [7:0]dval69;
	reg [7:0]dval70;
	reg [7:0]dval71;
	reg [7:0]dval72;
	reg [7:0]dval73;
	reg [7:0]dval74;
	reg [7:0]dval75;
	reg [7:0]dval76;
	reg [7:0]dval77;
	reg [7:0]dval78;
	reg [7:0]dval79;
	reg [7:0]dval80;
	reg [7:0]dval81;
	reg [7:0]dval82;
	reg [7:0]dval83;
	reg [7:0]dval84;
	reg [7:0]dval85;
	reg [7:0]dval86;
	reg [7:0]dval87;
	reg [7:0]dval88;
	reg [7:0]dval89;
	reg [7:0]dval90;
	reg [7:0]dval91;
	reg [7:0]dval92;
	reg [7:0]dval93;
	reg [7:0]dval94;
	reg [7:0]dval95;
	reg [7:0]dval96;
	reg [7:0]dval97;
	reg [7:0]dval98;
	reg [7:0]dval99;
	reg [7:0]dval100;
	reg [7:0]dval101;
	reg [7:0]dval102;
	reg [7:0]dval103;
	reg [7:0]dval104;
	reg [7:0]dval105;
	reg [7:0]dval106;
	reg [7:0]dval107;
	reg [7:0]dval108;
	reg [7:0]dval109;
	reg [7:0]dval110;
	reg [7:0]dval111;
	reg [7:0]dval112;
	reg [7:0]dval113;
	reg [7:0]dval114;
	reg [7:0]dval115;
	reg [7:0]dval116;
	reg [7:0]dval117;
	reg [7:0]dval118;
	reg [7:0]dval119;
	reg [7:0]dval120;
	reg [7:0]dval121;
	reg [7:0]dval122;
	reg [7:0]dval123;
	reg [7:0]dval124;
	reg [7:0]dval125;
	reg [7:0]dval126;
	reg [7:0]dval127;
	reg [7:0]dval128;
	reg [7:0]dval129;
	reg [7:0]dval130;
	reg [7:0]dval131;
	reg [7:0]dval132;
	reg [7:0]dval133;
	reg [7:0]dval134;
	reg [7:0]dval135;
	reg [7:0]dval136;
	reg [7:0]dval137;
	reg [7:0]dval138;
	reg [7:0]dval139;
	reg [7:0]dval140;
	reg [7:0]dval141;
	reg [7:0]dval142;
	reg [7:0]dval143;
	reg [7:0]dval144;
	reg [7:0]dval145;
	reg [7:0]dval146;
	reg [7:0]dval147;
	reg [7:0]dval148;
	reg [7:0]dval149;
	reg [7:0]dval150;
	reg [7:0]dval151;
	reg [7:0]dval152;
	reg [7:0]dval153;
	reg [7:0]dval154;
	reg [7:0]dval155;
	reg [7:0]dval156;
	reg [7:0]dval157;
	reg [7:0]dval158;
	reg [7:0]dval159;
	reg [7:0]dval160;
	reg [7:0]dval161;
	reg [7:0]dval162;
	reg [7:0]dval163;
	reg [7:0]dval164;
	reg [7:0]dval165;
	reg [7:0]dval166;
	reg [7:0]dval167;
	reg [7:0]dval168;
	reg [7:0]dval169;
	reg [7:0]dval170;
	reg [7:0]dval171;
	reg [7:0]dval172;
	reg [7:0]dval173;
	reg [7:0]dval174;
	reg [7:0]dval175;
	reg [7:0]dval176;
	reg [7:0]dval177;
	reg [7:0]dval178;
	reg [7:0]dval179;
	reg [7:0]dval180;
	reg [7:0]dval181;
	reg [7:0]dval182;
	reg [7:0]dval183;
	reg [7:0]dval184;
	reg [7:0]dval185;
	reg [7:0]dval186;
	reg [7:0]dval187;
	reg [7:0]dval188;
	reg [7:0]dval189;
	reg [7:0]dval190;
	reg [7:0]dval191;
	reg [7:0]dval192;
	reg [7:0]dval193;
	reg [7:0]dval194;
	reg [7:0]dval195;
	reg [7:0]dval196;
	reg [7:0]dval197;
	reg [7:0]dval198;
	reg [7:0]dval199;
	reg [7:0]dval200;
	reg [7:0]dval201;
	reg [7:0]dval202;
	reg [7:0]dval203;
	reg [7:0]dval204;
	reg [7:0]dval205;
	reg [7:0]dval206;
	reg [7:0]dval207;
	reg [7:0]dval208;
	reg [7:0]dval209;
	reg [7:0]dval210;
	reg [7:0]dval211;
	reg [7:0]dval212;
	reg [7:0]dval213;
	reg [7:0]dval214;
	reg [7:0]dval215;
	reg [7:0]dval216;
	reg [7:0]dval217;
	reg [7:0]dval218;
	reg [7:0]dval219;
	reg [7:0]dval220;
	reg [7:0]dval221;
	reg [7:0]dval222;
	reg [7:0]dval223;
	reg [7:0]dval224;
	reg [7:0]dval225;
	reg [7:0]dval226;
	reg [7:0]dval227;
	reg [7:0]dval228;
	reg [7:0]dval229;
	reg [7:0]dval230;
	reg [7:0]dval231;
	reg [7:0]dval232;
	reg [7:0]dval233;
	reg [7:0]dval234;
	reg [7:0]dval235;
	reg [7:0]dval236;
	reg [7:0]dval237;
	reg [7:0]dval238;
	reg [7:0]dval239;
	reg [7:0]dval240;
	reg [7:0]dval241;
	reg [7:0]dval242;
	reg [7:0]dval243;
	reg [7:0]dval244;
	reg [7:0]dval245;
	reg [7:0]dval246;
	reg [7:0]dval247;
	reg [7:0]dval248;
	reg [7:0]dval249;
	reg [7:0]dval250;
	reg [7:0]dval251;
	reg [7:0]dval252;
	reg [7:0]dval253;
	reg [7:0]dval254;
	reg [7:0]dval255;
	reg [7:0]dval256;
	reg [7:0]dval257;
	reg [7:0]dval258;
	reg [7:0]dval259;
	reg [7:0]dval260;
	reg [7:0]dval261;
	reg [7:0]dval262;
	reg [7:0]dval263;
	reg [7:0]dval264;
	reg [7:0]dval265;
	reg [7:0]dval266;
	reg [7:0]dval267;
	reg [7:0]dval268;
	reg [7:0]dval269;
	reg [7:0]dval270;
	reg [7:0]dval271;
	reg [7:0]dval272;
	reg [7:0]dval273;
	reg [7:0]dval274;
	reg [7:0]dval275;
	reg [7:0]dval276;
	reg [7:0]dval277;
	reg [7:0]dval278;
	reg [7:0]dval279;
	reg [7:0]dval280;
	reg [7:0]dval281;
	reg [7:0]dval282;
	reg [7:0]dval283;
	reg [7:0]dval284;
	reg [7:0]dval285;
	reg [7:0]dval286;
	reg [7:0]dval287;
	reg [7:0]dval288;
	reg [7:0]dval289;
	reg [7:0]dval290;
	reg [7:0]dval291;
	reg [7:0]dval292;
	reg [7:0]dval293;
	reg [7:0]dval294;
	reg [7:0]dval295;
	reg [7:0]dval296;
	reg [7:0]dval297;
	reg [7:0]dval298;
	reg [7:0]dval299;
	reg [7:0]dval300;
	reg [7:0]dval301;
	reg [7:0]dval302;
	reg [7:0]dval303;
	reg [7:0]dval304;
	reg [7:0]dval305;
	reg [7:0]dval306;
	reg [7:0]dval307;
	reg [7:0]dval308;
	reg [7:0]dval309;
	reg [7:0]dval310;
	reg [7:0]dval311;
	reg [7:0]dval312;
	reg [7:0]dval313;
	reg [7:0]dval314;
	reg [7:0]dval315;
	reg [7:0]dval316;
	reg [7:0]dval317;
	reg [7:0]dval318;
	reg [7:0]dval319;
	reg [7:0]dval320;
	reg [7:0]dval321;
	reg [7:0]dval322;
	reg [7:0]dval323;
	reg [7:0]dval324;
	reg [7:0]dval325;
	reg [7:0]dval326;
	reg [7:0]dval327;
	reg [7:0]dval328;
	reg [7:0]dval329;
	reg [7:0]dval330;
	reg [7:0]dval331;
	reg [7:0]dval332;
	reg [7:0]dval333;
	reg [7:0]dval334;
	reg [7:0]dval335;
	reg [7:0]dval336;
	reg [7:0]dval337;
	reg [7:0]dval338;
	reg [7:0]dval339;
	reg [7:0]dval340;
	reg [7:0]dval341;
	reg [7:0]dval342;
	reg [7:0]dval343;
	reg [7:0]dval344;
	reg [7:0]dval345;
	reg [7:0]dval346;
	reg [7:0]dval347;
	reg [7:0]dval348;
	reg [7:0]dval349;
	reg [7:0]dval350;
	reg [7:0]dval351;
	reg [7:0]dval352;
	reg [7:0]dval353;
	reg [7:0]dval354;
	reg [7:0]dval355;
	reg [7:0]dval356;
	reg [7:0]dval357;
	reg [7:0]dval358;
	reg [7:0]dval359;
	reg [7:0]dval360;
	reg [7:0]dval361;
	reg [7:0]dval362;
	reg [7:0]dval363;
	reg [7:0]dval364;
	reg [7:0]dval365;
	reg [7:0]dval366;
	reg [7:0]dval367;
	reg [7:0]dval368;
	reg [7:0]dval369;
	reg [7:0]dval370;
	reg [7:0]dval371;
	reg [7:0]dval372;
	reg [7:0]dval373;
	reg [7:0]dval374;
	reg [7:0]dval375;
	reg [7:0]dval376;
	reg [7:0]dval377;
	reg [7:0]dval378;
	reg [7:0]dval379;
	reg [7:0]dval380;
	reg [7:0]dval381;
	reg [7:0]dval382;
	reg [7:0]dval383;
	reg [7:0]dval384;
	reg [7:0]dval385;
	reg [7:0]dval386;
	reg [7:0]dval387;
	reg [7:0]dval388;
	reg [7:0]dval389;
	reg [7:0]dval390;
	reg [7:0]dval391;
	reg [7:0]dval392;
	reg [7:0]dval393;
	reg [7:0]dval394;
	reg [7:0]dval395;
	reg [7:0]dval396;
	reg [7:0]dval397;
	reg [7:0]dval398;
	reg [7:0]dval399;
	reg [7:0]dval400;
	reg [7:0]dval401;
	reg [7:0]dval402;
	reg [7:0]dval403;
	reg [7:0]dval404;
	reg [7:0]dval405;
	reg [7:0]dval406;
	reg [7:0]dval407;
	reg [7:0]dval408;
	reg [7:0]dval409;
	reg [7:0]dval410;
	reg [7:0]dval411;
	reg [7:0]dval412;
	reg [7:0]dval413;
	reg [7:0]dval414;
	reg [7:0]dval415;
	reg [7:0]dval416;
	reg [7:0]dval417;
	reg [7:0]dval418;
	reg [7:0]dval419;
	reg [7:0]dval420;
	reg [7:0]dval421;
	reg [7:0]dval422;
	reg [7:0]dval423;
	reg [7:0]dval424;
	reg [7:0]dval425;
	reg [7:0]dval426;
	reg [7:0]dval427;
	reg [7:0]dval428;
	reg [7:0]dval429;
	reg [7:0]dval430;
	reg [7:0]dval431;
	reg [7:0]dval432;
	reg [7:0]dval433;
	reg [7:0]dval434;
	reg [7:0]dval435;
	reg [7:0]dval436;
	reg [7:0]dval437;
	reg [7:0]dval438;
	reg [7:0]dval439;
	reg [7:0]dval440;
	reg [7:0]dval441;
	reg [7:0]dval442;
	reg [7:0]dval443;
	reg [7:0]dval444;
	reg [7:0]dval445;
	reg [7:0]dval446;
	reg [7:0]dval447;
	reg [7:0]dval448;
	reg [7:0]dval449;
	reg [7:0]dval450;
	reg [7:0]dval451;
	reg [7:0]dval452;
	reg [7:0]dval453;
	reg [7:0]dval454;
	reg [7:0]dval455;
	reg [7:0]dval456;
	reg [7:0]dval457;
	reg [7:0]dval458;
	reg [7:0]dval459;
	reg [7:0]dval460;
	reg [7:0]dval461;
	reg [7:0]dval462;
	reg [7:0]dval463;
	reg [7:0]dval464;
	reg [7:0]dval465;
	reg [7:0]dval466;
	reg [7:0]dval467;
	reg [7:0]dval468;
	reg [7:0]dval469;
	reg [7:0]dval470;
	reg [7:0]dval471;
	reg [7:0]dval472;
	reg [7:0]dval473;
	reg [7:0]dval474;
	reg [7:0]dval475;
	reg [7:0]dval476;
	reg [7:0]dval477;
	reg [7:0]dval478;
	reg [7:0]dval479;
	reg [7:0]dval480;
	reg [7:0]dval481;
	reg [7:0]dval482;
	reg [7:0]dval483;
	reg [7:0]dval484;
	reg [7:0]dval485;
	reg [7:0]dval486;
	reg [7:0]dval487;
	reg [7:0]dval488;
	reg [7:0]dval489;
	reg [7:0]dval490;
	reg [7:0]dval491;
	reg [7:0]dval492;
	reg [7:0]dval493;
	reg [7:0]dval494;
	reg [7:0]dval495;
	reg [7:0]dval496;
	reg [7:0]dval497;
	reg [7:0]dval498;
	reg [7:0]dval499;
	reg [7:0]dval500;
	reg [7:0]dval501;
	reg [7:0]dval502;
	reg [7:0]dval503;
	reg [7:0]dval504;
	reg [7:0]dval505;
	reg [7:0]dval506;
	reg [7:0]dval507;
	reg [7:0]dval508;
	reg [7:0]dval509;
	reg [7:0]dval510;
	reg [7:0]dval511;
	
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
		case(S)
		
			STAT: 
			begin
				qn <= data;
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
				dval <= dval1|dval2|dval3|dval4|dval5|dval6|dval7|dval8|dval9|dval10|dval11|dval12|dval13|dval14|dval15|dval16|dval17|dval18|dval19|dval20|dval21|dval22|dval23|dval24|dval25|dval26|dval27|dval28|dval29|dval30|dval31|dval32|dval33|dval34|dval35|dval36|dval37|dval38|dval39|dval40|dval41|dval42|dval43|dval44|dval45|dval46|dval47|dval48|dval49|dval50|dval51|dval52|dval53|dval54|dval55|dval56|dval57|dval58|dval59|dval60|dval61|dval62|dval63|dval64|dval65|dval66|dval67|dval68|dval69|dval70|dval71|dval72|dval73|dval74|dval75|dval76|dval77|dval78|dval79|dval80|dval81|dval82|dval83|dval84|dval85|dval86|dval87|dval88|dval89|dval90|dval91|dval92|dval93|dval94|dval95|dval96|dval97|dval98|dval99|dval100|dval101|dval102|dval103|dval104|dval105|dval106|dval107|dval108|dval109|dval110|dval111|dval112|dval113|dval114|dval115|dval116|dval117|dval118|dval119|dval120|dval121|dval122|dval123|dval124|dval125|dval126|dval127|dval128|dval129|dval130|dval131|dval132|dval133|dval134|dval135|dval136|dval137|dval138|dval139|dval140|dval141|dval142|dval143|dval144|dval145|dval146|dval147|dval148|dval149|dval150|dval151|dval152|dval153|dval154|dval155|dval156|dval157|dval158|dval159|dval160|dval161|dval162|dval163|dval164|dval165|dval166|dval167|dval168|dval169|dval170|dval171|dval172|dval173|dval174|dval175|dval176|dval177|dval178|dval179|dval180|dval181|dval182|dval183|dval184|dval185|dval186|dval187|dval188|dval189|dval190|dval191|dval192|dval193|dval194|dval195|dval196|dval197|dval198|dval199|dval200|dval201|dval202|dval203|dval204|dval205|dval206|dval207|dval208|dval209|dval210|dval211|dval212|dval213|dval214|dval215|dval216|dval217|dval218|dval219|dval220|dval221|dval222|dval223|dval224|dval225|dval226|dval227|dval228|dval229|dval230|dval231|dval232|dval233|dval234|dval235|dval236|dval237|dval238|dval239|dval240|dval241|dval242|dval243|dval244|dval245|dval246|dval247|dval248|dval249|dval250|dval251|dval252|dval253|dval254|dval255|dval256|dval257|dval258|dval259|dval260|dval261|dval262|dval263|dval264|dval265|dval266|dval267|dval268|dval269|dval270|dval271|dval272|dval273|dval274|dval275|dval276|dval277|dval278|dval279|dval280|dval281|dval282|dval283|dval284|dval285|dval286|dval287|dval288|dval289|dval290|dval291|dval292|dval293|dval294|dval295|dval296|dval297|dval298|dval299|dval300|dval301|dval302|dval303|dval304|dval305|dval306|dval307|dval308|dval309|dval310|dval311|dval312|dval313|dval314|dval315|dval316|dval317|dval318|dval319|dval320|dval321|dval322|dval323|dval324|dval325|dval326|dval327|dval328|dval329|dval330|dval331|dval332|dval333|dval334|dval335|dval336|dval337|dval338|dval339|dval340|dval341|dval342|dval343|dval344|dval345|dval346|dval347|dval348|dval349|dval350|dval351|dval352|dval353|dval354|dval355|dval356|dval357|dval358|dval359|dval360|dval361|dval362|dval363|dval364|dval365|dval366|dval367|dval368|dval369|dval370|dval371|dval372|dval373|dval374|dval375|dval376|dval377|dval378|dval379|dval380|dval381|dval382|dval383|dval384|dval385|dval386|dval387|dval388|dval389|dval390|dval391|dval392|dval393|dval394|dval395|dval396|dval397|dval398|dval399|dval400|dval401|dval402|dval403|dval404|dval405|dval406|dval407|dval408|dval409|dval410|dval411|dval412|dval413|dval414|dval415|dval416|dval417|dval418|dval419|dval420|dval421|dval422|dval423|dval424|dval425|dval426|dval427|dval428|dval429|dval430|dval431|dval432|dval433|dval434|dval435|dval436|dval437|dval438|dval439|dval440|dval441|dval442|dval443|dval444|dval445|dval446|dval447|dval448|dval449|dval450|dval451|dval452|dval453|dval454|dval455|dval456|dval457|dval458|dval459|dval460|dval461|dval462|dval463|dval464|dval465|dval466|dval467|dval468|dval469|dval470|dval471|dval472|dval473|dval474|dval475|dval476|dval477|dval478|dval479|dval480|dval481|dval482|dval483|dval484|dval485|dval486|dval487|dval488|dval489|dval490|dval491|dval492|dval493|dval494|dval495|dval496|dval497|dval498|dval499|dval500|dval501|dval502|dval503|dval504|dval505|dval506|dval507|dval508|dval509|dval510|dval511; 
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
				if(newdata[74:67] < qn[74:67])
				begin
					dval6 <= (qn[74:67]-data[74:67])/sr;
					newdata[74:67] <= newdata[74:67]+dval6;
				end
				else
				begin
					dval6 <= (data[74:67]-qn[74:67])/sr;
					newdata[74:67] <= newdata[74:67]-dval6;
				end
				if(newdata[85:78] < qn[85:78])
				begin
					dval7 <= (qn[85:78]-data[85:78])/sr;
					newdata[85:78] <= newdata[85:78]+dval7;
				end
				else
				begin
					dval7 <= (data[85:78]-qn[85:78])/sr;
					newdata[85:78] <= newdata[85:78]-dval7;
				end
				if(newdata[96:89] < qn[96:89])
				begin
					dval8 <= (qn[96:89]-data[96:89])/sr;
					newdata[96:89] <= newdata[96:89]+dval8;
				end
				else
				begin
					dval8 <= (data[96:89]-qn[96:89])/sr;
					newdata[96:89] <= newdata[96:89]-dval8;
				end
				if(newdata[107:100] < qn[107:100])
				begin
					dval9 <= (qn[107:100]-data[107:100])/sr;
					newdata[107:100] <= newdata[107:100]+dval9;
				end
				else
				begin
					dval9 <= (data[107:100]-qn[107:100])/sr;
					newdata[107:100] <= newdata[107:100]-dval9;
				end
				if(newdata[118:111] < qn[118:111])
				begin
					dval10 <= (qn[118:111]-data[118:111])/sr;
					newdata[118:111] <= newdata[118:111]+dval10;
				end
				else
				begin
					dval10 <= (data[118:111]-qn[118:111])/sr;
					newdata[118:111] <= newdata[118:111]-dval10;
				end
				if(newdata[129:122] < qn[129:122])
				begin
					dval11 <= (qn[129:122]-data[129:122])/sr;
					newdata[129:122] <= newdata[129:122]+dval11;
				end
				else
				begin
					dval11 <= (data[129:122]-qn[129:122])/sr;
					newdata[129:122] <= newdata[129:122]-dval11;
				end
				if(newdata[140:133] < qn[140:133])
				begin
					dval12 <= (qn[140:133]-data[140:133])/sr;
					newdata[140:133] <= newdata[140:133]+dval12;
				end
				else
				begin
					dval12 <= (data[140:133]-qn[140:133])/sr;
					newdata[140:133] <= newdata[140:133]-dval12;
				end
				if(newdata[151:144] < qn[151:144])
				begin
					dval13 <= (qn[151:144]-data[151:144])/sr;
					newdata[151:144] <= newdata[151:144]+dval13;
				end
				else
				begin
					dval13 <= (data[151:144]-qn[151:144])/sr;
					newdata[151:144] <= newdata[151:144]-dval13;
				end
				if(newdata[162:155] < qn[162:155])
				begin
					dval14 <= (qn[162:155]-data[162:155])/sr;
					newdata[162:155] <= newdata[162:155]+dval14;
				end
				else
				begin
					dval14 <= (data[162:155]-qn[162:155])/sr;
					newdata[162:155] <= newdata[162:155]-dval14;
				end
				if(newdata[173:166] < qn[173:166])
				begin
					dval15 <= (qn[173:166]-data[173:166])/sr;
					newdata[173:166] <= newdata[173:166]+dval15;
				end
				else
				begin
					dval15 <= (data[173:166]-qn[173:166])/sr;
					newdata[173:166] <= newdata[173:166]-dval15;
				end
				if(newdata[184:177] < qn[184:177])
				begin
					dval16 <= (qn[184:177]-data[184:177])/sr;
					newdata[184:177] <= newdata[184:177]+dval16;
				end
				else
				begin
					dval16 <= (data[184:177]-qn[184:177])/sr;
					newdata[184:177] <= newdata[184:177]-dval16;
				end
				if(newdata[195:188] < qn[195:188])
				begin
					dval17 <= (qn[195:188]-data[195:188])/sr;
					newdata[195:188] <= newdata[195:188]+dval17;
				end
				else
				begin
					dval17 <= (data[195:188]-qn[195:188])/sr;
					newdata[195:188] <= newdata[195:188]-dval17;
				end
				if(newdata[206:199] < qn[206:199])
				begin
					dval18 <= (qn[206:199]-data[206:199])/sr;
					newdata[206:199] <= newdata[206:199]+dval18;
				end
				else
				begin
					dval18 <= (data[206:199]-qn[206:199])/sr;
					newdata[206:199] <= newdata[206:199]-dval18;
				end
				if(newdata[217:210] < qn[217:210])
				begin
					dval19 <= (qn[217:210]-data[217:210])/sr;
					newdata[217:210] <= newdata[217:210]+dval19;
				end
				else
				begin
					dval19 <= (data[217:210]-qn[217:210])/sr;
					newdata[217:210] <= newdata[217:210]-dval19;
				end
				if(newdata[228:221] < qn[228:221])
				begin
					dval20 <= (qn[228:221]-data[228:221])/sr;
					newdata[228:221] <= newdata[228:221]+dval20;
				end
				else
				begin
					dval20 <= (data[228:221]-qn[228:221])/sr;
					newdata[228:221] <= newdata[228:221]-dval20;
				end
				if(newdata[239:232] < qn[239:232])
				begin
					dval21 <= (qn[239:232]-data[239:232])/sr;
					newdata[239:232] <= newdata[239:232]+dval21;
				end
				else
				begin
					dval21 <= (data[239:232]-qn[239:232])/sr;
					newdata[239:232] <= newdata[239:232]-dval21;
				end
				if(newdata[250:243] < qn[250:243])
				begin
					dval22 <= (qn[250:243]-data[250:243])/sr;
					newdata[250:243] <= newdata[250:243]+dval22;
				end
				else
				begin
					dval22 <= (data[250:243]-qn[250:243])/sr;
					newdata[250:243] <= newdata[250:243]-dval22;
				end
				if(newdata[261:254] < qn[261:254])
				begin
					dval23 <= (qn[261:254]-data[261:254])/sr;
					newdata[261:254] <= newdata[261:254]+dval23;
				end
				else
				begin
					dval23 <= (data[261:254]-qn[261:254])/sr;
					newdata[261:254] <= newdata[261:254]-dval23;
				end
				if(newdata[272:265] < qn[272:265])
				begin
					dval24 <= (qn[272:265]-data[272:265])/sr;
					newdata[272:265] <= newdata[272:265]+dval24;
				end
				else
				begin
					dval24 <= (data[272:265]-qn[272:265])/sr;
					newdata[272:265] <= newdata[272:265]-dval24;
				end
				if(newdata[283:276] < qn[283:276])
				begin
					dval25 <= (qn[283:276]-data[283:276])/sr;
					newdata[283:276] <= newdata[283:276]+dval25;
				end
				else
				begin
					dval25 <= (data[283:276]-qn[283:276])/sr;
					newdata[283:276] <= newdata[283:276]-dval25;
				end
				if(newdata[294:287] < qn[294:287])
				begin
					dval26 <= (qn[294:287]-data[294:287])/sr;
					newdata[294:287] <= newdata[294:287]+dval26;
				end
				else
				begin
					dval26 <= (data[294:287]-qn[294:287])/sr;
					newdata[294:287] <= newdata[294:287]-dval26;
				end
				if(newdata[305:298] < qn[305:298])
				begin
					dval27 <= (qn[305:298]-data[305:298])/sr;
					newdata[305:298] <= newdata[305:298]+dval27;
				end
				else
				begin
					dval27 <= (data[305:298]-qn[305:298])/sr;
					newdata[305:298] <= newdata[305:298]-dval27;
				end
				if(newdata[316:309] < qn[316:309])
				begin
					dval28 <= (qn[316:309]-data[316:309])/sr;
					newdata[316:309] <= newdata[316:309]+dval28;
				end
				else
				begin
					dval28 <= (data[316:309]-qn[316:309])/sr;
					newdata[316:309] <= newdata[316:309]-dval28;
				end
				if(newdata[327:320] < qn[327:320])
				begin
					dval29 <= (qn[327:320]-data[327:320])/sr;
					newdata[327:320] <= newdata[327:320]+dval29;
				end
				else
				begin
					dval29 <= (data[327:320]-qn[327:320])/sr;
					newdata[327:320] <= newdata[327:320]-dval29;
				end
				if(newdata[338:331] < qn[338:331])
				begin
					dval30 <= (qn[338:331]-data[338:331])/sr;
					newdata[338:331] <= newdata[338:331]+dval30;
				end
				else
				begin
					dval30 <= (data[338:331]-qn[338:331])/sr;
					newdata[338:331] <= newdata[338:331]-dval30;
				end
				if(newdata[349:342] < qn[349:342])
				begin
					dval31 <= (qn[349:342]-data[349:342])/sr;
					newdata[349:342] <= newdata[349:342]+dval31;
				end
				else
				begin
					dval31 <= (data[349:342]-qn[349:342])/sr;
					newdata[349:342] <= newdata[349:342]-dval31;
				end
				if(newdata[360:353] < qn[360:353])
				begin
					dval32 <= (qn[360:353]-data[360:353])/sr;
					newdata[360:353] <= newdata[360:353]+dval32;
				end
				else
				begin
					dval32 <= (data[360:353]-qn[360:353])/sr;
					newdata[360:353] <= newdata[360:353]-dval32;
				end
				if(newdata[371:364] < qn[371:364])
				begin
					dval33 <= (qn[371:364]-data[371:364])/sr;
					newdata[371:364] <= newdata[371:364]+dval33;
				end
				else
				begin
					dval33 <= (data[371:364]-qn[371:364])/sr;
					newdata[371:364] <= newdata[371:364]-dval33;
				end
				if(newdata[382:375] < qn[382:375])
				begin
					dval34 <= (qn[382:375]-data[382:375])/sr;
					newdata[382:375] <= newdata[382:375]+dval34;
				end
				else
				begin
					dval34 <= (data[382:375]-qn[382:375])/sr;
					newdata[382:375] <= newdata[382:375]-dval34;
				end
				if(newdata[393:386] < qn[393:386])
				begin
					dval35 <= (qn[393:386]-data[393:386])/sr;
					newdata[393:386] <= newdata[393:386]+dval35;
				end
				else
				begin
					dval35 <= (data[393:386]-qn[393:386])/sr;
					newdata[393:386] <= newdata[393:386]-dval35;
				end
				if(newdata[404:397] < qn[404:397])
				begin
					dval36 <= (qn[404:397]-data[404:397])/sr;
					newdata[404:397] <= newdata[404:397]+dval36;
				end
				else
				begin
					dval36 <= (data[404:397]-qn[404:397])/sr;
					newdata[404:397] <= newdata[404:397]-dval36;
				end
				if(newdata[415:408] < qn[415:408])
				begin
					dval37 <= (qn[415:408]-data[415:408])/sr;
					newdata[415:408] <= newdata[415:408]+dval37;
				end
				else
				begin
					dval37 <= (data[415:408]-qn[415:408])/sr;
					newdata[415:408] <= newdata[415:408]-dval37;
				end
				if(newdata[426:419] < qn[426:419])
				begin
					dval38 <= (qn[426:419]-data[426:419])/sr;
					newdata[426:419] <= newdata[426:419]+dval38;
				end
				else
				begin
					dval38 <= (data[426:419]-qn[426:419])/sr;
					newdata[426:419] <= newdata[426:419]-dval38;
				end
				if(newdata[437:430] < qn[437:430])
				begin
					dval39 <= (qn[437:430]-data[437:430])/sr;
					newdata[437:430] <= newdata[437:430]+dval39;
				end
				else
				begin
					dval39 <= (data[437:430]-qn[437:430])/sr;
					newdata[437:430] <= newdata[437:430]-dval39;
				end
				if(newdata[448:441] < qn[448:441])
				begin
					dval40 <= (qn[448:441]-data[448:441])/sr;
					newdata[448:441] <= newdata[448:441]+dval40;
				end
				else
				begin
					dval40 <= (data[448:441]-qn[448:441])/sr;
					newdata[448:441] <= newdata[448:441]-dval40;
				end
				if(newdata[459:452] < qn[459:452])
				begin
					dval41 <= (qn[459:452]-data[459:452])/sr;
					newdata[459:452] <= newdata[459:452]+dval41;
				end
				else
				begin
					dval41 <= (data[459:452]-qn[459:452])/sr;
					newdata[459:452] <= newdata[459:452]-dval41;
				end
				if(newdata[470:463] < qn[470:463])
				begin
					dval42 <= (qn[470:463]-data[470:463])/sr;
					newdata[470:463] <= newdata[470:463]+dval42;
				end
				else
				begin
					dval42 <= (data[470:463]-qn[470:463])/sr;
					newdata[470:463] <= newdata[470:463]-dval42;
				end
				if(newdata[481:474] < qn[481:474])
				begin
					dval43 <= (qn[481:474]-data[481:474])/sr;
					newdata[481:474] <= newdata[481:474]+dval43;
				end
				else
				begin
					dval43 <= (data[481:474]-qn[481:474])/sr;
					newdata[481:474] <= newdata[481:474]-dval43;
				end
				if(newdata[492:485] < qn[492:485])
				begin
					dval44 <= (qn[492:485]-data[492:485])/sr;
					newdata[492:485] <= newdata[492:485]+dval44;
				end
				else
				begin
					dval44 <= (data[492:485]-qn[492:485])/sr;
					newdata[492:485] <= newdata[492:485]-dval44;
				end
				if(newdata[503:496] < qn[503:496])
				begin
					dval45 <= (qn[503:496]-data[503:496])/sr;
					newdata[503:496] <= newdata[503:496]+dval45;
				end
				else
				begin
					dval45 <= (data[503:496]-qn[503:496])/sr;
					newdata[503:496] <= newdata[503:496]-dval45;
				end
				if(newdata[514:507] < qn[514:507])
				begin
					dval46 <= (qn[514:507]-data[514:507])/sr;
					newdata[514:507] <= newdata[514:507]+dval46;
				end
				else
				begin
					dval46 <= (data[514:507]-qn[514:507])/sr;
					newdata[514:507] <= newdata[514:507]-dval46;
				end
				if(newdata[525:518] < qn[525:518])
				begin
					dval47 <= (qn[525:518]-data[525:518])/sr;
					newdata[525:518] <= newdata[525:518]+dval47;
				end
				else
				begin
					dval47 <= (data[525:518]-qn[525:518])/sr;
					newdata[525:518] <= newdata[525:518]-dval47;
				end
				if(newdata[536:529] < qn[536:529])
				begin
					dval48 <= (qn[536:529]-data[536:529])/sr;
					newdata[536:529] <= newdata[536:529]+dval48;
				end
				else
				begin
					dval48 <= (data[536:529]-qn[536:529])/sr;
					newdata[536:529] <= newdata[536:529]-dval48;
				end
				if(newdata[547:540] < qn[547:540])
				begin
					dval49 <= (qn[547:540]-data[547:540])/sr;
					newdata[547:540] <= newdata[547:540]+dval49;
				end
				else
				begin
					dval49 <= (data[547:540]-qn[547:540])/sr;
					newdata[547:540] <= newdata[547:540]-dval49;
				end
				if(newdata[558:551] < qn[558:551])
				begin
					dval50 <= (qn[558:551]-data[558:551])/sr;
					newdata[558:551] <= newdata[558:551]+dval50;
				end
				else
				begin
					dval50 <= (data[558:551]-qn[558:551])/sr;
					newdata[558:551] <= newdata[558:551]-dval50;
				end
				if(newdata[569:562] < qn[569:562])
				begin
					dval51 <= (qn[569:562]-data[569:562])/sr;
					newdata[569:562] <= newdata[569:562]+dval51;
				end
				else
				begin
					dval51 <= (data[569:562]-qn[569:562])/sr;
					newdata[569:562] <= newdata[569:562]-dval51;
				end
				if(newdata[580:573] < qn[580:573])
				begin
					dval52 <= (qn[580:573]-data[580:573])/sr;
					newdata[580:573] <= newdata[580:573]+dval52;
				end
				else
				begin
					dval52 <= (data[580:573]-qn[580:573])/sr;
					newdata[580:573] <= newdata[580:573]-dval52;
				end
				if(newdata[591:584] < qn[591:584])
				begin
					dval53 <= (qn[591:584]-data[591:584])/sr;
					newdata[591:584] <= newdata[591:584]+dval53;
				end
				else
				begin
					dval53 <= (data[591:584]-qn[591:584])/sr;
					newdata[591:584] <= newdata[591:584]-dval53;
				end
				if(newdata[602:595] < qn[602:595])
				begin
					dval54 <= (qn[602:595]-data[602:595])/sr;
					newdata[602:595] <= newdata[602:595]+dval54;
				end
				else
				begin
					dval54 <= (data[602:595]-qn[602:595])/sr;
					newdata[602:595] <= newdata[602:595]-dval54;
				end
				if(newdata[613:606] < qn[613:606])
				begin
					dval55 <= (qn[613:606]-data[613:606])/sr;
					newdata[613:606] <= newdata[613:606]+dval55;
				end
				else
				begin
					dval55 <= (data[613:606]-qn[613:606])/sr;
					newdata[613:606] <= newdata[613:606]-dval55;
				end
				if(newdata[624:617] < qn[624:617])
				begin
					dval56 <= (qn[624:617]-data[624:617])/sr;
					newdata[624:617] <= newdata[624:617]+dval56;
				end
				else
				begin
					dval56 <= (data[624:617]-qn[624:617])/sr;
					newdata[624:617] <= newdata[624:617]-dval56;
				end
				if(newdata[635:628] < qn[635:628])
				begin
					dval57 <= (qn[635:628]-data[635:628])/sr;
					newdata[635:628] <= newdata[635:628]+dval57;
				end
				else
				begin
					dval57 <= (data[635:628]-qn[635:628])/sr;
					newdata[635:628] <= newdata[635:628]-dval57;
				end
				if(newdata[646:639] < qn[646:639])
				begin
					dval58 <= (qn[646:639]-data[646:639])/sr;
					newdata[646:639] <= newdata[646:639]+dval58;
				end
				else
				begin
					dval58 <= (data[646:639]-qn[646:639])/sr;
					newdata[646:639] <= newdata[646:639]-dval58;
				end
				if(newdata[657:650] < qn[657:650])
				begin
					dval59 <= (qn[657:650]-data[657:650])/sr;
					newdata[657:650] <= newdata[657:650]+dval59;
				end
				else
				begin
					dval59 <= (data[657:650]-qn[657:650])/sr;
					newdata[657:650] <= newdata[657:650]-dval59;
				end
				if(newdata[668:661] < qn[668:661])
				begin
					dval60 <= (qn[668:661]-data[668:661])/sr;
					newdata[668:661] <= newdata[668:661]+dval60;
				end
				else
				begin
					dval60 <= (data[668:661]-qn[668:661])/sr;
					newdata[668:661] <= newdata[668:661]-dval60;
				end
				if(newdata[679:672] < qn[679:672])
				begin
					dval61 <= (qn[679:672]-data[679:672])/sr;
					newdata[679:672] <= newdata[679:672]+dval61;
				end
				else
				begin
					dval61 <= (data[679:672]-qn[679:672])/sr;
					newdata[679:672] <= newdata[679:672]-dval61;
				end
				if(newdata[690:683] < qn[690:683])
				begin
					dval62 <= (qn[690:683]-data[690:683])/sr;
					newdata[690:683] <= newdata[690:683]+dval62;
				end
				else
				begin
					dval62 <= (data[690:683]-qn[690:683])/sr;
					newdata[690:683] <= newdata[690:683]-dval62;
				end
				if(newdata[701:694] < qn[701:694])
				begin
					dval63 <= (qn[701:694]-data[701:694])/sr;
					newdata[701:694] <= newdata[701:694]+dval63;
				end
				else
				begin
					dval63 <= (data[701:694]-qn[701:694])/sr;
					newdata[701:694] <= newdata[701:694]-dval63;
				end
				if(newdata[712:705] < qn[712:705])
				begin
					dval64 <= (qn[712:705]-data[712:705])/sr;
					newdata[712:705] <= newdata[712:705]+dval64;
				end
				else
				begin
					dval64 <= (data[712:705]-qn[712:705])/sr;
					newdata[712:705] <= newdata[712:705]-dval64;
				end
				if(newdata[723:716] < qn[723:716])
				begin
					dval65 <= (qn[723:716]-data[723:716])/sr;
					newdata[723:716] <= newdata[723:716]+dval65;
				end
				else
				begin
					dval65 <= (data[723:716]-qn[723:716])/sr;
					newdata[723:716] <= newdata[723:716]-dval65;
				end
				if(newdata[734:727] < qn[734:727])
				begin
					dval66 <= (qn[734:727]-data[734:727])/sr;
					newdata[734:727] <= newdata[734:727]+dval66;
				end
				else
				begin
					dval66 <= (data[734:727]-qn[734:727])/sr;
					newdata[734:727] <= newdata[734:727]-dval66;
				end
				if(newdata[745:738] < qn[745:738])
				begin
					dval67 <= (qn[745:738]-data[745:738])/sr;
					newdata[745:738] <= newdata[745:738]+dval67;
				end
				else
				begin
					dval67 <= (data[745:738]-qn[745:738])/sr;
					newdata[745:738] <= newdata[745:738]-dval67;
				end
				if(newdata[756:749] < qn[756:749])
				begin
					dval68 <= (qn[756:749]-data[756:749])/sr;
					newdata[756:749] <= newdata[756:749]+dval68;
				end
				else
				begin
					dval68 <= (data[756:749]-qn[756:749])/sr;
					newdata[756:749] <= newdata[756:749]-dval68;
				end
				if(newdata[767:760] < qn[767:760])
				begin
					dval69 <= (qn[767:760]-data[767:760])/sr;
					newdata[767:760] <= newdata[767:760]+dval69;
				end
				else
				begin
					dval69 <= (data[767:760]-qn[767:760])/sr;
					newdata[767:760] <= newdata[767:760]-dval69;
				end
				if(newdata[778:771] < qn[778:771])
				begin
					dval70 <= (qn[778:771]-data[778:771])/sr;
					newdata[778:771] <= newdata[778:771]+dval70;
				end
				else
				begin
					dval70 <= (data[778:771]-qn[778:771])/sr;
					newdata[778:771] <= newdata[778:771]-dval70;
				end
				if(newdata[789:782] < qn[789:782])
				begin
					dval71 <= (qn[789:782]-data[789:782])/sr;
					newdata[789:782] <= newdata[789:782]+dval71;
				end
				else
				begin
					dval71 <= (data[789:782]-qn[789:782])/sr;
					newdata[789:782] <= newdata[789:782]-dval71;
				end
				if(newdata[800:793] < qn[800:793])
				begin
					dval72 <= (qn[800:793]-data[800:793])/sr;
					newdata[800:793] <= newdata[800:793]+dval72;
				end
				else
				begin
					dval72 <= (data[800:793]-qn[800:793])/sr;
					newdata[800:793] <= newdata[800:793]-dval72;
				end
				if(newdata[811:804] < qn[811:804])
				begin
					dval73 <= (qn[811:804]-data[811:804])/sr;
					newdata[811:804] <= newdata[811:804]+dval73;
				end
				else
				begin
					dval73 <= (data[811:804]-qn[811:804])/sr;
					newdata[811:804] <= newdata[811:804]-dval73;
				end
				if(newdata[822:815] < qn[822:815])
				begin
					dval74 <= (qn[822:815]-data[822:815])/sr;
					newdata[822:815] <= newdata[822:815]+dval74;
				end
				else
				begin
					dval74 <= (data[822:815]-qn[822:815])/sr;
					newdata[822:815] <= newdata[822:815]-dval74;
				end
				if(newdata[833:826] < qn[833:826])
				begin
					dval75 <= (qn[833:826]-data[833:826])/sr;
					newdata[833:826] <= newdata[833:826]+dval75;
				end
				else
				begin
					dval75 <= (data[833:826]-qn[833:826])/sr;
					newdata[833:826] <= newdata[833:826]-dval75;
				end
				if(newdata[844:837] < qn[844:837])
				begin
					dval76 <= (qn[844:837]-data[844:837])/sr;
					newdata[844:837] <= newdata[844:837]+dval76;
				end
				else
				begin
					dval76 <= (data[844:837]-qn[844:837])/sr;
					newdata[844:837] <= newdata[844:837]-dval76;
				end
				if(newdata[855:848] < qn[855:848])
				begin
					dval77 <= (qn[855:848]-data[855:848])/sr;
					newdata[855:848] <= newdata[855:848]+dval77;
				end
				else
				begin
					dval77 <= (data[855:848]-qn[855:848])/sr;
					newdata[855:848] <= newdata[855:848]-dval77;
				end
				if(newdata[866:859] < qn[866:859])
				begin
					dval78 <= (qn[866:859]-data[866:859])/sr;
					newdata[866:859] <= newdata[866:859]+dval78;
				end
				else
				begin
					dval78 <= (data[866:859]-qn[866:859])/sr;
					newdata[866:859] <= newdata[866:859]-dval78;
				end
				if(newdata[877:870] < qn[877:870])
				begin
					dval79 <= (qn[877:870]-data[877:870])/sr;
					newdata[877:870] <= newdata[877:870]+dval79;
				end
				else
				begin
					dval79 <= (data[877:870]-qn[877:870])/sr;
					newdata[877:870] <= newdata[877:870]-dval79;
				end
				if(newdata[888:881] < qn[888:881])
				begin
					dval80 <= (qn[888:881]-data[888:881])/sr;
					newdata[888:881] <= newdata[888:881]+dval80;
				end
				else
				begin
					dval80 <= (data[888:881]-qn[888:881])/sr;
					newdata[888:881] <= newdata[888:881]-dval80;
				end
				if(newdata[899:892] < qn[899:892])
				begin
					dval81 <= (qn[899:892]-data[899:892])/sr;
					newdata[899:892] <= newdata[899:892]+dval81;
				end
				else
				begin
					dval81 <= (data[899:892]-qn[899:892])/sr;
					newdata[899:892] <= newdata[899:892]-dval81;
				end
				if(newdata[910:903] < qn[910:903])
				begin
					dval82 <= (qn[910:903]-data[910:903])/sr;
					newdata[910:903] <= newdata[910:903]+dval82;
				end
				else
				begin
					dval82 <= (data[910:903]-qn[910:903])/sr;
					newdata[910:903] <= newdata[910:903]-dval82;
				end
				if(newdata[921:914] < qn[921:914])
				begin
					dval83 <= (qn[921:914]-data[921:914])/sr;
					newdata[921:914] <= newdata[921:914]+dval83;
				end
				else
				begin
					dval83 <= (data[921:914]-qn[921:914])/sr;
					newdata[921:914] <= newdata[921:914]-dval83;
				end
				if(newdata[932:925] < qn[932:925])
				begin
					dval84 <= (qn[932:925]-data[932:925])/sr;
					newdata[932:925] <= newdata[932:925]+dval84;
				end
				else
				begin
					dval84 <= (data[932:925]-qn[932:925])/sr;
					newdata[932:925] <= newdata[932:925]-dval84;
				end
				if(newdata[943:936] < qn[943:936])
				begin
					dval85 <= (qn[943:936]-data[943:936])/sr;
					newdata[943:936] <= newdata[943:936]+dval85;
				end
				else
				begin
					dval85 <= (data[943:936]-qn[943:936])/sr;
					newdata[943:936] <= newdata[943:936]-dval85;
				end
				if(newdata[954:947] < qn[954:947])
				begin
					dval86 <= (qn[954:947]-data[954:947])/sr;
					newdata[954:947] <= newdata[954:947]+dval86;
				end
				else
				begin
					dval86 <= (data[954:947]-qn[954:947])/sr;
					newdata[954:947] <= newdata[954:947]-dval86;
				end
				if(newdata[965:958] < qn[965:958])
				begin
					dval87 <= (qn[965:958]-data[965:958])/sr;
					newdata[965:958] <= newdata[965:958]+dval87;
				end
				else
				begin
					dval87 <= (data[965:958]-qn[965:958])/sr;
					newdata[965:958] <= newdata[965:958]-dval87;
				end
				if(newdata[976:969] < qn[976:969])
				begin
					dval88 <= (qn[976:969]-data[976:969])/sr;
					newdata[976:969] <= newdata[976:969]+dval88;
				end
				else
				begin
					dval88 <= (data[976:969]-qn[976:969])/sr;
					newdata[976:969] <= newdata[976:969]-dval88;
				end
				if(newdata[987:980] < qn[987:980])
				begin
					dval89 <= (qn[987:980]-data[987:980])/sr;
					newdata[987:980] <= newdata[987:980]+dval89;
				end
				else
				begin
					dval89 <= (data[987:980]-qn[987:980])/sr;
					newdata[987:980] <= newdata[987:980]-dval89;
				end
				if(newdata[998:991] < qn[998:991])
				begin
					dval90 <= (qn[998:991]-data[998:991])/sr;
					newdata[998:991] <= newdata[998:991]+dval90;
				end
				else
				begin
					dval90 <= (data[998:991]-qn[998:991])/sr;
					newdata[998:991] <= newdata[998:991]-dval90;
				end
				if(newdata[1009:1002] < qn[1009:1002])
				begin
					dval91 <= (qn[1009:1002]-data[1009:1002])/sr;
					newdata[1009:1002] <= newdata[1009:1002]+dval91;
				end
				else
				begin
					dval91 <= (data[1009:1002]-qn[1009:1002])/sr;
					newdata[1009:1002] <= newdata[1009:1002]-dval91;
				end
				if(newdata[1020:1013] < qn[1020:1013])
				begin
					dval92 <= (qn[1020:1013]-data[1020:1013])/sr;
					newdata[1020:1013] <= newdata[1020:1013]+dval92;
				end
				else
				begin
					dval92 <= (data[1020:1013]-qn[1020:1013])/sr;
					newdata[1020:1013] <= newdata[1020:1013]-dval92;
				end
				if(newdata[1031:1024] < qn[1031:1024])
				begin
					dval93 <= (qn[1031:1024]-data[1031:1024])/sr;
					newdata[1031:1024] <= newdata[1031:1024]+dval93;
				end
				else
				begin
					dval93 <= (data[1031:1024]-qn[1031:1024])/sr;
					newdata[1031:1024] <= newdata[1031:1024]-dval93;
				end
				if(newdata[1042:1035] < qn[1042:1035])
				begin
					dval94 <= (qn[1042:1035]-data[1042:1035])/sr;
					newdata[1042:1035] <= newdata[1042:1035]+dval94;
				end
				else
				begin
					dval94 <= (data[1042:1035]-qn[1042:1035])/sr;
					newdata[1042:1035] <= newdata[1042:1035]-dval94;
				end
				if(newdata[1053:1046] < qn[1053:1046])
				begin
					dval95 <= (qn[1053:1046]-data[1053:1046])/sr;
					newdata[1053:1046] <= newdata[1053:1046]+dval95;
				end
				else
				begin
					dval95 <= (data[1053:1046]-qn[1053:1046])/sr;
					newdata[1053:1046] <= newdata[1053:1046]-dval95;
				end
				if(newdata[1064:1057] < qn[1064:1057])
				begin
					dval96 <= (qn[1064:1057]-data[1064:1057])/sr;
					newdata[1064:1057] <= newdata[1064:1057]+dval96;
				end
				else
				begin
					dval96 <= (data[1064:1057]-qn[1064:1057])/sr;
					newdata[1064:1057] <= newdata[1064:1057]-dval96;
				end
				if(newdata[1075:1068] < qn[1075:1068])
				begin
					dval97 <= (qn[1075:1068]-data[1075:1068])/sr;
					newdata[1075:1068] <= newdata[1075:1068]+dval97;
				end
				else
				begin
					dval97 <= (data[1075:1068]-qn[1075:1068])/sr;
					newdata[1075:1068] <= newdata[1075:1068]-dval97;
				end
				if(newdata[1086:1079] < qn[1086:1079])
				begin
					dval98 <= (qn[1086:1079]-data[1086:1079])/sr;
					newdata[1086:1079] <= newdata[1086:1079]+dval98;
				end
				else
				begin
					dval98 <= (data[1086:1079]-qn[1086:1079])/sr;
					newdata[1086:1079] <= newdata[1086:1079]-dval98;
				end
				if(newdata[1097:1090] < qn[1097:1090])
				begin
					dval99 <= (qn[1097:1090]-data[1097:1090])/sr;
					newdata[1097:1090] <= newdata[1097:1090]+dval99;
				end
				else
				begin
					dval99 <= (data[1097:1090]-qn[1097:1090])/sr;
					newdata[1097:1090] <= newdata[1097:1090]-dval99;
				end
				if(newdata[1108:1101] < qn[1108:1101])
				begin
					dval100 <= (qn[1108:1101]-data[1108:1101])/sr;
					newdata[1108:1101] <= newdata[1108:1101]+dval100;
				end
				else
				begin
					dval100 <= (data[1108:1101]-qn[1108:1101])/sr;
					newdata[1108:1101] <= newdata[1108:1101]-dval100;
				end
				if(newdata[1119:1112] < qn[1119:1112])
				begin
					dval101 <= (qn[1119:1112]-data[1119:1112])/sr;
					newdata[1119:1112] <= newdata[1119:1112]+dval101;
				end
				else
				begin
					dval101 <= (data[1119:1112]-qn[1119:1112])/sr;
					newdata[1119:1112] <= newdata[1119:1112]-dval101;
				end
				if(newdata[1130:1123] < qn[1130:1123])
				begin
					dval102 <= (qn[1130:1123]-data[1130:1123])/sr;
					newdata[1130:1123] <= newdata[1130:1123]+dval102;
				end
				else
				begin
					dval102 <= (data[1130:1123]-qn[1130:1123])/sr;
					newdata[1130:1123] <= newdata[1130:1123]-dval102;
				end
				if(newdata[1141:1134] < qn[1141:1134])
				begin
					dval103 <= (qn[1141:1134]-data[1141:1134])/sr;
					newdata[1141:1134] <= newdata[1141:1134]+dval103;
				end
				else
				begin
					dval103 <= (data[1141:1134]-qn[1141:1134])/sr;
					newdata[1141:1134] <= newdata[1141:1134]-dval103;
				end
				if(newdata[1152:1145] < qn[1152:1145])
				begin
					dval104 <= (qn[1152:1145]-data[1152:1145])/sr;
					newdata[1152:1145] <= newdata[1152:1145]+dval104;
				end
				else
				begin
					dval104 <= (data[1152:1145]-qn[1152:1145])/sr;
					newdata[1152:1145] <= newdata[1152:1145]-dval104;
				end
				if(newdata[1163:1156] < qn[1163:1156])
				begin
					dval105 <= (qn[1163:1156]-data[1163:1156])/sr;
					newdata[1163:1156] <= newdata[1163:1156]+dval105;
				end
				else
				begin
					dval105 <= (data[1163:1156]-qn[1163:1156])/sr;
					newdata[1163:1156] <= newdata[1163:1156]-dval105;
				end
				if(newdata[1174:1167] < qn[1174:1167])
				begin
					dval106 <= (qn[1174:1167]-data[1174:1167])/sr;
					newdata[1174:1167] <= newdata[1174:1167]+dval106;
				end
				else
				begin
					dval106 <= (data[1174:1167]-qn[1174:1167])/sr;
					newdata[1174:1167] <= newdata[1174:1167]-dval106;
				end
				if(newdata[1185:1178] < qn[1185:1178])
				begin
					dval107 <= (qn[1185:1178]-data[1185:1178])/sr;
					newdata[1185:1178] <= newdata[1185:1178]+dval107;
				end
				else
				begin
					dval107 <= (data[1185:1178]-qn[1185:1178])/sr;
					newdata[1185:1178] <= newdata[1185:1178]-dval107;
				end
				if(newdata[1196:1189] < qn[1196:1189])
				begin
					dval108 <= (qn[1196:1189]-data[1196:1189])/sr;
					newdata[1196:1189] <= newdata[1196:1189]+dval108;
				end
				else
				begin
					dval108 <= (data[1196:1189]-qn[1196:1189])/sr;
					newdata[1196:1189] <= newdata[1196:1189]-dval108;
				end
				if(newdata[1207:1200] < qn[1207:1200])
				begin
					dval109 <= (qn[1207:1200]-data[1207:1200])/sr;
					newdata[1207:1200] <= newdata[1207:1200]+dval109;
				end
				else
				begin
					dval109 <= (data[1207:1200]-qn[1207:1200])/sr;
					newdata[1207:1200] <= newdata[1207:1200]-dval109;
				end
				if(newdata[1218:1211] < qn[1218:1211])
				begin
					dval110 <= (qn[1218:1211]-data[1218:1211])/sr;
					newdata[1218:1211] <= newdata[1218:1211]+dval110;
				end
				else
				begin
					dval110 <= (data[1218:1211]-qn[1218:1211])/sr;
					newdata[1218:1211] <= newdata[1218:1211]-dval110;
				end
				if(newdata[1229:1222] < qn[1229:1222])
				begin
					dval111 <= (qn[1229:1222]-data[1229:1222])/sr;
					newdata[1229:1222] <= newdata[1229:1222]+dval111;
				end
				else
				begin
					dval111 <= (data[1229:1222]-qn[1229:1222])/sr;
					newdata[1229:1222] <= newdata[1229:1222]-dval111;
				end
				if(newdata[1240:1233] < qn[1240:1233])
				begin
					dval112 <= (qn[1240:1233]-data[1240:1233])/sr;
					newdata[1240:1233] <= newdata[1240:1233]+dval112;
				end
				else
				begin
					dval112 <= (data[1240:1233]-qn[1240:1233])/sr;
					newdata[1240:1233] <= newdata[1240:1233]-dval112;
				end
				if(newdata[1251:1244] < qn[1251:1244])
				begin
					dval113 <= (qn[1251:1244]-data[1251:1244])/sr;
					newdata[1251:1244] <= newdata[1251:1244]+dval113;
				end
				else
				begin
					dval113 <= (data[1251:1244]-qn[1251:1244])/sr;
					newdata[1251:1244] <= newdata[1251:1244]-dval113;
				end
				if(newdata[1262:1255] < qn[1262:1255])
				begin
					dval114 <= (qn[1262:1255]-data[1262:1255])/sr;
					newdata[1262:1255] <= newdata[1262:1255]+dval114;
				end
				else
				begin
					dval114 <= (data[1262:1255]-qn[1262:1255])/sr;
					newdata[1262:1255] <= newdata[1262:1255]-dval114;
				end
				if(newdata[1273:1266] < qn[1273:1266])
				begin
					dval115 <= (qn[1273:1266]-data[1273:1266])/sr;
					newdata[1273:1266] <= newdata[1273:1266]+dval115;
				end
				else
				begin
					dval115 <= (data[1273:1266]-qn[1273:1266])/sr;
					newdata[1273:1266] <= newdata[1273:1266]-dval115;
				end
				if(newdata[1284:1277] < qn[1284:1277])
				begin
					dval116 <= (qn[1284:1277]-data[1284:1277])/sr;
					newdata[1284:1277] <= newdata[1284:1277]+dval116;
				end
				else
				begin
					dval116 <= (data[1284:1277]-qn[1284:1277])/sr;
					newdata[1284:1277] <= newdata[1284:1277]-dval116;
				end
				if(newdata[1295:1288] < qn[1295:1288])
				begin
					dval117 <= (qn[1295:1288]-data[1295:1288])/sr;
					newdata[1295:1288] <= newdata[1295:1288]+dval117;
				end
				else
				begin
					dval117 <= (data[1295:1288]-qn[1295:1288])/sr;
					newdata[1295:1288] <= newdata[1295:1288]-dval117;
				end
				if(newdata[1306:1299] < qn[1306:1299])
				begin
					dval118 <= (qn[1306:1299]-data[1306:1299])/sr;
					newdata[1306:1299] <= newdata[1306:1299]+dval118;
				end
				else
				begin
					dval118 <= (data[1306:1299]-qn[1306:1299])/sr;
					newdata[1306:1299] <= newdata[1306:1299]-dval118;
				end
				if(newdata[1317:1310] < qn[1317:1310])
				begin
					dval119 <= (qn[1317:1310]-data[1317:1310])/sr;
					newdata[1317:1310] <= newdata[1317:1310]+dval119;
				end
				else
				begin
					dval119 <= (data[1317:1310]-qn[1317:1310])/sr;
					newdata[1317:1310] <= newdata[1317:1310]-dval119;
				end
				if(newdata[1328:1321] < qn[1328:1321])
				begin
					dval120 <= (qn[1328:1321]-data[1328:1321])/sr;
					newdata[1328:1321] <= newdata[1328:1321]+dval120;
				end
				else
				begin
					dval120 <= (data[1328:1321]-qn[1328:1321])/sr;
					newdata[1328:1321] <= newdata[1328:1321]-dval120;
				end
				if(newdata[1339:1332] < qn[1339:1332])
				begin
					dval121 <= (qn[1339:1332]-data[1339:1332])/sr;
					newdata[1339:1332] <= newdata[1339:1332]+dval121;
				end
				else
				begin
					dval121 <= (data[1339:1332]-qn[1339:1332])/sr;
					newdata[1339:1332] <= newdata[1339:1332]-dval121;
				end
				if(newdata[1350:1343] < qn[1350:1343])
				begin
					dval122 <= (qn[1350:1343]-data[1350:1343])/sr;
					newdata[1350:1343] <= newdata[1350:1343]+dval122;
				end
				else
				begin
					dval122 <= (data[1350:1343]-qn[1350:1343])/sr;
					newdata[1350:1343] <= newdata[1350:1343]-dval122;
				end
				if(newdata[1361:1354] < qn[1361:1354])
				begin
					dval123 <= (qn[1361:1354]-data[1361:1354])/sr;
					newdata[1361:1354] <= newdata[1361:1354]+dval123;
				end
				else
				begin
					dval123 <= (data[1361:1354]-qn[1361:1354])/sr;
					newdata[1361:1354] <= newdata[1361:1354]-dval123;
				end
				if(newdata[1372:1365] < qn[1372:1365])
				begin
					dval124 <= (qn[1372:1365]-data[1372:1365])/sr;
					newdata[1372:1365] <= newdata[1372:1365]+dval124;
				end
				else
				begin
					dval124 <= (data[1372:1365]-qn[1372:1365])/sr;
					newdata[1372:1365] <= newdata[1372:1365]-dval124;
				end
				if(newdata[1383:1376] < qn[1383:1376])
				begin
					dval125 <= (qn[1383:1376]-data[1383:1376])/sr;
					newdata[1383:1376] <= newdata[1383:1376]+dval125;
				end
				else
				begin
					dval125 <= (data[1383:1376]-qn[1383:1376])/sr;
					newdata[1383:1376] <= newdata[1383:1376]-dval125;
				end
				if(newdata[1394:1387] < qn[1394:1387])
				begin
					dval126 <= (qn[1394:1387]-data[1394:1387])/sr;
					newdata[1394:1387] <= newdata[1394:1387]+dval126;
				end
				else
				begin
					dval126 <= (data[1394:1387]-qn[1394:1387])/sr;
					newdata[1394:1387] <= newdata[1394:1387]-dval126;
				end
				if(newdata[1405:1398] < qn[1405:1398])
				begin
					dval127 <= (qn[1405:1398]-data[1405:1398])/sr;
					newdata[1405:1398] <= newdata[1405:1398]+dval127;
				end
				else
				begin
					dval127 <= (data[1405:1398]-qn[1405:1398])/sr;
					newdata[1405:1398] <= newdata[1405:1398]-dval127;
				end
				if(newdata[1416:1409] < qn[1416:1409])
				begin
					dval128 <= (qn[1416:1409]-data[1416:1409])/sr;
					newdata[1416:1409] <= newdata[1416:1409]+dval128;
				end
				else
				begin
					dval128 <= (data[1416:1409]-qn[1416:1409])/sr;
					newdata[1416:1409] <= newdata[1416:1409]-dval128;
				end
				if(newdata[1427:1420] < qn[1427:1420])
				begin
					dval129 <= (qn[1427:1420]-data[1427:1420])/sr;
					newdata[1427:1420] <= newdata[1427:1420]+dval129;
				end
				else
				begin
					dval129 <= (data[1427:1420]-qn[1427:1420])/sr;
					newdata[1427:1420] <= newdata[1427:1420]-dval129;
				end
				if(newdata[1438:1431] < qn[1438:1431])
				begin
					dval130 <= (qn[1438:1431]-data[1438:1431])/sr;
					newdata[1438:1431] <= newdata[1438:1431]+dval130;
				end
				else
				begin
					dval130 <= (data[1438:1431]-qn[1438:1431])/sr;
					newdata[1438:1431] <= newdata[1438:1431]-dval130;
				end
				if(newdata[1449:1442] < qn[1449:1442])
				begin
					dval131 <= (qn[1449:1442]-data[1449:1442])/sr;
					newdata[1449:1442] <= newdata[1449:1442]+dval131;
				end
				else
				begin
					dval131 <= (data[1449:1442]-qn[1449:1442])/sr;
					newdata[1449:1442] <= newdata[1449:1442]-dval131;
				end
				if(newdata[1460:1453] < qn[1460:1453])
				begin
					dval132 <= (qn[1460:1453]-data[1460:1453])/sr;
					newdata[1460:1453] <= newdata[1460:1453]+dval132;
				end
				else
				begin
					dval132 <= (data[1460:1453]-qn[1460:1453])/sr;
					newdata[1460:1453] <= newdata[1460:1453]-dval132;
				end
				if(newdata[1471:1464] < qn[1471:1464])
				begin
					dval133 <= (qn[1471:1464]-data[1471:1464])/sr;
					newdata[1471:1464] <= newdata[1471:1464]+dval133;
				end
				else
				begin
					dval133 <= (data[1471:1464]-qn[1471:1464])/sr;
					newdata[1471:1464] <= newdata[1471:1464]-dval133;
				end
				if(newdata[1482:1475] < qn[1482:1475])
				begin
					dval134 <= (qn[1482:1475]-data[1482:1475])/sr;
					newdata[1482:1475] <= newdata[1482:1475]+dval134;
				end
				else
				begin
					dval134 <= (data[1482:1475]-qn[1482:1475])/sr;
					newdata[1482:1475] <= newdata[1482:1475]-dval134;
				end
				if(newdata[1493:1486] < qn[1493:1486])
				begin
					dval135 <= (qn[1493:1486]-data[1493:1486])/sr;
					newdata[1493:1486] <= newdata[1493:1486]+dval135;
				end
				else
				begin
					dval135 <= (data[1493:1486]-qn[1493:1486])/sr;
					newdata[1493:1486] <= newdata[1493:1486]-dval135;
				end
				if(newdata[1504:1497] < qn[1504:1497])
				begin
					dval136 <= (qn[1504:1497]-data[1504:1497])/sr;
					newdata[1504:1497] <= newdata[1504:1497]+dval136;
				end
				else
				begin
					dval136 <= (data[1504:1497]-qn[1504:1497])/sr;
					newdata[1504:1497] <= newdata[1504:1497]-dval136;
				end
				if(newdata[1515:1508] < qn[1515:1508])
				begin
					dval137 <= (qn[1515:1508]-data[1515:1508])/sr;
					newdata[1515:1508] <= newdata[1515:1508]+dval137;
				end
				else
				begin
					dval137 <= (data[1515:1508]-qn[1515:1508])/sr;
					newdata[1515:1508] <= newdata[1515:1508]-dval137;
				end
				if(newdata[1526:1519] < qn[1526:1519])
				begin
					dval138 <= (qn[1526:1519]-data[1526:1519])/sr;
					newdata[1526:1519] <= newdata[1526:1519]+dval138;
				end
				else
				begin
					dval138 <= (data[1526:1519]-qn[1526:1519])/sr;
					newdata[1526:1519] <= newdata[1526:1519]-dval138;
				end
				if(newdata[1537:1530] < qn[1537:1530])
				begin
					dval139 <= (qn[1537:1530]-data[1537:1530])/sr;
					newdata[1537:1530] <= newdata[1537:1530]+dval139;
				end
				else
				begin
					dval139 <= (data[1537:1530]-qn[1537:1530])/sr;
					newdata[1537:1530] <= newdata[1537:1530]-dval139;
				end
				if(newdata[1548:1541] < qn[1548:1541])
				begin
					dval140 <= (qn[1548:1541]-data[1548:1541])/sr;
					newdata[1548:1541] <= newdata[1548:1541]+dval140;
				end
				else
				begin
					dval140 <= (data[1548:1541]-qn[1548:1541])/sr;
					newdata[1548:1541] <= newdata[1548:1541]-dval140;
				end
				if(newdata[1559:1552] < qn[1559:1552])
				begin
					dval141 <= (qn[1559:1552]-data[1559:1552])/sr;
					newdata[1559:1552] <= newdata[1559:1552]+dval141;
				end
				else
				begin
					dval141 <= (data[1559:1552]-qn[1559:1552])/sr;
					newdata[1559:1552] <= newdata[1559:1552]-dval141;
				end
				if(newdata[1570:1563] < qn[1570:1563])
				begin
					dval142 <= (qn[1570:1563]-data[1570:1563])/sr;
					newdata[1570:1563] <= newdata[1570:1563]+dval142;
				end
				else
				begin
					dval142 <= (data[1570:1563]-qn[1570:1563])/sr;
					newdata[1570:1563] <= newdata[1570:1563]-dval142;
				end
				if(newdata[1581:1574] < qn[1581:1574])
				begin
					dval143 <= (qn[1581:1574]-data[1581:1574])/sr;
					newdata[1581:1574] <= newdata[1581:1574]+dval143;
				end
				else
				begin
					dval143 <= (data[1581:1574]-qn[1581:1574])/sr;
					newdata[1581:1574] <= newdata[1581:1574]-dval143;
				end
				if(newdata[1592:1585] < qn[1592:1585])
				begin
					dval144 <= (qn[1592:1585]-data[1592:1585])/sr;
					newdata[1592:1585] <= newdata[1592:1585]+dval144;
				end
				else
				begin
					dval144 <= (data[1592:1585]-qn[1592:1585])/sr;
					newdata[1592:1585] <= newdata[1592:1585]-dval144;
				end
				if(newdata[1603:1596] < qn[1603:1596])
				begin
					dval145 <= (qn[1603:1596]-data[1603:1596])/sr;
					newdata[1603:1596] <= newdata[1603:1596]+dval145;
				end
				else
				begin
					dval145 <= (data[1603:1596]-qn[1603:1596])/sr;
					newdata[1603:1596] <= newdata[1603:1596]-dval145;
				end
				if(newdata[1614:1607] < qn[1614:1607])
				begin
					dval146 <= (qn[1614:1607]-data[1614:1607])/sr;
					newdata[1614:1607] <= newdata[1614:1607]+dval146;
				end
				else
				begin
					dval146 <= (data[1614:1607]-qn[1614:1607])/sr;
					newdata[1614:1607] <= newdata[1614:1607]-dval146;
				end
				if(newdata[1625:1618] < qn[1625:1618])
				begin
					dval147 <= (qn[1625:1618]-data[1625:1618])/sr;
					newdata[1625:1618] <= newdata[1625:1618]+dval147;
				end
				else
				begin
					dval147 <= (data[1625:1618]-qn[1625:1618])/sr;
					newdata[1625:1618] <= newdata[1625:1618]-dval147;
				end
				if(newdata[1636:1629] < qn[1636:1629])
				begin
					dval148 <= (qn[1636:1629]-data[1636:1629])/sr;
					newdata[1636:1629] <= newdata[1636:1629]+dval148;
				end
				else
				begin
					dval148 <= (data[1636:1629]-qn[1636:1629])/sr;
					newdata[1636:1629] <= newdata[1636:1629]-dval148;
				end
				if(newdata[1647:1640] < qn[1647:1640])
				begin
					dval149 <= (qn[1647:1640]-data[1647:1640])/sr;
					newdata[1647:1640] <= newdata[1647:1640]+dval149;
				end
				else
				begin
					dval149 <= (data[1647:1640]-qn[1647:1640])/sr;
					newdata[1647:1640] <= newdata[1647:1640]-dval149;
				end
				if(newdata[1658:1651] < qn[1658:1651])
				begin
					dval150 <= (qn[1658:1651]-data[1658:1651])/sr;
					newdata[1658:1651] <= newdata[1658:1651]+dval150;
				end
				else
				begin
					dval150 <= (data[1658:1651]-qn[1658:1651])/sr;
					newdata[1658:1651] <= newdata[1658:1651]-dval150;
				end
				if(newdata[1669:1662] < qn[1669:1662])
				begin
					dval151 <= (qn[1669:1662]-data[1669:1662])/sr;
					newdata[1669:1662] <= newdata[1669:1662]+dval151;
				end
				else
				begin
					dval151 <= (data[1669:1662]-qn[1669:1662])/sr;
					newdata[1669:1662] <= newdata[1669:1662]-dval151;
				end
				if(newdata[1680:1673] < qn[1680:1673])
				begin
					dval152 <= (qn[1680:1673]-data[1680:1673])/sr;
					newdata[1680:1673] <= newdata[1680:1673]+dval152;
				end
				else
				begin
					dval152 <= (data[1680:1673]-qn[1680:1673])/sr;
					newdata[1680:1673] <= newdata[1680:1673]-dval152;
				end
				if(newdata[1691:1684] < qn[1691:1684])
				begin
					dval153 <= (qn[1691:1684]-data[1691:1684])/sr;
					newdata[1691:1684] <= newdata[1691:1684]+dval153;
				end
				else
				begin
					dval153 <= (data[1691:1684]-qn[1691:1684])/sr;
					newdata[1691:1684] <= newdata[1691:1684]-dval153;
				end
				if(newdata[1702:1695] < qn[1702:1695])
				begin
					dval154 <= (qn[1702:1695]-data[1702:1695])/sr;
					newdata[1702:1695] <= newdata[1702:1695]+dval154;
				end
				else
				begin
					dval154 <= (data[1702:1695]-qn[1702:1695])/sr;
					newdata[1702:1695] <= newdata[1702:1695]-dval154;
				end
				if(newdata[1713:1706] < qn[1713:1706])
				begin
					dval155 <= (qn[1713:1706]-data[1713:1706])/sr;
					newdata[1713:1706] <= newdata[1713:1706]+dval155;
				end
				else
				begin
					dval155 <= (data[1713:1706]-qn[1713:1706])/sr;
					newdata[1713:1706] <= newdata[1713:1706]-dval155;
				end
				if(newdata[1724:1717] < qn[1724:1717])
				begin
					dval156 <= (qn[1724:1717]-data[1724:1717])/sr;
					newdata[1724:1717] <= newdata[1724:1717]+dval156;
				end
				else
				begin
					dval156 <= (data[1724:1717]-qn[1724:1717])/sr;
					newdata[1724:1717] <= newdata[1724:1717]-dval156;
				end
				if(newdata[1735:1728] < qn[1735:1728])
				begin
					dval157 <= (qn[1735:1728]-data[1735:1728])/sr;
					newdata[1735:1728] <= newdata[1735:1728]+dval157;
				end
				else
				begin
					dval157 <= (data[1735:1728]-qn[1735:1728])/sr;
					newdata[1735:1728] <= newdata[1735:1728]-dval157;
				end
				if(newdata[1746:1739] < qn[1746:1739])
				begin
					dval158 <= (qn[1746:1739]-data[1746:1739])/sr;
					newdata[1746:1739] <= newdata[1746:1739]+dval158;
				end
				else
				begin
					dval158 <= (data[1746:1739]-qn[1746:1739])/sr;
					newdata[1746:1739] <= newdata[1746:1739]-dval158;
				end
				if(newdata[1757:1750] < qn[1757:1750])
				begin
					dval159 <= (qn[1757:1750]-data[1757:1750])/sr;
					newdata[1757:1750] <= newdata[1757:1750]+dval159;
				end
				else
				begin
					dval159 <= (data[1757:1750]-qn[1757:1750])/sr;
					newdata[1757:1750] <= newdata[1757:1750]-dval159;
				end
				if(newdata[1768:1761] < qn[1768:1761])
				begin
					dval160 <= (qn[1768:1761]-data[1768:1761])/sr;
					newdata[1768:1761] <= newdata[1768:1761]+dval160;
				end
				else
				begin
					dval160 <= (data[1768:1761]-qn[1768:1761])/sr;
					newdata[1768:1761] <= newdata[1768:1761]-dval160;
				end
				if(newdata[1779:1772] < qn[1779:1772])
				begin
					dval161 <= (qn[1779:1772]-data[1779:1772])/sr;
					newdata[1779:1772] <= newdata[1779:1772]+dval161;
				end
				else
				begin
					dval161 <= (data[1779:1772]-qn[1779:1772])/sr;
					newdata[1779:1772] <= newdata[1779:1772]-dval161;
				end
				if(newdata[1790:1783] < qn[1790:1783])
				begin
					dval162 <= (qn[1790:1783]-data[1790:1783])/sr;
					newdata[1790:1783] <= newdata[1790:1783]+dval162;
				end
				else
				begin
					dval162 <= (data[1790:1783]-qn[1790:1783])/sr;
					newdata[1790:1783] <= newdata[1790:1783]-dval162;
				end
				if(newdata[1801:1794] < qn[1801:1794])
				begin
					dval163 <= (qn[1801:1794]-data[1801:1794])/sr;
					newdata[1801:1794] <= newdata[1801:1794]+dval163;
				end
				else
				begin
					dval163 <= (data[1801:1794]-qn[1801:1794])/sr;
					newdata[1801:1794] <= newdata[1801:1794]-dval163;
				end
				if(newdata[1812:1805] < qn[1812:1805])
				begin
					dval164 <= (qn[1812:1805]-data[1812:1805])/sr;
					newdata[1812:1805] <= newdata[1812:1805]+dval164;
				end
				else
				begin
					dval164 <= (data[1812:1805]-qn[1812:1805])/sr;
					newdata[1812:1805] <= newdata[1812:1805]-dval164;
				end
				if(newdata[1823:1816] < qn[1823:1816])
				begin
					dval165 <= (qn[1823:1816]-data[1823:1816])/sr;
					newdata[1823:1816] <= newdata[1823:1816]+dval165;
				end
				else
				begin
					dval165 <= (data[1823:1816]-qn[1823:1816])/sr;
					newdata[1823:1816] <= newdata[1823:1816]-dval165;
				end
				if(newdata[1834:1827] < qn[1834:1827])
				begin
					dval166 <= (qn[1834:1827]-data[1834:1827])/sr;
					newdata[1834:1827] <= newdata[1834:1827]+dval166;
				end
				else
				begin
					dval166 <= (data[1834:1827]-qn[1834:1827])/sr;
					newdata[1834:1827] <= newdata[1834:1827]-dval166;
				end
				if(newdata[1845:1838] < qn[1845:1838])
				begin
					dval167 <= (qn[1845:1838]-data[1845:1838])/sr;
					newdata[1845:1838] <= newdata[1845:1838]+dval167;
				end
				else
				begin
					dval167 <= (data[1845:1838]-qn[1845:1838])/sr;
					newdata[1845:1838] <= newdata[1845:1838]-dval167;
				end
				if(newdata[1856:1849] < qn[1856:1849])
				begin
					dval168 <= (qn[1856:1849]-data[1856:1849])/sr;
					newdata[1856:1849] <= newdata[1856:1849]+dval168;
				end
				else
				begin
					dval168 <= (data[1856:1849]-qn[1856:1849])/sr;
					newdata[1856:1849] <= newdata[1856:1849]-dval168;
				end
				if(newdata[1867:1860] < qn[1867:1860])
				begin
					dval169 <= (qn[1867:1860]-data[1867:1860])/sr;
					newdata[1867:1860] <= newdata[1867:1860]+dval169;
				end
				else
				begin
					dval169 <= (data[1867:1860]-qn[1867:1860])/sr;
					newdata[1867:1860] <= newdata[1867:1860]-dval169;
				end
				if(newdata[1878:1871] < qn[1878:1871])
				begin
					dval170 <= (qn[1878:1871]-data[1878:1871])/sr;
					newdata[1878:1871] <= newdata[1878:1871]+dval170;
				end
				else
				begin
					dval170 <= (data[1878:1871]-qn[1878:1871])/sr;
					newdata[1878:1871] <= newdata[1878:1871]-dval170;
				end
				if(newdata[1889:1882] < qn[1889:1882])
				begin
					dval171 <= (qn[1889:1882]-data[1889:1882])/sr;
					newdata[1889:1882] <= newdata[1889:1882]+dval171;
				end
				else
				begin
					dval171 <= (data[1889:1882]-qn[1889:1882])/sr;
					newdata[1889:1882] <= newdata[1889:1882]-dval171;
				end
				if(newdata[1900:1893] < qn[1900:1893])
				begin
					dval172 <= (qn[1900:1893]-data[1900:1893])/sr;
					newdata[1900:1893] <= newdata[1900:1893]+dval172;
				end
				else
				begin
					dval172 <= (data[1900:1893]-qn[1900:1893])/sr;
					newdata[1900:1893] <= newdata[1900:1893]-dval172;
				end
				if(newdata[1911:1904] < qn[1911:1904])
				begin
					dval173 <= (qn[1911:1904]-data[1911:1904])/sr;
					newdata[1911:1904] <= newdata[1911:1904]+dval173;
				end
				else
				begin
					dval173 <= (data[1911:1904]-qn[1911:1904])/sr;
					newdata[1911:1904] <= newdata[1911:1904]-dval173;
				end
				if(newdata[1922:1915] < qn[1922:1915])
				begin
					dval174 <= (qn[1922:1915]-data[1922:1915])/sr;
					newdata[1922:1915] <= newdata[1922:1915]+dval174;
				end
				else
				begin
					dval174 <= (data[1922:1915]-qn[1922:1915])/sr;
					newdata[1922:1915] <= newdata[1922:1915]-dval174;
				end
				if(newdata[1933:1926] < qn[1933:1926])
				begin
					dval175 <= (qn[1933:1926]-data[1933:1926])/sr;
					newdata[1933:1926] <= newdata[1933:1926]+dval175;
				end
				else
				begin
					dval175 <= (data[1933:1926]-qn[1933:1926])/sr;
					newdata[1933:1926] <= newdata[1933:1926]-dval175;
				end
				if(newdata[1944:1937] < qn[1944:1937])
				begin
					dval176 <= (qn[1944:1937]-data[1944:1937])/sr;
					newdata[1944:1937] <= newdata[1944:1937]+dval176;
				end
				else
				begin
					dval176 <= (data[1944:1937]-qn[1944:1937])/sr;
					newdata[1944:1937] <= newdata[1944:1937]-dval176;
				end
				if(newdata[1955:1948] < qn[1955:1948])
				begin
					dval177 <= (qn[1955:1948]-data[1955:1948])/sr;
					newdata[1955:1948] <= newdata[1955:1948]+dval177;
				end
				else
				begin
					dval177 <= (data[1955:1948]-qn[1955:1948])/sr;
					newdata[1955:1948] <= newdata[1955:1948]-dval177;
				end
				if(newdata[1966:1959] < qn[1966:1959])
				begin
					dval178 <= (qn[1966:1959]-data[1966:1959])/sr;
					newdata[1966:1959] <= newdata[1966:1959]+dval178;
				end
				else
				begin
					dval178 <= (data[1966:1959]-qn[1966:1959])/sr;
					newdata[1966:1959] <= newdata[1966:1959]-dval178;
				end
				if(newdata[1977:1970] < qn[1977:1970])
				begin
					dval179 <= (qn[1977:1970]-data[1977:1970])/sr;
					newdata[1977:1970] <= newdata[1977:1970]+dval179;
				end
				else
				begin
					dval179 <= (data[1977:1970]-qn[1977:1970])/sr;
					newdata[1977:1970] <= newdata[1977:1970]-dval179;
				end
				if(newdata[1988:1981] < qn[1988:1981])
				begin
					dval180 <= (qn[1988:1981]-data[1988:1981])/sr;
					newdata[1988:1981] <= newdata[1988:1981]+dval180;
				end
				else
				begin
					dval180 <= (data[1988:1981]-qn[1988:1981])/sr;
					newdata[1988:1981] <= newdata[1988:1981]-dval180;
				end
				if(newdata[1999:1992] < qn[1999:1992])
				begin
					dval181 <= (qn[1999:1992]-data[1999:1992])/sr;
					newdata[1999:1992] <= newdata[1999:1992]+dval181;
				end
				else
				begin
					dval181 <= (data[1999:1992]-qn[1999:1992])/sr;
					newdata[1999:1992] <= newdata[1999:1992]-dval181;
				end
				if(newdata[2010:2003] < qn[2010:2003])
				begin
					dval182 <= (qn[2010:2003]-data[2010:2003])/sr;
					newdata[2010:2003] <= newdata[2010:2003]+dval182;
				end
				else
				begin
					dval182 <= (data[2010:2003]-qn[2010:2003])/sr;
					newdata[2010:2003] <= newdata[2010:2003]-dval182;
				end
				if(newdata[2021:2014] < qn[2021:2014])
				begin
					dval183 <= (qn[2021:2014]-data[2021:2014])/sr;
					newdata[2021:2014] <= newdata[2021:2014]+dval183;
				end
				else
				begin
					dval183 <= (data[2021:2014]-qn[2021:2014])/sr;
					newdata[2021:2014] <= newdata[2021:2014]-dval183;
				end
				if(newdata[2032:2025] < qn[2032:2025])
				begin
					dval184 <= (qn[2032:2025]-data[2032:2025])/sr;
					newdata[2032:2025] <= newdata[2032:2025]+dval184;
				end
				else
				begin
					dval184 <= (data[2032:2025]-qn[2032:2025])/sr;
					newdata[2032:2025] <= newdata[2032:2025]-dval184;
				end
				if(newdata[2043:2036] < qn[2043:2036])
				begin
					dval185 <= (qn[2043:2036]-data[2043:2036])/sr;
					newdata[2043:2036] <= newdata[2043:2036]+dval185;
				end
				else
				begin
					dval185 <= (data[2043:2036]-qn[2043:2036])/sr;
					newdata[2043:2036] <= newdata[2043:2036]-dval185;
				end
				if(newdata[2054:2047] < qn[2054:2047])
				begin
					dval186 <= (qn[2054:2047]-data[2054:2047])/sr;
					newdata[2054:2047] <= newdata[2054:2047]+dval186;
				end
				else
				begin
					dval186 <= (data[2054:2047]-qn[2054:2047])/sr;
					newdata[2054:2047] <= newdata[2054:2047]-dval186;
				end
				if(newdata[2065:2058] < qn[2065:2058])
				begin
					dval187 <= (qn[2065:2058]-data[2065:2058])/sr;
					newdata[2065:2058] <= newdata[2065:2058]+dval187;
				end
				else
				begin
					dval187 <= (data[2065:2058]-qn[2065:2058])/sr;
					newdata[2065:2058] <= newdata[2065:2058]-dval187;
				end
				if(newdata[2076:2069] < qn[2076:2069])
				begin
					dval188 <= (qn[2076:2069]-data[2076:2069])/sr;
					newdata[2076:2069] <= newdata[2076:2069]+dval188;
				end
				else
				begin
					dval188 <= (data[2076:2069]-qn[2076:2069])/sr;
					newdata[2076:2069] <= newdata[2076:2069]-dval188;
				end
				if(newdata[2087:2080] < qn[2087:2080])
				begin
					dval189 <= (qn[2087:2080]-data[2087:2080])/sr;
					newdata[2087:2080] <= newdata[2087:2080]+dval189;
				end
				else
				begin
					dval189 <= (data[2087:2080]-qn[2087:2080])/sr;
					newdata[2087:2080] <= newdata[2087:2080]-dval189;
				end
				if(newdata[2098:2091] < qn[2098:2091])
				begin
					dval190 <= (qn[2098:2091]-data[2098:2091])/sr;
					newdata[2098:2091] <= newdata[2098:2091]+dval190;
				end
				else
				begin
					dval190 <= (data[2098:2091]-qn[2098:2091])/sr;
					newdata[2098:2091] <= newdata[2098:2091]-dval190;
				end
				if(newdata[2109:2102] < qn[2109:2102])
				begin
					dval191 <= (qn[2109:2102]-data[2109:2102])/sr;
					newdata[2109:2102] <= newdata[2109:2102]+dval191;
				end
				else
				begin
					dval191 <= (data[2109:2102]-qn[2109:2102])/sr;
					newdata[2109:2102] <= newdata[2109:2102]-dval191;
				end
				if(newdata[2120:2113] < qn[2120:2113])
				begin
					dval192 <= (qn[2120:2113]-data[2120:2113])/sr;
					newdata[2120:2113] <= newdata[2120:2113]+dval192;
				end
				else
				begin
					dval192 <= (data[2120:2113]-qn[2120:2113])/sr;
					newdata[2120:2113] <= newdata[2120:2113]-dval192;
				end
				if(newdata[2131:2124] < qn[2131:2124])
				begin
					dval193 <= (qn[2131:2124]-data[2131:2124])/sr;
					newdata[2131:2124] <= newdata[2131:2124]+dval193;
				end
				else
				begin
					dval193 <= (data[2131:2124]-qn[2131:2124])/sr;
					newdata[2131:2124] <= newdata[2131:2124]-dval193;
				end
				if(newdata[2142:2135] < qn[2142:2135])
				begin
					dval194 <= (qn[2142:2135]-data[2142:2135])/sr;
					newdata[2142:2135] <= newdata[2142:2135]+dval194;
				end
				else
				begin
					dval194 <= (data[2142:2135]-qn[2142:2135])/sr;
					newdata[2142:2135] <= newdata[2142:2135]-dval194;
				end
				if(newdata[2153:2146] < qn[2153:2146])
				begin
					dval195 <= (qn[2153:2146]-data[2153:2146])/sr;
					newdata[2153:2146] <= newdata[2153:2146]+dval195;
				end
				else
				begin
					dval195 <= (data[2153:2146]-qn[2153:2146])/sr;
					newdata[2153:2146] <= newdata[2153:2146]-dval195;
				end
				if(newdata[2164:2157] < qn[2164:2157])
				begin
					dval196 <= (qn[2164:2157]-data[2164:2157])/sr;
					newdata[2164:2157] <= newdata[2164:2157]+dval196;
				end
				else
				begin
					dval196 <= (data[2164:2157]-qn[2164:2157])/sr;
					newdata[2164:2157] <= newdata[2164:2157]-dval196;
				end
				if(newdata[2175:2168] < qn[2175:2168])
				begin
					dval197 <= (qn[2175:2168]-data[2175:2168])/sr;
					newdata[2175:2168] <= newdata[2175:2168]+dval197;
				end
				else
				begin
					dval197 <= (data[2175:2168]-qn[2175:2168])/sr;
					newdata[2175:2168] <= newdata[2175:2168]-dval197;
				end
				if(newdata[2186:2179] < qn[2186:2179])
				begin
					dval198 <= (qn[2186:2179]-data[2186:2179])/sr;
					newdata[2186:2179] <= newdata[2186:2179]+dval198;
				end
				else
				begin
					dval198 <= (data[2186:2179]-qn[2186:2179])/sr;
					newdata[2186:2179] <= newdata[2186:2179]-dval198;
				end
				if(newdata[2197:2190] < qn[2197:2190])
				begin
					dval199 <= (qn[2197:2190]-data[2197:2190])/sr;
					newdata[2197:2190] <= newdata[2197:2190]+dval199;
				end
				else
				begin
					dval199 <= (data[2197:2190]-qn[2197:2190])/sr;
					newdata[2197:2190] <= newdata[2197:2190]-dval199;
				end
				if(newdata[2208:2201] < qn[2208:2201])
				begin
					dval200 <= (qn[2208:2201]-data[2208:2201])/sr;
					newdata[2208:2201] <= newdata[2208:2201]+dval200;
				end
				else
				begin
					dval200 <= (data[2208:2201]-qn[2208:2201])/sr;
					newdata[2208:2201] <= newdata[2208:2201]-dval200;
				end
				if(newdata[2219:2212] < qn[2219:2212])
				begin
					dval201 <= (qn[2219:2212]-data[2219:2212])/sr;
					newdata[2219:2212] <= newdata[2219:2212]+dval201;
				end
				else
				begin
					dval201 <= (data[2219:2212]-qn[2219:2212])/sr;
					newdata[2219:2212] <= newdata[2219:2212]-dval201;
				end
				if(newdata[2230:2223] < qn[2230:2223])
				begin
					dval202 <= (qn[2230:2223]-data[2230:2223])/sr;
					newdata[2230:2223] <= newdata[2230:2223]+dval202;
				end
				else
				begin
					dval202 <= (data[2230:2223]-qn[2230:2223])/sr;
					newdata[2230:2223] <= newdata[2230:2223]-dval202;
				end
				if(newdata[2241:2234] < qn[2241:2234])
				begin
					dval203 <= (qn[2241:2234]-data[2241:2234])/sr;
					newdata[2241:2234] <= newdata[2241:2234]+dval203;
				end
				else
				begin
					dval203 <= (data[2241:2234]-qn[2241:2234])/sr;
					newdata[2241:2234] <= newdata[2241:2234]-dval203;
				end
				if(newdata[2252:2245] < qn[2252:2245])
				begin
					dval204 <= (qn[2252:2245]-data[2252:2245])/sr;
					newdata[2252:2245] <= newdata[2252:2245]+dval204;
				end
				else
				begin
					dval204 <= (data[2252:2245]-qn[2252:2245])/sr;
					newdata[2252:2245] <= newdata[2252:2245]-dval204;
				end
				if(newdata[2263:2256] < qn[2263:2256])
				begin
					dval205 <= (qn[2263:2256]-data[2263:2256])/sr;
					newdata[2263:2256] <= newdata[2263:2256]+dval205;
				end
				else
				begin
					dval205 <= (data[2263:2256]-qn[2263:2256])/sr;
					newdata[2263:2256] <= newdata[2263:2256]-dval205;
				end
				if(newdata[2274:2267] < qn[2274:2267])
				begin
					dval206 <= (qn[2274:2267]-data[2274:2267])/sr;
					newdata[2274:2267] <= newdata[2274:2267]+dval206;
				end
				else
				begin
					dval206 <= (data[2274:2267]-qn[2274:2267])/sr;
					newdata[2274:2267] <= newdata[2274:2267]-dval206;
				end
				if(newdata[2285:2278] < qn[2285:2278])
				begin
					dval207 <= (qn[2285:2278]-data[2285:2278])/sr;
					newdata[2285:2278] <= newdata[2285:2278]+dval207;
				end
				else
				begin
					dval207 <= (data[2285:2278]-qn[2285:2278])/sr;
					newdata[2285:2278] <= newdata[2285:2278]-dval207;
				end
				if(newdata[2296:2289] < qn[2296:2289])
				begin
					dval208 <= (qn[2296:2289]-data[2296:2289])/sr;
					newdata[2296:2289] <= newdata[2296:2289]+dval208;
				end
				else
				begin
					dval208 <= (data[2296:2289]-qn[2296:2289])/sr;
					newdata[2296:2289] <= newdata[2296:2289]-dval208;
				end
				if(newdata[2307:2300] < qn[2307:2300])
				begin
					dval209 <= (qn[2307:2300]-data[2307:2300])/sr;
					newdata[2307:2300] <= newdata[2307:2300]+dval209;
				end
				else
				begin
					dval209 <= (data[2307:2300]-qn[2307:2300])/sr;
					newdata[2307:2300] <= newdata[2307:2300]-dval209;
				end
				if(newdata[2318:2311] < qn[2318:2311])
				begin
					dval210 <= (qn[2318:2311]-data[2318:2311])/sr;
					newdata[2318:2311] <= newdata[2318:2311]+dval210;
				end
				else
				begin
					dval210 <= (data[2318:2311]-qn[2318:2311])/sr;
					newdata[2318:2311] <= newdata[2318:2311]-dval210;
				end
				if(newdata[2329:2322] < qn[2329:2322])
				begin
					dval211 <= (qn[2329:2322]-data[2329:2322])/sr;
					newdata[2329:2322] <= newdata[2329:2322]+dval211;
				end
				else
				begin
					dval211 <= (data[2329:2322]-qn[2329:2322])/sr;
					newdata[2329:2322] <= newdata[2329:2322]-dval211;
				end
				if(newdata[2340:2333] < qn[2340:2333])
				begin
					dval212 <= (qn[2340:2333]-data[2340:2333])/sr;
					newdata[2340:2333] <= newdata[2340:2333]+dval212;
				end
				else
				begin
					dval212 <= (data[2340:2333]-qn[2340:2333])/sr;
					newdata[2340:2333] <= newdata[2340:2333]-dval212;
				end
				if(newdata[2351:2344] < qn[2351:2344])
				begin
					dval213 <= (qn[2351:2344]-data[2351:2344])/sr;
					newdata[2351:2344] <= newdata[2351:2344]+dval213;
				end
				else
				begin
					dval213 <= (data[2351:2344]-qn[2351:2344])/sr;
					newdata[2351:2344] <= newdata[2351:2344]-dval213;
				end
				if(newdata[2362:2355] < qn[2362:2355])
				begin
					dval214 <= (qn[2362:2355]-data[2362:2355])/sr;
					newdata[2362:2355] <= newdata[2362:2355]+dval214;
				end
				else
				begin
					dval214 <= (data[2362:2355]-qn[2362:2355])/sr;
					newdata[2362:2355] <= newdata[2362:2355]-dval214;
				end
				if(newdata[2373:2366] < qn[2373:2366])
				begin
					dval215 <= (qn[2373:2366]-data[2373:2366])/sr;
					newdata[2373:2366] <= newdata[2373:2366]+dval215;
				end
				else
				begin
					dval215 <= (data[2373:2366]-qn[2373:2366])/sr;
					newdata[2373:2366] <= newdata[2373:2366]-dval215;
				end
				if(newdata[2384:2377] < qn[2384:2377])
				begin
					dval216 <= (qn[2384:2377]-data[2384:2377])/sr;
					newdata[2384:2377] <= newdata[2384:2377]+dval216;
				end
				else
				begin
					dval216 <= (data[2384:2377]-qn[2384:2377])/sr;
					newdata[2384:2377] <= newdata[2384:2377]-dval216;
				end
				if(newdata[2395:2388] < qn[2395:2388])
				begin
					dval217 <= (qn[2395:2388]-data[2395:2388])/sr;
					newdata[2395:2388] <= newdata[2395:2388]+dval217;
				end
				else
				begin
					dval217 <= (data[2395:2388]-qn[2395:2388])/sr;
					newdata[2395:2388] <= newdata[2395:2388]-dval217;
				end
				if(newdata[2406:2399] < qn[2406:2399])
				begin
					dval218 <= (qn[2406:2399]-data[2406:2399])/sr;
					newdata[2406:2399] <= newdata[2406:2399]+dval218;
				end
				else
				begin
					dval218 <= (data[2406:2399]-qn[2406:2399])/sr;
					newdata[2406:2399] <= newdata[2406:2399]-dval218;
				end
				if(newdata[2417:2410] < qn[2417:2410])
				begin
					dval219 <= (qn[2417:2410]-data[2417:2410])/sr;
					newdata[2417:2410] <= newdata[2417:2410]+dval219;
				end
				else
				begin
					dval219 <= (data[2417:2410]-qn[2417:2410])/sr;
					newdata[2417:2410] <= newdata[2417:2410]-dval219;
				end
				if(newdata[2428:2421] < qn[2428:2421])
				begin
					dval220 <= (qn[2428:2421]-data[2428:2421])/sr;
					newdata[2428:2421] <= newdata[2428:2421]+dval220;
				end
				else
				begin
					dval220 <= (data[2428:2421]-qn[2428:2421])/sr;
					newdata[2428:2421] <= newdata[2428:2421]-dval220;
				end
				if(newdata[2439:2432] < qn[2439:2432])
				begin
					dval221 <= (qn[2439:2432]-data[2439:2432])/sr;
					newdata[2439:2432] <= newdata[2439:2432]+dval221;
				end
				else
				begin
					dval221 <= (data[2439:2432]-qn[2439:2432])/sr;
					newdata[2439:2432] <= newdata[2439:2432]-dval221;
				end
				if(newdata[2450:2443] < qn[2450:2443])
				begin
					dval222 <= (qn[2450:2443]-data[2450:2443])/sr;
					newdata[2450:2443] <= newdata[2450:2443]+dval222;
				end
				else
				begin
					dval222 <= (data[2450:2443]-qn[2450:2443])/sr;
					newdata[2450:2443] <= newdata[2450:2443]-dval222;
				end
				if(newdata[2461:2454] < qn[2461:2454])
				begin
					dval223 <= (qn[2461:2454]-data[2461:2454])/sr;
					newdata[2461:2454] <= newdata[2461:2454]+dval223;
				end
				else
				begin
					dval223 <= (data[2461:2454]-qn[2461:2454])/sr;
					newdata[2461:2454] <= newdata[2461:2454]-dval223;
				end
				if(newdata[2472:2465] < qn[2472:2465])
				begin
					dval224 <= (qn[2472:2465]-data[2472:2465])/sr;
					newdata[2472:2465] <= newdata[2472:2465]+dval224;
				end
				else
				begin
					dval224 <= (data[2472:2465]-qn[2472:2465])/sr;
					newdata[2472:2465] <= newdata[2472:2465]-dval224;
				end
				if(newdata[2483:2476] < qn[2483:2476])
				begin
					dval225 <= (qn[2483:2476]-data[2483:2476])/sr;
					newdata[2483:2476] <= newdata[2483:2476]+dval225;
				end
				else
				begin
					dval225 <= (data[2483:2476]-qn[2483:2476])/sr;
					newdata[2483:2476] <= newdata[2483:2476]-dval225;
				end
				if(newdata[2494:2487] < qn[2494:2487])
				begin
					dval226 <= (qn[2494:2487]-data[2494:2487])/sr;
					newdata[2494:2487] <= newdata[2494:2487]+dval226;
				end
				else
				begin
					dval226 <= (data[2494:2487]-qn[2494:2487])/sr;
					newdata[2494:2487] <= newdata[2494:2487]-dval226;
				end
				if(newdata[2505:2498] < qn[2505:2498])
				begin
					dval227 <= (qn[2505:2498]-data[2505:2498])/sr;
					newdata[2505:2498] <= newdata[2505:2498]+dval227;
				end
				else
				begin
					dval227 <= (data[2505:2498]-qn[2505:2498])/sr;
					newdata[2505:2498] <= newdata[2505:2498]-dval227;
				end
				if(newdata[2516:2509] < qn[2516:2509])
				begin
					dval228 <= (qn[2516:2509]-data[2516:2509])/sr;
					newdata[2516:2509] <= newdata[2516:2509]+dval228;
				end
				else
				begin
					dval228 <= (data[2516:2509]-qn[2516:2509])/sr;
					newdata[2516:2509] <= newdata[2516:2509]-dval228;
				end
				if(newdata[2527:2520] < qn[2527:2520])
				begin
					dval229 <= (qn[2527:2520]-data[2527:2520])/sr;
					newdata[2527:2520] <= newdata[2527:2520]+dval229;
				end
				else
				begin
					dval229 <= (data[2527:2520]-qn[2527:2520])/sr;
					newdata[2527:2520] <= newdata[2527:2520]-dval229;
				end
				if(newdata[2538:2531] < qn[2538:2531])
				begin
					dval230 <= (qn[2538:2531]-data[2538:2531])/sr;
					newdata[2538:2531] <= newdata[2538:2531]+dval230;
				end
				else
				begin
					dval230 <= (data[2538:2531]-qn[2538:2531])/sr;
					newdata[2538:2531] <= newdata[2538:2531]-dval230;
				end
				if(newdata[2549:2542] < qn[2549:2542])
				begin
					dval231 <= (qn[2549:2542]-data[2549:2542])/sr;
					newdata[2549:2542] <= newdata[2549:2542]+dval231;
				end
				else
				begin
					dval231 <= (data[2549:2542]-qn[2549:2542])/sr;
					newdata[2549:2542] <= newdata[2549:2542]-dval231;
				end
				if(newdata[2560:2553] < qn[2560:2553])
				begin
					dval232 <= (qn[2560:2553]-data[2560:2553])/sr;
					newdata[2560:2553] <= newdata[2560:2553]+dval232;
				end
				else
				begin
					dval232 <= (data[2560:2553]-qn[2560:2553])/sr;
					newdata[2560:2553] <= newdata[2560:2553]-dval232;
				end
				if(newdata[2571:2564] < qn[2571:2564])
				begin
					dval233 <= (qn[2571:2564]-data[2571:2564])/sr;
					newdata[2571:2564] <= newdata[2571:2564]+dval233;
				end
				else
				begin
					dval233 <= (data[2571:2564]-qn[2571:2564])/sr;
					newdata[2571:2564] <= newdata[2571:2564]-dval233;
				end
				if(newdata[2582:2575] < qn[2582:2575])
				begin
					dval234 <= (qn[2582:2575]-data[2582:2575])/sr;
					newdata[2582:2575] <= newdata[2582:2575]+dval234;
				end
				else
				begin
					dval234 <= (data[2582:2575]-qn[2582:2575])/sr;
					newdata[2582:2575] <= newdata[2582:2575]-dval234;
				end
				if(newdata[2593:2586] < qn[2593:2586])
				begin
					dval235 <= (qn[2593:2586]-data[2593:2586])/sr;
					newdata[2593:2586] <= newdata[2593:2586]+dval235;
				end
				else
				begin
					dval235 <= (data[2593:2586]-qn[2593:2586])/sr;
					newdata[2593:2586] <= newdata[2593:2586]-dval235;
				end
				if(newdata[2604:2597] < qn[2604:2597])
				begin
					dval236 <= (qn[2604:2597]-data[2604:2597])/sr;
					newdata[2604:2597] <= newdata[2604:2597]+dval236;
				end
				else
				begin
					dval236 <= (data[2604:2597]-qn[2604:2597])/sr;
					newdata[2604:2597] <= newdata[2604:2597]-dval236;
				end
				if(newdata[2615:2608] < qn[2615:2608])
				begin
					dval237 <= (qn[2615:2608]-data[2615:2608])/sr;
					newdata[2615:2608] <= newdata[2615:2608]+dval237;
				end
				else
				begin
					dval237 <= (data[2615:2608]-qn[2615:2608])/sr;
					newdata[2615:2608] <= newdata[2615:2608]-dval237;
				end
				if(newdata[2626:2619] < qn[2626:2619])
				begin
					dval238 <= (qn[2626:2619]-data[2626:2619])/sr;
					newdata[2626:2619] <= newdata[2626:2619]+dval238;
				end
				else
				begin
					dval238 <= (data[2626:2619]-qn[2626:2619])/sr;
					newdata[2626:2619] <= newdata[2626:2619]-dval238;
				end
				if(newdata[2637:2630] < qn[2637:2630])
				begin
					dval239 <= (qn[2637:2630]-data[2637:2630])/sr;
					newdata[2637:2630] <= newdata[2637:2630]+dval239;
				end
				else
				begin
					dval239 <= (data[2637:2630]-qn[2637:2630])/sr;
					newdata[2637:2630] <= newdata[2637:2630]-dval239;
				end
				if(newdata[2648:2641] < qn[2648:2641])
				begin
					dval240 <= (qn[2648:2641]-data[2648:2641])/sr;
					newdata[2648:2641] <= newdata[2648:2641]+dval240;
				end
				else
				begin
					dval240 <= (data[2648:2641]-qn[2648:2641])/sr;
					newdata[2648:2641] <= newdata[2648:2641]-dval240;
				end
				if(newdata[2659:2652] < qn[2659:2652])
				begin
					dval241 <= (qn[2659:2652]-data[2659:2652])/sr;
					newdata[2659:2652] <= newdata[2659:2652]+dval241;
				end
				else
				begin
					dval241 <= (data[2659:2652]-qn[2659:2652])/sr;
					newdata[2659:2652] <= newdata[2659:2652]-dval241;
				end
				if(newdata[2670:2663] < qn[2670:2663])
				begin
					dval242 <= (qn[2670:2663]-data[2670:2663])/sr;
					newdata[2670:2663] <= newdata[2670:2663]+dval242;
				end
				else
				begin
					dval242 <= (data[2670:2663]-qn[2670:2663])/sr;
					newdata[2670:2663] <= newdata[2670:2663]-dval242;
				end
				if(newdata[2681:2674] < qn[2681:2674])
				begin
					dval243 <= (qn[2681:2674]-data[2681:2674])/sr;
					newdata[2681:2674] <= newdata[2681:2674]+dval243;
				end
				else
				begin
					dval243 <= (data[2681:2674]-qn[2681:2674])/sr;
					newdata[2681:2674] <= newdata[2681:2674]-dval243;
				end
				if(newdata[2692:2685] < qn[2692:2685])
				begin
					dval244 <= (qn[2692:2685]-data[2692:2685])/sr;
					newdata[2692:2685] <= newdata[2692:2685]+dval244;
				end
				else
				begin
					dval244 <= (data[2692:2685]-qn[2692:2685])/sr;
					newdata[2692:2685] <= newdata[2692:2685]-dval244;
				end
				if(newdata[2703:2696] < qn[2703:2696])
				begin
					dval245 <= (qn[2703:2696]-data[2703:2696])/sr;
					newdata[2703:2696] <= newdata[2703:2696]+dval245;
				end
				else
				begin
					dval245 <= (data[2703:2696]-qn[2703:2696])/sr;
					newdata[2703:2696] <= newdata[2703:2696]-dval245;
				end
				if(newdata[2714:2707] < qn[2714:2707])
				begin
					dval246 <= (qn[2714:2707]-data[2714:2707])/sr;
					newdata[2714:2707] <= newdata[2714:2707]+dval246;
				end
				else
				begin
					dval246 <= (data[2714:2707]-qn[2714:2707])/sr;
					newdata[2714:2707] <= newdata[2714:2707]-dval246;
				end
				if(newdata[2725:2718] < qn[2725:2718])
				begin
					dval247 <= (qn[2725:2718]-data[2725:2718])/sr;
					newdata[2725:2718] <= newdata[2725:2718]+dval247;
				end
				else
				begin
					dval247 <= (data[2725:2718]-qn[2725:2718])/sr;
					newdata[2725:2718] <= newdata[2725:2718]-dval247;
				end
				if(newdata[2736:2729] < qn[2736:2729])
				begin
					dval248 <= (qn[2736:2729]-data[2736:2729])/sr;
					newdata[2736:2729] <= newdata[2736:2729]+dval248;
				end
				else
				begin
					dval248 <= (data[2736:2729]-qn[2736:2729])/sr;
					newdata[2736:2729] <= newdata[2736:2729]-dval248;
				end
				if(newdata[2747:2740] < qn[2747:2740])
				begin
					dval249 <= (qn[2747:2740]-data[2747:2740])/sr;
					newdata[2747:2740] <= newdata[2747:2740]+dval249;
				end
				else
				begin
					dval249 <= (data[2747:2740]-qn[2747:2740])/sr;
					newdata[2747:2740] <= newdata[2747:2740]-dval249;
				end
				if(newdata[2758:2751] < qn[2758:2751])
				begin
					dval250 <= (qn[2758:2751]-data[2758:2751])/sr;
					newdata[2758:2751] <= newdata[2758:2751]+dval250;
				end
				else
				begin
					dval250 <= (data[2758:2751]-qn[2758:2751])/sr;
					newdata[2758:2751] <= newdata[2758:2751]-dval250;
				end
				if(newdata[2769:2762] < qn[2769:2762])
				begin
					dval251 <= (qn[2769:2762]-data[2769:2762])/sr;
					newdata[2769:2762] <= newdata[2769:2762]+dval251;
				end
				else
				begin
					dval251 <= (data[2769:2762]-qn[2769:2762])/sr;
					newdata[2769:2762] <= newdata[2769:2762]-dval251;
				end
				if(newdata[2780:2773] < qn[2780:2773])
				begin
					dval252 <= (qn[2780:2773]-data[2780:2773])/sr;
					newdata[2780:2773] <= newdata[2780:2773]+dval252;
				end
				else
				begin
					dval252 <= (data[2780:2773]-qn[2780:2773])/sr;
					newdata[2780:2773] <= newdata[2780:2773]-dval252;
				end
				if(newdata[2791:2784] < qn[2791:2784])
				begin
					dval253 <= (qn[2791:2784]-data[2791:2784])/sr;
					newdata[2791:2784] <= newdata[2791:2784]+dval253;
				end
				else
				begin
					dval253 <= (data[2791:2784]-qn[2791:2784])/sr;
					newdata[2791:2784] <= newdata[2791:2784]-dval253;
				end
				if(newdata[2802:2795] < qn[2802:2795])
				begin
					dval254 <= (qn[2802:2795]-data[2802:2795])/sr;
					newdata[2802:2795] <= newdata[2802:2795]+dval254;
				end
				else
				begin
					dval254 <= (data[2802:2795]-qn[2802:2795])/sr;
					newdata[2802:2795] <= newdata[2802:2795]-dval254;
				end
				if(newdata[2813:2806] < qn[2813:2806])
				begin
					dval255 <= (qn[2813:2806]-data[2813:2806])/sr;
					newdata[2813:2806] <= newdata[2813:2806]+dval255;
				end
				else
				begin
					dval255 <= (data[2813:2806]-qn[2813:2806])/sr;
					newdata[2813:2806] <= newdata[2813:2806]-dval255;
				end
				if(newdata[2824:2817] < qn[2824:2817])
				begin
					dval256 <= (qn[2824:2817]-data[2824:2817])/sr;
					newdata[2824:2817] <= newdata[2824:2817]+dval256;
				end
				else
				begin
					dval256 <= (data[2824:2817]-qn[2824:2817])/sr;
					newdata[2824:2817] <= newdata[2824:2817]-dval256;
				end
				if(newdata[2835:2828] < qn[2835:2828])
				begin
					dval257 <= (qn[2835:2828]-data[2835:2828])/sr;
					newdata[2835:2828] <= newdata[2835:2828]+dval257;
				end
				else
				begin
					dval257 <= (data[2835:2828]-qn[2835:2828])/sr;
					newdata[2835:2828] <= newdata[2835:2828]-dval257;
				end
				if(newdata[2846:2839] < qn[2846:2839])
				begin
					dval258 <= (qn[2846:2839]-data[2846:2839])/sr;
					newdata[2846:2839] <= newdata[2846:2839]+dval258;
				end
				else
				begin
					dval258 <= (data[2846:2839]-qn[2846:2839])/sr;
					newdata[2846:2839] <= newdata[2846:2839]-dval258;
				end
				if(newdata[2857:2850] < qn[2857:2850])
				begin
					dval259 <= (qn[2857:2850]-data[2857:2850])/sr;
					newdata[2857:2850] <= newdata[2857:2850]+dval259;
				end
				else
				begin
					dval259 <= (data[2857:2850]-qn[2857:2850])/sr;
					newdata[2857:2850] <= newdata[2857:2850]-dval259;
				end
				if(newdata[2868:2861] < qn[2868:2861])
				begin
					dval260 <= (qn[2868:2861]-data[2868:2861])/sr;
					newdata[2868:2861] <= newdata[2868:2861]+dval260;
				end
				else
				begin
					dval260 <= (data[2868:2861]-qn[2868:2861])/sr;
					newdata[2868:2861] <= newdata[2868:2861]-dval260;
				end
				if(newdata[2879:2872] < qn[2879:2872])
				begin
					dval261 <= (qn[2879:2872]-data[2879:2872])/sr;
					newdata[2879:2872] <= newdata[2879:2872]+dval261;
				end
				else
				begin
					dval261 <= (data[2879:2872]-qn[2879:2872])/sr;
					newdata[2879:2872] <= newdata[2879:2872]-dval261;
				end
				if(newdata[2890:2883] < qn[2890:2883])
				begin
					dval262 <= (qn[2890:2883]-data[2890:2883])/sr;
					newdata[2890:2883] <= newdata[2890:2883]+dval262;
				end
				else
				begin
					dval262 <= (data[2890:2883]-qn[2890:2883])/sr;
					newdata[2890:2883] <= newdata[2890:2883]-dval262;
				end
				if(newdata[2901:2894] < qn[2901:2894])
				begin
					dval263 <= (qn[2901:2894]-data[2901:2894])/sr;
					newdata[2901:2894] <= newdata[2901:2894]+dval263;
				end
				else
				begin
					dval263 <= (data[2901:2894]-qn[2901:2894])/sr;
					newdata[2901:2894] <= newdata[2901:2894]-dval263;
				end
				if(newdata[2912:2905] < qn[2912:2905])
				begin
					dval264 <= (qn[2912:2905]-data[2912:2905])/sr;
					newdata[2912:2905] <= newdata[2912:2905]+dval264;
				end
				else
				begin
					dval264 <= (data[2912:2905]-qn[2912:2905])/sr;
					newdata[2912:2905] <= newdata[2912:2905]-dval264;
				end
				if(newdata[2923:2916] < qn[2923:2916])
				begin
					dval265 <= (qn[2923:2916]-data[2923:2916])/sr;
					newdata[2923:2916] <= newdata[2923:2916]+dval265;
				end
				else
				begin
					dval265 <= (data[2923:2916]-qn[2923:2916])/sr;
					newdata[2923:2916] <= newdata[2923:2916]-dval265;
				end
				if(newdata[2934:2927] < qn[2934:2927])
				begin
					dval266 <= (qn[2934:2927]-data[2934:2927])/sr;
					newdata[2934:2927] <= newdata[2934:2927]+dval266;
				end
				else
				begin
					dval266 <= (data[2934:2927]-qn[2934:2927])/sr;
					newdata[2934:2927] <= newdata[2934:2927]-dval266;
				end
				if(newdata[2945:2938] < qn[2945:2938])
				begin
					dval267 <= (qn[2945:2938]-data[2945:2938])/sr;
					newdata[2945:2938] <= newdata[2945:2938]+dval267;
				end
				else
				begin
					dval267 <= (data[2945:2938]-qn[2945:2938])/sr;
					newdata[2945:2938] <= newdata[2945:2938]-dval267;
				end
				if(newdata[2956:2949] < qn[2956:2949])
				begin
					dval268 <= (qn[2956:2949]-data[2956:2949])/sr;
					newdata[2956:2949] <= newdata[2956:2949]+dval268;
				end
				else
				begin
					dval268 <= (data[2956:2949]-qn[2956:2949])/sr;
					newdata[2956:2949] <= newdata[2956:2949]-dval268;
				end
				if(newdata[2967:2960] < qn[2967:2960])
				begin
					dval269 <= (qn[2967:2960]-data[2967:2960])/sr;
					newdata[2967:2960] <= newdata[2967:2960]+dval269;
				end
				else
				begin
					dval269 <= (data[2967:2960]-qn[2967:2960])/sr;
					newdata[2967:2960] <= newdata[2967:2960]-dval269;
				end
				if(newdata[2978:2971] < qn[2978:2971])
				begin
					dval270 <= (qn[2978:2971]-data[2978:2971])/sr;
					newdata[2978:2971] <= newdata[2978:2971]+dval270;
				end
				else
				begin
					dval270 <= (data[2978:2971]-qn[2978:2971])/sr;
					newdata[2978:2971] <= newdata[2978:2971]-dval270;
				end
				if(newdata[2989:2982] < qn[2989:2982])
				begin
					dval271 <= (qn[2989:2982]-data[2989:2982])/sr;
					newdata[2989:2982] <= newdata[2989:2982]+dval271;
				end
				else
				begin
					dval271 <= (data[2989:2982]-qn[2989:2982])/sr;
					newdata[2989:2982] <= newdata[2989:2982]-dval271;
				end
				if(newdata[3000:2993] < qn[3000:2993])
				begin
					dval272 <= (qn[3000:2993]-data[3000:2993])/sr;
					newdata[3000:2993] <= newdata[3000:2993]+dval272;
				end
				else
				begin
					dval272 <= (data[3000:2993]-qn[3000:2993])/sr;
					newdata[3000:2993] <= newdata[3000:2993]-dval272;
				end
				if(newdata[3011:3004] < qn[3011:3004])
				begin
					dval273 <= (qn[3011:3004]-data[3011:3004])/sr;
					newdata[3011:3004] <= newdata[3011:3004]+dval273;
				end
				else
				begin
					dval273 <= (data[3011:3004]-qn[3011:3004])/sr;
					newdata[3011:3004] <= newdata[3011:3004]-dval273;
				end
				if(newdata[3022:3015] < qn[3022:3015])
				begin
					dval274 <= (qn[3022:3015]-data[3022:3015])/sr;
					newdata[3022:3015] <= newdata[3022:3015]+dval274;
				end
				else
				begin
					dval274 <= (data[3022:3015]-qn[3022:3015])/sr;
					newdata[3022:3015] <= newdata[3022:3015]-dval274;
				end
				if(newdata[3033:3026] < qn[3033:3026])
				begin
					dval275 <= (qn[3033:3026]-data[3033:3026])/sr;
					newdata[3033:3026] <= newdata[3033:3026]+dval275;
				end
				else
				begin
					dval275 <= (data[3033:3026]-qn[3033:3026])/sr;
					newdata[3033:3026] <= newdata[3033:3026]-dval275;
				end
				if(newdata[3044:3037] < qn[3044:3037])
				begin
					dval276 <= (qn[3044:3037]-data[3044:3037])/sr;
					newdata[3044:3037] <= newdata[3044:3037]+dval276;
				end
				else
				begin
					dval276 <= (data[3044:3037]-qn[3044:3037])/sr;
					newdata[3044:3037] <= newdata[3044:3037]-dval276;
				end
				if(newdata[3055:3048] < qn[3055:3048])
				begin
					dval277 <= (qn[3055:3048]-data[3055:3048])/sr;
					newdata[3055:3048] <= newdata[3055:3048]+dval277;
				end
				else
				begin
					dval277 <= (data[3055:3048]-qn[3055:3048])/sr;
					newdata[3055:3048] <= newdata[3055:3048]-dval277;
				end
				if(newdata[3066:3059] < qn[3066:3059])
				begin
					dval278 <= (qn[3066:3059]-data[3066:3059])/sr;
					newdata[3066:3059] <= newdata[3066:3059]+dval278;
				end
				else
				begin
					dval278 <= (data[3066:3059]-qn[3066:3059])/sr;
					newdata[3066:3059] <= newdata[3066:3059]-dval278;
				end
				if(newdata[3077:3070] < qn[3077:3070])
				begin
					dval279 <= (qn[3077:3070]-data[3077:3070])/sr;
					newdata[3077:3070] <= newdata[3077:3070]+dval279;
				end
				else
				begin
					dval279 <= (data[3077:3070]-qn[3077:3070])/sr;
					newdata[3077:3070] <= newdata[3077:3070]-dval279;
				end
				if(newdata[3088:3081] < qn[3088:3081])
				begin
					dval280 <= (qn[3088:3081]-data[3088:3081])/sr;
					newdata[3088:3081] <= newdata[3088:3081]+dval280;
				end
				else
				begin
					dval280 <= (data[3088:3081]-qn[3088:3081])/sr;
					newdata[3088:3081] <= newdata[3088:3081]-dval280;
				end
				if(newdata[3099:3092] < qn[3099:3092])
				begin
					dval281 <= (qn[3099:3092]-data[3099:3092])/sr;
					newdata[3099:3092] <= newdata[3099:3092]+dval281;
				end
				else
				begin
					dval281 <= (data[3099:3092]-qn[3099:3092])/sr;
					newdata[3099:3092] <= newdata[3099:3092]-dval281;
				end
				if(newdata[3110:3103] < qn[3110:3103])
				begin
					dval282 <= (qn[3110:3103]-data[3110:3103])/sr;
					newdata[3110:3103] <= newdata[3110:3103]+dval282;
				end
				else
				begin
					dval282 <= (data[3110:3103]-qn[3110:3103])/sr;
					newdata[3110:3103] <= newdata[3110:3103]-dval282;
				end
				if(newdata[3121:3114] < qn[3121:3114])
				begin
					dval283 <= (qn[3121:3114]-data[3121:3114])/sr;
					newdata[3121:3114] <= newdata[3121:3114]+dval283;
				end
				else
				begin
					dval283 <= (data[3121:3114]-qn[3121:3114])/sr;
					newdata[3121:3114] <= newdata[3121:3114]-dval283;
				end
				if(newdata[3132:3125] < qn[3132:3125])
				begin
					dval284 <= (qn[3132:3125]-data[3132:3125])/sr;
					newdata[3132:3125] <= newdata[3132:3125]+dval284;
				end
				else
				begin
					dval284 <= (data[3132:3125]-qn[3132:3125])/sr;
					newdata[3132:3125] <= newdata[3132:3125]-dval284;
				end
				if(newdata[3143:3136] < qn[3143:3136])
				begin
					dval285 <= (qn[3143:3136]-data[3143:3136])/sr;
					newdata[3143:3136] <= newdata[3143:3136]+dval285;
				end
				else
				begin
					dval285 <= (data[3143:3136]-qn[3143:3136])/sr;
					newdata[3143:3136] <= newdata[3143:3136]-dval285;
				end
				if(newdata[3154:3147] < qn[3154:3147])
				begin
					dval286 <= (qn[3154:3147]-data[3154:3147])/sr;
					newdata[3154:3147] <= newdata[3154:3147]+dval286;
				end
				else
				begin
					dval286 <= (data[3154:3147]-qn[3154:3147])/sr;
					newdata[3154:3147] <= newdata[3154:3147]-dval286;
				end
				if(newdata[3165:3158] < qn[3165:3158])
				begin
					dval287 <= (qn[3165:3158]-data[3165:3158])/sr;
					newdata[3165:3158] <= newdata[3165:3158]+dval287;
				end
				else
				begin
					dval287 <= (data[3165:3158]-qn[3165:3158])/sr;
					newdata[3165:3158] <= newdata[3165:3158]-dval287;
				end
				if(newdata[3176:3169] < qn[3176:3169])
				begin
					dval288 <= (qn[3176:3169]-data[3176:3169])/sr;
					newdata[3176:3169] <= newdata[3176:3169]+dval288;
				end
				else
				begin
					dval288 <= (data[3176:3169]-qn[3176:3169])/sr;
					newdata[3176:3169] <= newdata[3176:3169]-dval288;
				end
				if(newdata[3187:3180] < qn[3187:3180])
				begin
					dval289 <= (qn[3187:3180]-data[3187:3180])/sr;
					newdata[3187:3180] <= newdata[3187:3180]+dval289;
				end
				else
				begin
					dval289 <= (data[3187:3180]-qn[3187:3180])/sr;
					newdata[3187:3180] <= newdata[3187:3180]-dval289;
				end
				if(newdata[3198:3191] < qn[3198:3191])
				begin
					dval290 <= (qn[3198:3191]-data[3198:3191])/sr;
					newdata[3198:3191] <= newdata[3198:3191]+dval290;
				end
				else
				begin
					dval290 <= (data[3198:3191]-qn[3198:3191])/sr;
					newdata[3198:3191] <= newdata[3198:3191]-dval290;
				end
				if(newdata[3209:3202] < qn[3209:3202])
				begin
					dval291 <= (qn[3209:3202]-data[3209:3202])/sr;
					newdata[3209:3202] <= newdata[3209:3202]+dval291;
				end
				else
				begin
					dval291 <= (data[3209:3202]-qn[3209:3202])/sr;
					newdata[3209:3202] <= newdata[3209:3202]-dval291;
				end
				if(newdata[3220:3213] < qn[3220:3213])
				begin
					dval292 <= (qn[3220:3213]-data[3220:3213])/sr;
					newdata[3220:3213] <= newdata[3220:3213]+dval292;
				end
				else
				begin
					dval292 <= (data[3220:3213]-qn[3220:3213])/sr;
					newdata[3220:3213] <= newdata[3220:3213]-dval292;
				end
				if(newdata[3231:3224] < qn[3231:3224])
				begin
					dval293 <= (qn[3231:3224]-data[3231:3224])/sr;
					newdata[3231:3224] <= newdata[3231:3224]+dval293;
				end
				else
				begin
					dval293 <= (data[3231:3224]-qn[3231:3224])/sr;
					newdata[3231:3224] <= newdata[3231:3224]-dval293;
				end
				if(newdata[3242:3235] < qn[3242:3235])
				begin
					dval294 <= (qn[3242:3235]-data[3242:3235])/sr;
					newdata[3242:3235] <= newdata[3242:3235]+dval294;
				end
				else
				begin
					dval294 <= (data[3242:3235]-qn[3242:3235])/sr;
					newdata[3242:3235] <= newdata[3242:3235]-dval294;
				end
				if(newdata[3253:3246] < qn[3253:3246])
				begin
					dval295 <= (qn[3253:3246]-data[3253:3246])/sr;
					newdata[3253:3246] <= newdata[3253:3246]+dval295;
				end
				else
				begin
					dval295 <= (data[3253:3246]-qn[3253:3246])/sr;
					newdata[3253:3246] <= newdata[3253:3246]-dval295;
				end
				if(newdata[3264:3257] < qn[3264:3257])
				begin
					dval296 <= (qn[3264:3257]-data[3264:3257])/sr;
					newdata[3264:3257] <= newdata[3264:3257]+dval296;
				end
				else
				begin
					dval296 <= (data[3264:3257]-qn[3264:3257])/sr;
					newdata[3264:3257] <= newdata[3264:3257]-dval296;
				end
				if(newdata[3275:3268] < qn[3275:3268])
				begin
					dval297 <= (qn[3275:3268]-data[3275:3268])/sr;
					newdata[3275:3268] <= newdata[3275:3268]+dval297;
				end
				else
				begin
					dval297 <= (data[3275:3268]-qn[3275:3268])/sr;
					newdata[3275:3268] <= newdata[3275:3268]-dval297;
				end
				if(newdata[3286:3279] < qn[3286:3279])
				begin
					dval298 <= (qn[3286:3279]-data[3286:3279])/sr;
					newdata[3286:3279] <= newdata[3286:3279]+dval298;
				end
				else
				begin
					dval298 <= (data[3286:3279]-qn[3286:3279])/sr;
					newdata[3286:3279] <= newdata[3286:3279]-dval298;
				end
				if(newdata[3297:3290] < qn[3297:3290])
				begin
					dval299 <= (qn[3297:3290]-data[3297:3290])/sr;
					newdata[3297:3290] <= newdata[3297:3290]+dval299;
				end
				else
				begin
					dval299 <= (data[3297:3290]-qn[3297:3290])/sr;
					newdata[3297:3290] <= newdata[3297:3290]-dval299;
				end
				if(newdata[3308:3301] < qn[3308:3301])
				begin
					dval300 <= (qn[3308:3301]-data[3308:3301])/sr;
					newdata[3308:3301] <= newdata[3308:3301]+dval300;
				end
				else
				begin
					dval300 <= (data[3308:3301]-qn[3308:3301])/sr;
					newdata[3308:3301] <= newdata[3308:3301]-dval300;
				end
				if(newdata[3319:3312] < qn[3319:3312])
				begin
					dval301 <= (qn[3319:3312]-data[3319:3312])/sr;
					newdata[3319:3312] <= newdata[3319:3312]+dval301;
				end
				else
				begin
					dval301 <= (data[3319:3312]-qn[3319:3312])/sr;
					newdata[3319:3312] <= newdata[3319:3312]-dval301;
				end
				if(newdata[3330:3323] < qn[3330:3323])
				begin
					dval302 <= (qn[3330:3323]-data[3330:3323])/sr;
					newdata[3330:3323] <= newdata[3330:3323]+dval302;
				end
				else
				begin
					dval302 <= (data[3330:3323]-qn[3330:3323])/sr;
					newdata[3330:3323] <= newdata[3330:3323]-dval302;
				end
				if(newdata[3341:3334] < qn[3341:3334])
				begin
					dval303 <= (qn[3341:3334]-data[3341:3334])/sr;
					newdata[3341:3334] <= newdata[3341:3334]+dval303;
				end
				else
				begin
					dval303 <= (data[3341:3334]-qn[3341:3334])/sr;
					newdata[3341:3334] <= newdata[3341:3334]-dval303;
				end
				if(newdata[3352:3345] < qn[3352:3345])
				begin
					dval304 <= (qn[3352:3345]-data[3352:3345])/sr;
					newdata[3352:3345] <= newdata[3352:3345]+dval304;
				end
				else
				begin
					dval304 <= (data[3352:3345]-qn[3352:3345])/sr;
					newdata[3352:3345] <= newdata[3352:3345]-dval304;
				end
				if(newdata[3363:3356] < qn[3363:3356])
				begin
					dval305 <= (qn[3363:3356]-data[3363:3356])/sr;
					newdata[3363:3356] <= newdata[3363:3356]+dval305;
				end
				else
				begin
					dval305 <= (data[3363:3356]-qn[3363:3356])/sr;
					newdata[3363:3356] <= newdata[3363:3356]-dval305;
				end
				if(newdata[3374:3367] < qn[3374:3367])
				begin
					dval306 <= (qn[3374:3367]-data[3374:3367])/sr;
					newdata[3374:3367] <= newdata[3374:3367]+dval306;
				end
				else
				begin
					dval306 <= (data[3374:3367]-qn[3374:3367])/sr;
					newdata[3374:3367] <= newdata[3374:3367]-dval306;
				end
				if(newdata[3385:3378] < qn[3385:3378])
				begin
					dval307 <= (qn[3385:3378]-data[3385:3378])/sr;
					newdata[3385:3378] <= newdata[3385:3378]+dval307;
				end
				else
				begin
					dval307 <= (data[3385:3378]-qn[3385:3378])/sr;
					newdata[3385:3378] <= newdata[3385:3378]-dval307;
				end
				if(newdata[3396:3389] < qn[3396:3389])
				begin
					dval308 <= (qn[3396:3389]-data[3396:3389])/sr;
					newdata[3396:3389] <= newdata[3396:3389]+dval308;
				end
				else
				begin
					dval308 <= (data[3396:3389]-qn[3396:3389])/sr;
					newdata[3396:3389] <= newdata[3396:3389]-dval308;
				end
				if(newdata[3407:3400] < qn[3407:3400])
				begin
					dval309 <= (qn[3407:3400]-data[3407:3400])/sr;
					newdata[3407:3400] <= newdata[3407:3400]+dval309;
				end
				else
				begin
					dval309 <= (data[3407:3400]-qn[3407:3400])/sr;
					newdata[3407:3400] <= newdata[3407:3400]-dval309;
				end
				if(newdata[3418:3411] < qn[3418:3411])
				begin
					dval310 <= (qn[3418:3411]-data[3418:3411])/sr;
					newdata[3418:3411] <= newdata[3418:3411]+dval310;
				end
				else
				begin
					dval310 <= (data[3418:3411]-qn[3418:3411])/sr;
					newdata[3418:3411] <= newdata[3418:3411]-dval310;
				end
				if(newdata[3429:3422] < qn[3429:3422])
				begin
					dval311 <= (qn[3429:3422]-data[3429:3422])/sr;
					newdata[3429:3422] <= newdata[3429:3422]+dval311;
				end
				else
				begin
					dval311 <= (data[3429:3422]-qn[3429:3422])/sr;
					newdata[3429:3422] <= newdata[3429:3422]-dval311;
				end
				if(newdata[3440:3433] < qn[3440:3433])
				begin
					dval312 <= (qn[3440:3433]-data[3440:3433])/sr;
					newdata[3440:3433] <= newdata[3440:3433]+dval312;
				end
				else
				begin
					dval312 <= (data[3440:3433]-qn[3440:3433])/sr;
					newdata[3440:3433] <= newdata[3440:3433]-dval312;
				end
				if(newdata[3451:3444] < qn[3451:3444])
				begin
					dval313 <= (qn[3451:3444]-data[3451:3444])/sr;
					newdata[3451:3444] <= newdata[3451:3444]+dval313;
				end
				else
				begin
					dval313 <= (data[3451:3444]-qn[3451:3444])/sr;
					newdata[3451:3444] <= newdata[3451:3444]-dval313;
				end
				if(newdata[3462:3455] < qn[3462:3455])
				begin
					dval314 <= (qn[3462:3455]-data[3462:3455])/sr;
					newdata[3462:3455] <= newdata[3462:3455]+dval314;
				end
				else
				begin
					dval314 <= (data[3462:3455]-qn[3462:3455])/sr;
					newdata[3462:3455] <= newdata[3462:3455]-dval314;
				end
				if(newdata[3473:3466] < qn[3473:3466])
				begin
					dval315 <= (qn[3473:3466]-data[3473:3466])/sr;
					newdata[3473:3466] <= newdata[3473:3466]+dval315;
				end
				else
				begin
					dval315 <= (data[3473:3466]-qn[3473:3466])/sr;
					newdata[3473:3466] <= newdata[3473:3466]-dval315;
				end
				if(newdata[3484:3477] < qn[3484:3477])
				begin
					dval316 <= (qn[3484:3477]-data[3484:3477])/sr;
					newdata[3484:3477] <= newdata[3484:3477]+dval316;
				end
				else
				begin
					dval316 <= (data[3484:3477]-qn[3484:3477])/sr;
					newdata[3484:3477] <= newdata[3484:3477]-dval316;
				end
				if(newdata[3495:3488] < qn[3495:3488])
				begin
					dval317 <= (qn[3495:3488]-data[3495:3488])/sr;
					newdata[3495:3488] <= newdata[3495:3488]+dval317;
				end
				else
				begin
					dval317 <= (data[3495:3488]-qn[3495:3488])/sr;
					newdata[3495:3488] <= newdata[3495:3488]-dval317;
				end
				if(newdata[3506:3499] < qn[3506:3499])
				begin
					dval318 <= (qn[3506:3499]-data[3506:3499])/sr;
					newdata[3506:3499] <= newdata[3506:3499]+dval318;
				end
				else
				begin
					dval318 <= (data[3506:3499]-qn[3506:3499])/sr;
					newdata[3506:3499] <= newdata[3506:3499]-dval318;
				end
				if(newdata[3517:3510] < qn[3517:3510])
				begin
					dval319 <= (qn[3517:3510]-data[3517:3510])/sr;
					newdata[3517:3510] <= newdata[3517:3510]+dval319;
				end
				else
				begin
					dval319 <= (data[3517:3510]-qn[3517:3510])/sr;
					newdata[3517:3510] <= newdata[3517:3510]-dval319;
				end
				if(newdata[3528:3521] < qn[3528:3521])
				begin
					dval320 <= (qn[3528:3521]-data[3528:3521])/sr;
					newdata[3528:3521] <= newdata[3528:3521]+dval320;
				end
				else
				begin
					dval320 <= (data[3528:3521]-qn[3528:3521])/sr;
					newdata[3528:3521] <= newdata[3528:3521]-dval320;
				end
				if(newdata[3539:3532] < qn[3539:3532])
				begin
					dval321 <= (qn[3539:3532]-data[3539:3532])/sr;
					newdata[3539:3532] <= newdata[3539:3532]+dval321;
				end
				else
				begin
					dval321 <= (data[3539:3532]-qn[3539:3532])/sr;
					newdata[3539:3532] <= newdata[3539:3532]-dval321;
				end
				if(newdata[3550:3543] < qn[3550:3543])
				begin
					dval322 <= (qn[3550:3543]-data[3550:3543])/sr;
					newdata[3550:3543] <= newdata[3550:3543]+dval322;
				end
				else
				begin
					dval322 <= (data[3550:3543]-qn[3550:3543])/sr;
					newdata[3550:3543] <= newdata[3550:3543]-dval322;
				end
				if(newdata[3561:3554] < qn[3561:3554])
				begin
					dval323 <= (qn[3561:3554]-data[3561:3554])/sr;
					newdata[3561:3554] <= newdata[3561:3554]+dval323;
				end
				else
				begin
					dval323 <= (data[3561:3554]-qn[3561:3554])/sr;
					newdata[3561:3554] <= newdata[3561:3554]-dval323;
				end
				if(newdata[3572:3565] < qn[3572:3565])
				begin
					dval324 <= (qn[3572:3565]-data[3572:3565])/sr;
					newdata[3572:3565] <= newdata[3572:3565]+dval324;
				end
				else
				begin
					dval324 <= (data[3572:3565]-qn[3572:3565])/sr;
					newdata[3572:3565] <= newdata[3572:3565]-dval324;
				end
				if(newdata[3583:3576] < qn[3583:3576])
				begin
					dval325 <= (qn[3583:3576]-data[3583:3576])/sr;
					newdata[3583:3576] <= newdata[3583:3576]+dval325;
				end
				else
				begin
					dval325 <= (data[3583:3576]-qn[3583:3576])/sr;
					newdata[3583:3576] <= newdata[3583:3576]-dval325;
				end
				if(newdata[3594:3587] < qn[3594:3587])
				begin
					dval326 <= (qn[3594:3587]-data[3594:3587])/sr;
					newdata[3594:3587] <= newdata[3594:3587]+dval326;
				end
				else
				begin
					dval326 <= (data[3594:3587]-qn[3594:3587])/sr;
					newdata[3594:3587] <= newdata[3594:3587]-dval326;
				end
				if(newdata[3605:3598] < qn[3605:3598])
				begin
					dval327 <= (qn[3605:3598]-data[3605:3598])/sr;
					newdata[3605:3598] <= newdata[3605:3598]+dval327;
				end
				else
				begin
					dval327 <= (data[3605:3598]-qn[3605:3598])/sr;
					newdata[3605:3598] <= newdata[3605:3598]-dval327;
				end
				if(newdata[3616:3609] < qn[3616:3609])
				begin
					dval328 <= (qn[3616:3609]-data[3616:3609])/sr;
					newdata[3616:3609] <= newdata[3616:3609]+dval328;
				end
				else
				begin
					dval328 <= (data[3616:3609]-qn[3616:3609])/sr;
					newdata[3616:3609] <= newdata[3616:3609]-dval328;
				end
				if(newdata[3627:3620] < qn[3627:3620])
				begin
					dval329 <= (qn[3627:3620]-data[3627:3620])/sr;
					newdata[3627:3620] <= newdata[3627:3620]+dval329;
				end
				else
				begin
					dval329 <= (data[3627:3620]-qn[3627:3620])/sr;
					newdata[3627:3620] <= newdata[3627:3620]-dval329;
				end
				if(newdata[3638:3631] < qn[3638:3631])
				begin
					dval330 <= (qn[3638:3631]-data[3638:3631])/sr;
					newdata[3638:3631] <= newdata[3638:3631]+dval330;
				end
				else
				begin
					dval330 <= (data[3638:3631]-qn[3638:3631])/sr;
					newdata[3638:3631] <= newdata[3638:3631]-dval330;
				end
				if(newdata[3649:3642] < qn[3649:3642])
				begin
					dval331 <= (qn[3649:3642]-data[3649:3642])/sr;
					newdata[3649:3642] <= newdata[3649:3642]+dval331;
				end
				else
				begin
					dval331 <= (data[3649:3642]-qn[3649:3642])/sr;
					newdata[3649:3642] <= newdata[3649:3642]-dval331;
				end
				if(newdata[3660:3653] < qn[3660:3653])
				begin
					dval332 <= (qn[3660:3653]-data[3660:3653])/sr;
					newdata[3660:3653] <= newdata[3660:3653]+dval332;
				end
				else
				begin
					dval332 <= (data[3660:3653]-qn[3660:3653])/sr;
					newdata[3660:3653] <= newdata[3660:3653]-dval332;
				end
				if(newdata[3671:3664] < qn[3671:3664])
				begin
					dval333 <= (qn[3671:3664]-data[3671:3664])/sr;
					newdata[3671:3664] <= newdata[3671:3664]+dval333;
				end
				else
				begin
					dval333 <= (data[3671:3664]-qn[3671:3664])/sr;
					newdata[3671:3664] <= newdata[3671:3664]-dval333;
				end
				if(newdata[3682:3675] < qn[3682:3675])
				begin
					dval334 <= (qn[3682:3675]-data[3682:3675])/sr;
					newdata[3682:3675] <= newdata[3682:3675]+dval334;
				end
				else
				begin
					dval334 <= (data[3682:3675]-qn[3682:3675])/sr;
					newdata[3682:3675] <= newdata[3682:3675]-dval334;
				end
				if(newdata[3693:3686] < qn[3693:3686])
				begin
					dval335 <= (qn[3693:3686]-data[3693:3686])/sr;
					newdata[3693:3686] <= newdata[3693:3686]+dval335;
				end
				else
				begin
					dval335 <= (data[3693:3686]-qn[3693:3686])/sr;
					newdata[3693:3686] <= newdata[3693:3686]-dval335;
				end
				if(newdata[3704:3697] < qn[3704:3697])
				begin
					dval336 <= (qn[3704:3697]-data[3704:3697])/sr;
					newdata[3704:3697] <= newdata[3704:3697]+dval336;
				end
				else
				begin
					dval336 <= (data[3704:3697]-qn[3704:3697])/sr;
					newdata[3704:3697] <= newdata[3704:3697]-dval336;
				end
				if(newdata[3715:3708] < qn[3715:3708])
				begin
					dval337 <= (qn[3715:3708]-data[3715:3708])/sr;
					newdata[3715:3708] <= newdata[3715:3708]+dval337;
				end
				else
				begin
					dval337 <= (data[3715:3708]-qn[3715:3708])/sr;
					newdata[3715:3708] <= newdata[3715:3708]-dval337;
				end
				if(newdata[3726:3719] < qn[3726:3719])
				begin
					dval338 <= (qn[3726:3719]-data[3726:3719])/sr;
					newdata[3726:3719] <= newdata[3726:3719]+dval338;
				end
				else
				begin
					dval338 <= (data[3726:3719]-qn[3726:3719])/sr;
					newdata[3726:3719] <= newdata[3726:3719]-dval338;
				end
				if(newdata[3737:3730] < qn[3737:3730])
				begin
					dval339 <= (qn[3737:3730]-data[3737:3730])/sr;
					newdata[3737:3730] <= newdata[3737:3730]+dval339;
				end
				else
				begin
					dval339 <= (data[3737:3730]-qn[3737:3730])/sr;
					newdata[3737:3730] <= newdata[3737:3730]-dval339;
				end
				if(newdata[3748:3741] < qn[3748:3741])
				begin
					dval340 <= (qn[3748:3741]-data[3748:3741])/sr;
					newdata[3748:3741] <= newdata[3748:3741]+dval340;
				end
				else
				begin
					dval340 <= (data[3748:3741]-qn[3748:3741])/sr;
					newdata[3748:3741] <= newdata[3748:3741]-dval340;
				end
				if(newdata[3759:3752] < qn[3759:3752])
				begin
					dval341 <= (qn[3759:3752]-data[3759:3752])/sr;
					newdata[3759:3752] <= newdata[3759:3752]+dval341;
				end
				else
				begin
					dval341 <= (data[3759:3752]-qn[3759:3752])/sr;
					newdata[3759:3752] <= newdata[3759:3752]-dval341;
				end
				if(newdata[3770:3763] < qn[3770:3763])
				begin
					dval342 <= (qn[3770:3763]-data[3770:3763])/sr;
					newdata[3770:3763] <= newdata[3770:3763]+dval342;
				end
				else
				begin
					dval342 <= (data[3770:3763]-qn[3770:3763])/sr;
					newdata[3770:3763] <= newdata[3770:3763]-dval342;
				end
				if(newdata[3781:3774] < qn[3781:3774])
				begin
					dval343 <= (qn[3781:3774]-data[3781:3774])/sr;
					newdata[3781:3774] <= newdata[3781:3774]+dval343;
				end
				else
				begin
					dval343 <= (data[3781:3774]-qn[3781:3774])/sr;
					newdata[3781:3774] <= newdata[3781:3774]-dval343;
				end
				if(newdata[3792:3785] < qn[3792:3785])
				begin
					dval344 <= (qn[3792:3785]-data[3792:3785])/sr;
					newdata[3792:3785] <= newdata[3792:3785]+dval344;
				end
				else
				begin
					dval344 <= (data[3792:3785]-qn[3792:3785])/sr;
					newdata[3792:3785] <= newdata[3792:3785]-dval344;
				end
				if(newdata[3803:3796] < qn[3803:3796])
				begin
					dval345 <= (qn[3803:3796]-data[3803:3796])/sr;
					newdata[3803:3796] <= newdata[3803:3796]+dval345;
				end
				else
				begin
					dval345 <= (data[3803:3796]-qn[3803:3796])/sr;
					newdata[3803:3796] <= newdata[3803:3796]-dval345;
				end
				if(newdata[3814:3807] < qn[3814:3807])
				begin
					dval346 <= (qn[3814:3807]-data[3814:3807])/sr;
					newdata[3814:3807] <= newdata[3814:3807]+dval346;
				end
				else
				begin
					dval346 <= (data[3814:3807]-qn[3814:3807])/sr;
					newdata[3814:3807] <= newdata[3814:3807]-dval346;
				end
				if(newdata[3825:3818] < qn[3825:3818])
				begin
					dval347 <= (qn[3825:3818]-data[3825:3818])/sr;
					newdata[3825:3818] <= newdata[3825:3818]+dval347;
				end
				else
				begin
					dval347 <= (data[3825:3818]-qn[3825:3818])/sr;
					newdata[3825:3818] <= newdata[3825:3818]-dval347;
				end
				if(newdata[3836:3829] < qn[3836:3829])
				begin
					dval348 <= (qn[3836:3829]-data[3836:3829])/sr;
					newdata[3836:3829] <= newdata[3836:3829]+dval348;
				end
				else
				begin
					dval348 <= (data[3836:3829]-qn[3836:3829])/sr;
					newdata[3836:3829] <= newdata[3836:3829]-dval348;
				end
				if(newdata[3847:3840] < qn[3847:3840])
				begin
					dval349 <= (qn[3847:3840]-data[3847:3840])/sr;
					newdata[3847:3840] <= newdata[3847:3840]+dval349;
				end
				else
				begin
					dval349 <= (data[3847:3840]-qn[3847:3840])/sr;
					newdata[3847:3840] <= newdata[3847:3840]-dval349;
				end
				if(newdata[3858:3851] < qn[3858:3851])
				begin
					dval350 <= (qn[3858:3851]-data[3858:3851])/sr;
					newdata[3858:3851] <= newdata[3858:3851]+dval350;
				end
				else
				begin
					dval350 <= (data[3858:3851]-qn[3858:3851])/sr;
					newdata[3858:3851] <= newdata[3858:3851]-dval350;
				end
				if(newdata[3869:3862] < qn[3869:3862])
				begin
					dval351 <= (qn[3869:3862]-data[3869:3862])/sr;
					newdata[3869:3862] <= newdata[3869:3862]+dval351;
				end
				else
				begin
					dval351 <= (data[3869:3862]-qn[3869:3862])/sr;
					newdata[3869:3862] <= newdata[3869:3862]-dval351;
				end
				if(newdata[3880:3873] < qn[3880:3873])
				begin
					dval352 <= (qn[3880:3873]-data[3880:3873])/sr;
					newdata[3880:3873] <= newdata[3880:3873]+dval352;
				end
				else
				begin
					dval352 <= (data[3880:3873]-qn[3880:3873])/sr;
					newdata[3880:3873] <= newdata[3880:3873]-dval352;
				end
				if(newdata[3891:3884] < qn[3891:3884])
				begin
					dval353 <= (qn[3891:3884]-data[3891:3884])/sr;
					newdata[3891:3884] <= newdata[3891:3884]+dval353;
				end
				else
				begin
					dval353 <= (data[3891:3884]-qn[3891:3884])/sr;
					newdata[3891:3884] <= newdata[3891:3884]-dval353;
				end
				if(newdata[3902:3895] < qn[3902:3895])
				begin
					dval354 <= (qn[3902:3895]-data[3902:3895])/sr;
					newdata[3902:3895] <= newdata[3902:3895]+dval354;
				end
				else
				begin
					dval354 <= (data[3902:3895]-qn[3902:3895])/sr;
					newdata[3902:3895] <= newdata[3902:3895]-dval354;
				end
				if(newdata[3913:3906] < qn[3913:3906])
				begin
					dval355 <= (qn[3913:3906]-data[3913:3906])/sr;
					newdata[3913:3906] <= newdata[3913:3906]+dval355;
				end
				else
				begin
					dval355 <= (data[3913:3906]-qn[3913:3906])/sr;
					newdata[3913:3906] <= newdata[3913:3906]-dval355;
				end
				if(newdata[3924:3917] < qn[3924:3917])
				begin
					dval356 <= (qn[3924:3917]-data[3924:3917])/sr;
					newdata[3924:3917] <= newdata[3924:3917]+dval356;
				end
				else
				begin
					dval356 <= (data[3924:3917]-qn[3924:3917])/sr;
					newdata[3924:3917] <= newdata[3924:3917]-dval356;
				end
				if(newdata[3935:3928] < qn[3935:3928])
				begin
					dval357 <= (qn[3935:3928]-data[3935:3928])/sr;
					newdata[3935:3928] <= newdata[3935:3928]+dval357;
				end
				else
				begin
					dval357 <= (data[3935:3928]-qn[3935:3928])/sr;
					newdata[3935:3928] <= newdata[3935:3928]-dval357;
				end
				if(newdata[3946:3939] < qn[3946:3939])
				begin
					dval358 <= (qn[3946:3939]-data[3946:3939])/sr;
					newdata[3946:3939] <= newdata[3946:3939]+dval358;
				end
				else
				begin
					dval358 <= (data[3946:3939]-qn[3946:3939])/sr;
					newdata[3946:3939] <= newdata[3946:3939]-dval358;
				end
				if(newdata[3957:3950] < qn[3957:3950])
				begin
					dval359 <= (qn[3957:3950]-data[3957:3950])/sr;
					newdata[3957:3950] <= newdata[3957:3950]+dval359;
				end
				else
				begin
					dval359 <= (data[3957:3950]-qn[3957:3950])/sr;
					newdata[3957:3950] <= newdata[3957:3950]-dval359;
				end
				if(newdata[3968:3961] < qn[3968:3961])
				begin
					dval360 <= (qn[3968:3961]-data[3968:3961])/sr;
					newdata[3968:3961] <= newdata[3968:3961]+dval360;
				end
				else
				begin
					dval360 <= (data[3968:3961]-qn[3968:3961])/sr;
					newdata[3968:3961] <= newdata[3968:3961]-dval360;
				end
				if(newdata[3979:3972] < qn[3979:3972])
				begin
					dval361 <= (qn[3979:3972]-data[3979:3972])/sr;
					newdata[3979:3972] <= newdata[3979:3972]+dval361;
				end
				else
				begin
					dval361 <= (data[3979:3972]-qn[3979:3972])/sr;
					newdata[3979:3972] <= newdata[3979:3972]-dval361;
				end
				if(newdata[3990:3983] < qn[3990:3983])
				begin
					dval362 <= (qn[3990:3983]-data[3990:3983])/sr;
					newdata[3990:3983] <= newdata[3990:3983]+dval362;
				end
				else
				begin
					dval362 <= (data[3990:3983]-qn[3990:3983])/sr;
					newdata[3990:3983] <= newdata[3990:3983]-dval362;
				end
				if(newdata[4001:3994] < qn[4001:3994])
				begin
					dval363 <= (qn[4001:3994]-data[4001:3994])/sr;
					newdata[4001:3994] <= newdata[4001:3994]+dval363;
				end
				else
				begin
					dval363 <= (data[4001:3994]-qn[4001:3994])/sr;
					newdata[4001:3994] <= newdata[4001:3994]-dval363;
				end
				if(newdata[4012:4005] < qn[4012:4005])
				begin
					dval364 <= (qn[4012:4005]-data[4012:4005])/sr;
					newdata[4012:4005] <= newdata[4012:4005]+dval364;
				end
				else
				begin
					dval364 <= (data[4012:4005]-qn[4012:4005])/sr;
					newdata[4012:4005] <= newdata[4012:4005]-dval364;
				end
				if(newdata[4023:4016] < qn[4023:4016])
				begin
					dval365 <= (qn[4023:4016]-data[4023:4016])/sr;
					newdata[4023:4016] <= newdata[4023:4016]+dval365;
				end
				else
				begin
					dval365 <= (data[4023:4016]-qn[4023:4016])/sr;
					newdata[4023:4016] <= newdata[4023:4016]-dval365;
				end
				if(newdata[4034:4027] < qn[4034:4027])
				begin
					dval366 <= (qn[4034:4027]-data[4034:4027])/sr;
					newdata[4034:4027] <= newdata[4034:4027]+dval366;
				end
				else
				begin
					dval366 <= (data[4034:4027]-qn[4034:4027])/sr;
					newdata[4034:4027] <= newdata[4034:4027]-dval366;
				end
				if(newdata[4045:4038] < qn[4045:4038])
				begin
					dval367 <= (qn[4045:4038]-data[4045:4038])/sr;
					newdata[4045:4038] <= newdata[4045:4038]+dval367;
				end
				else
				begin
					dval367 <= (data[4045:4038]-qn[4045:4038])/sr;
					newdata[4045:4038] <= newdata[4045:4038]-dval367;
				end
				if(newdata[4056:4049] < qn[4056:4049])
				begin
					dval368 <= (qn[4056:4049]-data[4056:4049])/sr;
					newdata[4056:4049] <= newdata[4056:4049]+dval368;
				end
				else
				begin
					dval368 <= (data[4056:4049]-qn[4056:4049])/sr;
					newdata[4056:4049] <= newdata[4056:4049]-dval368;
				end
				if(newdata[4067:4060] < qn[4067:4060])
				begin
					dval369 <= (qn[4067:4060]-data[4067:4060])/sr;
					newdata[4067:4060] <= newdata[4067:4060]+dval369;
				end
				else
				begin
					dval369 <= (data[4067:4060]-qn[4067:4060])/sr;
					newdata[4067:4060] <= newdata[4067:4060]-dval369;
				end
				if(newdata[4078:4071] < qn[4078:4071])
				begin
					dval370 <= (qn[4078:4071]-data[4078:4071])/sr;
					newdata[4078:4071] <= newdata[4078:4071]+dval370;
				end
				else
				begin
					dval370 <= (data[4078:4071]-qn[4078:4071])/sr;
					newdata[4078:4071] <= newdata[4078:4071]-dval370;
				end
				if(newdata[4089:4082] < qn[4089:4082])
				begin
					dval371 <= (qn[4089:4082]-data[4089:4082])/sr;
					newdata[4089:4082] <= newdata[4089:4082]+dval371;
				end
				else
				begin
					dval371 <= (data[4089:4082]-qn[4089:4082])/sr;
					newdata[4089:4082] <= newdata[4089:4082]-dval371;
				end
				if(newdata[4100:4093] < qn[4100:4093])
				begin
					dval372 <= (qn[4100:4093]-data[4100:4093])/sr;
					newdata[4100:4093] <= newdata[4100:4093]+dval372;
				end
				else
				begin
					dval372 <= (data[4100:4093]-qn[4100:4093])/sr;
					newdata[4100:4093] <= newdata[4100:4093]-dval372;
				end
				if(newdata[4111:4104] < qn[4111:4104])
				begin
					dval373 <= (qn[4111:4104]-data[4111:4104])/sr;
					newdata[4111:4104] <= newdata[4111:4104]+dval373;
				end
				else
				begin
					dval373 <= (data[4111:4104]-qn[4111:4104])/sr;
					newdata[4111:4104] <= newdata[4111:4104]-dval373;
				end
				if(newdata[4122:4115] < qn[4122:4115])
				begin
					dval374 <= (qn[4122:4115]-data[4122:4115])/sr;
					newdata[4122:4115] <= newdata[4122:4115]+dval374;
				end
				else
				begin
					dval374 <= (data[4122:4115]-qn[4122:4115])/sr;
					newdata[4122:4115] <= newdata[4122:4115]-dval374;
				end
				if(newdata[4133:4126] < qn[4133:4126])
				begin
					dval375 <= (qn[4133:4126]-data[4133:4126])/sr;
					newdata[4133:4126] <= newdata[4133:4126]+dval375;
				end
				else
				begin
					dval375 <= (data[4133:4126]-qn[4133:4126])/sr;
					newdata[4133:4126] <= newdata[4133:4126]-dval375;
				end
				if(newdata[4144:4137] < qn[4144:4137])
				begin
					dval376 <= (qn[4144:4137]-data[4144:4137])/sr;
					newdata[4144:4137] <= newdata[4144:4137]+dval376;
				end
				else
				begin
					dval376 <= (data[4144:4137]-qn[4144:4137])/sr;
					newdata[4144:4137] <= newdata[4144:4137]-dval376;
				end
				if(newdata[4155:4148] < qn[4155:4148])
				begin
					dval377 <= (qn[4155:4148]-data[4155:4148])/sr;
					newdata[4155:4148] <= newdata[4155:4148]+dval377;
				end
				else
				begin
					dval377 <= (data[4155:4148]-qn[4155:4148])/sr;
					newdata[4155:4148] <= newdata[4155:4148]-dval377;
				end
				if(newdata[4166:4159] < qn[4166:4159])
				begin
					dval378 <= (qn[4166:4159]-data[4166:4159])/sr;
					newdata[4166:4159] <= newdata[4166:4159]+dval378;
				end
				else
				begin
					dval378 <= (data[4166:4159]-qn[4166:4159])/sr;
					newdata[4166:4159] <= newdata[4166:4159]-dval378;
				end
				if(newdata[4177:4170] < qn[4177:4170])
				begin
					dval379 <= (qn[4177:4170]-data[4177:4170])/sr;
					newdata[4177:4170] <= newdata[4177:4170]+dval379;
				end
				else
				begin
					dval379 <= (data[4177:4170]-qn[4177:4170])/sr;
					newdata[4177:4170] <= newdata[4177:4170]-dval379;
				end
				if(newdata[4188:4181] < qn[4188:4181])
				begin
					dval380 <= (qn[4188:4181]-data[4188:4181])/sr;
					newdata[4188:4181] <= newdata[4188:4181]+dval380;
				end
				else
				begin
					dval380 <= (data[4188:4181]-qn[4188:4181])/sr;
					newdata[4188:4181] <= newdata[4188:4181]-dval380;
				end
				if(newdata[4199:4192] < qn[4199:4192])
				begin
					dval381 <= (qn[4199:4192]-data[4199:4192])/sr;
					newdata[4199:4192] <= newdata[4199:4192]+dval381;
				end
				else
				begin
					dval381 <= (data[4199:4192]-qn[4199:4192])/sr;
					newdata[4199:4192] <= newdata[4199:4192]-dval381;
				end
				if(newdata[4210:4203] < qn[4210:4203])
				begin
					dval382 <= (qn[4210:4203]-data[4210:4203])/sr;
					newdata[4210:4203] <= newdata[4210:4203]+dval382;
				end
				else
				begin
					dval382 <= (data[4210:4203]-qn[4210:4203])/sr;
					newdata[4210:4203] <= newdata[4210:4203]-dval382;
				end
				if(newdata[4221:4214] < qn[4221:4214])
				begin
					dval383 <= (qn[4221:4214]-data[4221:4214])/sr;
					newdata[4221:4214] <= newdata[4221:4214]+dval383;
				end
				else
				begin
					dval383 <= (data[4221:4214]-qn[4221:4214])/sr;
					newdata[4221:4214] <= newdata[4221:4214]-dval383;
				end
				if(newdata[4232:4225] < qn[4232:4225])
				begin
					dval384 <= (qn[4232:4225]-data[4232:4225])/sr;
					newdata[4232:4225] <= newdata[4232:4225]+dval384;
				end
				else
				begin
					dval384 <= (data[4232:4225]-qn[4232:4225])/sr;
					newdata[4232:4225] <= newdata[4232:4225]-dval384;
				end
				if(newdata[4243:4236] < qn[4243:4236])
				begin
					dval385 <= (qn[4243:4236]-data[4243:4236])/sr;
					newdata[4243:4236] <= newdata[4243:4236]+dval385;
				end
				else
				begin
					dval385 <= (data[4243:4236]-qn[4243:4236])/sr;
					newdata[4243:4236] <= newdata[4243:4236]-dval385;
				end
				if(newdata[4254:4247] < qn[4254:4247])
				begin
					dval386 <= (qn[4254:4247]-data[4254:4247])/sr;
					newdata[4254:4247] <= newdata[4254:4247]+dval386;
				end
				else
				begin
					dval386 <= (data[4254:4247]-qn[4254:4247])/sr;
					newdata[4254:4247] <= newdata[4254:4247]-dval386;
				end
				if(newdata[4265:4258] < qn[4265:4258])
				begin
					dval387 <= (qn[4265:4258]-data[4265:4258])/sr;
					newdata[4265:4258] <= newdata[4265:4258]+dval387;
				end
				else
				begin
					dval387 <= (data[4265:4258]-qn[4265:4258])/sr;
					newdata[4265:4258] <= newdata[4265:4258]-dval387;
				end
				if(newdata[4276:4269] < qn[4276:4269])
				begin
					dval388 <= (qn[4276:4269]-data[4276:4269])/sr;
					newdata[4276:4269] <= newdata[4276:4269]+dval388;
				end
				else
				begin
					dval388 <= (data[4276:4269]-qn[4276:4269])/sr;
					newdata[4276:4269] <= newdata[4276:4269]-dval388;
				end
				if(newdata[4287:4280] < qn[4287:4280])
				begin
					dval389 <= (qn[4287:4280]-data[4287:4280])/sr;
					newdata[4287:4280] <= newdata[4287:4280]+dval389;
				end
				else
				begin
					dval389 <= (data[4287:4280]-qn[4287:4280])/sr;
					newdata[4287:4280] <= newdata[4287:4280]-dval389;
				end
				if(newdata[4298:4291] < qn[4298:4291])
				begin
					dval390 <= (qn[4298:4291]-data[4298:4291])/sr;
					newdata[4298:4291] <= newdata[4298:4291]+dval390;
				end
				else
				begin
					dval390 <= (data[4298:4291]-qn[4298:4291])/sr;
					newdata[4298:4291] <= newdata[4298:4291]-dval390;
				end
				if(newdata[4309:4302] < qn[4309:4302])
				begin
					dval391 <= (qn[4309:4302]-data[4309:4302])/sr;
					newdata[4309:4302] <= newdata[4309:4302]+dval391;
				end
				else
				begin
					dval391 <= (data[4309:4302]-qn[4309:4302])/sr;
					newdata[4309:4302] <= newdata[4309:4302]-dval391;
				end
				if(newdata[4320:4313] < qn[4320:4313])
				begin
					dval392 <= (qn[4320:4313]-data[4320:4313])/sr;
					newdata[4320:4313] <= newdata[4320:4313]+dval392;
				end
				else
				begin
					dval392 <= (data[4320:4313]-qn[4320:4313])/sr;
					newdata[4320:4313] <= newdata[4320:4313]-dval392;
				end
				if(newdata[4331:4324] < qn[4331:4324])
				begin
					dval393 <= (qn[4331:4324]-data[4331:4324])/sr;
					newdata[4331:4324] <= newdata[4331:4324]+dval393;
				end
				else
				begin
					dval393 <= (data[4331:4324]-qn[4331:4324])/sr;
					newdata[4331:4324] <= newdata[4331:4324]-dval393;
				end
				if(newdata[4342:4335] < qn[4342:4335])
				begin
					dval394 <= (qn[4342:4335]-data[4342:4335])/sr;
					newdata[4342:4335] <= newdata[4342:4335]+dval394;
				end
				else
				begin
					dval394 <= (data[4342:4335]-qn[4342:4335])/sr;
					newdata[4342:4335] <= newdata[4342:4335]-dval394;
				end
				if(newdata[4353:4346] < qn[4353:4346])
				begin
					dval395 <= (qn[4353:4346]-data[4353:4346])/sr;
					newdata[4353:4346] <= newdata[4353:4346]+dval395;
				end
				else
				begin
					dval395 <= (data[4353:4346]-qn[4353:4346])/sr;
					newdata[4353:4346] <= newdata[4353:4346]-dval395;
				end
				if(newdata[4364:4357] < qn[4364:4357])
				begin
					dval396 <= (qn[4364:4357]-data[4364:4357])/sr;
					newdata[4364:4357] <= newdata[4364:4357]+dval396;
				end
				else
				begin
					dval396 <= (data[4364:4357]-qn[4364:4357])/sr;
					newdata[4364:4357] <= newdata[4364:4357]-dval396;
				end
				if(newdata[4375:4368] < qn[4375:4368])
				begin
					dval397 <= (qn[4375:4368]-data[4375:4368])/sr;
					newdata[4375:4368] <= newdata[4375:4368]+dval397;
				end
				else
				begin
					dval397 <= (data[4375:4368]-qn[4375:4368])/sr;
					newdata[4375:4368] <= newdata[4375:4368]-dval397;
				end
				if(newdata[4386:4379] < qn[4386:4379])
				begin
					dval398 <= (qn[4386:4379]-data[4386:4379])/sr;
					newdata[4386:4379] <= newdata[4386:4379]+dval398;
				end
				else
				begin
					dval398 <= (data[4386:4379]-qn[4386:4379])/sr;
					newdata[4386:4379] <= newdata[4386:4379]-dval398;
				end
				if(newdata[4397:4390] < qn[4397:4390])
				begin
					dval399 <= (qn[4397:4390]-data[4397:4390])/sr;
					newdata[4397:4390] <= newdata[4397:4390]+dval399;
				end
				else
				begin
					dval399 <= (data[4397:4390]-qn[4397:4390])/sr;
					newdata[4397:4390] <= newdata[4397:4390]-dval399;
				end
				if(newdata[4408:4401] < qn[4408:4401])
				begin
					dval400 <= (qn[4408:4401]-data[4408:4401])/sr;
					newdata[4408:4401] <= newdata[4408:4401]+dval400;
				end
				else
				begin
					dval400 <= (data[4408:4401]-qn[4408:4401])/sr;
					newdata[4408:4401] <= newdata[4408:4401]-dval400;
				end
				if(newdata[4419:4412] < qn[4419:4412])
				begin
					dval401 <= (qn[4419:4412]-data[4419:4412])/sr;
					newdata[4419:4412] <= newdata[4419:4412]+dval401;
				end
				else
				begin
					dval401 <= (data[4419:4412]-qn[4419:4412])/sr;
					newdata[4419:4412] <= newdata[4419:4412]-dval401;
				end
				if(newdata[4430:4423] < qn[4430:4423])
				begin
					dval402 <= (qn[4430:4423]-data[4430:4423])/sr;
					newdata[4430:4423] <= newdata[4430:4423]+dval402;
				end
				else
				begin
					dval402 <= (data[4430:4423]-qn[4430:4423])/sr;
					newdata[4430:4423] <= newdata[4430:4423]-dval402;
				end
				if(newdata[4441:4434] < qn[4441:4434])
				begin
					dval403 <= (qn[4441:4434]-data[4441:4434])/sr;
					newdata[4441:4434] <= newdata[4441:4434]+dval403;
				end
				else
				begin
					dval403 <= (data[4441:4434]-qn[4441:4434])/sr;
					newdata[4441:4434] <= newdata[4441:4434]-dval403;
				end
				if(newdata[4452:4445] < qn[4452:4445])
				begin
					dval404 <= (qn[4452:4445]-data[4452:4445])/sr;
					newdata[4452:4445] <= newdata[4452:4445]+dval404;
				end
				else
				begin
					dval404 <= (data[4452:4445]-qn[4452:4445])/sr;
					newdata[4452:4445] <= newdata[4452:4445]-dval404;
				end
				if(newdata[4463:4456] < qn[4463:4456])
				begin
					dval405 <= (qn[4463:4456]-data[4463:4456])/sr;
					newdata[4463:4456] <= newdata[4463:4456]+dval405;
				end
				else
				begin
					dval405 <= (data[4463:4456]-qn[4463:4456])/sr;
					newdata[4463:4456] <= newdata[4463:4456]-dval405;
				end
				if(newdata[4474:4467] < qn[4474:4467])
				begin
					dval406 <= (qn[4474:4467]-data[4474:4467])/sr;
					newdata[4474:4467] <= newdata[4474:4467]+dval406;
				end
				else
				begin
					dval406 <= (data[4474:4467]-qn[4474:4467])/sr;
					newdata[4474:4467] <= newdata[4474:4467]-dval406;
				end
				if(newdata[4485:4478] < qn[4485:4478])
				begin
					dval407 <= (qn[4485:4478]-data[4485:4478])/sr;
					newdata[4485:4478] <= newdata[4485:4478]+dval407;
				end
				else
				begin
					dval407 <= (data[4485:4478]-qn[4485:4478])/sr;
					newdata[4485:4478] <= newdata[4485:4478]-dval407;
				end
				if(newdata[4496:4489] < qn[4496:4489])
				begin
					dval408 <= (qn[4496:4489]-data[4496:4489])/sr;
					newdata[4496:4489] <= newdata[4496:4489]+dval408;
				end
				else
				begin
					dval408 <= (data[4496:4489]-qn[4496:4489])/sr;
					newdata[4496:4489] <= newdata[4496:4489]-dval408;
				end
				if(newdata[4507:4500] < qn[4507:4500])
				begin
					dval409 <= (qn[4507:4500]-data[4507:4500])/sr;
					newdata[4507:4500] <= newdata[4507:4500]+dval409;
				end
				else
				begin
					dval409 <= (data[4507:4500]-qn[4507:4500])/sr;
					newdata[4507:4500] <= newdata[4507:4500]-dval409;
				end
				if(newdata[4518:4511] < qn[4518:4511])
				begin
					dval410 <= (qn[4518:4511]-data[4518:4511])/sr;
					newdata[4518:4511] <= newdata[4518:4511]+dval410;
				end
				else
				begin
					dval410 <= (data[4518:4511]-qn[4518:4511])/sr;
					newdata[4518:4511] <= newdata[4518:4511]-dval410;
				end
				if(newdata[4529:4522] < qn[4529:4522])
				begin
					dval411 <= (qn[4529:4522]-data[4529:4522])/sr;
					newdata[4529:4522] <= newdata[4529:4522]+dval411;
				end
				else
				begin
					dval411 <= (data[4529:4522]-qn[4529:4522])/sr;
					newdata[4529:4522] <= newdata[4529:4522]-dval411;
				end
				if(newdata[4540:4533] < qn[4540:4533])
				begin
					dval412 <= (qn[4540:4533]-data[4540:4533])/sr;
					newdata[4540:4533] <= newdata[4540:4533]+dval412;
				end
				else
				begin
					dval412 <= (data[4540:4533]-qn[4540:4533])/sr;
					newdata[4540:4533] <= newdata[4540:4533]-dval412;
				end
				if(newdata[4551:4544] < qn[4551:4544])
				begin
					dval413 <= (qn[4551:4544]-data[4551:4544])/sr;
					newdata[4551:4544] <= newdata[4551:4544]+dval413;
				end
				else
				begin
					dval413 <= (data[4551:4544]-qn[4551:4544])/sr;
					newdata[4551:4544] <= newdata[4551:4544]-dval413;
				end
				if(newdata[4562:4555] < qn[4562:4555])
				begin
					dval414 <= (qn[4562:4555]-data[4562:4555])/sr;
					newdata[4562:4555] <= newdata[4562:4555]+dval414;
				end
				else
				begin
					dval414 <= (data[4562:4555]-qn[4562:4555])/sr;
					newdata[4562:4555] <= newdata[4562:4555]-dval414;
				end
				if(newdata[4573:4566] < qn[4573:4566])
				begin
					dval415 <= (qn[4573:4566]-data[4573:4566])/sr;
					newdata[4573:4566] <= newdata[4573:4566]+dval415;
				end
				else
				begin
					dval415 <= (data[4573:4566]-qn[4573:4566])/sr;
					newdata[4573:4566] <= newdata[4573:4566]-dval415;
				end
				if(newdata[4584:4577] < qn[4584:4577])
				begin
					dval416 <= (qn[4584:4577]-data[4584:4577])/sr;
					newdata[4584:4577] <= newdata[4584:4577]+dval416;
				end
				else
				begin
					dval416 <= (data[4584:4577]-qn[4584:4577])/sr;
					newdata[4584:4577] <= newdata[4584:4577]-dval416;
				end
				if(newdata[4595:4588] < qn[4595:4588])
				begin
					dval417 <= (qn[4595:4588]-data[4595:4588])/sr;
					newdata[4595:4588] <= newdata[4595:4588]+dval417;
				end
				else
				begin
					dval417 <= (data[4595:4588]-qn[4595:4588])/sr;
					newdata[4595:4588] <= newdata[4595:4588]-dval417;
				end
				if(newdata[4606:4599] < qn[4606:4599])
				begin
					dval418 <= (qn[4606:4599]-data[4606:4599])/sr;
					newdata[4606:4599] <= newdata[4606:4599]+dval418;
				end
				else
				begin
					dval418 <= (data[4606:4599]-qn[4606:4599])/sr;
					newdata[4606:4599] <= newdata[4606:4599]-dval418;
				end
				if(newdata[4617:4610] < qn[4617:4610])
				begin
					dval419 <= (qn[4617:4610]-data[4617:4610])/sr;
					newdata[4617:4610] <= newdata[4617:4610]+dval419;
				end
				else
				begin
					dval419 <= (data[4617:4610]-qn[4617:4610])/sr;
					newdata[4617:4610] <= newdata[4617:4610]-dval419;
				end
				if(newdata[4628:4621] < qn[4628:4621])
				begin
					dval420 <= (qn[4628:4621]-data[4628:4621])/sr;
					newdata[4628:4621] <= newdata[4628:4621]+dval420;
				end
				else
				begin
					dval420 <= (data[4628:4621]-qn[4628:4621])/sr;
					newdata[4628:4621] <= newdata[4628:4621]-dval420;
				end
				if(newdata[4639:4632] < qn[4639:4632])
				begin
					dval421 <= (qn[4639:4632]-data[4639:4632])/sr;
					newdata[4639:4632] <= newdata[4639:4632]+dval421;
				end
				else
				begin
					dval421 <= (data[4639:4632]-qn[4639:4632])/sr;
					newdata[4639:4632] <= newdata[4639:4632]-dval421;
				end
				if(newdata[4650:4643] < qn[4650:4643])
				begin
					dval422 <= (qn[4650:4643]-data[4650:4643])/sr;
					newdata[4650:4643] <= newdata[4650:4643]+dval422;
				end
				else
				begin
					dval422 <= (data[4650:4643]-qn[4650:4643])/sr;
					newdata[4650:4643] <= newdata[4650:4643]-dval422;
				end
				if(newdata[4661:4654] < qn[4661:4654])
				begin
					dval423 <= (qn[4661:4654]-data[4661:4654])/sr;
					newdata[4661:4654] <= newdata[4661:4654]+dval423;
				end
				else
				begin
					dval423 <= (data[4661:4654]-qn[4661:4654])/sr;
					newdata[4661:4654] <= newdata[4661:4654]-dval423;
				end
				if(newdata[4672:4665] < qn[4672:4665])
				begin
					dval424 <= (qn[4672:4665]-data[4672:4665])/sr;
					newdata[4672:4665] <= newdata[4672:4665]+dval424;
				end
				else
				begin
					dval424 <= (data[4672:4665]-qn[4672:4665])/sr;
					newdata[4672:4665] <= newdata[4672:4665]-dval424;
				end
				if(newdata[4683:4676] < qn[4683:4676])
				begin
					dval425 <= (qn[4683:4676]-data[4683:4676])/sr;
					newdata[4683:4676] <= newdata[4683:4676]+dval425;
				end
				else
				begin
					dval425 <= (data[4683:4676]-qn[4683:4676])/sr;
					newdata[4683:4676] <= newdata[4683:4676]-dval425;
				end
				if(newdata[4694:4687] < qn[4694:4687])
				begin
					dval426 <= (qn[4694:4687]-data[4694:4687])/sr;
					newdata[4694:4687] <= newdata[4694:4687]+dval426;
				end
				else
				begin
					dval426 <= (data[4694:4687]-qn[4694:4687])/sr;
					newdata[4694:4687] <= newdata[4694:4687]-dval426;
				end
				if(newdata[4705:4698] < qn[4705:4698])
				begin
					dval427 <= (qn[4705:4698]-data[4705:4698])/sr;
					newdata[4705:4698] <= newdata[4705:4698]+dval427;
				end
				else
				begin
					dval427 <= (data[4705:4698]-qn[4705:4698])/sr;
					newdata[4705:4698] <= newdata[4705:4698]-dval427;
				end
				if(newdata[4716:4709] < qn[4716:4709])
				begin
					dval428 <= (qn[4716:4709]-data[4716:4709])/sr;
					newdata[4716:4709] <= newdata[4716:4709]+dval428;
				end
				else
				begin
					dval428 <= (data[4716:4709]-qn[4716:4709])/sr;
					newdata[4716:4709] <= newdata[4716:4709]-dval428;
				end
				if(newdata[4727:4720] < qn[4727:4720])
				begin
					dval429 <= (qn[4727:4720]-data[4727:4720])/sr;
					newdata[4727:4720] <= newdata[4727:4720]+dval429;
				end
				else
				begin
					dval429 <= (data[4727:4720]-qn[4727:4720])/sr;
					newdata[4727:4720] <= newdata[4727:4720]-dval429;
				end
				if(newdata[4738:4731] < qn[4738:4731])
				begin
					dval430 <= (qn[4738:4731]-data[4738:4731])/sr;
					newdata[4738:4731] <= newdata[4738:4731]+dval430;
				end
				else
				begin
					dval430 <= (data[4738:4731]-qn[4738:4731])/sr;
					newdata[4738:4731] <= newdata[4738:4731]-dval430;
				end
				if(newdata[4749:4742] < qn[4749:4742])
				begin
					dval431 <= (qn[4749:4742]-data[4749:4742])/sr;
					newdata[4749:4742] <= newdata[4749:4742]+dval431;
				end
				else
				begin
					dval431 <= (data[4749:4742]-qn[4749:4742])/sr;
					newdata[4749:4742] <= newdata[4749:4742]-dval431;
				end
				if(newdata[4760:4753] < qn[4760:4753])
				begin
					dval432 <= (qn[4760:4753]-data[4760:4753])/sr;
					newdata[4760:4753] <= newdata[4760:4753]+dval432;
				end
				else
				begin
					dval432 <= (data[4760:4753]-qn[4760:4753])/sr;
					newdata[4760:4753] <= newdata[4760:4753]-dval432;
				end
				if(newdata[4771:4764] < qn[4771:4764])
				begin
					dval433 <= (qn[4771:4764]-data[4771:4764])/sr;
					newdata[4771:4764] <= newdata[4771:4764]+dval433;
				end
				else
				begin
					dval433 <= (data[4771:4764]-qn[4771:4764])/sr;
					newdata[4771:4764] <= newdata[4771:4764]-dval433;
				end
				if(newdata[4782:4775] < qn[4782:4775])
				begin
					dval434 <= (qn[4782:4775]-data[4782:4775])/sr;
					newdata[4782:4775] <= newdata[4782:4775]+dval434;
				end
				else
				begin
					dval434 <= (data[4782:4775]-qn[4782:4775])/sr;
					newdata[4782:4775] <= newdata[4782:4775]-dval434;
				end
				if(newdata[4793:4786] < qn[4793:4786])
				begin
					dval435 <= (qn[4793:4786]-data[4793:4786])/sr;
					newdata[4793:4786] <= newdata[4793:4786]+dval435;
				end
				else
				begin
					dval435 <= (data[4793:4786]-qn[4793:4786])/sr;
					newdata[4793:4786] <= newdata[4793:4786]-dval435;
				end
				if(newdata[4804:4797] < qn[4804:4797])
				begin
					dval436 <= (qn[4804:4797]-data[4804:4797])/sr;
					newdata[4804:4797] <= newdata[4804:4797]+dval436;
				end
				else
				begin
					dval436 <= (data[4804:4797]-qn[4804:4797])/sr;
					newdata[4804:4797] <= newdata[4804:4797]-dval436;
				end
				if(newdata[4815:4808] < qn[4815:4808])
				begin
					dval437 <= (qn[4815:4808]-data[4815:4808])/sr;
					newdata[4815:4808] <= newdata[4815:4808]+dval437;
				end
				else
				begin
					dval437 <= (data[4815:4808]-qn[4815:4808])/sr;
					newdata[4815:4808] <= newdata[4815:4808]-dval437;
				end
				if(newdata[4826:4819] < qn[4826:4819])
				begin
					dval438 <= (qn[4826:4819]-data[4826:4819])/sr;
					newdata[4826:4819] <= newdata[4826:4819]+dval438;
				end
				else
				begin
					dval438 <= (data[4826:4819]-qn[4826:4819])/sr;
					newdata[4826:4819] <= newdata[4826:4819]-dval438;
				end
				if(newdata[4837:4830] < qn[4837:4830])
				begin
					dval439 <= (qn[4837:4830]-data[4837:4830])/sr;
					newdata[4837:4830] <= newdata[4837:4830]+dval439;
				end
				else
				begin
					dval439 <= (data[4837:4830]-qn[4837:4830])/sr;
					newdata[4837:4830] <= newdata[4837:4830]-dval439;
				end
				if(newdata[4848:4841] < qn[4848:4841])
				begin
					dval440 <= (qn[4848:4841]-data[4848:4841])/sr;
					newdata[4848:4841] <= newdata[4848:4841]+dval440;
				end
				else
				begin
					dval440 <= (data[4848:4841]-qn[4848:4841])/sr;
					newdata[4848:4841] <= newdata[4848:4841]-dval440;
				end
				if(newdata[4859:4852] < qn[4859:4852])
				begin
					dval441 <= (qn[4859:4852]-data[4859:4852])/sr;
					newdata[4859:4852] <= newdata[4859:4852]+dval441;
				end
				else
				begin
					dval441 <= (data[4859:4852]-qn[4859:4852])/sr;
					newdata[4859:4852] <= newdata[4859:4852]-dval441;
				end
				if(newdata[4870:4863] < qn[4870:4863])
				begin
					dval442 <= (qn[4870:4863]-data[4870:4863])/sr;
					newdata[4870:4863] <= newdata[4870:4863]+dval442;
				end
				else
				begin
					dval442 <= (data[4870:4863]-qn[4870:4863])/sr;
					newdata[4870:4863] <= newdata[4870:4863]-dval442;
				end
				if(newdata[4881:4874] < qn[4881:4874])
				begin
					dval443 <= (qn[4881:4874]-data[4881:4874])/sr;
					newdata[4881:4874] <= newdata[4881:4874]+dval443;
				end
				else
				begin
					dval443 <= (data[4881:4874]-qn[4881:4874])/sr;
					newdata[4881:4874] <= newdata[4881:4874]-dval443;
				end
				if(newdata[4892:4885] < qn[4892:4885])
				begin
					dval444 <= (qn[4892:4885]-data[4892:4885])/sr;
					newdata[4892:4885] <= newdata[4892:4885]+dval444;
				end
				else
				begin
					dval444 <= (data[4892:4885]-qn[4892:4885])/sr;
					newdata[4892:4885] <= newdata[4892:4885]-dval444;
				end
				if(newdata[4903:4896] < qn[4903:4896])
				begin
					dval445 <= (qn[4903:4896]-data[4903:4896])/sr;
					newdata[4903:4896] <= newdata[4903:4896]+dval445;
				end
				else
				begin
					dval445 <= (data[4903:4896]-qn[4903:4896])/sr;
					newdata[4903:4896] <= newdata[4903:4896]-dval445;
				end
				if(newdata[4914:4907] < qn[4914:4907])
				begin
					dval446 <= (qn[4914:4907]-data[4914:4907])/sr;
					newdata[4914:4907] <= newdata[4914:4907]+dval446;
				end
				else
				begin
					dval446 <= (data[4914:4907]-qn[4914:4907])/sr;
					newdata[4914:4907] <= newdata[4914:4907]-dval446;
				end
				if(newdata[4925:4918] < qn[4925:4918])
				begin
					dval447 <= (qn[4925:4918]-data[4925:4918])/sr;
					newdata[4925:4918] <= newdata[4925:4918]+dval447;
				end
				else
				begin
					dval447 <= (data[4925:4918]-qn[4925:4918])/sr;
					newdata[4925:4918] <= newdata[4925:4918]-dval447;
				end
				if(newdata[4936:4929] < qn[4936:4929])
				begin
					dval448 <= (qn[4936:4929]-data[4936:4929])/sr;
					newdata[4936:4929] <= newdata[4936:4929]+dval448;
				end
				else
				begin
					dval448 <= (data[4936:4929]-qn[4936:4929])/sr;
					newdata[4936:4929] <= newdata[4936:4929]-dval448;
				end
				if(newdata[4947:4940] < qn[4947:4940])
				begin
					dval449 <= (qn[4947:4940]-data[4947:4940])/sr;
					newdata[4947:4940] <= newdata[4947:4940]+dval449;
				end
				else
				begin
					dval449 <= (data[4947:4940]-qn[4947:4940])/sr;
					newdata[4947:4940] <= newdata[4947:4940]-dval449;
				end
				if(newdata[4958:4951] < qn[4958:4951])
				begin
					dval450 <= (qn[4958:4951]-data[4958:4951])/sr;
					newdata[4958:4951] <= newdata[4958:4951]+dval450;
				end
				else
				begin
					dval450 <= (data[4958:4951]-qn[4958:4951])/sr;
					newdata[4958:4951] <= newdata[4958:4951]-dval450;
				end
				if(newdata[4969:4962] < qn[4969:4962])
				begin
					dval451 <= (qn[4969:4962]-data[4969:4962])/sr;
					newdata[4969:4962] <= newdata[4969:4962]+dval451;
				end
				else
				begin
					dval451 <= (data[4969:4962]-qn[4969:4962])/sr;
					newdata[4969:4962] <= newdata[4969:4962]-dval451;
				end
				if(newdata[4980:4973] < qn[4980:4973])
				begin
					dval452 <= (qn[4980:4973]-data[4980:4973])/sr;
					newdata[4980:4973] <= newdata[4980:4973]+dval452;
				end
				else
				begin
					dval452 <= (data[4980:4973]-qn[4980:4973])/sr;
					newdata[4980:4973] <= newdata[4980:4973]-dval452;
				end
				if(newdata[4991:4984] < qn[4991:4984])
				begin
					dval453 <= (qn[4991:4984]-data[4991:4984])/sr;
					newdata[4991:4984] <= newdata[4991:4984]+dval453;
				end
				else
				begin
					dval453 <= (data[4991:4984]-qn[4991:4984])/sr;
					newdata[4991:4984] <= newdata[4991:4984]-dval453;
				end
				if(newdata[5002:4995] < qn[5002:4995])
				begin
					dval454 <= (qn[5002:4995]-data[5002:4995])/sr;
					newdata[5002:4995] <= newdata[5002:4995]+dval454;
				end
				else
				begin
					dval454 <= (data[5002:4995]-qn[5002:4995])/sr;
					newdata[5002:4995] <= newdata[5002:4995]-dval454;
				end
				if(newdata[5013:5006] < qn[5013:5006])
				begin
					dval455 <= (qn[5013:5006]-data[5013:5006])/sr;
					newdata[5013:5006] <= newdata[5013:5006]+dval455;
				end
				else
				begin
					dval455 <= (data[5013:5006]-qn[5013:5006])/sr;
					newdata[5013:5006] <= newdata[5013:5006]-dval455;
				end
				if(newdata[5024:5017] < qn[5024:5017])
				begin
					dval456 <= (qn[5024:5017]-data[5024:5017])/sr;
					newdata[5024:5017] <= newdata[5024:5017]+dval456;
				end
				else
				begin
					dval456 <= (data[5024:5017]-qn[5024:5017])/sr;
					newdata[5024:5017] <= newdata[5024:5017]-dval456;
				end
				if(newdata[5035:5028] < qn[5035:5028])
				begin
					dval457 <= (qn[5035:5028]-data[5035:5028])/sr;
					newdata[5035:5028] <= newdata[5035:5028]+dval457;
				end
				else
				begin
					dval457 <= (data[5035:5028]-qn[5035:5028])/sr;
					newdata[5035:5028] <= newdata[5035:5028]-dval457;
				end
				if(newdata[5046:5039] < qn[5046:5039])
				begin
					dval458 <= (qn[5046:5039]-data[5046:5039])/sr;
					newdata[5046:5039] <= newdata[5046:5039]+dval458;
				end
				else
				begin
					dval458 <= (data[5046:5039]-qn[5046:5039])/sr;
					newdata[5046:5039] <= newdata[5046:5039]-dval458;
				end
				if(newdata[5057:5050] < qn[5057:5050])
				begin
					dval459 <= (qn[5057:5050]-data[5057:5050])/sr;
					newdata[5057:5050] <= newdata[5057:5050]+dval459;
				end
				else
				begin
					dval459 <= (data[5057:5050]-qn[5057:5050])/sr;
					newdata[5057:5050] <= newdata[5057:5050]-dval459;
				end
				if(newdata[5068:5061] < qn[5068:5061])
				begin
					dval460 <= (qn[5068:5061]-data[5068:5061])/sr;
					newdata[5068:5061] <= newdata[5068:5061]+dval460;
				end
				else
				begin
					dval460 <= (data[5068:5061]-qn[5068:5061])/sr;
					newdata[5068:5061] <= newdata[5068:5061]-dval460;
				end
				if(newdata[5079:5072] < qn[5079:5072])
				begin
					dval461 <= (qn[5079:5072]-data[5079:5072])/sr;
					newdata[5079:5072] <= newdata[5079:5072]+dval461;
				end
				else
				begin
					dval461 <= (data[5079:5072]-qn[5079:5072])/sr;
					newdata[5079:5072] <= newdata[5079:5072]-dval461;
				end
				if(newdata[5090:5083] < qn[5090:5083])
				begin
					dval462 <= (qn[5090:5083]-data[5090:5083])/sr;
					newdata[5090:5083] <= newdata[5090:5083]+dval462;
				end
				else
				begin
					dval462 <= (data[5090:5083]-qn[5090:5083])/sr;
					newdata[5090:5083] <= newdata[5090:5083]-dval462;
				end
				if(newdata[5101:5094] < qn[5101:5094])
				begin
					dval463 <= (qn[5101:5094]-data[5101:5094])/sr;
					newdata[5101:5094] <= newdata[5101:5094]+dval463;
				end
				else
				begin
					dval463 <= (data[5101:5094]-qn[5101:5094])/sr;
					newdata[5101:5094] <= newdata[5101:5094]-dval463;
				end
				if(newdata[5112:5105] < qn[5112:5105])
				begin
					dval464 <= (qn[5112:5105]-data[5112:5105])/sr;
					newdata[5112:5105] <= newdata[5112:5105]+dval464;
				end
				else
				begin
					dval464 <= (data[5112:5105]-qn[5112:5105])/sr;
					newdata[5112:5105] <= newdata[5112:5105]-dval464;
				end
				if(newdata[5123:5116] < qn[5123:5116])
				begin
					dval465 <= (qn[5123:5116]-data[5123:5116])/sr;
					newdata[5123:5116] <= newdata[5123:5116]+dval465;
				end
				else
				begin
					dval465 <= (data[5123:5116]-qn[5123:5116])/sr;
					newdata[5123:5116] <= newdata[5123:5116]-dval465;
				end
				if(newdata[5134:5127] < qn[5134:5127])
				begin
					dval466 <= (qn[5134:5127]-data[5134:5127])/sr;
					newdata[5134:5127] <= newdata[5134:5127]+dval466;
				end
				else
				begin
					dval466 <= (data[5134:5127]-qn[5134:5127])/sr;
					newdata[5134:5127] <= newdata[5134:5127]-dval466;
				end
				if(newdata[5145:5138] < qn[5145:5138])
				begin
					dval467 <= (qn[5145:5138]-data[5145:5138])/sr;
					newdata[5145:5138] <= newdata[5145:5138]+dval467;
				end
				else
				begin
					dval467 <= (data[5145:5138]-qn[5145:5138])/sr;
					newdata[5145:5138] <= newdata[5145:5138]-dval467;
				end
				if(newdata[5156:5149] < qn[5156:5149])
				begin
					dval468 <= (qn[5156:5149]-data[5156:5149])/sr;
					newdata[5156:5149] <= newdata[5156:5149]+dval468;
				end
				else
				begin
					dval468 <= (data[5156:5149]-qn[5156:5149])/sr;
					newdata[5156:5149] <= newdata[5156:5149]-dval468;
				end
				if(newdata[5167:5160] < qn[5167:5160])
				begin
					dval469 <= (qn[5167:5160]-data[5167:5160])/sr;
					newdata[5167:5160] <= newdata[5167:5160]+dval469;
				end
				else
				begin
					dval469 <= (data[5167:5160]-qn[5167:5160])/sr;
					newdata[5167:5160] <= newdata[5167:5160]-dval469;
				end
				if(newdata[5178:5171] < qn[5178:5171])
				begin
					dval470 <= (qn[5178:5171]-data[5178:5171])/sr;
					newdata[5178:5171] <= newdata[5178:5171]+dval470;
				end
				else
				begin
					dval470 <= (data[5178:5171]-qn[5178:5171])/sr;
					newdata[5178:5171] <= newdata[5178:5171]-dval470;
				end
				if(newdata[5189:5182] < qn[5189:5182])
				begin
					dval471 <= (qn[5189:5182]-data[5189:5182])/sr;
					newdata[5189:5182] <= newdata[5189:5182]+dval471;
				end
				else
				begin
					dval471 <= (data[5189:5182]-qn[5189:5182])/sr;
					newdata[5189:5182] <= newdata[5189:5182]-dval471;
				end
				if(newdata[5200:5193] < qn[5200:5193])
				begin
					dval472 <= (qn[5200:5193]-data[5200:5193])/sr;
					newdata[5200:5193] <= newdata[5200:5193]+dval472;
				end
				else
				begin
					dval472 <= (data[5200:5193]-qn[5200:5193])/sr;
					newdata[5200:5193] <= newdata[5200:5193]-dval472;
				end
				if(newdata[5211:5204] < qn[5211:5204])
				begin
					dval473 <= (qn[5211:5204]-data[5211:5204])/sr;
					newdata[5211:5204] <= newdata[5211:5204]+dval473;
				end
				else
				begin
					dval473 <= (data[5211:5204]-qn[5211:5204])/sr;
					newdata[5211:5204] <= newdata[5211:5204]-dval473;
				end
				if(newdata[5222:5215] < qn[5222:5215])
				begin
					dval474 <= (qn[5222:5215]-data[5222:5215])/sr;
					newdata[5222:5215] <= newdata[5222:5215]+dval474;
				end
				else
				begin
					dval474 <= (data[5222:5215]-qn[5222:5215])/sr;
					newdata[5222:5215] <= newdata[5222:5215]-dval474;
				end
				if(newdata[5233:5226] < qn[5233:5226])
				begin
					dval475 <= (qn[5233:5226]-data[5233:5226])/sr;
					newdata[5233:5226] <= newdata[5233:5226]+dval475;
				end
				else
				begin
					dval475 <= (data[5233:5226]-qn[5233:5226])/sr;
					newdata[5233:5226] <= newdata[5233:5226]-dval475;
				end
				if(newdata[5244:5237] < qn[5244:5237])
				begin
					dval476 <= (qn[5244:5237]-data[5244:5237])/sr;
					newdata[5244:5237] <= newdata[5244:5237]+dval476;
				end
				else
				begin
					dval476 <= (data[5244:5237]-qn[5244:5237])/sr;
					newdata[5244:5237] <= newdata[5244:5237]-dval476;
				end
				if(newdata[5255:5248] < qn[5255:5248])
				begin
					dval477 <= (qn[5255:5248]-data[5255:5248])/sr;
					newdata[5255:5248] <= newdata[5255:5248]+dval477;
				end
				else
				begin
					dval477 <= (data[5255:5248]-qn[5255:5248])/sr;
					newdata[5255:5248] <= newdata[5255:5248]-dval477;
				end
				if(newdata[5266:5259] < qn[5266:5259])
				begin
					dval478 <= (qn[5266:5259]-data[5266:5259])/sr;
					newdata[5266:5259] <= newdata[5266:5259]+dval478;
				end
				else
				begin
					dval478 <= (data[5266:5259]-qn[5266:5259])/sr;
					newdata[5266:5259] <= newdata[5266:5259]-dval478;
				end
				if(newdata[5277:5270] < qn[5277:5270])
				begin
					dval479 <= (qn[5277:5270]-data[5277:5270])/sr;
					newdata[5277:5270] <= newdata[5277:5270]+dval479;
				end
				else
				begin
					dval479 <= (data[5277:5270]-qn[5277:5270])/sr;
					newdata[5277:5270] <= newdata[5277:5270]-dval479;
				end
				if(newdata[5288:5281] < qn[5288:5281])
				begin
					dval480 <= (qn[5288:5281]-data[5288:5281])/sr;
					newdata[5288:5281] <= newdata[5288:5281]+dval480;
				end
				else
				begin
					dval480 <= (data[5288:5281]-qn[5288:5281])/sr;
					newdata[5288:5281] <= newdata[5288:5281]-dval480;
				end
				if(newdata[5299:5292] < qn[5299:5292])
				begin
					dval481 <= (qn[5299:5292]-data[5299:5292])/sr;
					newdata[5299:5292] <= newdata[5299:5292]+dval481;
				end
				else
				begin
					dval481 <= (data[5299:5292]-qn[5299:5292])/sr;
					newdata[5299:5292] <= newdata[5299:5292]-dval481;
				end
				if(newdata[5310:5303] < qn[5310:5303])
				begin
					dval482 <= (qn[5310:5303]-data[5310:5303])/sr;
					newdata[5310:5303] <= newdata[5310:5303]+dval482;
				end
				else
				begin
					dval482 <= (data[5310:5303]-qn[5310:5303])/sr;
					newdata[5310:5303] <= newdata[5310:5303]-dval482;
				end
				if(newdata[5321:5314] < qn[5321:5314])
				begin
					dval483 <= (qn[5321:5314]-data[5321:5314])/sr;
					newdata[5321:5314] <= newdata[5321:5314]+dval483;
				end
				else
				begin
					dval483 <= (data[5321:5314]-qn[5321:5314])/sr;
					newdata[5321:5314] <= newdata[5321:5314]-dval483;
				end
				if(newdata[5332:5325] < qn[5332:5325])
				begin
					dval484 <= (qn[5332:5325]-data[5332:5325])/sr;
					newdata[5332:5325] <= newdata[5332:5325]+dval484;
				end
				else
				begin
					dval484 <= (data[5332:5325]-qn[5332:5325])/sr;
					newdata[5332:5325] <= newdata[5332:5325]-dval484;
				end
				if(newdata[5343:5336] < qn[5343:5336])
				begin
					dval485 <= (qn[5343:5336]-data[5343:5336])/sr;
					newdata[5343:5336] <= newdata[5343:5336]+dval485;
				end
				else
				begin
					dval485 <= (data[5343:5336]-qn[5343:5336])/sr;
					newdata[5343:5336] <= newdata[5343:5336]-dval485;
				end
				if(newdata[5354:5347] < qn[5354:5347])
				begin
					dval486 <= (qn[5354:5347]-data[5354:5347])/sr;
					newdata[5354:5347] <= newdata[5354:5347]+dval486;
				end
				else
				begin
					dval486 <= (data[5354:5347]-qn[5354:5347])/sr;
					newdata[5354:5347] <= newdata[5354:5347]-dval486;
				end
				if(newdata[5365:5358] < qn[5365:5358])
				begin
					dval487 <= (qn[5365:5358]-data[5365:5358])/sr;
					newdata[5365:5358] <= newdata[5365:5358]+dval487;
				end
				else
				begin
					dval487 <= (data[5365:5358]-qn[5365:5358])/sr;
					newdata[5365:5358] <= newdata[5365:5358]-dval487;
				end
				if(newdata[5376:5369] < qn[5376:5369])
				begin
					dval488 <= (qn[5376:5369]-data[5376:5369])/sr;
					newdata[5376:5369] <= newdata[5376:5369]+dval488;
				end
				else
				begin
					dval488 <= (data[5376:5369]-qn[5376:5369])/sr;
					newdata[5376:5369] <= newdata[5376:5369]-dval488;
				end
				if(newdata[5387:5380] < qn[5387:5380])
				begin
					dval489 <= (qn[5387:5380]-data[5387:5380])/sr;
					newdata[5387:5380] <= newdata[5387:5380]+dval489;
				end
				else
				begin
					dval489 <= (data[5387:5380]-qn[5387:5380])/sr;
					newdata[5387:5380] <= newdata[5387:5380]-dval489;
				end
				if(newdata[5398:5391] < qn[5398:5391])
				begin
					dval490 <= (qn[5398:5391]-data[5398:5391])/sr;
					newdata[5398:5391] <= newdata[5398:5391]+dval490;
				end
				else
				begin
					dval490 <= (data[5398:5391]-qn[5398:5391])/sr;
					newdata[5398:5391] <= newdata[5398:5391]-dval490;
				end
				if(newdata[5409:5402] < qn[5409:5402])
				begin
					dval491 <= (qn[5409:5402]-data[5409:5402])/sr;
					newdata[5409:5402] <= newdata[5409:5402]+dval491;
				end
				else
				begin
					dval491 <= (data[5409:5402]-qn[5409:5402])/sr;
					newdata[5409:5402] <= newdata[5409:5402]-dval491;
				end
				if(newdata[5420:5413] < qn[5420:5413])
				begin
					dval492 <= (qn[5420:5413]-data[5420:5413])/sr;
					newdata[5420:5413] <= newdata[5420:5413]+dval492;
				end
				else
				begin
					dval492 <= (data[5420:5413]-qn[5420:5413])/sr;
					newdata[5420:5413] <= newdata[5420:5413]-dval492;
				end
				if(newdata[5431:5424] < qn[5431:5424])
				begin
					dval493 <= (qn[5431:5424]-data[5431:5424])/sr;
					newdata[5431:5424] <= newdata[5431:5424]+dval493;
				end
				else
				begin
					dval493 <= (data[5431:5424]-qn[5431:5424])/sr;
					newdata[5431:5424] <= newdata[5431:5424]-dval493;
				end
				if(newdata[5442:5435] < qn[5442:5435])
				begin
					dval494 <= (qn[5442:5435]-data[5442:5435])/sr;
					newdata[5442:5435] <= newdata[5442:5435]+dval494;
				end
				else
				begin
					dval494 <= (data[5442:5435]-qn[5442:5435])/sr;
					newdata[5442:5435] <= newdata[5442:5435]-dval494;
				end
				if(newdata[5453:5446] < qn[5453:5446])
				begin
					dval495 <= (qn[5453:5446]-data[5453:5446])/sr;
					newdata[5453:5446] <= newdata[5453:5446]+dval495;
				end
				else
				begin
					dval495 <= (data[5453:5446]-qn[5453:5446])/sr;
					newdata[5453:5446] <= newdata[5453:5446]-dval495;
				end
				if(newdata[5464:5457] < qn[5464:5457])
				begin
					dval496 <= (qn[5464:5457]-data[5464:5457])/sr;
					newdata[5464:5457] <= newdata[5464:5457]+dval496;
				end
				else
				begin
					dval496 <= (data[5464:5457]-qn[5464:5457])/sr;
					newdata[5464:5457] <= newdata[5464:5457]-dval496;
				end
				if(newdata[5475:5468] < qn[5475:5468])
				begin
					dval497 <= (qn[5475:5468]-data[5475:5468])/sr;
					newdata[5475:5468] <= newdata[5475:5468]+dval497;
				end
				else
				begin
					dval497 <= (data[5475:5468]-qn[5475:5468])/sr;
					newdata[5475:5468] <= newdata[5475:5468]-dval497;
				end
				if(newdata[5486:5479] < qn[5486:5479])
				begin
					dval498 <= (qn[5486:5479]-data[5486:5479])/sr;
					newdata[5486:5479] <= newdata[5486:5479]+dval498;
				end
				else
				begin
					dval498 <= (data[5486:5479]-qn[5486:5479])/sr;
					newdata[5486:5479] <= newdata[5486:5479]-dval498;
				end
				if(newdata[5497:5490] < qn[5497:5490])
				begin
					dval499 <= (qn[5497:5490]-data[5497:5490])/sr;
					newdata[5497:5490] <= newdata[5497:5490]+dval499;
				end
				else
				begin
					dval499 <= (data[5497:5490]-qn[5497:5490])/sr;
					newdata[5497:5490] <= newdata[5497:5490]-dval499;
				end
				if(newdata[5508:5501] < qn[5508:5501])
				begin
					dval500 <= (qn[5508:5501]-data[5508:5501])/sr;
					newdata[5508:5501] <= newdata[5508:5501]+dval500;
				end
				else
				begin
					dval500 <= (data[5508:5501]-qn[5508:5501])/sr;
					newdata[5508:5501] <= newdata[5508:5501]-dval500;
				end
				if(newdata[5519:5512] < qn[5519:5512])
				begin
					dval501 <= (qn[5519:5512]-data[5519:5512])/sr;
					newdata[5519:5512] <= newdata[5519:5512]+dval501;
				end
				else
				begin
					dval501 <= (data[5519:5512]-qn[5519:5512])/sr;
					newdata[5519:5512] <= newdata[5519:5512]-dval501;
				end
				if(newdata[5530:5523] < qn[5530:5523])
				begin
					dval502 <= (qn[5530:5523]-data[5530:5523])/sr;
					newdata[5530:5523] <= newdata[5530:5523]+dval502;
				end
				else
				begin
					dval502 <= (data[5530:5523]-qn[5530:5523])/sr;
					newdata[5530:5523] <= newdata[5530:5523]-dval502;
				end
				if(newdata[5541:5534] < qn[5541:5534])
				begin
					dval503 <= (qn[5541:5534]-data[5541:5534])/sr;
					newdata[5541:5534] <= newdata[5541:5534]+dval503;
				end
				else
				begin
					dval503 <= (data[5541:5534]-qn[5541:5534])/sr;
					newdata[5541:5534] <= newdata[5541:5534]-dval503;
				end
				if(newdata[5552:5545] < qn[5552:5545])
				begin
					dval504 <= (qn[5552:5545]-data[5552:5545])/sr;
					newdata[5552:5545] <= newdata[5552:5545]+dval504;
				end
				else
				begin
					dval504 <= (data[5552:5545]-qn[5552:5545])/sr;
					newdata[5552:5545] <= newdata[5552:5545]-dval504;
				end
				if(newdata[5563:5556] < qn[5563:5556])
				begin
					dval505 <= (qn[5563:5556]-data[5563:5556])/sr;
					newdata[5563:5556] <= newdata[5563:5556]+dval505;
				end
				else
				begin
					dval505 <= (data[5563:5556]-qn[5563:5556])/sr;
					newdata[5563:5556] <= newdata[5563:5556]-dval505;
				end
				if(newdata[5574:5567] < qn[5574:5567])
				begin
					dval506 <= (qn[5574:5567]-data[5574:5567])/sr;
					newdata[5574:5567] <= newdata[5574:5567]+dval506;
				end
				else
				begin
					dval506 <= (data[5574:5567]-qn[5574:5567])/sr;
					newdata[5574:5567] <= newdata[5574:5567]-dval506;
				end
				if(newdata[5585:5578] < qn[5585:5578])
				begin
					dval507 <= (qn[5585:5578]-data[5585:5578])/sr;
					newdata[5585:5578] <= newdata[5585:5578]+dval507;
				end
				else
				begin
					dval507 <= (data[5585:5578]-qn[5585:5578])/sr;
					newdata[5585:5578] <= newdata[5585:5578]-dval507;
				end
				if(newdata[5596:5589] < qn[5596:5589])
				begin
					dval508 <= (qn[5596:5589]-data[5596:5589])/sr;
					newdata[5596:5589] <= newdata[5596:5589]+dval508;
				end
				else
				begin
					dval508 <= (data[5596:5589]-qn[5596:5589])/sr;
					newdata[5596:5589] <= newdata[5596:5589]-dval508;
				end
				if(newdata[5607:5600] < qn[5607:5600])
				begin
					dval509 <= (qn[5607:5600]-data[5607:5600])/sr;
					newdata[5607:5600] <= newdata[5607:5600]+dval509;
				end
				else
				begin
					dval509 <= (data[5607:5600]-qn[5607:5600])/sr;
					newdata[5607:5600] <= newdata[5607:5600]-dval509;
				end
				if(newdata[5618:5611] < qn[5618:5611])
				begin
					dval510 <= (qn[5618:5611]-data[5618:5611])/sr;
					newdata[5618:5611] <= newdata[5618:5611]+dval510;
				end
				else
				begin
					dval510 <= (data[5618:5611]-qn[5618:5611])/sr;
					newdata[5618:5611] <= newdata[5618:5611]-dval510;
				end
				if(newdata[5629:5622] < qn[5629:5622])
				begin
					dval511 <= (qn[5629:5622]-data[5629:5622])/sr;
					newdata[5629:5622] <= newdata[5629:5622]+dval511;
				end
				else
				begin
					dval511 <= (data[5629:5622]-qn[5629:5622])/sr;
					newdata[5629:5622] <= newdata[5629:5622]-dval511;
				end
			end

			WAIT: count <= count+1'b1;
			
			JUMP: newdata <= qn;
			
			DONE: done <= 1;
			
		endcase

endmodule