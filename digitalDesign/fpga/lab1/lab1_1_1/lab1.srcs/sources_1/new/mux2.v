`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/22/2020 07:54:28 PM
// Design Name: 
// Module Name: mux2
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


module mux2(
    input x,
    input y,
    input s,
    output m
    );
    wire selbar, a1out, a2out;
    not i1(selbar, s);
    and a1(a1out, s, y);
    and a2(a2out, x, selbar);
    or o1(m, a1out, a2out);
endmodule
