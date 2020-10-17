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
    
    integer a = 3;
    integer b = 2;
    integer c = 1;
    integer d = 0;
    
    assign seg[0] = ~x[b]&~x[d]+x[c]+x[b]&x[d]+x[a];
    assign seg[1] = ~x[b]+~x[c]&~x[d]+x[c]&x[d];
    assign seg[2] = ~x[c]+x[d]+x[b];
    assign seg[3] = ~x[b]&~x[d]+~x[b]&x[c]+x[b]&~x[c]&x[d]+x[c]&~x[d]+x[a];
    assign seg[4] = ~x[b]&~x[d]+x[c]&~x[d];
    assign seg[5] = ~x[c]&~x[d]+x[b]&~x[c]+x[b]&~x[d]+x[a];
    assign seg[6] = ~x[b]&x[c]+x[b]&~x[c] + x[a] + x[b]&~x[d];
    
endmodule
