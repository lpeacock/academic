`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/30/2020 01:29:57 PM
// Design Name: 
// Module Name: testbench8_2_1
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


module testbench8_2_1(

    );
     reg clk, clear, up_down;
     wire [7:0] qd;
    integer i;
    
    counter DUT (.clk(clk), .clear(clear), .up_down(up_down), .qd(qd));
    initial 
    begin
        for(i = 0; i < 201; i = i +1)
        begin
            if (i == 0)
                begin
                clk = 1;
                clear = 0;
                up_down = 0;
                end
             else if (i == 1)
                #1 clear = 1;
             else
                if (i % 10)
                    clk = ~clk;
                #1 clk = clk;
             end
             end
endmodule
