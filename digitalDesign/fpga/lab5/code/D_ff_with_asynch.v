module D_ff_with_asynch(
input D, 
input Clk, 
input reset, 
output reg Q);   
 
always @(posedge Clk)       
    if (reset)        
        begin          
        Q <= 1'b0;       
        end 
    else        
        begin          
        Q <= D;       
        end 
endmodule
