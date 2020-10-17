module D_ff_synch_tb(

    );
    reg Clk, D, reset, ce;
    wire Q;
    integer i;
    reg [1:0] params;
    
    D_ff_synch_reset DUT (.D(D), .Clk(Clk), .reset(reset), .Q(Q), .ce(ce));
    
    initial 
    begin
        for (i = 0; i < 301; i = i + 1)
        begin
            if (i == 0)
                begin
                D <= 0;
                Clk <= 0;
                params <= i;
                reset = 0;
                ce = 0;
                end
             else if (i % 10 == 0)
                begin
                #1 Clk <= !Clk;
                end
             else
                #1 params = i;
             if (i == 20)
                D <= 1;
             if (i == 100)
                D <= 0;
             if (i == 220)
                D <= 1;
             if (i == 60)
                ce <= 1;
             if (i == 80)
                ce <= 0;
             if (i == 180)
                ce <= 1;
             if (i == 200)
                ce <= 0;
             if (i == 260)
                ce <= 1;
             if (i == 280)
                ce <= 0;
             if (i == 120)
                reset <= 1;
             if (i == 140)
                reset <= 0;
                end
                end
endmodule
