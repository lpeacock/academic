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
    input en,
    input reset,
    output [6:0] F,
    output [6:0] S0,
    output [6:0] S1,
    output [6:0] M,
    output Clk_div_output, 
    output [12:0] Q
    );
    wire [3:0] f, s0, s1, m;
    
    assign f = Q % 10;
    assign s0 = (Q / 10) % 10;
    assign s1 = (Q / 100) % 6;
    assign m = (Q / 600) % 10;
    
    clk_divider D1(.rst(reset), .clk(Clk), .clk_div(Clk_div_output));
    c_counter_binary_0 C1(.Q(Q), .CLK(Clk_div_output), .SCLR(reset), .CE(en));
    bcdto7segment_dataflow B0(.x(f), .seg(F));
    bcdto7segment_dataflow B1(.x(s0), .seg(S0));
    bcdto7segment_dataflow B2(.x(s1), .seg(S1));
    bcdto7segment_dataflow B3(.x(m), .seg(M));

endmodule
