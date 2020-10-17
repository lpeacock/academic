`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/11/2020 12:57:57 PM
// Design Name: 
// Module Name: testbench9_1_1
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


module testbench9_2_1(

    );
    reg [1:0] x;
    reg clk, reset;
    wire yout;
    integer i;
    wire [3:0] state;
    
    FSM9_2_1 DUT (.x(x), .yout(yout), .clk(clk), .reset(reset), .state1(state));
    
    integer i;
    initial clk = 1;
    initial reset = 1;
    initial x = 0;
    initial
    begin
    for(i = 0; i < 251; i = i + 1)
        begin
        if (i % 5 == 0)
            clk = ~clk;
        if (i == 20 || i == 180)
            reset = 0;
        if (i == 170)
            reset = 1;  
        if(i == 40 || i == 100 || i == 150)
            x = 2'b11;
        if(i == 50 || i == 80 || i == 140 || i == 190)
            x = 2'b10;       
        if(i == 60 || i == 90 || i == 110 || i == 130 || i == 160 || i == 220)
            x = 2'b00;
        if(i == 120)
            x = 2'b01;
        #1 clk = clk;
         end
    end
endmodule
