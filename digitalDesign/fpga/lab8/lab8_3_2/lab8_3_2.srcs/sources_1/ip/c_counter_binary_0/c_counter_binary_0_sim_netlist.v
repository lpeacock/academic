// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sun Apr  5 20:36:34 2020
// Host        : Peacock-XPS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/lucas/Documents/fpga/lab8/lab8_3_2/lab8_3_2.srcs/sources_1/ip/c_counter_binary_0/c_counter_binary_0_sim_netlist.v
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
    CE,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [12:0]Q;

  wire CE;
  wire CLK;
  wire [12:0]Q;
  wire SCLR;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "13" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "1" *) 
  (* c_count_to = "101110111000" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_0_c_counter_binary_v12_0_14 U0
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "1" *) (* C_COUNT_TO = "101110111000" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "13" *) 
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
  input [12:0]L;
  output THRESH0;
  output [12:0]Q;

  wire \<const1> ;
  wire CE;
  wire CLK;
  wire [12:0]Q;
  wire SCLR;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "13" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "1" *) 
  (* c_count_to = "101110111000" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_0_c_counter_binary_v12_0_14_viv i_synth
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
bXrr63/267wh4+JUVJWpYZKRcAbdy41oFrKpNUDyC2g+X6v2YbVnkmH95fOsLllO9s0pOdbp6jeT
CGfakWAQ6uyjgTAFhbzYeZDFsYC5vYApedmUgB8h3HzG6bvk4vwruxl/w/5sse/2Y5KuQ4CcSqLV
PjDU5DCLr+t+bQRXfvE2WjDYt5h4Y4Pd20rXGyxJQt3bwxlr4ryzV60fWvnr81PGqI8tfhuNEiRy
dyzEXa+UvzSfHQScLUBhJ02D3ixAMKuC4VehOTobudroyjlW6EWAGj+Bv0gaN9FjLogi+zfFBqId
P+OOZY/OTGMCIe8qDNxy/pFNRHewkNRz+1GurQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
B/mN8aGGZ0TSPNHt3ZplhCH1PEAP2G7jHBRNy/MO22mWvWBX09feP1FE691t3h+y3i5HGH10akkl
PqtvJkFYgh5wL2YdUQ2oxb4RRtyXAVzq8bo0HqrwSgpseTE12Qee22w7RUc2q4ofDUV+v7kSusvF
kGoa02fUIoxioKI1jXNCKUwUtq4nSgqAdbJRWBPa2/f/zBlHbhKsHoF5BB2pyqDKLbXUlwdNZJIZ
LF8Vpg+TKKVTOzC6f1xBSb19gtGvLcac5+OTE2Z4SGLzn/YaHry/vgEtAezqZStKy185KTpXgCMv
lpZCfW6zrKGeSdqvjJpBIYsIkpg8hPm0IsFnWA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 13072)
`pragma protect data_block
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
hwsehX0k77aWAo3kQ4ML7mqu8Q==
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
