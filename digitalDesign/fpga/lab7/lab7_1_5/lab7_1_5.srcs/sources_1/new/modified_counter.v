`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/24/2020 07:14:23 PM
// Design Name: 
// Module Name: modified_counter
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


module modified_counter(
    input Clk,
    input enable,
    input reset,
    output reg [2:0] Count_Contents
    );
    reg [2:0] count = 0;
    always @(posedge Clk or negedge enable or posedge reset)
    begin
        if (reset)
            Count_Contents <= 3'b000;
        else if (enable)
            if(Clk)
                begin
                case (count)
                  3'b000  : Count_Contents <= 3'b000;
                  3'b001  : Count_Contents <= 3'b001;
                  3'b010  : Count_Contents <= 3'b011;
                  3'b011  : Count_Contents <= 3'b101; 
                  3'b100  : Count_Contents <= 3'b111; 
                  3'b101  : Count_Contents <= 3'b010; 
                endcase
                count = count + 1;
                if (count == 6)
                    count = 0;
                end
      end
endmodule
