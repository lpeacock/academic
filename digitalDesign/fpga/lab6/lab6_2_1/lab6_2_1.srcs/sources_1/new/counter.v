`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2020 08:41:16 AM
// Design Name: 
// Module Name: counter
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


module counter(
    input Enable,
    input Clk,
    input Clear,
    inout [7:0] Count_Contents
    );
    wire intermediate1, intermediate2, intermediate3, intermediate4, intermediate5, intermediate6, intermediate7;
    
    assign intermediate1 = Count_Contents[0] & Enable;
    assign intermediate2 = Count_Contents[1] & intermediate1;
    assign intermediate3 = Count_Contents[2] & intermediate2;
    assign intermediate4 = Count_Contents[3] & intermediate3;
    assign intermediate5 = Count_Contents[4] & intermediate4;
    assign intermediate6 = Count_Contents[5] & intermediate5;
    assign intermediate7 = Count_Contents[6] & intermediate6;
    
    T_ff_enable_behavior M0 (.Clk(Clk), .reset_n(Clear), .T(Enable), .Q(Count_Contents[0]));
    T_ff_enable_behavior M1 (.Clk(Clk), .reset_n(Clear), .T(intermediate1), .Q(Count_Contents[1]));
    T_ff_enable_behavior M2 (.Clk(Clk), .reset_n(Clear), .T(intermediate2), .Q(Count_Contents[2]));
    T_ff_enable_behavior M3 (.Clk(Clk), .reset_n(Clear), .T(intermediate3), .Q(Count_Contents[3]));
    T_ff_enable_behavior M4 (.Clk(Clk), .reset_n(Clear), .T(intermediate4), .Q(Count_Contents[4]));
    T_ff_enable_behavior M5 (.Clk(Clk), .reset_n(Clear), .T(intermediate5), .Q(Count_Contents[5]));
    T_ff_enable_behavior M6 (.Clk(Clk), .reset_n(Clear), .T(intermediate6), .Q(Count_Contents[6]));
    T_ff_enable_behavior M7 (.Clk(Clk), .reset_n(Clear), .T(intermediate7), .Q(Count_Contents[7]));

endmodule
