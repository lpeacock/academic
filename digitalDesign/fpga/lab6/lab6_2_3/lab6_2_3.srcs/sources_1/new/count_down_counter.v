`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2020 10:07:22 AM
// Design Name: 
// Module Name: count_down_counter
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


module count_down_counter(
    input Load,
    input Enable,
    input Clear,
    input Clk,
    output [3:0] Q
    );
    reg [3:0] count;     
    wire cnt_done;     
    assign cnt_done = ~| count;     
    assign Q = count;      
    always @(posedge Clk)       
    if (Clear)          
        count <= 0;       
    else if (Enable)          
        if (Load | cnt_done)             
            count <= 4'b1010;   // decimal 10          
        else             
            count <= count - 1;
endmodule
