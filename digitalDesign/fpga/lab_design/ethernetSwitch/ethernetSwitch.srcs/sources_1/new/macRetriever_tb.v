`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/26/2020 11:10:35 AM
// Design Name: 
// Module Name: macRetriever_tb
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


module macRetriever_tb(

    );
    reg Clk, lead, reset;
    wire [47:0] address;
    wire done;
    wire [2:0] state;
    wire [5:0] count;
    integer i;
    macRetriever DUT (.Clk(Clk), .done(done), .reset(reset), .lead(lead), .state(state), .count(count), .address(address));
    
    integer i;
    initial Clk = 1;
    initial lead = 0;
    initial reset = 0;
    initial
    begin
    for(i = 0; i < 1000; i = i + 1)
        begin
        if (i == 1)
            reset = 1;
        if (i % 5 == 0)
            Clk = ~Clk;
        if (i == 55)
            lead = 0;
        if ((i-2) % 20 == 0)
            lead = ~lead;
        #1 Clk = Clk;
         end
         end
endmodule
