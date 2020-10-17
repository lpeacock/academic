`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/24/2020 09:36:33 PM
// Design Name: 
// Module Name: clk_divider
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


`timescale 1ns / 1ps
module clk_divider(
    input clk,
    input rst,
    output reg clk_div
    );
 
    localparam constantNumber = 250;
    reg [31:0] count;
 
    always @ (posedge(clk), posedge(rst))
    begin
        if (rst == 1'b1)
            count <= 32'b0;
        else if (count == constantNumber - 1)
            count <= 32'b0;
        else
            count <= count + 1;
    end
    
        always @ (posedge(clk), posedge(rst))
    begin
        if (rst == 1'b1)
            clk_div <= 1'b0;
        else if (count == constantNumber  - 1)
            clk_div <= ~clk_div;
        else
            clk_div <= clk_div;
    end
endmodule
