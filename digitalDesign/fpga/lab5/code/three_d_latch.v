module three_d_latch(
    input D,
    input Clk,
    output reg Qa,
    output reg Qb,
    output reg Qc
    );
    always @ (posedge Clk or D)
        if(Clk)
        begin   
            Qa <= D;
        end
    always @ (posedge Clk)
        if(Clk)
        begin   
            Qb <= D;
        end
    always @ (negedge Clk)
        if(!Clk)
        begin   
            Qc <= D;
        end
        
endmodule
