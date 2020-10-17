// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Mar 30 14:27:51 2020
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_14_viv i_synth
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
o3/bUzTKstOX1QWfeHgUHZb66Lbh317EnmvEGYvBLaRzRJsq1RzfUDvR6Q01yBnh+vxrL2tWvOlY
lDzNzG4yRAGpd/UBzNAF7am4kGzDAdVsDH8S2tklEUIuPcKnJXLRWUdA2oIx3KcaRI5m3rJJY8dQ
Pr/fvt0ll6B90LLIJhWpP/ydXRmEf+hLiphr1LM/sk97ObbTdN9E9JzP50V6ImNmiTkwBDsNJ+Lk
1zx4Hm4hL5lR+RiDZSkWkXvDOvdRSPGUMx8+wqXuwf/mvWuotwJ9tQbp7t8/1a7b+HDH/5R7NkLi
ukAGfjMrEKQs6dtFLl7mxIUrYKIyOq2cZhBbvA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mSs01ef3UYPpvPx1YJHVPRLmFhdUI+TtWlsivWtcNZUijvxN9zz0JIr9iEsDyzE1GwI84yThIBga
/d24WM/5wQglf4ZY18uUULHoHYRqJjCJnbbUi/TmURdW8zvyJIC66VLjKq8eNU69/7DM5dekw+5I
hXlwMYXebDGdKYVA8CrZ96tRjefm/ReSnMG7NxKT+mXqv6K8yp+xmMuRau7N/1m5Z7Ie28Jav5MM
3cVinZI06efHXmulaSfJXPWfinMSZzehpR2oV1LqA+F8xO7mkEFIpdxfWLRqf3PoKmMTI3zAfVS7
3aCCAiVQfXlnt8Dpe5rZfHOOr9wbEMXYAffxFA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9200)
`pragma protect data_block
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
1/GAzR7A23LmQGLIYbkSJp1iXedhwhw=
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
