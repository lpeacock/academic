`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2020 04:56:09 PM
// Design Name: 
// Module Name: D_ff_with_asynch
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


module D_ff_with_asynch(
input D, 
input Clk, 
input reset, 
output reg Q);   
 
always @(posedge Clk)       
    if (reset)        
        begin          
        Q <= 1'b0;       
        end 
    else        
        begin          
        Q <= D;       
        end 
endmodule
