`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2020 02:18:53 PM
// Design Name: 
// Module Name: preambleDetector
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


module preambleDetector(
    input Clk,
    input reset,
    input lead,
    output reg ready,
    output reg [5:0] count
    );
    
    reg [2:0] nextstate;
    reg [2:0] state;
    parameter S0 = 0, S1 = 1, S2 = 2, S3 = 3;
    
    always@(posedge reset, posedge Clk)
    if (reset)
        begin
        count <= 0;
        state <= S0;
        end
    else
        state <= nextstate;
        
        
    always @ (state, lead) // Next state
        case (state)
            0: if(lead) nextstate = S1;
            1: if(!lead) 
                nextstate = S2;
               else 
                if( count == 31) 
                    nextstate = S3;
               
            2: if(lead)
               begin
                count = count + 1;
                nextstate = S1;
               end
            default: nextstate = state;
        endcase
        
        
   always @ (state, lead) // Mealy output
        case (state)
           S1: if(count==31 && lead) ready = 1;
           S3: ready = 0;
           default: ready = 0;
        endcase

        endmodule
