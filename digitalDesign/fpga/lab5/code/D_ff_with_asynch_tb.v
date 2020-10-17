module D_ff_with_asynch_tb(

    );
    reg Clk, D, reset;
    wire Q;
    integer i;
    reg [1:0] params;
    
    D_ff_with_asynch DUT (.D(D), .Clk(Clk), .reset(reset), .Q(Q));
    
    initial 
    begin
        for (i = 0; i < 101; i = i + 1)
        begin
            if (i == 0)
                begin
                D <= 0;
                Clk <= 0;
                params <= i;
                reset = 0;
                end
             else if (i % 10 == 0)
                begin
                #1 Clk <= !Clk;
                end
             else
                #1 params = i;
            if (i == 20)
                D <= 1;
            if (i == 35)
                reset <= 1;
            if (i == 40)
                reset <= 0;
            if (i == 45)
                reset <= 1;
            if (i == 55)
                reset <= 0;
            if (i == 85)
                D <= 0;
            if (i == 87)
                reset <= 1;
            if (i == 92)
                reset <= 0;
           end
           end
endmodule
