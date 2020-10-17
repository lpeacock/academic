`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/30/2020 09:58:29 AM
// Design Name: 
// Module Name: lab2_3_2
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


module lab2_3_2(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output cout,
    output [6:0] seg,
    output [7:0] AN,
    output z
    );
    wire [3:0] s_intermediate;
    rca_dataflow M1(.a(a), .b(b), .cin(cin), .cout(cout), .s(s_intermediate));
    lab2_2_1 M2 (.v(s_intermediate), .z(z), .seg(seg), .AN(AN));
endmodule
