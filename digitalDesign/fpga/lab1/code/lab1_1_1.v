module mux2(
    input x,
    input y,
    input s,
    output m
    );
    wire selbar, a1out, a2out;
    not i1(selbar, s);
    and a1(a1out, s, y);
    and a2(a2out, x, selbar);
    or o1(m, a1out, a2out);
endmodule
