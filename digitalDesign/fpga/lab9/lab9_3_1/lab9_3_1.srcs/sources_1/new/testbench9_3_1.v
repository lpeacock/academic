`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2020 12:04:42 PM
// Design Name: 
// Module Name: testbench9_3_1
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


module testbench9_3_1(

    );
    reg clk, reset;
    wire [2:0] count;
    integer i;
    
    FSM9_3_1 DUT (.clk(clk), .count(count), .reset(reset));
    
    integer i;
    initial clk = 1;
    initial reset = 1;
    initial
    begin
    for(i = 0; i < 201; i = i + 1)
        begin
        if (i % 5 == 0)
            clk = ~clk;
        if (i == 20 || i == 140)
            reset = 0;
        if (i == 120)
            reset = 1;
        #1 clk = clk;
         end
    end
endmodule
