`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/29/2020 06:00:47 PM
// Design Name: 
// Module Name: lab2_2_1
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


module lab2_2_1(
    output [6:0] seg0,
    input [7:0] AN0,
    output [6:0] seg1,
    output [7:0] v,
    input clk,
    input master_reset
    );
    wire [3:0] x_firstDisplay, x_secondDisplay;
    wire reset, combined_reset, indicator;
    wire [3:0]intermediate0, intermediate1; 
    assign x_firstDisplay = v % 10;
    assign combined_reset = reset || master_reset;
    
    assign x_secondDisplay = v / 10;
    assign v = intermediate1*10 + intermediate0;
    
    bcdto7segment_dataflow M1 (.seg(seg0), .AN(AN0), .x(x_firstDisplay));
    bcdto7segment_dataflow M2 (.seg(seg1), .AN(AN0), .x(x_secondDisplay));
    c_counter_binary_0 M3 (.clk(clk), .reset(master_reset), .counter(intermediate0), .indicator(indicator));
    c_counter_binary_0 M4 (.clk(indicator), .reset(combined_reset), .counter(intermediate1));
    
    
endmodule
