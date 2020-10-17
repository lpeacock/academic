`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/24/2020 01:47:36 PM
// Design Name: 
// Module Name: sr_latch_gated
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


module sr_latch_gated(
    input R,
    input S,
    input E,
    output Q,
    output Qbar
    );
    wire r_inter, s_inter;
    assign #2 r_inter = R & E;
    assign #2 s_inter = S & E;
    assign #2 Q_i = Q; 
    assign #2 Qbar_i = Qbar; 
    assign #2 Q = ~ (r_inter | Qbar); 
    assign #2 Qbar = ~ (s_inter | Q); 
endmodule
