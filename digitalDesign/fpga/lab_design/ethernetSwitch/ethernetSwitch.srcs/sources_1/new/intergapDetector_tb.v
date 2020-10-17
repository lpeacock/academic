`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2020 04:56:33 PM
// Design Name: 
// Module Name: intergapDetector_tb
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


module intergapDetector_tb(

    );
    reg Clk, lead, reset;
    wire silent;
    wire [2:0] state;
    wire [5:0] count;
    integer i;
    intergapDetector DUT (.Clk(Clk), .silent(silent), .reset(reset), .lead(lead), .state(state), .count(count));
    
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
        if ( i == 45)
            lead = 1;
        if (i == 55)
            lead = 0;
        #1 Clk = Clk;
         end
         end
endmodule
