module fulladder_dataflow(
    input a,
    input b,
    input cin,
    output cout,
    output s
    );
    
    assign s = (a^b)^cin;
    assign cout = (a&b)+(cin&(a^b));
endmodule
