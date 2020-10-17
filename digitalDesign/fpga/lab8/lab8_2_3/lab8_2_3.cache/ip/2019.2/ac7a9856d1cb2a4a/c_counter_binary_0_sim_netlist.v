// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Mar 30 14:17:26 2020
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
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [7:0]Q;

  wire CLK;
  wire [7:0]Q;
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
  (* C_WIDTH = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_14 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
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
  wire [7:0]Q;
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
  (* C_WIDTH = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_14_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
FpSQby+1zYs/A4X0oIN8hnx0VheIMVwihrpgMiuqrg9a4npx7gCVLfVvZcK8n6m1oqnkyBhhX+MW
Wfoy9iieYeq72KCJMXPtdlIPyX3xl75+g2vIl1c0T59hSwYUWMr0vtxQx+KF0POrbkCVHVEj42Kq
IE9VrvqedTNL7FDFgQiPaLAj5b/Sw/Md/AimTCeLImrDjdzKWTJuF85RpYHm5lzWBSTV1p4RyvWz
M7zaxCp35BHUhNIYdy2NAxkYxhClWO5MZHRUgOXiq+OSpk+tKQqjbvC5Z13G5Nvz9V4XjzAGELDw
iV+jgVTeJ0oUoo6ivP8ngACWwUPUHu5DnstM3w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hQ+rAc4g+ew0a0cCbBSmiaBlXUeGh8HWQBHnfP0bn8I6yLfGGsR9fo1RJoizxHBwcUL8l9SqXamM
6c4C5m27QOi0HxuiLJsYlJw1hc/JJJn4/wIn+xV4BxYPlED2hs4xanN1OLhkVE/ghlmzdEF85yJK
AQcSpY9Dfrjpcc9RXH+lVfyZRoVQd8I5e2mv/KxAq2/XvoJoirIMZutwvbzaUMJ5HI/8alo6/p9n
k025O1qCeFHxYTHeCKBXCjJOtktZsPvdTjoQ7kTi8BrIIe/zdARJexi7M68np1Ter5PRxy+s4EWL
Fq6OXvSlqMxipS878/oNTYVu4GD+H305VG5bWg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6512)
`pragma protect data_block
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
Q4LYX0pFYGKUlFvyfNk=
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
