module fulladder(
    input a,
    input b,
    input cin,
    output s,
    output p,
    output g
    );
    parameter AND_DELAY=3, XOR_DELAY=4;
    xor #(XOR_DELAY)(p, a, b);
    xor #(XOR_DELAY)(s, p, cin);
    and #(AND_DELAY)(g, a, b);
endmodule
