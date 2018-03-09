`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////// 
// Engineer:	udara piumal (udara28)
//
// Create Date:   07:15:16 08/12/2014
// Design Name:   Floating_adder
// Module Name:   F:/University/Semester 5/DSD/Individual Proposal/Floating_adder/Adder_test_bench.v
// Project Name:  Floating_adder
// Revision 0.01 - File Created
// Additional Comments: Python Script will use this template to generate the test vector
// 
////////////////////////////////////////////////////////////////////////////////

module Adder_test_bench;

	// Inputs
	reg [31:0] y;
	reg [31:0] x;
	reg ctrl;
	reg enable;

	// Outputs
	wire [31:0] result;

	//test counters
	reg [7:0] total = 0;
	reg [7:0] pass = 0;
	reg [7:0] fail = 0;
	
	// Instantiate the Unit Under Test (UUT)
	Floating_adder uut (
		.a(y), 
		.b(x), 
		.ctrl(ctrl), 
		.enable(enable), 
		.ans(result)
	);

	initial begin
		ctrl = 	1'b0;
		                y = 32'b1000001000000000000000000000000;
                x = 32'b1000000000110011001100110011010; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001001001100110011001100110) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111110111011101110111000010;
                x = 32'b1000000010100100100100100010011; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000101000001001101111111010) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111110000101111011010010100010;
                x = 32'b1000000001100111001110011100000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000001111010001100000101011) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111111100000000000000000000;
                x = 32'b111111101000011010111100111010; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000010010001101011110011101) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000000101000111101011100001;
                x = 32'b1000000110010010010010010001001; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001000010011011000011111101) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000101000110101111001001010;
                x = 32'b1000000010000000000000000000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001000000011010111100100101) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111110001101001011010010001101;
                x = 32'b111111111100000110001111110001; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000000000110111110101000001) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000001110110110110110110001;
                x = 32'b111111101011101101010000101100; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000100010010110101111100011) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000000001101011110010010100;
                x = 32'b111111110100010111010000111111; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000011011110111011010110100) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000000000100001000010001100;
                x = 32'b1000000000001001001001001001111; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000100000110101000101101110) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111100101001010010100100111;
                x = 32'b1000000100101000000000000000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000101110010010100101001010) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000001011001000000000000000000;
                x = 32'b111110101000001110101010011110; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001011010010000011101010101) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111110011000001100011100111011;
                x = 32'b111111001000111000111001001100; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b111111010110111100000000011010) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111111010111100101001000011;
                x = 32'b111110101110000101000111101100; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000000011001110111101011111) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111101110110110110111011011;
                x = 32'b111111001110100010111001011110; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000000011000100001010000101) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000010000000000000000000000;
                x = 32'b1000000011100110011001100110011; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000110110011001100110011010) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111110100101101001011011100110;
                x = 32'b111111001110000101000111101100; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b111111100000011100111010101111) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111110101000001110100101010;
                x = 32'b111111001101001011010010001101; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000000101110011101110111000) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000000010110111110011000100;
                x = 32'b1000000111010101010101010100100; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001000110000011010010000011) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111000101110100010111100001;
                x = 32'b1000000111110000000000000000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001000001010111010001011110) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111001101011010110110010111;
                x = 32'b111111101110000011000111001111; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000000010011000010001001101) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111110100011110101110000101;
                x = 32'b1000000010101010101010101000111; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000100111110010010110000101) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111101111000111000110110100100;
                x = 32'b1000000011000101010101010111001; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000011010011100011100100110) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000110100100100100100101000;
                x = 32'b111111001010000110101101111011; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000111001110101011010010111) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111100001111000011101101010;
                x = 32'b111111010001001110110001000010; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b111111111010011111110110001011) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111010010001010010111001110;
                x = 32'b111111010101010101010100011101; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b111111110011101111110101110110) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111110100000000000000000000000;
                x = 32'b1000000000100000000000000000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000001000000000000000000000) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000001011010010110100100011;
                x = 32'b111111100000000000000000000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000011011010010110100100011) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000001000110000000000000000000;
                x = 32'b111110001110100010111100000110; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001000110101110100010111100) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111101101101101101101100010;
                x = 32'b111101101110100010111100000110; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b111111110000100111111001010010) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000100100111011000100110001;
                x = 32'b111111011000111000111001001100; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000101100000010001011111011) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000001000100100100100100101000;
                x = 32'b1000000010010001000100001111011; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001010001000110101101000110) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111111010010110100101101110;
                x = 32'b111111010111101111011111100100; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000001011000111001010110000) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000000010010010010010011110;
                x = 32'b111111000100010111010000111111; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000001011011000000110101110) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000111000000000000000000000;
                x = 32'b1000001011111010101010101010010; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001101101101010101010101001) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111110100100000110100011011100;
                x = 32'b1000000101000100010001000101001; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000101010110010100010110111) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000001100111011000100110001;
                x = 32'b1000000000011010101010101000111; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000101000001000001100111100) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111101110000101000111101100;
                x = 32'b1000000000010100010111010001000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000011001100101011101111110) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000101110010010010010001001;
                x = 32'b1000000011001100110011001100110; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001000101100010101111011110) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111110110100010111010110010;
                x = 32'b1000000000000101110100010100111; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000011100000000000000000000) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000100011000000000000000000;
                x = 32'b111111000000101101100000011011; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000100111000101101100000011) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000010010010111101101001010;
                x = 32'b1000001010101010101010101010010; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001100000111101101000010010) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111011001100110011001100110;
                x = 32'b1000000000111000011110001001011; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000010101011101010111100101) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111100110110110110111011011;
                x = 32'b1000000100100100100100100101000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000101110010010010010011110) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000001101010000011101001010;
                x = 32'b1000001010000000000000000000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001011011010100000111010011) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111000011111001110001100011;
                x = 32'b1000000010000011111000001101111; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000011001011101011110001000) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111111000010001101001110110;
                x = 32'b1000000001001010000110110000100; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000100010101100110101100000) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111001000111101011100001010;
                x = 32'b111111000001101011110011101000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b111111100101010100100111111001) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111011100000000000000000000;
                x = 32'b111111110100000000000000000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000001001000000000000000000) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111101100111011111011001011;
                x = 32'b1000000000110100111101110001001; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000011101000101101011101110) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000011010011101100010101110;
                x = 32'b1000000001101001101111010101001; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000110011110101101110101011) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000110010101010101010100100;
                x = 32'b111111111100000000000000000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001000000110101010101010010) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111100000101111101000101111;
                x = 32'b1000000010000000000000000000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000100000001011111010001100) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000000011101010000011100100;
                x = 32'b1000000000010010010010010011110; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000100010111110001011000001) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000001000101110100010100111;
                x = 32'b111111101010101010101010001111; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000011110000011110111101110) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111101101001100000110101000101;
                x = 32'b111101101001100000110101000101; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b111110001001100000110101000101) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111110001100100001010101110111;
                x = 32'b111111011110011110011110010110; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b111111100100110011011001111010) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111000000000000000000000000;
                x = 32'b111111101000010000100000011100; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b111111111000010000100000011100) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000010110100010111010001000;
                x = 32'b111111001010000000000000000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000100000100001011101000100) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111111010101010101010001111;
                x = 32'b1000000100101001011010010110111; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000110011110101111101011011) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111011100010101111101000110;
                x = 32'b111111101010001101100111101000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000000100001100010011000110) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111110100111001011101111000;
                x = 32'b111111110110101000100101110110; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000010101110001000001110111) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000010000000000000000000000;
                x = 32'b1000000001011010101010101000111; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000101101101010101010100100) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111110001010001111010111000;
                x = 32'b1000000000110000100011010011101; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000011110101101010111111010) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000110001001001001001001111;
                x = 32'b1000000001001100110011001100110; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001000010111110001011000001) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111101010000011101010101000;
                x = 32'b111111111000000000000000000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000010001000001110101010100) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111010000010100111000111100;
                x = 32'b111110101011110010100100001011; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b111111100011000111000101100001) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111111101011001111100101100;
                x = 32'b111111011001000010110000111101; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000001100111101101010100101) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000001110001100000000000000000;
                x = 32'b1000000011001101111010011110001; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001111000101101111010011110) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000101000011100011100100110;
                x = 32'b1000000000000100010001000010100; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000111000101101100000110000) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111111110011100000110010100;
                x = 32'b1000000110100000000000000000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001000001110011100000110010) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000001010100000111010010101;
                x = 32'b1000001010010101010101010101110; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001011101010010111001010011) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000001100000000000000000000000;
                x = 32'b111111101011100011100011011010; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001100010101110001110001110) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111100110011001100110011010;
                x = 32'b111111101000010100011110101110; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000000111010111000010100100) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000000000011001100110011010;
                x = 32'b1000001011010011001100110011010; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001100001010000000000000000) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111110110101010101010111000101;
                x = 32'b1000000001100110011001100110011; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000010011011101110111101100) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111111000100010001000111110;
                x = 32'b1000000110001100000000000000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000111111101000100010010000) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000111100000000000000000000;
                x = 32'b1000000011000011010111100111010; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001001100000110101111001111) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111000100100100100100111101;
                x = 32'b111111100111000010100011110110; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b111111111001010100110110010100) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000010100000000000000000000;
                x = 32'b111111100000000000000000000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000100010000000000000000000) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000100110000000000000000000;
                x = 32'b1000001010100000000000000000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001100011100000000000000000) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000001010100000000000000000000;
                x = 32'b1000001011100101010101010101110; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001111000010101010101010111) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000001001001010101010101010010;
                x = 32'b111111001000010010111101101111; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001001011110110100001001001) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000110110100010111010001000;
                x = 32'b1000000000101010101010101000111; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001000100100110110010010110) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000011011000100111011001111;
                x = 32'b111111010101100011001111110000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000100100001110110111100101) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111001111001010000110001100;
                x = 32'b1000010101101100000000000000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000010101101110111100101000011) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111110110001101000100001111;
                x = 32'b111111010010100001101010110101; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000000111101110111100110101) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000000000000000000000000000;
                x = 32'b1000000111101000000000000000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001000110100000000000000000) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111110001111010111000010100;
                x = 32'b111111010011001100110011001101; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000000101110000101000111101) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000110000000000000000000000;
                x = 32'b1000000100100000000000000000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001001010000000000000000000) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111100000000000000000000000;
                x = 32'b1000000010010111010001011110000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000100001011101000101111000) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111110000101000111101011100;
                x = 32'b1000000000101011101101001111011; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000011101110010001000101001) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000001000110110110110110111011;
                x = 32'b1000000001101110111011110000101; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001010010010100101110011101) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000110100000000000000000000;
                x = 32'b1000000010101100001000110110010; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001000111011000010001101100) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000000110101010101010111001;
                x = 32'b111111111110000011110111101110; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000100010110110010011011000) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000010100110100000000000000000;
                x = 32'b111111001111101000001100111100; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000010100110110111110100000110) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000100101000000000000000000;
                x = 32'b111111101101010101010101110001; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000110000010101010101011100) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111101110011001100110011010;
                x = 32'b1000000010111100111100111100110; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000100111011010001101011001) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000011011011011011011101101;
                x = 32'b111110010000000000000000000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000011110011011011011101101) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000101111010101010101011100;
                x = 32'b111111010111000100011111000011; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000110110001101111001010101) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111110001000100010000101000;
                x = 32'b1000010010111000000000000000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000010011000100010001000100001) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b0;
                x = 32'b111111100101001100000110101001; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b111111100101001100000110101001) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111101110111010110100011000111;
                x = 32'b1000000001000000000000000000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000001001101110101101000110) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000001000110011001100110011010;
                x = 32'b1000000000101100110011001100110; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001001111110011001100110011) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000000111011000100111011111;
                x = 32'b111111110000110000110000110101; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000011111110000111111111001) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000000001100110011001100110;
                x = 32'b111110110100001111101001011001; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000001000001000010110110010) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000000011001100110011001101;
                x = 32'b1000000010011011110100110111000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000101011010101101101000010) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000001000100000000000000000000;
                x = 32'b1000000101110010010010010001001; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001011011001001001001000101) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000001001100011100011100011011;
                x = 32'b1000000100100011001100110011010; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001011110101001001111101000) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111100100110001000001110111;
                x = 32'b111101001001110011001011011111; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b111111100110000100101000001110) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000000000110100100000101100;
                x = 32'b111111110011010110010100101100; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000011010011111101011000010) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111111001010101010101110001;
                x = 32'b111110100011100011100100101110; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000000001000111000111011110) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000100011100000000000000000;
                x = 32'b111110000001011000111101110001; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000100100100010110001111100) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111010111001011000010011111;
                x = 32'b111110010101100101001010111101; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b111111100010010010001010100111) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111101000000000000000000000;
                x = 32'b111111110100000000000000000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000001110000000000000000000) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000010011111000000000000000000;
                x = 32'b1000000010011010111100101010011; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000010100001000110101111001011) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111001100100001011000011110;
                x = 32'b111111010000000000000000000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b111111101110010000101100001111) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000100011010010110100100011;
                x = 32'b1000000110101100110011001100110; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001001100011100100111000101) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111110001010101010101110001010;
                x = 32'b111111100111000010100011110110; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b111111101100010111111001100111) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000000011000000000000000000;
                x = 32'b111111010010100001101010110101; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000001111101000011010101101) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111101011110000010101010011;
                x = 32'b111111111100110011001100110011; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000010100010001110001000011) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111100100000000000000000000;
                x = 32'b111110101100110011001100110011; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b111111101111001100110011001101) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000000011010111100101010011;
                x = 32'b1000000011110000000000000000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000110000101011110010101001) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111011001110000011001001111;
                x = 32'b111111100100011100011100100110; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000000000101010010100100111) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111000101111000001011010100;
                x = 32'b1000000000000111000111001001100; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000001010010110111100000000) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b0;
                x = 32'b1000000000110101010101010111001; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000000110101010101010111001) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111101001010111011010001010;
                x = 32'b1000001111000000000000000000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001111010100101011101101001) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111100000000000000000000000;
                x = 32'b1000001101000101010101010101001; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001101010101010101010101001) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111101001010101010111000101001;
                x = 32'b1000000100100110011001100110011; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000100101001000100010010000) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111010110000010110100111000;
                x = 32'b111111000000000000000000000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b111111101011000001011010011100) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111010100011110101110000101;
                x = 32'b111111100100100100100100111101; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b111111111110110011111011111111) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111110011001100110011001101;
                x = 32'b1000000000101000000000000000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000011110100110011001100110) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000000101000101110100010000;
                x = 32'b111111110110001001110110011101; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000100000000101010111101111) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111110110001110001110010010111;
                x = 32'b111111101000010110010000110000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b111111110100110010101101010110) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111100101000011010110111101;
                x = 32'b1000000100011101110111011110110; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000101100111111110001100101) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000001011010000000000000000000;
                x = 32'b1000000100000101010101010100100; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001100101001010101010101001) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111110100000000000000000000000;
                x = 32'b111111111100101100001000100111; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000000010010110000100010011) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111000010111010001010011100;
                x = 32'b111111110110001001110110011101; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000000011110011011101110110) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111100100111011000101011011;
                x = 32'b1000000001000000000000000000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000011010011101100010101110) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000000000000000000000000000;
                x = 32'b1000000011101100010011101010010; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000101110110001001110101001) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000111101100010011101100111;
                x = 32'b1000000100001010101010101011100; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001001111011011111001100010) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000000111010001011101011001;
                x = 32'b1000010000011000000000000000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000010000101011101000101110110) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000000001111000011110010100;
                x = 32'b1000001000100100100100100101000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001001101000010101100001101) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000001011011000000000000000000;
                x = 32'b1000000100000000000000000000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001100101100000000000000000) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000111100000000000000000000;
                x = 32'b111111111101111101010001101011; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001000101101111101010001101) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000001111110000000000000000000;
                x = 32'b111111101100000000000000000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000010000000011000000000000000) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000010010110000000000000000000;
                x = 32'b1000000000101000011010111100111; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000010011000010100001101011110) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111110110100101101001000110101;
                x = 32'b1000001000010100010111010001000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001000100001100010100011001) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111101010001111010111000011;
                x = 32'b1000000000001000010000100011000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000010110001001101111111010) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000100010011001100110011010;
                x = 32'b1000000111011100011100011011010; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001001110111110100100111010) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000101001100110011001100110;
                x = 32'b111111011010001011101000011111; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000110000110111110110101010) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000001000100000000000000000000;
                x = 32'b111110110000000000000000000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001000101100000000000000000) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000001001100100100100100101000;
                x = 32'b111111101000100111011000100001; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001010001101001011111101100) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000001100010000000000000000000;
                x = 32'b111111110010001000100010100100; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001100101001000100010001010) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000000000010110010000110000;
                x = 32'b1000000000010111010001011110000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000100001101000001110010000) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000110101000101110100010000;
                x = 32'b1000000100101010101010101011100; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001001101001101100100110110) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000010010001000100001111011;
                x = 32'b111111110111010101010101110001; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000100110111001100110011010) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000001010100000000000000000000;
                x = 32'b111111101100010011101100111010; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001011001100010011101100111) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111100110110110110111011011;
                x = 32'b111111000110101111001001010010; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b111111111010001110011100000100) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111110000000000000000000000;
                x = 32'b111111101111000000000000000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000001111100000000000000000) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111001100011010001000011111;
                x = 32'b1000000100010000000000000000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000100111100011010001000100) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000000111110001010111011111;
                x = 32'b111110101000111101011100001010; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000001100111001000011000001) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111000101111000001011010100;
                x = 32'b111101111011100010010000110101; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b111111001101010100011101011010) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000001011000100111011001111;
                x = 32'b1000000110001001001001001001111; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001000011010101110011011011) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111110111010001011101011000111;
                x = 32'b1000000000111100001111000100110; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000001110110011010101111110) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111111011101000101111000001;
                x = 32'b111111110001100110011001100110; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000010110100111100100010100) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000000000000000000000000000;
                x = 32'b1000000001101000101110100010000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000100110100010111010001000) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000011010101010101010111001;
                x = 32'b111111100011110000111100101000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000100110010001100100100110) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000100000000000000000000000;
                x = 32'b1000000011011101110111011100001; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000111101110111011101110000) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111101111000111000110110100;
                x = 32'b111110010101010101010001110110; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b111111110101110001110001000011) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000001000100110011001100110011;
                x = 32'b1000000110111000000000000000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001100000001001100110011010) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000101000000000000000000000;
                x = 32'b1000000000010010010010010011110; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000111001001001001001001111) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111101011001111100100001001;
                x = 32'b111111100011101110001001000011; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000000111011110110110100110) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111100000000000000000000000;
                x = 32'b111111101110110001001110111110; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000000111011000100111011111) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000011111010111000010100100;
                x = 32'b1000000100000101110100010111100; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001000000001101000010000111) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000001011111001100110011001101;
                x = 32'b111111000111011111010100000110; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001100000110101011000001111) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111010111001011000010011111;
                x = 32'b1000000000110110010011011000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000010100100101001011100111) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111100000000000000000000000;
                x = 32'b111111110011000011000011010011; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000001001100001100001101010) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111111101001011010010001101;
                x = 32'b111111100010001000100010100100; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000001111101001111010011001) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111100010111110100000010100;
                x = 32'b1000000000001001110110001000010; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000010010101110000001001100) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111110110101101011010100001011;
                x = 32'b1000000101111000111000111001001; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000110010011101110100011010) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000101100010111010001010100;
                x = 32'b111111011100101000011011010111; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000110011111100010100101110) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000011110100010111010001000;
                x = 32'b1000000000100110011001100110011; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000110001101011000011011110) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111000110101111001001010010;
                x = 32'b1000001001111100000000000000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001010001111010111100100101) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000001001010101010101000111;
                x = 32'b111110001001110011000001000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000001011111100100001001011) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111110111010100000111001000001;
                x = 32'b111111100100110001000001110111; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b111111110011011001010000001000) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000001100000000000000000000;
                x = 32'b111110001101111100110000111010; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000001110110111110011000100) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111011001110011101000010101;
                x = 32'b111100110011001100110011001101; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b111111011011011010000001111011) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000100001100110011001100110;
                x = 32'b111111110001000100010000101000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000101101110111011101110000) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000011011100001010001111011;
                x = 32'b111111111010011001100110011010; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000101100010111000010100100) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111110100000000000000000000000;
                x = 32'b111111100111110010001001111101; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b111111101111110010001001111101) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000100001101101101101110111;
                x = 32'b1000000100110110011001100110011; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001000100010000011101010101) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111110110011001100110011001101;
                x = 32'b111111111010010011111010000001; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000000011100011100011011010) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111010011001100110011001101;
                x = 32'b111111111011011011011011000011; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000001010100000111010010101) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111000111000111000110110100;
                x = 32'b1000000111101010101010101011100; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001000001000111000111001001) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000010110110110110110110001;
                x = 32'b111111101111010101010101110001; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000100111010000110000110101) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000001001010000000000000000000;
                x = 32'b111111110010101010101010001111; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001010000010101010101010010) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000110101101101101101110111;
                x = 32'b1000000000111000111000110110100; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001000100101000101000101000) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000010000101110100010100111;
                x = 32'b1000000011011101110111011100001; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000110110001110101111000100) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000000001000100010001010010;
                x = 32'b1000000001110010010010010011110; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000100111101011010001111000) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000001100100100000000000000000;
                x = 32'b1000000101100010001000100001010; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001101111100100010001000011) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111111001110000011001001111;
                x = 32'b111111111110111001011000101001; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000011100010100111000111100) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111101010001111010111000011;
                x = 32'b1000000101001101101101101110111; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000110100010001100011100111) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b0;
                x = 32'b111110101100110011001100110011; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b111110101100110011001100110011) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111101000010110010000110000;
                x = 32'b111111010000101000111101011100; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000000000010101010111101111) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000100110100010111010001000;
                x = 32'b1000001001100000000000000000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001011111010001011101000100) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111110000000000000000000000;
                x = 32'b111111110110010100110101000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000010011001010011010100000) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000001010111100101000011001;
                x = 32'b111111110110011001100110011010; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000100011000100101101110011) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111101111101011100001010001111;
                x = 32'b1000000000000000000000000000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000000001111010111000010100) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111011101001101111001111111;
                x = 32'b111111111001000000000000000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000001011110011011110100000) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111110110111010110011101110111;
                x = 32'b111111001000000000000000000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b111111100001110101100111011110) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111111010011011110101010001;
                x = 32'b111111111100001111000011011000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000011011010101011100010101) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111111000011010111100111010;
                x = 32'b1000000001100010001000100011111; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000100100001111010001011110) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111110000001011000111101110001;
                x = 32'b1000000011101000101110100010000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000011111001011011000000111) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111100100110110010100000010;
                x = 32'b111111011001011000010001001101; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000000000110001001110010100) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000001011001100110011001101;
                x = 32'b111111100101110100010111100001; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000011110000110111110111101) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000010100010111010001101001;
                x = 32'b111111111101110100010111100001; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000101001101000101110101100) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000001011101000101110010111;
                x = 32'b1000000101101000101110100010000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001000001011101000101101110) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111010100001001011101100011;
                x = 32'b1000000010101110100010111100001; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000100001011011010111011101) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111111011001110111110001001;
                x = 32'b111111010101110100010111100001; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000001011000100100100111101) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000001000011100000000000000000;
                x = 32'b111110101000000000000000000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001000100110000000000000000) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000010001001110110001000010;
                x = 32'b111111000010111010001010011100; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000011001111101010011101001) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000010110100010111010001000;
                x = 32'b1000000001101100000000000000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000110010000001011101000100) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111110110001001110110011101;
                x = 32'b1000000000001100000000000000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000011100100100111011001111) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111110010110011110000001100001;
                x = 32'b1000000000001110001110001101101; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000000101001011101001110011) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000000011000110001100100000;
                x = 32'b111111100010111010001011110000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000010100100011010010011000) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111100001001110110001000010;
                x = 32'b1000000000001101011110010010100; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000010010010011001010110101) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111111011010010110100100011;
                x = 32'b1000000001001100110011001100110; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000100011100111111001111100) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000010000001000000000000000000;
                x = 32'b1000000100100110011001100110011; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000010000101100110011001100110) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111111011001100110011001101;
                x = 32'b111111010110010000101101100011; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000001011001010100100111111) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000001000010100011110101110;
                x = 32'b1000000000000011111000001101111; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000100100011001110000001111) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111110010110110110111011010110;
                x = 32'b1000000000100110111101001111000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000001000010011000101100110) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000001011111001100110011001101;
                x = 32'b111111111100100100100100111101; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001100011011000101011111010) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111111000111000111001001100;
                x = 32'b111100101001110011001011011111; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b111111111001100010101100010111) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111110000000000000000000000;
                x = 32'b1000000001010000000000000000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000100001000000000000000000) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000001111011101110111101100;
                x = 32'b1000001110100000000000000000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001111001111011101110111101) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000001001100110011001100110;
                x = 32'b1000000010010000000000000000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000101101110011001100110011) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000001100000000000000000000;
                x = 32'b1000000000100000111010011111011; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000101000000011101001111110) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111000100100100100100111101;
                x = 32'b1000000001001010010100101011111; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000010010011011101110101110) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111101000010010111101101111;
                x = 32'b111110111110101000110101100101; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b111111110111111101001011001000) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111110110001111100110110001010;
                x = 32'b1000000010101101101101101100010; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000011011111101010100010011) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000000000110001111100110110;
                x = 32'b1000000000101010101010101000111; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000100011000011101000111111) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000001101000000000000000000000;
                x = 32'b0; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001101000000000000000000000) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000001110010000000000000000000;
                x = 32'b1000000011001011110110011111111; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001111001001011110110100000) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111100110011001100110011010;
                x = 32'b111111011000011110000110110001; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000000001010100010100111001) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000101011101110111011110110;
                x = 32'b111111000001111101011000001111; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000101111111110100110111000) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000001000001101101101101101100;
                x = 32'b111111010110110110110110000111; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001000101001001001001000101) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000111010101010101010100100;
                x = 32'b1000010001101000000000000000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000010010100010101010101010100) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111111000111000111001001100;
                x = 32'b1000000001000011100011100100110; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000100010011100011100100110) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000100110000110000101111100;
                x = 32'b111111100000000000000000000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000101110000110000101111100) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111101010101010101010001111;
                x = 32'b1000000011011000100111011001111; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000101000001101001000001011) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111101110000000000000000000;
                x = 32'b1000010001000000000000000000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000010001001011100000000000000) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b111111001000101110100001111101;
                x = 32'b111111110010110111110010011010; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000000000011100111100001101100) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000111010010010010010001001;
                x = 32'b1000001000000000000000000000000; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001011101001001001001000101) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 

                y = 32'b1000000101101010101010101011100;
                x = 32'b1000001000011010101010101010010; 
                enable = 1'b1; 
		#10; 
		$display("%b + %b = %b",y,x,result); 
		total = total+1; 
		if(result == 32'b1000001011010000000000000000000) pass = pass + 1; else fail = fail + 1; 
		#10; 
                enable =  1'b0; 
		#100; 


	
		// Add stimulus here
		$display("total tests  : %d",total);
		$display("tests passed : %d",pass);
		$display("tests failed : %d",fail);
	end
      
endmodule
