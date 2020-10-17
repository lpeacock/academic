module testbench7_1_4(

);
    reg [4:0] x;
    wire [4:0] y;
    integer i;
    reg [1:0] params;
    
    graycode_gen DUT (.x_with_en(x), .y(y));
    
    initial 
    begin
        for (i = 0; i < 12; i = i + 1)
        begin
            if (i == 0)
                begin
                x <= 5'b10000;
                params <=  i;
                end
             else
                #1 params = i;
                if (i < 11)
                    x = i + 5'b10000;
                else
                    x = 5'b00010;
                end
                end
endmodule
