`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/22/2020 09:06:40 PM
// Design Name: 
// Module Name: lab1_4_1
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


module lab1_4_1(
    input u,
    input y,
    input w,
    input s0,
    input s1,
    output m
    );
    wire intermediate;
    mux2 M1 (.x(u), .y(y), .s(s0), .m(intermediate));
    mux2 M2 (.x(intermediate), .y(w), .s(s1), .m(m));

endmodule
