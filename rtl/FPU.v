`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Created By: Y.U.P De Silva
// 
// Create Date:    10:05:01 08/12/2014 
// Design Name: 
// Module Name:    FPU 
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
module FPU(
    input [31:0] in1,
    input [31:0] in2,
    input en,
    input [2:0] opcode,
    output [31:0] out
    );

	/* opcode chart
		 ___________ ________ __________________
		| operation | opcode |      result      |
		|___________|________|__________________|
		|    Add    |   000  |  out = in1 + in2 |
		| 	 Sub    |   001  |  out = in1 - in2 |
		|    Mul    |   010  |  out = in1 * in2 |
		|    Div    |   011  |  not implemented |
		|___________|________|__________________|	 
		extra bit(MSB of the opcode) is for rounding modes and int <-> float convertions
		this is also to be done..
	*/
	wire [31:0] adder_result;
	Floating_adder Adder(.a(in1), .b(in2), .ctrl(opcode[0]), .enable(en), .ans(adder_result));
	
	wire [31:0] multi_result;
	Multi_Sing_float Multiplier(.num1(in1), .num2(in2), .enable(en), .result(multi_result));
	
	
	assign out = (en)? ((opcode[1])? adder_result : multi_result) : 0;
endmodule
