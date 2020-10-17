`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/19/2020 05:39:31 PM
// Design Name: 
// Module Name: add_two_values_task
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


module add_two_values_task(
        input [3:0] a,
        input [3:0] b,
        output reg [3:0] sum,
        output reg c_out

    );
    
    task add_two_values;
        //inout c1, c2, c3;
        input [3:0] a;
        input [3:0] b;
        output reg [3:0] sum;
        output reg c_out;

        begin
            assign sum = 0;
            assign {c_out, sum} = a+b;
 
            //fulladder_dataflow M1 (.a(a[0]), .b(b[0]), .cin(0), .cout(c1), .s(sum[0]));
            //fulladder_dataflow M2 (.a(a[1]), .b(b[1]), .cin(c1), .cout(c2), .s(sum[0]));
            //fulladder_dataflow M3 (.a(a[2]), .b(b[2]), .cin(c2), .cout(c3), .s(sum[0]));
            //fulladder_dataflow M4 (.a(a[3]), .b(b[3]), .cin(c3), .cout(c_out), .s(sum[0]));    
            
        end
    endtask
    
    always @(a or b) 
        add_two_values(a, b, sum, c_out);
endmodule
