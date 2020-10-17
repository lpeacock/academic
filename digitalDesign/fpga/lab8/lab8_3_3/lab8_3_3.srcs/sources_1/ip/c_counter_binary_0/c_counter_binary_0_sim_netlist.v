// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Apr  6 20:44:57 2020
// Host        : Peacock-XPS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/lucas/Documents/fpga/lab8/lab8_3_3/lab8_3_3.srcs/sources_1/ip/c_counter_binary_0/c_counter_binary_0_sim_netlist.v
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
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [11:0]Q;

  wire CLK;
  wire [11:0]Q;
  wire SCLR;
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
  (* C_WIDTH = "12" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "101110111000" *) 
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
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "101110111000" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "12" *) 
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
  input [11:0]L;
  output THRESH0;
  output [11:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [11:0]Q;
  wire SCLR;
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
  (* C_WIDTH = "12" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "101110111000" *) 
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
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
        .UP(1'b0));
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
JUL1PFmK8cSnniFbH6KZP119kZNb3PwHQe6XDMafyKBsu4+dXOAaVJV7Dxf/ULtWvRnTlXz6w7Xz
YT+MKxHDMhbkZQIYG52JmyypcyIHamYOYFc/ruZvhJMsPKrjF0rmmosiPy+HvMVLzmlst658Cbfy
m4Jq6Rk6cel+grzebOdZPO2eSiXFxj4Tmbe2HlrMT/itRZJYRy8yqE1Ae9VQV0BFpEUwqnwvx5LN
3GkUkjmz1JlfiuADY0vRAFcxL6jV2MwsPIkyt9PHB7WIKXzKCKqFG/OX5klgEhI5DZqSGEOiEzQm
DBJ9zEwlUwtvbT+7K74hUKpiXlAgjb42FjZWYg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YcSc9N1P4OfcHo8ndcaWAHahEpDAr65MyrdmWEdz/CRVXnxDYAD7msI/69w3JCWfyeYlkKPVWxWw
n4ckG3TWJNw19yaiRb6Dy0GgScEBymRFzCHeUgkESkxNp+eltixXi3jZdMBXI52i+oXWquFb56wV
rzOFioBCXXXcT/kjNEEyhtvj77/w5LLzcUku8IKmtmXNsphfBO+uzUzKFSsBYmpptqFjhU/l7Dpm
gGNJ1/7wibsJdcGYmJDMlm4YnQIcT3hBpDu+GYFPZREG5XKe0WpYPUOAXSJRj7cPKJVDbjjwhJVv
1Jphal0h4chmf0qfU4mrBBvAw6aqGozDxQN6tw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8704)
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
