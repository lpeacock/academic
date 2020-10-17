`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/26/2020 11:40:21 AM
// Design Name: 
// Module Name: TOP
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


module TOP(
    input Clk,
    output reg PORT_A_Down,
    output reg PORT_B_Down,
    input PORT_A_Up,
    input PORT_B_Up,
    input GATEWAY_Down,
    output  GATEWAY_Up,
    output  [47:0] address,
    output  silent,
    output  [5:0] count,
    output ready,
    output done,
    output  [111:0] hold,
    input manual_reset
    );
    //HOLD THE VARIABLE MAC ADDRESS VALUES OF PORT A AND PORT B
    reg [47:0] PORT_A_ADDRESS = 48'hffffffffffff;
    reg [47:0] PORT_B_ADDRESS = 48'h123456789ABC;
    
    //INTERMEDIATE WIRING
    wire [47:0] held_address;
    wire outstream;
    reg [1:0] port;
    preambleDetector M1 (.Clk(Clk), .reset(silent), .lead(GATEWAY_Down), .ready(ready));
    macRetriever M2 (.Clk(Clk), .reset(ready), .lead(GATEWAY_Down), .address(address), .done(done), .count(count));
    buffer M3 (.Clk(Clk), .enable(done), .lead(GATEWAY_Down), .hold(hold), .outstream(outstream), .address(address));
    intergapDetector M4 (.Clk(Clk), .reset(GATEWAY_Down || manual_reset), .lead(GATEWAY_Down), .silent(silent));
    
    always@(posedge Clk)
    if (done)
    begin
        if(address == PORT_A_ADDRESS)
            port = 0;
        else if (address == PORT_B_ADDRESS)
            port = 1;
        else port = 2;
        case(port)
        0: begin
           PORT_A_Down <= outstream;
           PORT_B_Down = 0;
           end
        1:begin
           PORT_B_Down <= outstream;
           PORT_A_Down = 0;
           end
        default: begin
                 PORT_A_Down = 0;
                 PORT_B_Down = 0;
                 end
        endcase
    end
    
    //UPSTREAM OR ASSIGNMENT
    assign GATEWAY_Up = PORT_A_Up || PORT_B_Up;

endmodule
