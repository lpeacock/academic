`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: lab2_2_1_partA_tb
//////////////////////////////////////////////////////////////////////////////////

module lab2_2_1_partA_tb(
    );
    
    reg [3:0] v;
    wire [6:0] seg0, seg1;
	wire z;
	integer k;
    wire [3:0] m_out;
    
    lab2_2_1 M1 (.v(v), .z(z), .m(m_out), .seg1(seg1), .seg0(seg0));
    
 
    initial
    begin
      v = 0;
	for(k=0; k < 17; k=k+1)
		#10 v = k;
	#20;
    end

endmodule
