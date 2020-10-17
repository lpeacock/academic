`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: lab2_2_1_partA_tb
//////////////////////////////////////////////////////////////////////////////////

module lab2_2_1_partA_tb(
    );
    
    wire [7:0] v;
	integer k;
    wire [6:0] seg0, seg1; 
    reg clk, master_reset;
    wire indicator;
    wire [3:0] x_secondDisplay;
    lab2_2_1 M1 (.v(v), .seg0(seg0), .seg1(seg1), .clk(clk), .master_reset(master_reset), .indicator(indicator), .x_secondDisplay(x_secondDisplay));
   
    initial
    begin
    clk = 0;
    master_reset = 1;
    #1 master_reset = 0;

	for(k=0; k < 1000; k=k+1)
		#10 clk = ~clk;
    end

endmodule
