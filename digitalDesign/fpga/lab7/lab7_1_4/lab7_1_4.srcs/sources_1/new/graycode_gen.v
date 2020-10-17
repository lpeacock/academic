`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/24/2020 06:21:05 PM
// Design Name: 
// Module Name: graycode_gen
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


module graycode_gen(
    input [4:0] x_with_en,
    output reg [4:0] y
    );
    
    always @(x_with_en)
    begin
    //x[3:0] correspond with the input BCD
    //x[4] is the enableline
    //y[3:0] correspond with the output gray code
    //y[4] is the output indicator
    case ({x_with_en})
      5'b10000  : y <= 5'b00000;
      5'b10001  : y <= 5'b00001;
      5'b10010  : y <= 5'b00011;
      5'b10011  : y <= 5'b00010;
      5'b10100  : y <= 5'b00110;
      5'b10101  : y <= 5'b01110;
      5'b10110  : y <= 5'b01010;
      5'b10111  : y <= 5'b01011;
      5'b11000  : y <= 5'b01001;
      5'b11001  : y <= 5'b01000;
      default  : y <= 5'b11111;
    endcase
  end
endmodule
