`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/30/2020 01:09:56 PM
// Design Name: 
// Module Name: counter
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

module counter(clk, clear, up_down, qd);

// Port Declaration

input   clk;
input   clear;
input   up_down;
output  [7:0] qd;

  c_counter_binary_0 DUT (.CLK(clk), .Q(qd), .SCLR(clear), .UP(up_down));


endmodule
