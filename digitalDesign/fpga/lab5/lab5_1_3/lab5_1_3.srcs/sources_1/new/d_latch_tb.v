`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2020 03:30:27 PM
// Design Name: 
// Module Name: d_latch_tb
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


module d_latch_tb(

    );
    reg D, Enable; 
    wire Qbar, Q;
    integer i;
    reg [2:0] params;
    
    d_latch DUT (.D(D), .Q(Q), .Qbar(Qbar), .Enable(Enable));
    
    initial 
    begin
        for (i = 3; i > -1; i = i - 1)
        begin
            #20 params = i;
            D <= params[0];
            Enable <= params[1];
        end
    end
endmodule
