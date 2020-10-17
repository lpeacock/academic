module testbench7_2_1(
);
    wire clock_out_5M;
    reg clock_in, rst;
    wire clock_out_10k;
    
    pulse_gen DUT (.clk_out1(clock_out_5M), .clk_in1(clock_in));
    clk_divider M1 (.clk(clock_out_5M),.rst(rst),.clk_div(clock_out_10k));
    
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