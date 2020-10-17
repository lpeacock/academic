`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2020 03:35:19 PM
// Design Name: 
// Module Name: D_ff_behavior
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


module D_ff_behavior(
input D, 
input Clk, 
input reset_n,
output reg Q); 
always @ (posedge Clk)
     if(Clk)     
        begin 
        if (!reset_n)
            Q <= 0;
        else       
            Q <= D;    
        end 
endmodule
