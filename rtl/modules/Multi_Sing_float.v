`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Created By : Y.U.P De Silva
// 
// Create Date:    16:53:42 08/09/2014 
// Design Name: 
// Module Name:    Multi_Sing_float 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Multi_Sing_float(
	input [31:0] num1,
	input [31:0] num2,
	input enable,
	output [31:0] result
    );

	reg [7:0] exp1,exp2;
	reg [22:0] man1,man2;
	wire [27:0] man_r;
	reg [31:0] answer;
	
	//my paratmeterized modified booth encoded multiplier :p
	Multiplier #(.N(14)) mul(.y({1'b1, man1[22:10]}), .x({1'b1, man2[22:10]}), .result(man_r) );
	
	always @ (*) begin
		exp1 = num1[30:23];
		exp2 = num2[30:23];
		man1 = num1[22:0];
		man2 = num2[22:0];
		//exponent
		answer[30:23] = (man_r[27])? (({1'b0,exp1} + {1'b0,exp2}) - 9'd126) :  (({1'b0,exp1} + {1'b0,exp2}) - 9'd127); // remove the bias
		//mantissa
		answer[22:0] = (man_r[27])? man_r[26:4] : man_r[25:3] ;
		//sign
		answer[31] = num1[31] ^ num2[31];
	end
	
	assign result = answer;
	
endmodule
