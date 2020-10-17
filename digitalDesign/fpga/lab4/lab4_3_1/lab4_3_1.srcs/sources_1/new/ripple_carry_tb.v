`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/19/2020 09:16:52 PM
// Design Name: 
// Module Name: ripple_carry_tb
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


module ripple_carry_tb(

    );
    reg [3:0] a;
    reg [3:0] b;
    wire [3:0] sum;
    reg [3:0] e_sum;
    reg e_cout;
    reg cin;
    wire cout;
    reg [8:0] k;
    
    rca_dataflow DUT (.a(a), .b(b), .cin(cin), .cout(cout1), .s(sum));
    
    initial
    begin
        for (k = 0; k < 512; k = k + 1)
            begin
                #2 cin = k[0];
                #2 a = k[4:1];
                #2 b = k[8:5];
            end
    end
endmodule
