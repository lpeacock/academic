`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/29/2020 02:09:56 PM
// Design Name: 
// Module Name: bcdto2outof5
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


module bcdto2outof5(
    input [3:0] x,
    input [4:0] y
    );
    assign y[4] = x[3]|(x[2]&x[1]);
    assign y[3] = (x[2]&~x[3])|(x[3]&x[0])|(~x[2]&x[1]&x[0]);
    assign y[2] = (x[3]&~x[0])|(~x[3]&~x[1]&x[0])|(~x[2]&x[1]&~x[0]);
    assign y[1] = (~x[3]&~x[2]&~x[0])|(~x[3]&~x[1]&~x[0])|(x[2]&x[1]&x[0]);
    assign y[0] = (~x[3]&~x[2]&~x[1])|(~x[3]&~x[2]&x[0])|(~x[3]&~x[1]&x[0]);
endmodule
