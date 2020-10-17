module comparator_dataflow(
    input [3:0] v,
    output z
    );
    assign z = v[3]&(v[2]|v[1]); // y = A(C+B)

endmodule
