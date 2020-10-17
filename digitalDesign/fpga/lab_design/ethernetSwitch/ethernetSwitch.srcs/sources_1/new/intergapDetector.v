`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2020 02:35:07 PM
// Design Name: 
// Module Name: intergapDetector
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


module intergapDetector(
    input Clk,
    input reset,
    input lead,
    output reg silent
    );
    reg [2:0] state;
    reg [5:0] count;
    reg [2:0] nextstate;
    parameter S0 = 0, S1 = 1, S2 = 2, S3 = 3;

    always@(posedge Clk)
    if (reset)
        begin
        count <= 0;
        state <= S0;
        end
    else
        state = nextstate;
        
        
    always @ (state, lead) // Next state
        case (state)
            0: if(!lead) begin
             nextstate = S1;
             count = count + 1;
             end
            1: if(lead) 
                 begin
                 nextstate = S0;
                 count = 0;
                 end
             else 
                 begin
                 count = count + 1;
                 if (count == 12)
                    nextstate = S3;
                 else 
                    nextstate = S2;
                 end
            2:if(lead) 
                 begin
                 nextstate = S0;
                 count = 0;
                 end
             else 
                 begin
                 count = count + 1;
                 if (count == 12)
                    nextstate = S3;
                 else 
                    nextstate = S1;
                 end
            default: nextstate = state;
        endcase
        
   always @ (state, lead) // Mealy output
        case (state)
           S1: if(count==12) silent = 1;
           S2: if(count==12) silent = 1;
           S3: silent = 1;
           default: silent = 0;
        endcase
endmodule
