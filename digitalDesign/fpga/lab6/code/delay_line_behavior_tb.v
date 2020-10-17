module delay_line_behavior_tb(

    );
    reg Clk, ShiftIn;
    wire ShiftOut;
    integer i;
    reg [1:0] params;
    
    delay_line_behavior DUT (.ShiftIn(ShiftIn), .Clk(Clk), .ShiftOut(ShiftOut));
    
    initial 
    begin
        for (i = 0; i < 201; i = i + 1)
        begin
            if (i == 0)
                begin
                ShiftIn <= 0;
                Clk <= 0;
                end
             else if (i % 10 == 0)
                begin
                #1 Clk <= !Clk;
                end
             else
                #1 params = i;
             if (i == 20)
                ShiftIn = 1;
             if (i == 60)
                ShiftIn = 0;
             if (i == 80)
                ShiftIn = 1;
             if (i == 120)
                ShiftIn = 0;
             end
             end   
endmodule
