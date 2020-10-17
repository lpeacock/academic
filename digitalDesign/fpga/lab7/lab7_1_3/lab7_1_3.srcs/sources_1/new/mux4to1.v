`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/24/2020 05:57:19 PM
// Design Name: 
// Module Name: mux4to1
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


module mux4to1(
    input [3:0] x,
    input [1:0] s,
    output reg z
    );
    always @(x or s)
  begin
    case ({s})
      2'b00  : z <= x[0];
      2'b01  : z <= x[1];
      2'b10  : z <= x[2];
      2'b11  : z <= x[3];

    endcase
  end
endmodule
