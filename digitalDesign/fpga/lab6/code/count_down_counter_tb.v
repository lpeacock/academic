module count_down_counter_tb(

    );
        reg Clk, Enable, Clear, Load;
    wire [3:0] Q;
    integer i;
    reg [1:0] params;
    
    count_down_counter DUT (.Enable(Enable), .Clk(Clk), .Clear(Clear), .Q(Q), .Load(Load));
    
    initial 
    begin
        for (i = 0; i < 301; i = i + 1)
        begin
            if (i == 0)
                begin
                Enable <= 0;
                Clk <= 0;
                params <= i;
                Clear = 0;
                Load = 0;
                end
             else if (i % 10 == 0)
                begin
                #1 Clk <= !Clk;
                end
             else
                #1 params = i;
              if (i == 20)
                Enable = 1;
              if (i == 170)
                Enable = 0;
              if (i == 210)
                Enable = 1;
              if (i == 40) 
                Clear = 1;
              if (i == 60)
                Clear = 0;
              if (i == 80)
                Load = 1;
              if (i == 90)
                Load = 0;
                end
                end
endmodule

