`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/19/2020 08:39:50 PM
// Design Name: 
// Module Name: add_two_values_function
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


module add_two_values_function(
    input [3:0] a,
    input [3:0] b,
    output reg [4:0]  sum
    );
    
    function [4:0] add_two_values;
        input [3:0] ain;
        input [3:0] bin;
        begin
            add_two_values = ain + bin;
        end 
    endfunction
    
    always @ (a or b)
        sum = add_two_values(a, b);
endmodule
