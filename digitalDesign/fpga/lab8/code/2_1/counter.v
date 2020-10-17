
(* use_dsp48 = "no" *) //Or Yes for task 2-2
module counter(clk, clear, up_down, qd);

// Port Declaration

input   clk;
input   clear;
input   up_down;
output  [7:0] qd;
reg     [7:0] cnt;
parameter COUNT_SIZE = 10;

always @ (posedge clk)
begin
    if (!clear)
        cnt <= 8'h00;
    else if (up_down)
        if (cnt == COUNT_SIZE)
            cnt <= 8'h00;
        else
            cnt <= cnt + 1;
    else
        if (cnt == 0)
            cnt <= COUNT_SIZE;
        else
            cnt <= cnt - 1;
end 
assign qd = cnt;


endmodule
