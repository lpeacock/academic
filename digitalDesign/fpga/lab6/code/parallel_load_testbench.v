module parallel_load_testbench(

    );
    reg Clk, ShiftIn, ShiftEn;
    wire [3:0] ParallelOut;
    wire ShiftOut;
    integer i;
    reg [1:0] params;
    
    parallel_out_shift_register DUT (.ShiftIn(ShiftIn), .Clk(Clk), .ParallelOut(ParallelOut), .ShiftOut(ShiftOut), .ShiftEn(ShiftEn));
    
    initial 
    begin
        for (i = 0; i < 401; i = i + 1)
        begin
            if (i == 0)
                begin
                Clk <= 0;
                params <= i;
                ShiftIn = 1;
                ShiftEn = 0;
                end
             else if (i % 10 == 0)
                begin
                #1 Clk <= !Clk;
                end
             else
                #1 params = i;
            if (i == 40)
                ShiftEn = 1;
            if (i == 80)
                ShiftEn = 0;
            if (i ==120)
                ShiftEn = 1;
            if (i == 160)
                ShiftEn = 0;
            if (i == 240)
                ShiftEn = 1;
            if (i == 280)
                ShiftEn = 0;
            if ( i == 320)
                ShiftEn = 1;
            if (i == 260)
                ShiftEn = 0;
            if (i == 200)
                ShiftIn = 0;
                end
               end
               
endmodule
