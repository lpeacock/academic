module testbench7_1_5(
);
    reg reset, enable, Clk;
    wire [2:0] Count_Contents;
    integer i;
    reg [1:0] params;
    
    modified_counter DUT (.reset(reset), .enable(enable), .Clk(Clk), .Count_Contents(Count_Contents));
    
    initial 
    begin
        for (i = 0; i < 220; i = i + 1)
        begin
            if (i == 0)
                begin
                reset <= 0;
                enable <= 1;
                Clk = 0;
                params <= i;
                end
            else if (i % 5 == 0)
                begin
                #1 Clk <= !Clk;
                end
            else
                #1 params = i;
                if (i == 205)
                    enable = 0;
                if (i == 215)
                    reset = 1;
                end
                end
endmodule
