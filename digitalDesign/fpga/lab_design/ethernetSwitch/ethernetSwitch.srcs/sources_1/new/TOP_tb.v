`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/26/2020 11:52:49 AM
// Design Name: 
// Module Name: TOP_tb
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


module TOP_tb(

    );
    reg Clk, lead, manual_reset;
    wire silent;
    wire ready, done;
    wire [47:0] address;
    wire [5:0] count;
    wire [111:0] hold;
    wire PORT_A_Down;
    wire PORT_B_Down;
    
    integer i;
    TOP DUT (.Clk(Clk), .GATEWAY_Down(lead), .address(address), .silent(silent), .count(count),
     .ready(ready), .done(done), .hold(hold), .PORT_A_Down(PORT_A_Down), .PORT_B_Down(PORT_B_Down), .manual_reset(manual_reset));
    //reg [47:0] test_address = 48'hFFFFFFFFFFFF;
    reg [47:0] test_address = 48'h123456789ABC;

    integer i;
    initial Clk = 1;
    initial lead = 0;
    initial manual_reset = 1;
    initial
    begin
    //CREATE INTERGAP
    for(i = 0; i < 120; i = i + 1)
        begin
        if (i == 1)
            manual_reset = 0;
        lead = 0;
        if (i % 5 == 0)
            Clk = ~Clk;
        #1 Clk = Clk;
         end
    //CREATE PREAMBLE
    for(i = 120; i < 760; i = i + 1)
        begin
        if (i % 5 == 0)
            Clk = ~Clk;
        if ((i-2) % 10 == 0 && (i <= 745))
            lead = ~lead;
        #1 Clk = Clk;
         end
     //CREATE DESTINATION MAC ADDRESS
    for(i = 760; i <= 1245; i = i + 1)
        begin
        if (i % 5 == 0)
            Clk = ~Clk;
        #1 Clk = Clk;
       // lead = test_address[(i-765+11)/10 % 48];
        lead = test_address[(1225-i+11)/10 % 48];
        end
    //CREATE RANDOM STATELESS TRAFFIC    
    for(i = 1246; i < 3120; i = i + 1)
        begin
        if (i % 5 == 0)
            Clk = ~Clk;
        //CREATE INTERGAP
        if(i>=1500)
            lead = 0;
        else
            lead = 1;
        #1 Clk = Clk;
        
        end
     
    end
endmodule
