`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/24/2020 12:58:32 PM
// Design Name: 
// Module Name: sr_latch
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


module sr_latch(
    input R,
    input S,
    output Q,
    output Qbar
    );
    assign #2 Q_i = Q; 
    assign #2 Qbar_i = Qbar; 
    assign #2 Q = ~ (R | Qbar); 
    assign #2 Qbar = ~ (S | Q); 
endmodule

