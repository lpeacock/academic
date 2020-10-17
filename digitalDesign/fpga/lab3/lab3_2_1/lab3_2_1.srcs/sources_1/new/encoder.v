`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2020 08:34:30 AM
// Design Name: 
// Module Name: encoder
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


module encoder(
    input [7:0] v,
    input en_in_n,
    output  reg [2:0]  y,
    output reg gs,
    output reg en_out
    );
    always @ (v or en_in_n)
        if(en_in_n == 1) begin
            y[0] = 1;
            y[1] = 1;
            y[2] = 1;
            gs = 1;
            en_out = 1;
            
         end else if(v[7] == 0) begin
            y[0] = 0;
            y[1] = 0;
            y[2] = 0;
            gs <= 0;
            en_out = 1;
           
         end else if(v[6] == 0) begin
            y = 3'b001;
            gs = 0;
            en_out = 1;
            
         end else if(v[5] == 0) begin
            y = 3'b010;
            gs = 0;
            en_out = 1;
            
         end else if(v[4] == 0) begin
            y = 3'b011;
            gs = 0;
            en_out = 1;
            
         end else if(v[3] == 0) begin
            y = 3'b100;
            gs = 0;
            en_out = 1;
            
         end else if(v[2] == 0) begin
            y = 3'b101;
            gs = 0;
            en_out = 1;
            
         end else if(v[1] == 0) begin
            y <= 3'b110;
            gs <= 0;
            en_out <= 1;
            
         end else if(v[0] == 0) begin
            y = 3'b111;
            gs = 0;
            en_out = 1;
            
         end else  begin
            y[0] = 1;
            y[1] = 1;
            y[2] = 1;
            gs = 1;
            en_out = 0;
    end
endmodule
