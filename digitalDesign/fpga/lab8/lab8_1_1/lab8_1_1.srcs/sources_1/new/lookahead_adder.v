`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2020 04:50:35 PM
// Design Name: 
// Module Name: lookahead_adder
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

module lookahead_adder(
    input cin,
    input [3:0] p,
    input [3:0] g,
    inout [2:0] c,
    output cout
    );
    parameter AND_DELAY=3, OR_DELAY=3;

    wire mid0, mid1, mid2, mid3;
    and#(AND_DELAY)(mid0, p[0], cin);
    and#(AND_DELAY)(mid1, p[1], c[0]);
    and#(AND_DELAY)(mid2, p[2], c[1]);
    and#(AND_DELAY)(mid3, p[3], c[2]);


    or#(OR_DELAY)(c[0], g[0], mid0);
    or#(OR_DELAY)(c[1], g[1], mid1);
    or#(OR_DELAY)(c[2], g[2], mid2);
    or#(OR_DELAY)(cout, g[3], mid3);


    endmodule 
