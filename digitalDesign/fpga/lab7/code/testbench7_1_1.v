module testbench7_1_1(

    );
    reg [7:0] PORT_A;

    initial
    begin
        PORT_A = 8'h20;
        PORT_A = #5 8'hF2;
        PORT_A = #5 8'h41;
        PORT_A = #5 8'h0A;
    end
endmodule
