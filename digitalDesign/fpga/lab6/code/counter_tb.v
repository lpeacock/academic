module counter_tb(

    );
    reg Clk, Enable, Clear;
    wire [3:0] Count_Contents;
    integer i;
    reg [1:0] params;
    
    counter DUT (.Enable(Enable), .Clk(Clk), .Clear(Clear), .Count_Contents(Count_Contents));
    
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
                end
             else if (i % 10 == 0)
                begin
                #1 Clk <= !Clk;
                end
             else
                #1 params = i;
              if (i == 20)
                Enable = 1;
              if ( i == 120)
                Enable = 0;
              if (i == 200)
                Enable = 1;
              if ( i == 40) 
                Clear = 1;
                end
                end
endmodule
