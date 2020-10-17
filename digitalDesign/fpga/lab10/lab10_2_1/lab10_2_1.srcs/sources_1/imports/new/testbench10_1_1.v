`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/15/2020 04:29:52 PM
// Design Name: 
// Module Name: testbench10_1_1
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


module testbench10_1_1(

    );
    reg [3:0] multiplier, multiplicand;
    reg clk, start;
    wire [7:0] product;
    wire done;
    integer i;
    wire [2:0] state;
    ASM10_1_1 DUT (.multiplier_address(multiplier), .multiplicand_address(multiplicand), .clk(clk), .start(start), .product(product), .done(done), .state(state));
    
    integer i;
    initial clk = 1;
    initial start = 0;
    initial multiplier = 4'b0101;
    initial multiplicand =4'b0111;
    initial
    begin
    for(i = 0; i < 501; i = i + 1)
        begin
        if (i % 5 == 0)
            clk = ~clk;
        if (i == 30)
            start = 1;
        if (i == 40 || i == 150 || i == 260)
            start = 0;
        if (i == 140)
            begin
            start = 1;
            multiplier = 4'b1001;
            multiplicand = 4'b1001;
            end
        if (i == 250)
            begin
            start = 1;
            multiplier = 4'b1100;
            multiplicand = 4'b1111;
            end
        #1 clk = clk;
         end
    end
endmodule
