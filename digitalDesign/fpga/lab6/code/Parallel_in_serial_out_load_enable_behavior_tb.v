module Parallel_in_serial_out_load_enable_behavior_tb(

    );
    reg Clk, ShiftIn, reset, load, ShiftEn;
    reg [3:0] ParallelIn;
    wire ShiftOut;
    wire [3:0] RegContent;
    integer i;
    reg [1:0] params;
    
    Parallel_in_serial_out_load_enable_behavior DUT (.ShiftIn(ShiftIn), .Clk(Clk), .ParallelIn(ParallelIn),
     .load(load), .ShiftEn(ShiftEn), .ShiftOut(ShiftOut), .RegContent(RegContent));
    
    initial 
    begin
        for (i = 0; i < 401; i = i + 1)
        begin
            if (i == 0)
                begin
                ShiftIn <= 1;
                ParallelIn <= 0;
                load <= 0;
                ShiftEn <= 0;
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
             if (i == 15)
                ParallelIn = 4'b0101;
             if (i == 180)
                ParallelIn = 4'b1001;
             if (i == 100)
                ShiftEn = 1;
             if (i == 60)
                load = 1;
             if (i == 80)
                load = 0;
             if (i == 200)
                load = 1;
             if (i == 220)
                load = 0;
             if (i == 275)
                load = 1;
             if (i == 295)
                load = 0;
             if (i == 360)
                load = 1;
             if (i == 380)
                load = 0;
                end
                end
endmodule
