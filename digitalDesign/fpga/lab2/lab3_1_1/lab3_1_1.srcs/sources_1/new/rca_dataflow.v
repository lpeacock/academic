`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/29/2020 02:15:28 PM
// Design Name: 
// Module Name: rca_dataflow
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


module rca_dataflow(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output cout,
    output [3:0] s
    );
    wire cout_intermediate1, cout_intermediate2, cout_intermediate3;
    fulladder_dataflow M0 (.a(a[0]), .b(b[0]), .cin(cin), .cout(cout_intermediate1));
    fulladder_dataflow M1 (.a(a[0]), .b(b[0]), .cin(cout_intermediate1), .cout(cout_intermediate2));
    fulladder_dataflow M2 (.a(a[0]), .b(b[0]), .cin(cout_intermediate2), .cout(cout_intermediate3));
    fulladder_dataflow M3 (.a(a[0]), .b(b[0]), .cin(cout_intermediate3), .cout(cout));


endmodule
