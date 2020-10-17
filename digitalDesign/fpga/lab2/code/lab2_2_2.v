module bcdto2outof5(
    input [3:0] x,
    output [4:0] y
    );
    
    assign y[4] = x[3]|(x[2]&x[1]);
    assign y[3] = (x[2]&~x[1])|(x[3]&x[0])|(~x[2]&x[1]&x[0]); //y = BC' + AD + B'CD
    assign y[2] = (x[3]&~x[0])|(~x[3]&~x[1]&x[0])|(~x[2]&x[1]&~x[0]); //y = AD' + A'C'D + B'CD'
    assign y[1] = (~x[3]&~x[2]&~x[0])|(~x[3]&~x[1]&~x[0])|(x[2]&x[1]&x[0]); //y = A'B'D' + A'C'D' + BCD
    assign y[0] = (~x[3]&~x[2]&~x[1])|(~x[3]&~x[2]&x[0])|(x[3]&x[1]&~x[0]); //y = A'B'C' + A'B'D + BCD'
endmodule
