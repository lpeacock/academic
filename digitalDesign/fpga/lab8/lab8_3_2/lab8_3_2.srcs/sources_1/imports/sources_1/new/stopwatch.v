`timescale 1ns / 1ps


module stopwatch(
    input Clk,
    input en,
    input reset,
    input [1:0] M,
    output [6:0] S0,
    output [6:0] S1,
    output [6:0] M0,
    output [6:0] M1,
    output Clk_div_output, 
    output [7:0] Q
    );
    wire [3:0] m1, s0, s1, m0;
    
    assign s0 = (Q) % 10;
    assign s1 = ((Q) / 10) % 6;
    assign m0 = (Q / 60) % 10;
    assign m1 = (Q / 6000) % 10;
    
    clk_divider D1(.rst(reset), .clk(Clk), .clk_div(Clk_div_output));
    counter C1(.clk(Clk_div_output), .reset(reset), .counter(Q), .M(M), .en(en));
    bcdto7segment_dataflow B0(.x(m0), .seg(M0));
    bcdto7segment_dataflow B1(.x(s0), .seg(S0));
    bcdto7segment_dataflow B2(.x(s1), .seg(S1));
    bcdto7segment_dataflow B3(.x(m1), .seg(M1));

endmodule
