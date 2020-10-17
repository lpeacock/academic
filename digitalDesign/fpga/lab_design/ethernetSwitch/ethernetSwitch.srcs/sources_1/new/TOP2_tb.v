`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/26/2020 08:46:24 PM
// Design Name: 
// Module Name: TOP2_tb
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


module TOP2_tb(

    );
    reg Clk, PORT_A_Up, manual_reset, PORT_B_Up, GATEWAY_Down;
    wire silent;
    wire ready, done;
    wire [47:0] address;
    wire [5:0] count;
    wire [111:0] hold;
    wire PORT_A_Down, PORT_B_Down;
    wire PORT_A_Down, PORT_B_Down;
    wire gateway;

    integer i;
    TOP DUT (.Clk(Clk), .GATEWAY_Down(GATEWAY_Down), .address(address), .silent(silent), .count(count),
     .ready(ready), .done(done), .hold(hold), .PORT_A_Down(PORT_A_Down), .PORT_B_Down(PORT_B_Down),
     .manual_reset(manual_reset), .GATEWAY_Up(gateway), .PORT_A_Up(PORT_A_Up), .PORT_B_Up(PORT_B_Up));
    reg [47:0] test_address1 = 48'hFFFFFFFFFFF1;
    reg [47:0] test_address2 = 48'h123456789ABC;

    integer i;
    initial Clk = 1;
    initial PORT_A_Up = 0;
    initial PORT_B_Up = 0;
    initial GATEWAY_Down = 0;
    initial manual_reset = 1;
    initial
    begin
    //CREATE INTERGAP
    for(i = 0; i < 120; i = i + 1)
        begin
        if (i == 1)
            manual_reset = 0;
        GATEWAY_Down = 0;
        if (i % 5 == 0)
            Clk = ~Clk;
        #1 Clk = Clk;
         end
    //CREATE PREAMBLE (640 ns)
    for(i = 120; i < 760; i = i + 1)
        begin
        if (i % 5 == 0)
            Clk = ~Clk;
        if ((i-2) % 10 == 0 && (i <= 745))
            GATEWAY_Down = ~GATEWAY_Down;
        #1 Clk = Clk;
         end
     //CREATE DESTINATION MAC ADDRESS (485 ns)
    for(i = 760; i <= 1245; i = i + 1)
        begin
        if (i % 5 == 0)
            Clk = ~Clk;
        #1 Clk = Clk;
       // lead = test_address[(i-765+11)/10 % 48];
        GATEWAY_Down = test_address1[(1225-i+11)/10 % 48];
        end
    //CREATE RANDOM STATELESS TRAFFIC    
    for(i = 1246; i < 2500; i = i + 1)
        begin
        if (i % 5 == 0)
            Clk = ~Clk;
        //CREATE INTERGAP
        if(i>=1400)
            GATEWAY_Down = 0;
        else
            GATEWAY_Down = 1;
        #1 Clk = Clk;
        
        end
     //CREATE PREAMBLE
    for(i = 2500; i < 3140; i = i + 1)
        begin
        if (i % 5 == 0)
            Clk = ~Clk;
        if ((i-2) % 10 == 0 && (i <= 3125))
            GATEWAY_Down = ~GATEWAY_Down;
        #1 Clk = Clk;
         end
     //CREATE DESTINATION MAC ADDRESS
    for(i = 3140; i <= 3625; i = i + 1)
        begin
        if (i % 5 == 0)
            Clk = ~Clk;
        #1 Clk = Clk;
        GATEWAY_Down = test_address2[(3605-i+11)/10 % 48];
        end
    //CREATE RANDOM STATELESS TRAFFIC    
    for(i = 3605; i < 5200; i = i + 1)
        begin
        if (i % 5 == 0)
            Clk = ~Clk;
        //CREATE INTERGAP
        if(i>=4000)
            GATEWAY_Down = 0;
        else
            PORT_B_Up = 1;
        #1 Clk = Clk;
        
        end
    end
endmodule
