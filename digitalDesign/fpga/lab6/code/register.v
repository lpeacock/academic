module register(
input [3:0] D, 
input Clk, 
input reset, 
input load, 
input set,
output reg [3:0] Q
);    
always @(posedge Clk)       
    if (reset)        
        begin          
            Q <= 4'b0;       
        end 
    else if (set)
        begin
            Q <= 4'b1010;
        end
    else if (load)       
        begin        
            Q <= D;       
        end 
endmodule
