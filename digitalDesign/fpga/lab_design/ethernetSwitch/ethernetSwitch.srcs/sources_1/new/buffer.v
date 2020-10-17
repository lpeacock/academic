`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2020 03:06:05 PM
// Design Name: 
// Module Name: buffer
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


module buffer(
    input Clk,
    input enable,
    input lead,
    input [47:0] address,
    output reg [111:0] hold,
    output reg outstream
    );
    reg [63:0] preamble = 64'b1010101010101010101010101010101010101010101010101010101010101011;
    reg count = 0;
    reg test = 0;
    always @(posedge Clk)
    if (enable)
    
        if (!count || !test)
            begin
                 hold = {preamble[62:0], address, lead};
                 outstream <= preamble[63];
                 count = 1;
                 test = 1;
            end
            
        else
         begin
         {outstream, hold} <= hold << 1;
         hold <= {hold, lead};
         end
     
     always@(posedge enable)
        begin
        test <= 0;
        count <= 0;
        end
endmodule
