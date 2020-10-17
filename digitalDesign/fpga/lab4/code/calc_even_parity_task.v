module calc_even_parity_task(
    input [7:0] in_reg,
    output reg out_parity
    );
    
    task calc_even_parity;
        input [7:0] in_reg;
        output reg out_parity;
        integer parity, k;
        
        begin
            parity = 0;
            for (k=0; k < 8; k = k + 1)
                if(in_reg[k])
                    parity = (parity + 1) % 2;
            assign out_parity = parity;
        end
     endtask
     
     always @ (in_reg)
        calc_even_parity(in_reg, out_parity);
endmodule
