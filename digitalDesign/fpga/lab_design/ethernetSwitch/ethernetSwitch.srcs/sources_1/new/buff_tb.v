`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2020 03:15:27 PM
// Design Name: 
// Module Name: buff_tb
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


module buff_tb(

    );
    reg Clk, enable, lead;
    wire [111:0] hold;
    integer i;
    buffer DUT (.Clk(Clk), .enable(enable), .hold(hold), .lead(lead));
    
    integer i;
    initial Clk = 1;
    initial enable = 1;
    initial lead = 0;
    initial
    begin
    for(i = 0; i < 1120; i = i + 1)
        begin
        if (i % 5 == 0)
            Clk = ~Clk;
        if (i % 10 == 0)
            lead = ~lead;
        #1 Clk = Clk;
         end
    end
endmodule
