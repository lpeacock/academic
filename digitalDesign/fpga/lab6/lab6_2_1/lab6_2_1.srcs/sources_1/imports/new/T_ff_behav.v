`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2020 10:03:50 PM
// Design Name: 
// Module Name: T_ff_behav
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


module T_ff_enable_behavior(
input Clk, 
input reset_n, 
input T, 
output reg Q);    
always @(negedge Clk)       
    if (!reset_n)           
        Q <= 1'b0;       
    else if (T)          
        Q <= ~Q; 
endmodule
