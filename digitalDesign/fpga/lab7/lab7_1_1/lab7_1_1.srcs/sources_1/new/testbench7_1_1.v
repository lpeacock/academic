`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/24/2020 04:39:09 PM
// Design Name: 
// Module Name: testbench7_1_1
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


module testbench7_1_1(

    );
    reg [7:0] PORT_A;

    initial
    begin
        PORT_A = 8'h20;
        PORT_A = #5 8'hF2;
        PORT_A = #5 8'h41;
        PORT_A = #5 8'h0A;
    end
endmodule
