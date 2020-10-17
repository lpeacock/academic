`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/22/2020 07:59:44 PM
// Design Name: 
// Module Name: mux2_2wide
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


module mux2_2wide(
    input[1:0] x,
    input[1:0] y,
    input s,
    output[1:0] m
    );
    
    wire selbar, a1out, a2out, a3out, a4out;
    
    not i1(selbar, s);
    and a1(a1out, s, y[0]);
    and a2(a2out, x[0], selbar);
    or o1(m[0], a1out, a2out);
    
    and a3(a3out, s, y[1]);
    and a4(a4out, x[1], selbar);
    or o2(m[1], a3out, a4out);
endmodule
