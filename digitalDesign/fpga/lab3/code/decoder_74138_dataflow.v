module decoder_74138_dataflow(
    input [2:0] x,
    input g1,
    input g2a_n,
    input g2b_n,
    output [7:0] y
    );
    wire [7:0] intermediate;
    decoder_3to8_dataflow M1 (.x(x), .y(intermediate));
    assign y[0] = ~intermediate[0] | ~g1 | g2a_n | g2b_n;
    assign y[1] = ~intermediate[1] | ~g1 | g2a_n | g2b_n;
    assign y[2] = ~intermediate[2] | ~g1 | g2a_n | g2b_n;
    assign y[3] = ~intermediate[3] | ~g1 | g2a_n | g2b_n;
    assign y[4] = ~intermediate[4] | ~g1 | g2a_n | g2b_n;
    assign y[5] = ~intermediate[5] | ~g1 | g2a_n | g2b_n;
    assign y[6] = ~intermediate[6] | ~g1 | g2a_n | g2b_n;
    assign y[7] = ~intermediate[7] | ~g1 | g2a_n | g2b_n;


endmodule
