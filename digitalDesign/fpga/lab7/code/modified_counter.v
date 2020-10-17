module modified_counter(
    input Clk,
    input enable,
    input reset,
    output reg [2:0] Count_Contents
    );
    reg [2:0] count = 0;
    always @(posedge Clk or negedge enable or posedge reset)
    begin
        if (reset)
            Count_Contents <= 3'b000;
        else if (enable)
            if(Clk)
                begin
                case (count)
                  3'b000  : Count_Contents <= 3'b000;
                  3'b001  : Count_Contents <= 3'b001;
                  3'b010  : Count_Contents <= 3'b011;
                  3'b011  : Count_Contents <= 3'b101; 
                  3'b100  : Count_Contents <= 3'b111; 
                  3'b101  : Count_Contents <= 3'b010; 
                endcase
                count = count + 1;
                if (count == 6)
                    count = 0;
                end
      end
endmodule
