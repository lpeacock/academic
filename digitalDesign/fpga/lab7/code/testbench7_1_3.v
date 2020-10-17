module testbench7_1_3();
    reg [3:0] x;
    reg [1:0] s;
    wire z;
    integer i;
    reg [1:0] params;
    
    mux4to1 DUT (.x(x), .s(s), .z(z));
    
    initial 
    begin
        for (i = 0; i < 5; i = i + 1)
        begin
            if (i == 0)
                begin
                x <= 4'b1010;
                s <= 0;
                params <= i;
                end
             else
                #1 params = i;
                if (i < 4)
                    s = i;
                else
                    x = 4'b0010;
                end
                end
endmodule
