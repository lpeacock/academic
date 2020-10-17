// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed Mar 25 12:26:27 2020
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
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [3:0]Q;

  wire CLK;
  wire [3:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
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
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1001" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "0" *) 
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
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
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
        .SCLR(1'b0),
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
cBEPOwl7izDOSA/h8jwkK+JOGv7XzQhWtvBswV2sGMBHlLCYn6fwHQUZVWMgdDvOKtTzcEcLJybK
OYxr6aFtxiDvuiwAvsEGiGiAfGfZPnmuOzlqV/bxUbTkSdbWEuxUQtdoMKrdoBY+pnmWvU0cFrAl
2wT6LcLoSen7O5lLaQI7e1NapDA2hfWLVcU8aIihZYvz+Q2ErzPGi7RZBI/i6zIYmimOpV67Rd9K
0kFLrW0stXzA+ibrlzHvb9/cbCtU8PN8AYrvrEclCPR9Sw+Pz9YhaYapkh8jbZWhgHSo7Zqt+5pF
QIj0DDRtjBdmUgkUnkNZxkPRXVJXpW1GIJidQQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zWkpZ+cIGrBiUhzFRkuJRMhP0MjZuQNgT5u5jZ89KYl6yuKj6WYHSdBm+HfYGNX8f6WZPCPszOS5
969FsSfXJNRKuRdf4JnfDzvw4u58BXMqvZBDHvj826+F9A6leipeUMtLvkZTJhBT904BJX3uK0EL
w+bTgdkhvoocdbMgpg89jYmyX+AH5TzPgId9px9idsmxBr41BA2gkhwVjA4dIm49DxRoTQtSFMeN
Ogsl8ZcXJDihb7DoMoPX5uqCRFOmjjKeaAUiFmaSEdbKlRIdb1OGBg1ZGYUQ5YsO9M4gka+4IzjA
dmXZtdmPt0FD6LFA9ebwkd0cRil2ELXQXj7JoA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4848)
`pragma protect data_block
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
Two5
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
