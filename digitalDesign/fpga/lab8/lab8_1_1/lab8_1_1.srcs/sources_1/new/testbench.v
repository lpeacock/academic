`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2020 05:21:10 PM
// Design Name: 
// Module Name: testbench
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


module testbench;

    
    reg [3:0] a, b;
    wire [3:0] s;
    reg cin;
    wire cout;
    integer i;
    
    TOP DUT (.a(a), .b(b), .cin(cin), .cout(cout),.s(s));
    initial 
    begin
        //for(i = 0; i < 16; i = i + 1)
           // begin
            cin = 0;
            a = 4'b0000;

            b = 4'b1000; 
            //end
    end
    endmodule
