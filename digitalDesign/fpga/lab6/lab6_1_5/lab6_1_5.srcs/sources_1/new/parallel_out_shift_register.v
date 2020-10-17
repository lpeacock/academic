`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2020 08:29:49 AM
// Design Name: 
// Module Name: parallel_out_shift_register
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


module parallel_out_shift_register(
    input Clk,
    input ShiftEn,
    input ShiftIn,
    output  [3:0] ParallelOut,
    output  ShiftOut
    );
    reg [3:0] shift_reg;
    always @(posedge Clk)        
       if (ShiftEn)       
        shift_reg <= {shift_reg[2:0], ShiftIn};     
        assign ShiftOut = shift_reg[3];
        assign ParallelOut = shift_reg;    
         
endmodule
