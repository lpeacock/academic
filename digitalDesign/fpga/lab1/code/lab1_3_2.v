module mux2_behav_two_bit(
    input [1:0] x,
    input [1:0] y,
    input s,
    output reg [1:0]  m
    );
    
    always @ (x or y or s) 
    begin       
        if(s==0)              
            m[1:0]=y[1:0];       
        else              
         m[1:0]=x[1:0]; 
    end 
endmodule
