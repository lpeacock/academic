`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/24/2020 01:02:12 PM
// Design Name: 
// Module Name: sr_latch_tb
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


module sr_latch_tb(
    );
    reg R, S; 
    wire Qbar, Q;
    integer i;
    reg [1:0] params;
    
    sr_latch DUT (.R(R), .S(S), .Q(Q), .Qbar(Qbar));
    
    initial 
    begin
        for (i = 3; i > -1; i = i - 1)
        begin
            #20 params = i;
            R <= params[0];
            S <= params[1];
        end
    end
endmodule
