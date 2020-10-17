module TOP(
input [3:0] a,
    input [3:0] b,
    input cin,
    output cout,
    output [3:0] s
    );
    defparam M0.AND_DELAY = 6;
    defparam M1.AND_DELAY = 6;
    defparam M2.AND_DELAY = 6;
    defparam M3.AND_DELAY = 6;
    defparam M4.OR_DELAY = 6;
    
    wire [3:0] p, g;
    wire [2:0] cfromcla;
    fulladder M0 (.a(a[0]), .b(b[0]), .cin(cin), .s(s[0]), .p(p[0]), .g(g[0]));
    fulladder M1 (.a(a[1]), .b(b[1]), .cin(cfromcla[0]), .s(s[1]), .p(p[1]), .g(g[1]));
    fulladder M2 (.a(a[2]), .b(b[2]), .cin(cfromcla[1]), .s(s[2]), .p(p[2]), .g(g[2]));
    fulladder M3 (.a(a[3]), .b(b[3]), .cin(cfromcla[2]), .s(s[3]), .p(p[3]), .g(g[3]));
    lookahead_adder M4 (.cin(cin), .p(p), .g(g), .c(cfromcla), .cout(cout));
    
    endmodule