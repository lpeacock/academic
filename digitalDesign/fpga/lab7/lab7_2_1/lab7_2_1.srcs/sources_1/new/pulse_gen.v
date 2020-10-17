`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/24/2020 08:29:36 PM
// Design Name: 
// Module Name: pulse_gen
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


module pulse_gen(
    output        clk_out1,
  // Status and control signals
  output        locked,
 // Clock in ports
  input         clk_in1
    );
    clk_wiz_0 M1 (.clk_out1(clk_out1), .clk_in1(clk_in1));
endmodule
