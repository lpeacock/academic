`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/05/2020 08:16:30 PM
// Design Name: 
// Module Name: lab3_2_2
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


module lab3_2_2(
    input [1:0] a,
    input [1:0] b,
    output reg [3:0] product
    );
    
    reg [3:0] ROM [15:0];
    wire [3:0] ROM_data;
    wire [3:0] ROM_addr;
    
    assign ROM_addr[0] = a[0];
    assign ROM_addr[1] = a[1];
    assign ROM_addr[2] = b[0];
    assign ROM_addr[3] = b[1];

    assign ROM_data = ROM[ROM_addr];
    always @(ROM_data)
        begin 
        product[3]= ROM_data[3];
        product[2]= ROM_data[2];
        product[1] = ROM_data[1];
        product[0] = ROM_data[0];
        end
    initial begin
        $readmemb ("ROM_data.txt", ROM);
    end
endmodule
