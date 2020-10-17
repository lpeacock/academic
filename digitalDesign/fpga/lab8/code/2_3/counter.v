module counter(clk, clear, up_down, qd);

// Port Declaration

input   clk;
input   clear;
input   up_down;
output  [7:0] qd;
	
// Fabric for 2-3, DSP for 2-4
  c_counter_binary_0 DUT (.CLK(clk), .Q(qd), .SCLR(clear), .UP(up_down));


endmodule
