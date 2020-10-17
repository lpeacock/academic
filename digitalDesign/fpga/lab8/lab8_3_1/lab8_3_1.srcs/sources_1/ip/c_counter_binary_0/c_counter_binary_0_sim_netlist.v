// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sun Apr  5 18:40:24 2020
// Host        : Peacock-XPS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/lucas/Documents/fpga/lab8/lab8_3_1/lab8_3_1.srcs/sources_1/ip/c_counter_binary_0/c_counter_binary_0_sim_netlist.v
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
  (* c_count_mode = "0" *) 
  (* c_count_to = "101110111000" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
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
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "101110111000" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
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
  (* c_count_mode = "0" *) 
  (* c_count_to = "101110111000" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
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
McCcNwv9udUVqB1q3sHHnOhryG0Ng1V0NnG4ZXyMNpO4pYzFNFfjY2oI5/qEOqGA7I+5hB8ApXKR
tytB6AtjWRrEJEEch7+IjsMh9lYpcU1jzd6XOsMWKKU9wdw5QU4qRp8QplZfx5tpNt/hM6BUfSFU
UkzwAwNJurDtP/FwPYd/qavcJw47TRHpLKn5LFtAJAgjNmOmA4mtTuzXFz29s7rD/jsil8m5VLol
FFrhSfIrhXH1dDkVcIIaeMoJkl+bLjK+jqtJmOV2sOrYTzbPDp1/9yQk/jhjXyOFYfqpVvjFenBz
mEQLVrE4KDa/+t2SjWDif3PINnd2KwhD4j3lsA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cRqeJ3MEkQtLxDp9J6LbmsQ7MvFpoytmGxJYKXKVXToJdXRb6z2qx4oigO5dpB9gedBZDDO4Q96a
YbzxOYTcm+r/+x8EzyhA9IYnwoMlsxEKC0IDlHRUnr/e6n3+5MMNyefcnm3bt9g0kHmCe6g1E4DD
6XSBai6zcddvDddBloQDc53kZ7ep6omjReOG+zi7ctX3EdBqdFr8M2s+/Tw1oqBliKbKjuHdzXT4
96EbmY8jyLbtGL7crnrw3wKJxgoAkBEi35NDh5YJ+kxtfFtbZPP+pgW0M35ER48Q723QH7BoPML4
KUhLUflqfoch+Vkt13Y5d99QFlFeDch1DD084Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10320)
`pragma protect data_block
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
B4VF
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
