`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:05:20 08/10/2014
// Design Name:   Multi_Sing_float
// Module Name:   F:/University/Semester 5/DSD/Individual Proposal/Floating_multiplier/Multi_float_test_bench.v
// Project Name:  Floating_multiplier
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Multi_Sing_float
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Multi_float_test_bench;

	// Inputs
	reg [31:0] num1 = 0;
	reg [31:0] num2 = 0;
	reg reset;

	// Outputs
	wire [31:0] result;

	// Instantiate the Unit Under Test (UUT)
	Multi_Sing_float uut (
		.num1(num1), 
		.num2(num2), 
		.reset(reset), 
		.result(result)
	);

	initial begin
		// Initialize Inputs
		num1 = 32'b01000000001000000000000000000000;
		num2 = 32'b00111111101000000000000000000000;
		//reset = 0;
		#100;
		$display("num1 : %b -> %f",num1,$bitstoreal(num1));
		$display("num2 : %b -> %f",num2,$bitstoreal(num2));
		$display("result : %b -> %f",result,$bitstoreal(result));
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

