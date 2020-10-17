`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2020 03:21:55 PM
// Design Name: 
// Module Name: testbench_8_2_1
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


module testbench_8_2_1(

    );
    reg clk;
    reg   clear;
    reg   up_down;
    wire  [7:0] qd;
    
    integer i;
    counter DUT (.clear(clear), .up_down(up_down), .qd(qd), .clk(clk));
    initial clk = 0;
    initial clear = 0;
    initial up_down = 0;
    initial
    begin
    for(i = 0; i < 201; i = i + 1)
        begin
        if (i % 5 == 0)
            clk = ~clk;
        if (i == 1)
            clear = 1;
        if (i == 100)
            up_down = 1;
        #1 clk = clk;
         end
    end
    
endmodule
