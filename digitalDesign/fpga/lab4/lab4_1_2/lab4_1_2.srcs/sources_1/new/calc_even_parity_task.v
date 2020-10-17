`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/19/2020 08:19:23 PM
// Design Name: 
// Module Name: calc_even_parity_task
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


module calc_even_parity_task(
    input [7:0] in_reg,
    output reg out_parity
    );
    
    task calc_even_parity;
        input [7:0] in_reg;
        output reg out_parity;
        integer parity, k;
        
        begin
            parity = 0;
            for (k=0; k < 8; k = k + 1)
                if(in_reg[k])
                    parity = (parity + 1) % 2;
            assign out_parity = parity;
        end
     endtask
     
     always @ (in_reg)
        calc_even_parity(in_reg, out_parity);
endmodule
