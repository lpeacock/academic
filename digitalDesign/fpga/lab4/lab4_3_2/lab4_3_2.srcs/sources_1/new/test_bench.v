`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/19/2020 10:16:48 PM
// Design Name: 
// Module Name: test_benchx
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


module test_bench(
    output reg g2,
    output reg g1,
    output reg A
    );
    
    initial
    begin
            {A, g1} = 0;
            g2 = 1;
            #40  A <= 1;
            #20  g1 <= 1;
            #20  g2 <= 0;

            #20  A <= 0;
            #20  g1 <= 0;
            #20  g2 <= 1;
            
           
      end
endmodule
