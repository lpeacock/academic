// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed Mar 25 13:58:22 2020
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
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [3:0]Q;

  wire CLK;
  wire [3:0]Q;
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
  (* C_WIDTH = "4" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1001" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_14 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1001" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "4" *) 
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
  input [3:0]L;
  output THRESH0;
  output [3:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [3:0]Q;
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
  (* C_WIDTH = "4" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1001" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_14_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0}),
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
LJ0x27xjS5hOyu1MV1FZyyS8p0ly1h1YcIg7zAJcO+OCYKehRNLuZrnkAkGFc8heYUOPRiTQWwDp
ti2EDB0gETyz3NQecuYii3SVUUtpomHfi8/1D4XpIPNzhyeGTwC9XdCKSuIGi17ySFWFRhbUX1Yi
ZcWRMnPN+T1uxD76T9n8/a4nxMjwZtingTO6/dcU7YucVz912ctIEA+pX71aRJgrzyakLN6W6hJd
gZcevjgwSOZtmQ4QY3/5WxTfgvxW3G5IfA/cuYbB7wu8khPb1OeWmMzm5WglScynMulzNb08wNgi
Ons+xX2DGhdStX6maBvOsnDS0UHQFAggZLURig==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
32uGWmd3GqUSc89vtx8x9zQQpL8ydvMRRt1bw+KnDY6AgBzwNd6vQqOxU4T7uvLW8EdEhxjw51Cv
ra9Dcz+fdsHZnzTpxsLBXFkXWeDiWha9EOaJHgHfq2na4QGt5qFzFR0Cvn+Nk7CVsOkbLulnS7BU
z/5MLkf5S56KgdwEcyLtQUBmf/b8blm1dYaj2J/cICpGqgQvnxiKL+VwH+eVjKbnIZ6KvIEcH0a5
ARglRLdkIKO9xhoJLFw/UFPMBJyucPsLucYjlZ35KB9ul0NCX9XApRpkAXmMo8G6EZH6tXIjBAPe
A/KsBl7IqY92CK6qu9NJt3Eyomee1YWvtktObg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5104)
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
