`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/29/2020 06:00:47 PM
// Design Name: 
// Module Name: lab2_2_1
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


module lab2_2_1(
    input [3:0] v,
    output z,
    output [6:0] seg,
    output [7:0] AN
    );
    
    wire intermediate3,intermediate2, intermediate1,intermediate0, z_compare_out;
    wire [3:0] m_intermediate, m_decoder;
    comparator_dataflow M1 (.v(v), .z(z_compare_out));
    lab2_2_1_partA M6 (.v(v), .z(z), .m(m_intermediate));

    mux2 M2(.x(v[3]), .y(0), .s(z_compare_out), .m(m_decoder[3]));
    mux2 M3(.x(v[2]), .y(m_intermediate[2]), .s(z_compare_out), .m(m_decoder[2]));
    mux2 M4(.x(v[1]), .y(m_intermediate[1]), .s(z_compare_out), .m(m_decoder[1]));
    mux2 M5(.x(v[0]), .y(m_intermediate[0]), .s(z_compare_out), .m(m_decoder[0]));
    bcdto7segment_dataflow M7 (.seg(seg), .AN(AN), .x(m_decoder));
    
    //assign m[0] = m_decoder[0];
    //assign m[1] = m_decoder[1];
    //assign m[2] = m_decoder[2];
    //assign m[3] = m_decoder[3];

    
endmodule
