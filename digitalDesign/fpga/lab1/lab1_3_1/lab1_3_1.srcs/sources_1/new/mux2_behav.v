`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/22/2020 08:52:44 PM
// Design Name: 
// Module Name: mux2_behav
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


module mux2_behav(
    input x,
    input y,
    input s,
    output reg m
    );
    always @ (x or y or s) 
    begin       
        if(s==0)             
             m=y;       
        else      
             m=x; 
    end 
endmodule
