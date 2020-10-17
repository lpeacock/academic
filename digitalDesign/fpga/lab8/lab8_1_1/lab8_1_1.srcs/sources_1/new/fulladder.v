`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2020 04:53:56 PM
// Design Name: 
// Module Name: fulladder
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


module fulladder(
    input a,
    input b,
    input cin,
    output s,
    output p,
    output g
    );
    parameter AND_DELAY=3, XOR_DELAY=4;
    xor #(XOR_DELAY)(p, a, b);
    xor #(XOR_DELAY)(s, p, cin);
    and #(AND_DELAY)(g, a, b);
endmodule
