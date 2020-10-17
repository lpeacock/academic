// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Mar 30 14:27:52 2020
// Host        : Peacock-XPS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/lucas/Documents/fpga/lab8/lab8_2_3/lab8_2_3.srcs/sources_1/ip/c_counter_binary_0/c_counter_binary_0_sim_netlist.v
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
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "2" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
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
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
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
  wire [7:0]Q;
  wire SCLR;
  wire UP;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "2" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_0_c_counter_binary_v12_0_14_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
dmmXCzwxW2FLu/vVGpJzoQ/uTl0t/oirVzDN8rGCQ/cshHIr5KZa8hMP1zjDcrW6js/9tSBuCaB1
Ioj63zjqZA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
N9Ijk+dhcsedFOz7GhClRR68iRquy2ZzjVLVhi5GByFuPpr/oGFn021AFcKE54GT1hqizIMvWGS0
qRbWSO/aiWGT8c930WMeayc4xm2b65tzi7UyXSjcZqyZqk5spgPewfSuL0LKD5R4+zccn3yeTyAR
Cpi6LZ2KmpRW5biXvss=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M8NGALCMec7MmW5uPCxfU8HATjWU2XqyPU8phSDe3mtyor4pgfPtg5TJdKOytKhxa+fQwJxytwzI
KPxtYmaRH/KFiGrOvm7jO78NIlt31qN95S7sMYrLxORaZ4bbNMg4RfwEB0haV15qORczgxWEpvBX
6Qukl64ihp4NiBjXt4YYGoDiNMSczgOe3tLn7UWjfPQnsJ8aMxugelO5AciSBxAdohgLMRE3cu6p
gwakO6ytq1vAR8bqHLT8g/Kdsxn72SBHYdpkba0NfEvzzheOlZY7fNuWD48V6QefMjsX1taMkmQH
m38VdXlC6Ocia7H3zT8LvNLtxrpG8zyD+UI+sg==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
I1BukTJgP0oEpI/mdw6jwrYhUTr7MTzY5G/EvfuPKQfGzYRI1qLG+aEQeclA1P65+tkbstBEIIg8
ZhiouPVaom8KwKZHBX7eLpxvNBcYVFfnJb1ES5wdcph3sgGtaYKSpspp51oYPM6ZD7DmMGdoc/Wg
JVIUuIfRpo8AnEMfkayPkbwuB0VUKpz5BXS50B+5jvgK7cFe2gUp2ckThqzKUjViVB56Swsz+IQe
l7GvtTbuNcSwapfPtNHH0bWSQStfIzPZZm1A2IZ2WCYafRPkj7uibtKNgnKgIZs1197qomgXbb+b
fDx1iikgF8snJsPchukmgxkMSQtLntwbLs6H+w==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UNzBll4hVdQjkp7KJChMHZ9agdKjtTu8+3O75Phz7SpwUZ73Z533+9pCfaH7QI/cwqaVREb20HXT
ji2kU1DV7+Cwbshd08hvUBl23F60ITYS+3rluBLIFX3pzXhjjSu8HQpnxXppbCODvCiWrDLqRU/y
lcFf7B+yp5jK6vEY5xuh8is/oxSPNFwip6GSMqDnE45GU6kU+6n8FTk8pAZUNKnh3j0t6YzcwS3J
wYUhnJpEQYd7+0D/NPjEz0YFqzB8WCh70MxBRJzwdXpuRLiFzplysvw+eHjMPVeU/UPKJWuwWuwc
Bfxw0ThSXZit/SSD+BGhxjbEI9T6rh66FpqbTg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
F7AZy6dB5VKzcudhyRSKWKUbVrSs4vS9jtgDkM6KrVPs3ghP3AF2TeIDyl03EesBxeIQxHqq8thx
uVIGQN5wt92jkzGo61VyUoF2dYHY2dkK9PY4bicayI6rppCS18HnyCC5ODrTMKgOpoj+PEmghCZl
j8+i3NFWPAo6M/MAtVI=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NQpRHEO/CEh2TWVl2zAKLb4TTDP4G4mQHrGzJeErDNbJ2L2B4iz3unsCjzHkoDagHoU9jeHYNzw1
EdgeGwokAwsWnHc0V18iEu5CZPPLrncpORhuc7qe0zJvoIFW4tgNZuIjFZI6bkrWzgxNYlkitGJ7
wQxgR+6ZenldybAjVF7d1R8FQmrEKWQ9ztmGHKMd9PfWD1VsbOoxbNA1tkQ3Suq2M9HDzUONaPQq
yMnGxLE4+4xTZZFVVFZeizNxqQcM1Y6s2MEUyS89U6rdAH95x9zDN8PGrif1SUWhpoz33cYp/IL8
acGyIWDbmuS0X+xsLC8cWcrO/MxKDk8bj12S7g==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
W2ZLxVMM2bO/6hqe8KRsBOYby+akb1JiKHhCv9fhS2DK483JVHKKDFtV5ZylpQSPfpmWVI6nDnNm
XtxOYqhOdd9wAHIVXly/nJQ3BORIgR42ZfKk3tkiYQd75XwTJmWjvIda5LTjKISy58Rg+7/yc6kX
SAKkQWzcaHy0VIrsbeLAK7Rz2vPrBQAwZijqUO1uD9pTa1ID2lBqRKOaN/lex50cPJ7PNmyesOUe
aisZi7+ubKWoKmZJmdUy4nKUk4a0FLkIqdFpmX+Bu5UVgWOF47nrEwh3c1MVRxWa1uvngQGGl026
FTa0G+nc1Q9KslAvMQ+fMbz+FbnTF3u/A9gizA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WXymuS/VOegINKOTjeT1uxiFG8WlB7zlpL/KLSI6b/v7ZNStuiT3myS9/ufhLSJ1SWSzroZ/cD+6
Xk/4sPBn5W5h4tOyOyZrKJLJAlR6I/35VP7d9dgloMzNo9q0LGeo16JEbSegwfDXTU118I28gEiE
W29VjMboFLNy6DS+X4PxcMRegHRGy4qE/573e3Q5jlHUpKQJFRPvFAYxK67LzHgDMjWR9JhNE/WV
6Tn2GhWZO5wkDTtfADoHw8Z1cB+xrb3ec9+OH5DVuCgbPhIHCzEwLnvbUdLNZJZb5NCKVcu4unI/
uWU3Om+y3kWNJ+zPkgL2KH3liJBotA7Rqvssmw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
IV23oBIvGsqH/5YAd2iCGl2LvFx3IOqgyPisxOyJ0gLmGljjlVxkgutNcrWVrdQpjza4+YtDqd/R
FOjiY0TdEMOphJBiNcK1y4kdAgYF0ciYn0Pp4M+D/Urf5rwN0rQ+v5tokUpZfLRQuTy2g1NzsdZd
f/3JsdNhUy2IbsCbhdpaf4w6HEAYFhZAWHi1Ri/4OMf/TkdQ+dqh19Yfq8L4Z2uH4JKWP4Sp5wYv
6NvG2OemU4EBgftUXMZH+toc+CIKU437T3E94bX6j+cy6cWC0lvOhUP/K+/IQ2lLwegLGNFl2wt1
sBE59BVZgKmu1N+QOYMrafd/wjCDewPDze/BZw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9264)
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
