// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Mar 30 14:35:30 2020
// Host        : Peacock-XPS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ c_counter_binary_0_sim_netlist.v
// Design      : c_counter_binary_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_0,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_14 U0
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
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_14
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_14_viv i_synth
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
Fcn9RWkLbULUjl7U/mFmkaYoY+X/i3KraEfyKxRUCb9hY0+gTRP/vhas0mBAX3wEcbC6JDwJcfZt
iL6mpHX68mAuLD/DGM5tBnQOpZXKpIgM0OISiM7/EyuwCpPkmNiWIKavnOypHscfOqEGbTF3xext
j2M5FJfjhCptrr448rtvOxgRtTT7EI8uZuz2g6ZAy//9X9Pwx37pzqC7df4EQGI2FvxxvPK1UdGP
2OsTXZZIesfGbe9QPo/0iRwINjTMJj8sFSxqINKC1zttET3eJaUmOfCkQMcI6iqRfNJkd2YTKSJ1
ep/zz9GhDu8nO8+65toUoWXNrM4kZ3pyligjmw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
0O7jrCCI0SXJBvq+6ATh8LzSo1YZNgryTb9XZKibNDxBuDRIbwko/t0v/BnVx6GwjptXZEGFpqFm
5IjZN6oBsKnPRn54wOmj7GjOH6KOlCMDQBKE0x/MPkXiFwuLOAYIiPYTDCHPr5rUOzAPd+hh5E81
/6g5MAOFuH66KC50L4vHKtjtdqSdwS5H4aolpsiu2DLEv71aHBzdevtuQ9WyZeu5tsCwIGkSQNfI
F5uCsyfxJZeL68tEhZ7JK4C5Ln1bF5bJ7YCiumsx5zKjK5s/PoulbHvzGJiX/2OSvIVfNRQopweC
jP+KzJBh7hKosLKZrcyr5nBgcbWBxsr4uBcuVA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12032)
`pragma protect data_block
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
hTrJGJg=
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
