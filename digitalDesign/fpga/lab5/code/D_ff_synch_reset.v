module D_ff_synch_reset(
input D, 
input Clk, 
input reset, 
input ce, 
output reg Q);    
always @(posedge Clk)       
if (reset)        
	begin          
	Q <= 1'b0;       
	end 
else if (ce)       
	begin          
	Q <= D;       
	end 
endmodule
