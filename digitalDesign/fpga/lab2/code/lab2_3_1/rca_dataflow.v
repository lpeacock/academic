module rca_dataflow(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output cout,
    output [3:0] s
    );
    wire cout_intermediate1, cout_intermediate2, cout_intermediate3;
    fulladder_dataflow M0 (.a(a[0]), .b(b[0]), .cin(cin), .cout(cout_intermediate1), .s(s[0]));
    fulladder_dataflow M1 (.a(a[1]), .b(b[1]), .cin(cout_intermediate1), .cout(cout_intermediate2), .s(s[1]));
    fulladder_dataflow M2 (.a(a[2]), .b(b[2]), .cin(cout_intermediate2), .cout(cout_intermediate3), .s(s[2]));
    fulladder_dataflow M3 (.a(a[3]), .b(b[3]), .cin(cout_intermediate3), .cout(cout), .s(s[3]));


endmodule
