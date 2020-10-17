module D_ff_behavior_tb(

    );
    reg Clk, D;
    wire Q;
    integer i;
    reg [1:0] params;
    
    D_ff_behavior DUT (.D(D), .Clk(Clk), .Q(Q));
    
    initial 
    begin
        for (i = 0; i < 17; i = i + 1)
        begin
            if (i == 0)
                begin
                D = 0;
                Clk = 0;
                params = i;
                end
             else 
                #10 params = i;
            Clk = params[0];
            if (i == 3)
                D = 1;
            if (i == 6)
                D = 0;
            if (i == 10)
                D = 1;
            if (i == 12)
                D = 0;
                     
        end
    end
endmodule
