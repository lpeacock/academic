module testbench9_1_1(

    );
    reg ain, clk, reset;
    wire yout;
    wire [3:0] count;
    integer i;
    wire [3:0] state;
    
    FSM9_1_1 DUT (.ain(ain), .yout(yout), .clk(clk), .count(count), .reset(reset), .state1(state));
    
    integer i;
    initial clk = 1;
    initial reset = 1;
    initial ain = 0;
    initial
    begin
    for(i = 0; i < 201; i = i + 1)
        begin
        if (i % 5 == 0)
            clk = ~clk;
        if (i == 20)
            reset = 0;
        if (i == 40 || i == 120 || i == 180)
            ain = 1;
        if (i == 60 || i == 160)
            ain = 0;
        #1 clk = clk;
         end
    end
endmodule
