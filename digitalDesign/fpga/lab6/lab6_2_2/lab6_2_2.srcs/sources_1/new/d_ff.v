`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2020 09:48:51 AM
// Design Name: 
// Module Name: d_ff
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


module d_ff(
    input T,
    output Q,
    input Clk,
    input reset_n
    );
    wire D;
    assign D = T ^ Q;
    D_ff_behavior M1 (.D(D), .Clk(Clk), .Q(Q), .reset_n(reset_n));
endmodule
