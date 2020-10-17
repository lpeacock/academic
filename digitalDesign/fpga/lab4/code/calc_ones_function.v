module calc_ones_function(
    input [7:0] in_reg,
    output reg [3:0] number_out
    );
    
    function [3:0] calc_ones;
        input [7:0] in_reg1;
        integer count, k;
        begin
            for (k=0; k < 8; k = k +1)
                if (in_reg[k])
                    count = count + 1;
            calc_ones = count;
        end 
    endfunction
    always @ (in_reg)
        number_out = calc_ones(in_reg);
endmodule
