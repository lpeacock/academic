module testbench;

    
    reg [3:0] a, b;
    wire [3:0] s;
    reg cin;
    wire cout;
    integer i;
    
    TOP DUT (.a(a), .b(b), .cin(cin), .cout(cout),.s(s));
    initial 
    begin
        //for(i = 0; i < 16; i = i + 1)
           // begin
            cin = 0;
            a = 4'b0000;

            b = 4'b1000; 
            //end
    end
    endmodule
