module add_two_values_function(
    input [3:0] a,
    input [3:0] b,
    output reg [4:0]  sum
    );
    
    function [4:0] add_two_values;
        input [3:0] ain;
        input [3:0] bin;
        begin
            add_two_values = ain + bin;
        end 
    endfunction
    
    always @ (a or b)
        sum = add_two_values(a, b);
endmodule
