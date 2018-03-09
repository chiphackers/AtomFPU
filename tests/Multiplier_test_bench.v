`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////// 
// Engineer:	udara piumal (udara 28)
//
// Create Date:   07:53:57 08/10/2014
// Design Name:   Multiplier_testBench
// Module Name:   F:/University/Semester 5/DSD/Individual Proposal/Floating_multiplier/Multiplier_test_bench.v
// Project Name:  Floating_multiplier
// Revision 0.01 - File Created
// Additional Comments:	Python Script will use this template to generate the test vector
// 
////////////////////////////////////////////////////////////////////////////////

module Multiplier_test_bench;

	// Inputs
	reg [7:0] y;
	reg [7:0] x;

	// Outputs
	wire [15:0] result;
	
	//test counters
	reg [7:0] total = 0;
	reg [7:0] pass = 0;
	reg [7:0] fail = 0;
	
	// Instantiate the Unit Under Test (UUT)
	Multiplier #(.N(8)) uut  (
		.y(y), 
		.x(x), 
		.result(result)
	);

	initial begin
		                y = 8'd190;
                x = 8'd182; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd34580) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd132;
                x = 8'd201; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd26532) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd99;
                x = 8'd188; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd18612) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd8;
                x = 8'd141; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd1128) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd37;
                x = 8'd50; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd1850) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd111;
                x = 8'd114; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd12654) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd86;
                x = 8'd68; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd5848) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd9;
                x = 8'd210; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd1890) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd36;
                x = 8'd6; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd216) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd167;
                x = 8'd83; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd13861) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd26;
                x = 8'd108; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd2808) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd207;
                x = 8'd228; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd47196) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd78;
                x = 8'd141; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd10998) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd1;
                x = 8'd104; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd104) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd17;
                x = 8'd214; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd3638) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd194;
                x = 8'd195; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd37830) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd129;
                x = 8'd139; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd17931) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd165;
                x = 8'd154; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd25410) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd250;
                x = 8'd68; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd17000) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd26;
                x = 8'd56; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd1456) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd152;
                x = 8'd128; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd19456) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd228;
                x = 8'd130; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd29640) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd172;
                x = 8'd54; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd9288) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd0;
                x = 8'd196; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd0) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd0;
                x = 8'd238; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd0) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd79;
                x = 8'd244; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd19276) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd139;
                x = 8'd119; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd16541) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd167;
                x = 8'd103; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd17201) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd160;
                x = 8'd101; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd16160) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd147;
                x = 8'd216; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd31752) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd94;
                x = 8'd233; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd21902) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd205;
                x = 8'd103; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd21115) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd231;
                x = 8'd114; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd26334) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd236;
                x = 8'd144; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd33984) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd49;
                x = 8'd165; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd8085) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd148;
                x = 8'd56; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd8288) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd186;
                x = 8'd188; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd34968) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd192;
                x = 8'd206; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd39552) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd198;
                x = 8'd126; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd24948) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd6;
                x = 8'd106; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd636) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd200;
                x = 8'd31; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd6200) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd235;
                x = 8'd122; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd28670) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd225;
                x = 8'd228; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd51300) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd217;
                x = 8'd110; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd23870) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd180;
                x = 8'd169; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd30420) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd161;
                x = 8'd90; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd14490) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd219;
                x = 8'd49; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd10731) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd67;
                x = 8'd25; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd1675) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd89;
                x = 8'd160; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd14240) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd210;
                x = 8'd6; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd1260) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd42;
                x = 8'd180; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd7560) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd255;
                x = 8'd108; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd27540) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd146;
                x = 8'd130; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd18980) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd23;
                x = 8'd142; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd3266) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd119;
                x = 8'd39; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd4641) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd140;
                x = 8'd215; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd30100) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd42;
                x = 8'd149; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd6258) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd184;
                x = 8'd164; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd30176) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd22;
                x = 8'd223; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd4906) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd131;
                x = 8'd210; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd27510) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd122;
                x = 8'd255; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd31110) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd162;
                x = 8'd28; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd4536) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd25;
                x = 8'd187; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd4675) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd162;
                x = 8'd5; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd810) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd173;
                x = 8'd196; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd33908) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd105;
                x = 8'd46; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd4830) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd50;
                x = 8'd83; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd4150) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd199;
                x = 8'd15; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd2985) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd215;
                x = 8'd47; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd10105) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd114;
                x = 8'd2; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd228) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd211;
                x = 8'd70; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd14770) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd78;
                x = 8'd213; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd16614) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd127;
                x = 8'd135; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd17145) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd215;
                x = 8'd93; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd19995) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd209;
                x = 8'd163; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd34067) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd13;
                x = 8'd255; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd3315) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd137;
                x = 8'd21; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd2877) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd6;
                x = 8'd20; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd120) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd211;
                x = 8'd11; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd2321) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd191;
                x = 8'd186; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd35526) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd5;
                x = 8'd88; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd440) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd25;
                x = 8'd159; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd3975) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd31;
                x = 8'd54; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd1674) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd181;
                x = 8'd122; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd22082) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd17;
                x = 8'd57; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd969) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd121;
                x = 8'd192; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd23232) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd113;
                x = 8'd254; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd28702) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd114;
                x = 8'd157; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd17898) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd119;
                x = 8'd71; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd8449) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd151;
                x = 8'd30; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd4530) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd12;
                x = 8'd9; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd108) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd123;
                x = 8'd191; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd23493) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd205;
                x = 8'd190; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd38950) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd101;
                x = 8'd243; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd24543) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd94;
                x = 8'd203; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd19082) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd194;
                x = 8'd81; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd15714) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd208;
                x = 8'd94; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd19552) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd134;
                x = 8'd142; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd19028) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd189;
                x = 8'd171; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd32319) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd108;
                x = 8'd75; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd8100) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd140;
                x = 8'd94; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd13160) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd81;
                x = 8'd13; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd1053) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd49;
                x = 8'd2; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd98) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd28;
                x = 8'd152; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd4256) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd122;
                x = 8'd164; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd20008) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd61;
                x = 8'd33; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd2013) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd37;
                x = 8'd71; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd2627) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd43;
                x = 8'd149; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd6407) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd69;
                x = 8'd73; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd5037) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd234;
                x = 8'd199; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd46566) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd117;
                x = 8'd21; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd2457) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd153;
                x = 8'd179; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd27387) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd224;
                x = 8'd253; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd56672) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd141;
                x = 8'd174; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd24534) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd170;
                x = 8'd10; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd1700) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd235;
                x = 8'd195; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd45825) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd174;
                x = 8'd153; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd26622) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd198;
                x = 8'd162; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd32076) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd48;
                x = 8'd218; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd10464) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd187;
                x = 8'd82; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd15334) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd160;
                x = 8'd229; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd36640) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd225;
                x = 8'd179; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd40275) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd34;
                x = 8'd158; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd5372) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd33;
                x = 8'd80; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd2640) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd210;
                x = 8'd8; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd1680) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd50;
                x = 8'd172; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd8600) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd161;
                x = 8'd133; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd21413) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd81;
                x = 8'd19; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd1539) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd86;
                x = 8'd41; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd3526) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd141;
                x = 8'd20; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd2820) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd135;
                x = 8'd94; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd12690) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd89;
                x = 8'd166; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd14774) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd26;
                x = 8'd70; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd1820) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd101;
                x = 8'd51; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd5151) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd78;
                x = 8'd144; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd11232) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd192;
                x = 8'd248; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd47616) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd101;
                x = 8'd98; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd9898) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd89;
                x = 8'd184; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd16376) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd16;
                x = 8'd144; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd2304) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd167;
                x = 8'd105; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd17535) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd91;
                x = 8'd236; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd21476) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd156;
                x = 8'd10; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd1560) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd194;
                x = 8'd73; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd14162) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd62;
                x = 8'd105; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd6510) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd160;
                x = 8'd135; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd21600) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd235;
                x = 8'd114; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd26790) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd163;
                x = 8'd77; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd12551) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd175;
                x = 8'd89; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd15575) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd73;
                x = 8'd64; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd4672) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd152;
                x = 8'd160; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd24320) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd187;
                x = 8'd255; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd47685) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd72;
                x = 8'd201; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd14472) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd40;
                x = 8'd127; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd5080) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd138;
                x = 8'd232; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd32016) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd57;
                x = 8'd148; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd8436) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd146;
                x = 8'd93; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd13578) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd32;
                x = 8'd111; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd3552) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd65;
                x = 8'd210; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd13650) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd98;
                x = 8'd31; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd3038) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd50;
                x = 8'd38; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd1900) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd137;
                x = 8'd61; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd8357) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd188;
                x = 8'd153; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd28764) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd36;
                x = 8'd125; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd4500) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd123;
                x = 8'd23; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd2829) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd203;
                x = 8'd2; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd406) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd38;
                x = 8'd16; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd608) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd215;
                x = 8'd209; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd44935) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd83;
                x = 8'd167; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd13861) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd222;
                x = 8'd58; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd12876) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd197;
                x = 8'd109; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd21473) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd137;
                x = 8'd210; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd28770) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd177;
                x = 8'd134; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd23718) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd61;
                x = 8'd193; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd11773) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd233;
                x = 8'd153; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd35649) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd93;
                x = 8'd13; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd1209) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd161;
                x = 8'd106; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd17066) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd154;
                x = 8'd51; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd7854) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd186;
                x = 8'd101; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd18786) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd242;
                x = 8'd87; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd21054) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd217;
                x = 8'd248; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd53816) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd12;
                x = 8'd242; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd2904) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd117;
                x = 8'd16; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd1872) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd20;
                x = 8'd156; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd3120) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd167;
                x = 8'd189; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd31563) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd117;
                x = 8'd39; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd4563) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd17;
                x = 8'd173; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd2941) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd87;
                x = 8'd27; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd2349) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd243;
                x = 8'd209; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd50787) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd120;
                x = 8'd18; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd2160) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd233;
                x = 8'd192; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd44736) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd47;
                x = 8'd122; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd5734) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd143;
                x = 8'd102; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd14586) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd57;
                x = 8'd150; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd8550) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd56;
                x = 8'd64; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd3584) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd139;
                x = 8'd200; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd27800) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd103;
                x = 8'd119; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd12257) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd81;
                x = 8'd248; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd20088) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd154;
                x = 8'd240; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd36960) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd184;
                x = 8'd149; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd27416) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd178;
                x = 8'd22; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd3916) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd73;
                x = 8'd133; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd9709) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd211;
                x = 8'd157; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd33127) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd2;
                x = 8'd200; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd400) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd71;
                x = 8'd93; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd6603) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd190;
                x = 8'd221; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd41990) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd63;
                x = 8'd221; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd13923) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd88;
                x = 8'd124; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd10912) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd55;
                x = 8'd78; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd4290) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd116;
                x = 8'd214; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd24824) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd190;
                x = 8'd121; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd22990) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd231;
                x = 8'd16; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd3696) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd93;
                x = 8'd24; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd2232) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd192;
                x = 8'd215; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd41280) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd96;
                x = 8'd193; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd18528) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd78;
                x = 8'd211; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd16458) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd127;
                x = 8'd63; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd8001) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd197;
                x = 8'd239; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd47083) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd198;
                x = 8'd66; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd13068) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd96;
                x = 8'd20; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd1920) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd255;
                x = 8'd234; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd59670) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd57;
                x = 8'd164; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd9348) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd146;
                x = 8'd246; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd35916) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd189;
                x = 8'd244; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd46116) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd139;
                x = 8'd235; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd32665) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd39;
                x = 8'd156; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd6084) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd177;
                x = 8'd239; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd42303) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd25;
                x = 8'd111; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd2775) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd9;
                x = 8'd231; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd2079) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd148;
                x = 8'd180; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd26640) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd248;
                x = 8'd191; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd47368) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd186;
                x = 8'd36; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd6696) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd38;
                x = 8'd73; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd2774) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd137;
                x = 8'd76; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd10412) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd201;
                x = 8'd93; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd18693) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd18;
                x = 8'd235; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd4230) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd184;
                x = 8'd180; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd33120) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd122;
                x = 8'd172; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd20984) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd51;
                x = 8'd137; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd6987) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd37;
                x = 8'd6; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd222) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd127;
                x = 8'd177; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd22479) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd142;
                x = 8'd48; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd6816) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd139;
                x = 8'd243; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd33777) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd221;
                x = 8'd69; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd15249) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd109;
                x = 8'd246; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd26814) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd189;
                x = 8'd107; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd20223) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd109;
                x = 8'd136; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd14824) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd214;
                x = 8'd175; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd37450) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd122;
                x = 8'd58; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd7076) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd2;
                x = 8'd159; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd318) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd175;
                x = 8'd164; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd28700) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd99;
                x = 8'd32; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd3168) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd114;
                x = 8'd206; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd23484) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd171;
                x = 8'd213; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd36423) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd179;
                x = 8'd198; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd35442) pass = pass + 1; else fail = fail + 1; 
		#100; 

                y = 8'd205;
                x = 8'd93; 
		#1; 
		$display("%d * %d = %d",y,x,result); 
		total = total+1; 
		if(result == 16'd19065) pass = pass + 1; else fail = fail + 1; 
		#100; 



		// Add stimulus here
		$display("total tests  : %d",total);
		$display("tests passed : %d",pass);
		$display("tests failed : %d",fail);
	end
      
endmodule

