`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2020 04:05:42 PM
// Design Name: 
// Module Name: three_d_latch_tb
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


module three_d_latch_tb(

    );
    reg Clk, D;
    wire Qa, Qb, Qc;
    integer i;
    reg [1:0] params;
    
    three_d_latch DUT (.D(D), .Clk(Clk), .Qa(Qa), .Qb(Qb), .Qc(Qc));
    
    initial 
    begin
        for (i = 0; i < 51; i = i + 1)
        begin
            if (i == 0)
                begin
                D <= 0;
                Clk <= 0;
                params <= i;
                end
             else if (i % 10 == 0)
                begin
                #1 Clk <= !Clk;
                end
             else
                #1 params = i;
            if (i == 8)
                D <= 1;
            if (i == 12)
                D <= 0;
            if (i == 13)
                D <= 1;
            if (i == 16)
                D <= 0;
            if (i == 22)
                D <= 1;
            if (i == 25)
                D <= 0;
            if (i == 26)
                D <= 1;
            if (i == 28)
                D <= 0;
            if (i == 32)
                D <= 1;
            if (i == 34)
                D <= 0;
            if (i == 36)
                D <= 1;
            if (i == 42)
                D <= 0;
                
                     
        end
    end
endmodule
