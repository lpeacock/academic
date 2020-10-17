module d_ff(
    input T,
    output Q,
    input Clk,
    input reset_n
    );
    wire D;
    assign D = T ^ Q;
    D_ff_behavior M1 (.D(D), .Clk(Clk), .Q(Q), .reset_n(reset_n));
endmodule
