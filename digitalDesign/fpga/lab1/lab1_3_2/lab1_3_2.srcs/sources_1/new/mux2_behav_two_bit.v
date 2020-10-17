`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/22/2020 08:58:16 PM
// Design Name: 
// Module Name: mux2_behav_two_bit
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


module mux2_behav_two_bit(
    input [1:0] x,
    input [1:0] y,
    input s,
    output reg [1:0]  m
    );
    
    always @ (x or y or s) 
    begin       
        if(s==0)              
            m[1:0]=y[1:0];       
        else              
         m[1:0]=x[1:0]; 
    end 
endmodule
