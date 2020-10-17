module FSM9_2_1(
    input clk,
    input reset,
    input [1:0] x,
    output reg yout,
    output [3:0] state1
    );
    
   reg [3:0] state, nextstate;     
   parameter S0=0, S1=1, S2=2, S3=3, S4 = 4, S5 = 5, S6 = 6; 
   
   always @(posedge clk or posedge reset)  // always block to update state 
   if (reset)       
    state <= S0; 
   else      
    state <= nextstate;
    
    always @(state)  // always block to compute output 
    begin    
        yout = yout;    
        case(state)       
            S0: yout = 0;      
            S4: yout = 0;        
            S5: yout = !yout;        
            S6: yout = 1;        
  
        endcase  
    end 
    
    always @(state or x)  // always block to compute nextstate 
    begin    
    nextstate = state;    
    case(state)       
    S0: nextstate = x;        
    S1: if(!x) nextstate = S4; else nextstate = x;   
    S2: if(!x) nextstate = S5; else nextstate = x;   
    S3: if(!x) nextstate = S6; else nextstate = x; 
    S4: if(!x) nextstate = state; else nextstate = x;
    S5: if(!x) nextstate = state; else nextstate = x; 
    S6: if(!x) nextstate = state; else nextstate = x; 
    endcase  
    end  
    
    assign state1 = state;
endmodule
