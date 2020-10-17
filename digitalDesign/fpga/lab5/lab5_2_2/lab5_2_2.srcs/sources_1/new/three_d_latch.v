`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2020 03:59:59 PM
// Design Name: 
// Module Name: three_d_latch
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


module three_d_latch(
    input D,
    input Clk,
    output reg Qa,
    output reg Qb,
    output reg Qc
    );
    always @ (posedge Clk or D)
        if(Clk)
        begin   
            Qa <= D;
        end
    always @ (posedge Clk)
        if(Clk)
        begin   
            Qb <= D;
        end
    always @ (negedge Clk)
        if(!Clk)
        begin   
            Qc <= D;
        end
        
endmodule
