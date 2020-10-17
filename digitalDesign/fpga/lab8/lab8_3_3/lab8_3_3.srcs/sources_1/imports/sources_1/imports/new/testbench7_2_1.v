`timescale 1ns / 1ps
`define clk_period 10


module testbench7_2_1(
);
    reg clock_in, rst;
    wire clock_out;
    wire [6:0] S0, S1, M1, M0;
    wire [11:0] Q;
    
    stopwatch STOP(
    .Clk(clock_in),
    .reset(rst),
    .M1(M1),
    .S0(S0),
    .S1(S1),
    .M0(M0),
    .Clk_div_output(clock_out),
    .Q(Q));
    
    initial clock_in = 1'b1;
    initial rst = 0;
    always #(`clk_period/2) clock_in = ~clock_in;
    
    initial 
    begin
        #(`clk_period);
        rst = 1;
        #(`clk_period);
        rst = 0;
        #(`clk_period);
    end
endmodule