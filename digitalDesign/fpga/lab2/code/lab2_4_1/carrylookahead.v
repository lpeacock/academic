module carrylookahead(
    input cin,
    input [3:0] p,
    input [3:0] g,
    inout [2:0] c,
    output cout
    );
    assign c[0] = g[0] |(p[0]&cin);
    assign c[1] = g[1] |(p[1]&c[0]);
    assign c[2] = g[2] |(p[2]&c[1]);
    assign cout = g[3] |(p[3]&c[2]);
    
endmodule
