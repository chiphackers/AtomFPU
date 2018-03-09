`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Udara Piumal (udara28) Y.U.P De Silva
// 
// Create Date:    14:59:13 08/09/2014 
// Design Name: 	 Extended Booth Encoded Multiplier
// Module Name:    Multiplier 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: unsigned combinational multiplier using modified booth algorithm
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Multiplier #(parameter N=8)(
	input [N-1:0] y,	//multiplier
	input [N-1:0] x,	//multiplicand
	
	output [2*N-1:0] result
	);

	reg [((2-(N%2))+N) :0] padded; //if N is odd pad one bit infront else if N is even pad 2 bits infront. add 1 bit behind
	//N/2 +(optional 1) number of (N+(1 sign)) bit registers used for partial products
	//reg [N:0] partial [N/2 + (N%2):0] ;	//partial reg is removed inste
	wire [N+1:0] y_ext;
	assign y_ext = {2'b00 , y};
	
	reg [2*N-1:0] ans; //store the answer in this register
		/* Modified Booth Encoding
	   ______________________________________
		| x(i+1) |  x(i)  |  x(i-1) | Action |
		|________|________|_________|________|
		|    0   |    0   |    0    |   0*Y  |
		|    0   |    0   |    1    |   1*Y  |
		|    0   |    1   |    0    |   1*Y  |
		|    0   |    1   |    1    |   2*Y  |
		|    1   |    0   |    0    |  -2*y  |
		|    1   |    0   |    1    |  -1*y  |
		|    1   |    1   |    0    |  -1*y  |
		|    1   |    1   |    1    |   0*y  |
		|________|________|_________|________|
  	*/
	integer i;
	always @ (*) begin
		padded = { x , 1'b0 };
		ans = 0;
		for( i=0 ; i <= N ; i = i + 2 ) begin	//definetly should use < instead of <= earlier
			case ({padded[i+2],padded[i+1],padded[i]})	// booth = { x(i+1) , x(i) , x(i-1) }
				//3'b000 : ans = ans + (0 << i);//partial[i/2] = 0; // i/2 is due to incrementing i= i+2;
				3'b001 : ans = ans + (y_ext << i);		//partial[i/2] = y;
				3'b010 : ans = ans + (y_ext << i);		//partial[i/2] = y;
				3'b011 : ans = ans + (2*y_ext << i);		//partial[i/2] = 2*{1'b0,y};
				3'b100 : ans = ans + (-2*y_ext<< i);		//partial[i/2] = -2*{1'b0,y};	//adding extra bit to accomdate the sign bit
				3'b101 : ans = ans + (-1*y_ext<< i);		//partial[i/2] = -1*{1'b0,y};
				3'b110 : ans = ans + (-1*y_ext<< i);		//partial[i/2] = -1*{1'b0,y};
				//3'b111 : ans = ans + (0 << i);		//partial[i/2] = 0;
			endcase
		end
	end
	
	assign result = ans;
	
endmodule
