`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2020 09:44:40 PM
// Design Name: 
// Module Name: D_ff_synch_reset
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


module D_ff_synch_reset(
input D, 
input Clk, 
input reset, 
input ce, 
output reg Q);    
always @(posedge Clk)       
if (reset)        
	begin          
	Q <= 1'b0;       
	end 
else if (ce)       
	begin          
	Q <= D;       
	end 
endmodule
