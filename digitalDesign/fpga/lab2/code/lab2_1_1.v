module bcdto7segment_dataflow(
    output [7:0] AN,
    output [6:0] seg
    );
    
    reg [3:0] x;
    always @* begin
        x = 4'b0111;
    end
    assign AN = 8'b11111110;
    
    
    assign seg[0]=(x[0]&~x[1]&~x[2]&~x[3])|(~x[0]&~x[1]&x[2]&~x[3]);
    assign seg[1]=(~x[0]&x[1]&x[2])|(x[0]&~x[1]&x[2]);
    assign seg[2]=~x[0]&x[1]&~x[2]&~x[3];
    assign seg[3]=(x[0]&~x[1]&~x[2]&~x[3])|(~x[0]&~x[1]&x[2]&~x[3])|(x[0]&x[1]&x[2]&~x[3]);
    assign seg[4]=(~x[1]&x[2])|x[0];
    assign seg[5]=(x[0]&x[1])|(x[1]&~x[2]&~x[3])|(x[0]&~x[2]&~x[3]);
    assign seg[6]=(~x[1]&~x[2]&~x[3])|(x[0]&x[1]&x[2]&~x[3]);
    
endmodule