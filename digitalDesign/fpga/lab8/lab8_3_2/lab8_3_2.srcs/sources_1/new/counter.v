`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2020 07:27:00 PM
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


module counter( input clk, reset, output [7:0] counter, input [1:0]M, input en
    );
reg [7:0] counter_down;

// down counter
always @(posedge clk or posedge reset or posedge en)
begin
if(reset)
 case (M)
    2'b00 : counter_down <= counter_down;
    2'b01 : counter_down <= 61;
    2'b10 : counter_down <= 121;
    3'b11 : counter_down <= 181;
 endcase
else if (en)
 if (counter_down == 0)
    counter_down = 0;
 else
    counter_down <= counter_down - 4'd1;
end 
assign counter = counter_down;
endmodule
