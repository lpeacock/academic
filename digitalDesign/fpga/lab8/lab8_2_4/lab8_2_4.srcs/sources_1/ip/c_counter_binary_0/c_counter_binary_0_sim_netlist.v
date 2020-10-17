// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Mar 30 14:35:31 2020
// Host        : Peacock-XPS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/lucas/Documents/fpga/lab8/lab8_2_4/lab8_2_4.srcs/sources_1/ip/c_counter_binary_0/c_counter_binary_0_sim_netlist.v
// Design      : c_counter_binary_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_0,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module c_counter_binary_0
   (CLK,
    SCLR,
    UP,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 up_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME up_intf, LAYERED_METADATA undef" *) input UP;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [7:0]Q;

  wire CLK;
  wire [7:0]Q;
  wire SCLR;
  wire UP;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "2" *) 
  (* C_COUNT_TO = "1" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_LOAD = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_HAS_THRESH0 = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "1" *) 
  (* C_LOAD_LOW = "0" *) 
  (* C_RESTRICT_COUNT = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_THRESH0_VALUE = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_0_c_counter_binary_v12_0_14 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(UP));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "2" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "8" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_14" *) (* downgradeipidentifiedwarnings = "yes" *) 
module c_counter_binary_0_c_counter_binary_v12_0_14
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [7:0]L;
  output THRESH0;
  output [7:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [7:0]L;
  wire [7:0]Q;
  wire SCLR;
  wire UP;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "2" *) 
  (* C_COUNT_TO = "1" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_LOAD = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_HAS_THRESH0 = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "1" *) 
  (* C_LOAD_LOW = "0" *) 
  (* C_RESTRICT_COUNT = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_THRESH0_VALUE = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_0_c_counter_binary_v12_0_14_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L(L),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
        .UP(UP));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
mZM+QkmBmYCY7NPgF4QadIitw8Eo+SIwG/ZLPzQSVo/+iaeH+D5UcymUJegYkWcUJho8I/Ca6tC9
BcrWLzqiSg==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
m+fC7UnOc3lEJdF6HAD+AO/yeZSz11oLyDHA0Df3kGgHhj+RwbK/SnWf9v1KZrS0pMJJUO6XV6v4
HlgXy4/LyWr9xInVKpipB37EutWXywoqz+1z6QQnBeEc/bFgaYnjfNVfmCe7b/uvzsznRxv4g49x
IbbwmYVPlJlM7RiIIUw=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rDbHS5sy994Wefoo6l/eUEpHx+Zo4hK7RxI32sncxdT1Bdk5aKjGY4UEdTJnrzZnlUNeiA7lqAY4
kbOZOXFRZQqL/9cE+Eexju7i3W9oXfaETCK004ve+Hh7ccj0BXqFm2Y4k07Ne/CtUJNcyH0Yqqti
gCrOLCDDO0bLrxPHhJABOIcLDs6XdASBzfQSOIX13iKktynuDQy9P0UWcx60e6rMtbpwLXUBSYUv
U+Hu1UEMOHnc/WTTxxmY85cP1KeGPYOpLlkIokpXZ8YevtDSE+cd5cn78Pj1A84QhZfP0eyUXT58
QBazbLlAIfh5YqSZshCArhNLzWy46i+D9nhtnA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDAueH+1IfJtZIC4dXJ0KOFeEyMeE64ROjlOQFn0YA50L5K3mjbOqsUNUOYQ3AQv/MDoPnhQAw24
ncqGrSzr22Eo3qkCBevBDcKaOXbJKeuuWwa2BL9gVLd8x1CGNKRCY9HgRWTaFP3bFE8IC6Wb1MQM
lh1aab6Hc1hCVUoaMZovDfA7pahwN+Ofes0F7tNeWWHBJ9HqmXjdNSIc0fhiL4oCkFYFKxAj7VYV
fvJk1Lt8t3eAqqFmX1wv/GZUSXH/T4wH/dtyGB4+Z9HiVEhbPwshofy5qPAJ1GyWuU9knKZ7oXwF
y0rW1H9CueC082UO0KJfTB5adMlR6IAxdDst6A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Fc/3ZbRoeSBESwxq84FLKKHw5JiDREh8UGnn2Rzjhu2zXqMwcnjmmkcDnHaxqko+FpcFl3MSrQyA
N7dj5tbbO6LV2Gvp9gQHdOMqgogI5ZSA2MrQM1xkEs7og+WXFDOW2DzaoVNBBPY30Fxo2z2EdGkK
82BQlO03GRrZB8bBN/1ndJVAqKmb6I2LgcJOsV4HvHc5rgPq6Q89NS7JvmN3YI/cw4uWXXLkso+g
80AfqZjAXMw5OY4cWZscectXNx5vGHWy9fcKNH0p3fS7FRh1M2zsRrVvSEP/ygtXR3Jrf+/xqhv1
fZSqKqzI0Q17bh68ZGd39RDw/TGEUIOZg8lY1w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
K3Ao/bH4OtPU9lcf8MKmR5SH3AU/XNzFMyvYN1Cvi8TkAqVSjsRpmiA6psdHUxQ6ChxDL+ifIZmx
XmGdelYbBZX2cseyC7F4SArU6gFMESx2kqccYUXXKgud9VEcW/cLeAiU54NEeoRjHzxfyykkXDVi
5FoCcUIuf1d/5LfCh6E=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
g8trO3AM2GKk54eXi8fG+FquVAmu50gIUwVjw4ul+0+xnhvRbginNickq5wikk4ZtP1HiuGxz/PB
o3q4N1Lj+w+QS4/JvRo4wuezx5vzkWzfGJh4N4eME2ziyNHCuxLEobWs8KEG+ilhltk1c2hvgkMz
JXhUTpJ6l1apI5+sSCHAcYvC7VVjjiCJQhk8YXIbnWX5GNaeHmM9sXw6q6MXafVhmkI7KkLrNLFO
9p/t2fdUw33+h4NQB/TdcR/Eksd0542M6+Y06QqjDbTR7KIjnhxELKh1JRW3t+rXEJOoLqsFjP7I
26tNqlayy5YjSzF90FiIpUUwtrOsZ1lXamVFzQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QwE2AalCFRTpm3aOoXgseW8MLMWLVbSa89zNSHS9I26fnur8dp1ecu4nBhbmdCiT6xN9K+Y9LOqy
eZa8uQGcMgejXddOOIOoRBcM4/c8NEJcAIpN5sedKHupwvRA+1Ok8SjcQdRLHuJbTnYBRLvaK5QS
6SSXFkiXv2R3xlZ4ji1w0O9Ta+AzNh+ntvJ1Hd68xxmunKOL1y/YY43obHssJp/KBybMaCqwZpej
yYEz8Lz8oeoYFaK3poBxJSPhygpk0gKOHf5FNHmJu4tB4+EqhHpANOMIxzKELrB4cS1HL/3VPJv/
uryTtzko/3vhXdbwZl23slwjYt2mW1vcnIXTyQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hzk6uKeGttntGBNvoCPU3ZbjUoZrFOcEzVtaLPjrg3nIfwPc5CeYjitDndLR3cBSyCMQ/AxxEnGI
i6gCmT2IQr3KpMOG+0aElBUUw8NBUzwqgyrHy+8rW/xB0V+Y1OhgCQ3LiXnNfEgvAn0AtRl1rbot
9LPiNVjNaX0j6hTqu8XZ0C4NvckIAh8ssvEwR3lSEbppmOC2ABZ5YAgTx0ef+qF+ry92PM/IgyjM
zT9ZKHNFXT60xHdUOlnV7SorgxzTF8L6gZsNC/pjGcUUQ+wWUN0p4nMh9r6jLV+YySFvo8SJDAy4
p0PS3ga7I3m6M7LdfwgStcg7gP1hMDmeGNRcAg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MomIhx3amfzJSTuA1ah47r9llrYszj9L3W+fijooEmGeDky3AHFutRnuDOelcb4ULCdhhvIyHVj8
cJlQF2Z4Dmd2DGuLhFX/0nAXqxFsOhQDMn7arbhKByGVWse7+DU3hp1u/Ganpk41YJTfMBVtxp5l
V/Odt8tdl0Etnth2sSdpYdWh2kMlgI+pml72CvjKRQPTMAC+j+t+o0SPf3WQ9YzBn2f7fBrK2rny
HtcjNW1uPNzRb+tn2+a8KmvSC5XUXdhft1D3UHugzbyEhWoNzSuJR1LTtB4m3J/8bnifIsrM5qy2
U4zTj538USsEf9ZGPPHlf7zf/hRJBXXjwzpSGg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12064)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
