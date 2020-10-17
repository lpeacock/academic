`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2020 06:22:17 PM
// Design Name: 
// Module Name: stopwatch
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


module stopwatch(
    input Clk,
    input reset,
    output [6:0] M1,
    output [6:0] S0,
    output [6:0] S1,
    output [6:0] M0,
    output Clk_div_output, 
    output [11:0] Q
    );
    wire [3:0] f, s0, s1, m;
    wire master_reset;
    assign s0 = (Q) % 10;
    assign s1 = ((Q) / 10) % 6;
    assign m0 = (Q / 60) % 10;
    assign m1 = (Q / 600) % 6;
    
    assign master_reset = Clk_div_output | reset;
    clk_divider D1(.rst(reset), .clk(Clk), .clk_div(Clk_div_output));
    c_counter_binary_0 C1(.CLK(master_reset), .SCLR(reset), .Q(Q));
    bcdto7segment_dataflow B0(.x(m0), .seg(M0));
    bcdto7segment_dataflow B1(.x(s0), .seg(S0));
    bcdto7segment_dataflow B2(.x(s1), .seg(S1));
    bcdto7segment_dataflow B3(.x(m1), .seg(M1));

endmodule
