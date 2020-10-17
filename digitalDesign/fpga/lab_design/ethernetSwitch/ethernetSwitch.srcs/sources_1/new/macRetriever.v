`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2020 02:52:29 PM
// Design Name: 
// Module Name: macRetriever
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


module macRetriever(
    input Clk,
    input reset,
    input lead,
    output reg [47:0] address,
    output reg done,
    output reg [5:0] count
    );
    
    reg [2:0] nextstate;
    reg [2:0] state;
    reg just_started;
    //reg [5:0] count;
    parameter S0 = 0, S1 = 1, S2 = 2, S3 = 3;
    initial just_started = 0;
    always@(posedge reset, posedge Clk)
    if (reset && !just_started)
        begin
        count <= 0;
        state <= S0;
        address <= 0;
        just_started <= 1;
        end
    else
        state = nextstate;
        
        
    always @ (state) // Next state
        case (state)
            0: begin
             nextstate = S1;
             //count = count + 1;
             //address = {address,lead};
             end
            1: begin
             just_started = 0;
             nextstate = S2;
             count = count + 1;
             address = {address,lead};
             if (count == 48)
                nextstate = S3;
             end
            2: begin
             nextstate = S1;
             count = count + 1;
             address = {address,lead};

             if (count == 48)
                nextstate = S3;
             end
            default: nextstate = state;
        endcase
        
   always @ (state, lead) // Mealy output
        case (state)
           S1: if(count==48) done = 1;
           S2: if(count==48) done = 1;
           S3: done = 1;
           default: done = 0;
        endcase
endmodule
