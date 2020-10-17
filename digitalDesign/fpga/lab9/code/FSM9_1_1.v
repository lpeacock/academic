module FSM9_1_1(
    input clk,
    input reset,
    input ain,
    output reg [3:0] count,
    output reg yout,
    output [3:0] state1
    );
    
   reg [3:0] state, nextstate;     
   parameter S0=0, S1=1, S2=2, S3=3; 
   
   always @(posedge clk or posedge reset)  // always block to update state 
   if (reset)
    begin       
    state <= S0; 
    count <= 4'b0000;
    end
   else      
    begin
    state <= nextstate;
    if(ain) count = count + 1; 
    end
    
    always @(state or ain)  // always block to compute output 
    begin    
        yout = 1'b0;    
        case(state)       
            S3: if(ain)  yout = 1;
            S0: if(!ain) yout = 1;        
        endcase  
    end 
    
    always @(state or ain)  // always block to compute nextstate 
    begin    
    nextstate = state;    
    case(state)       
    S0: if(ain) 
        begin
        nextstate = S1; 
        //count = count + 1;   
        end
    S1: if(ain) 
        begin
        nextstate = S2; 
        //count = count + 1;   
        end
    S2: if(ain) 
        begin
        nextstate = S3; 
        //count = count + 1;   
        end        
    S3: if(ain) 
        begin
        nextstate = S1; 
        //count = count + 1;   
        end
    endcase  
    end  
    
    assign state1 = state;
endmodule
