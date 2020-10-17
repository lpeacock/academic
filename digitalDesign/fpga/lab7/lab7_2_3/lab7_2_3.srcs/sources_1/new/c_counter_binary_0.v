`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2020 05:00:05 PM
// Design Name: 
// Module Name: c_counter_binary_0
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


module c_counter_binary_0( 
input clk, reset, 
output[3:0] counter, 
output reg indicator
    );
    
reg [3:0] counter_up;

// up counter
always @(posedge clk or posedge reset)
begin
if(reset || counter == 9)
 begin
 if(~reset)
    indicator <= 1;
 counter_up <= 4'd0;
 end
else
 begin
 counter_up <= counter_up + 4'd1;
 if (indicator)
    indicator = 0;
 end
end 
assign counter = counter_up;
endmodule

