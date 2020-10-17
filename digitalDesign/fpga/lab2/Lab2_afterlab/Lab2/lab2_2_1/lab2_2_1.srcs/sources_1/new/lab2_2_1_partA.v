`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/29/2020 05:14:47 PM
// Design Name: 
// Module Name: lab2_2_1_partA
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


module lab2_2_1_partA(
    input [3:0] v,
    output [3:0] m,
    output z
    );
    
    assign m[3] = v[3]&~v[2]&~v[3];
    assign m[2] = (~v[3]&v[2])|(v[2]&v[1]); //y = A'B + BC
    assign m[1] = (~v[3]&v[1])|(v[3]&v[2]&~v[1]); //y = A'C + ABC'
    assign m[0] = v[0]; //y = D
    assign z = v[3]&(v[2]|v[1]); // y = A(C+B)
    
endmodule
