`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2020 03:27:57 PM
// Design Name: 
// Module Name: preambleDetector_tb
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


module preambleDetector_tb(

    );
    reg Clk, lead, reset;
    wire ready;
    wire [2:0] state;
    wire [5:0] count;
    integer i;
    preambleDetector DUT (.Clk(Clk), .ready(ready), .reset(reset), .lead(lead), .state(state), .count(count));
    
    integer i;
    initial Clk = 1;
    initial lead = 0;
    initial reset = 0;
    initial
    begin
    for(i = 0; i < 700; i = i + 1)
        begin
        if (i == 1)
            reset = 1;
        if (i % 5 == 0)
            Clk = ~Clk;
        if ((i-2) % 10 == 0 && (i <= 625 || i>= 645))
            lead = ~lead;
        #1 Clk = Clk;
         end
    end
endmodule
