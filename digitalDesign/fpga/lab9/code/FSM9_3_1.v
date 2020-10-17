module FSM9_3_1(
    input clk,
    input reset,
    output reg [2:0] count
    );
    reg [2:0] state;
    reg [5:0] ROM [5:0];
    wire [5:0] ROM_data;
    wire [2:0] ROM_addr;
    
    assign ROM_addr[0] = state[0];
    assign ROM_addr[1] = state[1];
    assign ROM_addr[2] = state[2];

always @(posedge clk or posedge reset)  // always block to update state 
   if (reset)
    begin       
    state <= 3'b001;
    count <= 3'b000;
    end
    
   else      
    begin
        count[2] <= ROM_data[2];
        count[1] <= ROM_data[1];
        count[0] <= ROM_data[0];
        
        state[2] <= ROM_data[5];
        state[1] <= ROM_data[4];
        state[0] <= ROM_data[3];

    end
    
    assign ROM_data = ROM[ROM_addr];
    initial begin
        $readmemb ("ROM_data.mem", ROM);
    end
endmodule
