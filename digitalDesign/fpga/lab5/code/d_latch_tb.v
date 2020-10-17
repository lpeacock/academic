module d_latch_tb(

    );
    reg D, Enable; 
    wire Qbar, Q;
    integer i;
    reg [2:0] params;
    
    d_latch DUT (.D(D), .Q(Q), .Qbar(Qbar), .Enable(Enable));
    
    initial 
    begin
        for (i = 3; i > -1; i = i - 1)
        begin
            #20 params = i;
            D <= params[0];
            Enable <= params[1];
        end
    end
endmodule
