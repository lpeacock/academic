`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/02/2020 07:17:18 PM
// Design Name: 
// Module Name: testbench
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


module testbench(

    );
    reg Clk, reset, load;
    reg [3:0] D;
    wire [3:0] Q;
    integer i;
    reg [1:0] params;
    
    Register_with_synch_reset_load_behavior DUT (.D(D), .Clk(Clk), .reset(reset), .Q(Q), .load(load));
    
    initial 
    begin
        for (i = 0; i < 301; i = i + 1)
        begin
            if (i == 0)
                begin
                D <= 0;
                Clk <= 0;
                params <= i;
                reset = 0;
                load = 0;
                end
             else if (i % 10 == 0)
                begin
                #1 Clk <= !Clk;
                end
             else
                #1 params = i;
             if (i == 60)
                load = 1;
             if (i == 80)
                begin
                load = 0;
                D = 4'b1001;
                end
             if (i == 120)
                load = 1;
             if (i == 140)
                load = 0;
             if (i == 190)
                load = 1;
             if (i == 215)
                load = 0;
             if (i == 155)
                reset = 1;
             if ( i == 240)
                reset = 0;
             if (i == 20)
                D = 4'b0101; 
             if (i == 300)
                D = 4'b0000;
             if (i ==280)
                load = 1;
             end
             end
endmodule
