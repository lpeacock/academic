`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2020 02:27:42 AM
// Design Name: 
// Module Name: delay_line_behavior
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


module delay_line_behavior(
input Clk, 
input ShiftIn, 
output ShiftOut);     
reg [2:0] shift_reg;      
always @(posedge Clk)           
shift_reg <= {shift_reg[1:0], ShiftIn};     
assign ShiftOut = shift_reg[2]; 
endmodule
