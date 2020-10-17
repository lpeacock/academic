`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2020 07:23:51 PM
// Design Name: 
// Module Name: ASM10_1_1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module ASM10_1_1(
   input [3:0] multiplier, multiplicand,
   input start, clk,
   output reg [7:0] product,
   output reg done,
   output reg [1:0] state
    );
    reg [1:0]  nextstate;
    parameter [1:0] S0=0, S1=1, S2=2, S3=3;
    reg [3:0] acc, Q;
    reg C;
    reg [2:0] count;
    initial C = 0;
    initial count = 0;
    initial acc = 0;
    initial done = 0;
       
       always @(posedge clk) // always block to update state
	state <= nextstate;
	
		always @(state or start or count) // always block to compute both Mealy output & nextstate
		begin
		 case(state)
		 S0: if(start)
		 nextstate = S1;
		 else
		 nextstate = S0;
		 S1: if(count!=0)
		 nextstate = S2;
		 else
		 nextstate = S0;
		 S2: if(count==1)
		 nextstate = S3;
		 else
		 nextstate = S2;
		 
		 default:
		 nextstate = S0;
		 endcase
		end 
	always @(state) // always block to compute Moore output
	begin
	product = {acc, Q};

	 case(state)
	 S0: done = 1;
	 S1:
	    begin
		count = 3;
        done = 0;
        acc = 0;
        C = 0;
        Q = multiplier;
        if(Q[0])
            {C,acc} = acc + multiplicand;
       {C, acc, Q} = {C, acc, Q} >> 1;
       end
	 S2: 
	   begin
		if(Q[0])
            {C,acc} = acc + multiplicand;
       {C, acc, Q} = {C, acc, Q} >> 1;
	   count = count - 1;
	   end
	 S3:
	   begin
	   if(Q[0])
            {C,acc} = acc + multiplicand;
            
       {C, acc, Q} = {C, acc, Q} >> 1;
		count = count - 1;
	 end
	 endcase
	end
	
endmodule
