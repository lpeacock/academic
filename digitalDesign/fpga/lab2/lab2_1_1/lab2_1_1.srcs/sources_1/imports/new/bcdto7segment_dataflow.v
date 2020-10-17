`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/22/2020 09:32:27 PM
// Design Name: 
// Module Name: bcdto7segment_dataflow
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


module bcdto7segment_dataflow(
    input [3:0] x,
    output [7:0] AN,
    output [6:0] seg
    );
   
    assign AN = 8'b11111110;
    assign x = 4'b0111; // x = 7
    
    
    assign seg[0]=(x[0]&~x[1]&~x[2]&~x[3])|(~x[0]&~x[1]&x[2]&~x[3]);
    assign seg[1]=(~x[0]&x[1]&x[2])|(x[0]&~x[1]&x[2]);
    assign seg[2]=~x[0]&x[1]&~x[2]&~x[3];
    assign seg[3]=(x[0]&~x[1]&~x[2]&~x[3])|(~x[0]&~x[1]&x[2]&~x[3])|(x[0]&x[1]&x[2]&~x[3]);
    assign seg[4]=(~x[1]&x[2])|x[0];
    assign seg[5]=(x[0]&x[1])|(x[1]&~x[2]&~x[3])|(x[0]&~x[2]&~x[3]);
    assign seg[6]=(~x[1]&~x[2]&~x[3])|(x[0]&x[1]&x[2]&~x[3]);
    
endmodule
