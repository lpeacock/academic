`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/24/2020 02:06:16 PM
// Design Name: 
// Module Name: sr_latch_gated_tb
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


module sr_latch_gated_tb(

    );
    reg R, S, E; 
    wire Qbar, Q;
    integer i;
    reg [2:0] params;
    
    sr_latch_gated DUT (.R(R), .S(S), .Q(Q), .Qbar(Qbar), .E(E));
    
    initial 
    begin
        for (i = 7; i > -1; i = i - 1)
        begin
            #20 params = i;
            R <= params[0];
            S <= params[1];
            E <= params[2];
        end
    end
endmodule
