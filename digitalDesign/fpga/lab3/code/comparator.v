module comparator(
    input [1:0] a,
    input [1:0] b,
    output reg lt,
    output reg gt,
    output reg eq
    );
    reg [2:0] ROM [15:0];
    wire [2:0] ROM_data;
    wire [3:0] ROM_addr;
    
    assign ROM_addr[0] = a[0];
    assign ROM_addr[1] = a[1];
    assign ROM_addr[2] = b[0];
    assign ROM_addr[3] = b[1];

    assign ROM_data = ROM[ROM_addr];
    always @(ROM_data)
        begin 
        lt = ROM_data[2];
        gt = ROM_data[1];
        eq = ROM_data[0];
        end
    initial begin
        $readmemb ("ROM_data.txt", ROM);
    end
    
endmodule
