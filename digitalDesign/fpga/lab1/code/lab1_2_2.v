module mux2_two_bit_3ns(
    input [1:0] x,
    input [1:0] y,
    input s,
    output [1:0] m
    );
    assign #3 m[0] = (~s & x[0]) | (s & y[0]); 
    assign #3 m[1] = (~s & x[1]) | (s & y[1]); 

endmodule
