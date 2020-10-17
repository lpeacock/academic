`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/24/2020 04:49:13 PM
// Design Name: 
// Module Name: testbench7_1_2
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


module testbench7_1_2(

    );
    reg STREAM;
    integer i;
    
    initial 
    begin
        for(i = 0; i < 36; i = i +1)
        begin
            if (i == 0)
                begin
                STREAM = 0;
                end
             else if (i == 31)
                #1 STREAM = 0;
             else if (i == 1)
                begin
                #1 STREAM = 0;
                end
             else if (i == 17)
                begin
                #1 STREAM =  0;
                end
             else if (i == 24)
                begin
                #1 STREAM = 0;
                end
             else if (i == 12 || i == 26)
                begin
                #1 STREAM =  1;
                end
             else if (i == 20)
                begin
                #1 STREAM = 1;
                end
             else
                begin
                #1 STREAM = STREAM;
                end
          end
          end
    endmodule
