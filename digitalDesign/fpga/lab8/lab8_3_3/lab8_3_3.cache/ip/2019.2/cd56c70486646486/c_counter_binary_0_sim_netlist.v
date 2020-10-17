// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Apr  6 20:44:56 2020
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_14 U0
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_14_viv i_synth
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
Ivq0PwdQRqOlaycFlkUK3i1HnL/eZ7EPBz3ltBI4YGoFpVr53HoyxHhQ9qnXYnksWu6cDp+EHMiK
toSzXOpSRLaPjepFQHzDnq8GJajL89koK9WM/fiKpPx6kyWsASJRqk0FK4HmC9I1Uzud17gTgzeT
WnKpHEi9U+vclAN3SzHQ/307W/MLCnFIA2DB5stVGJQqUKR72lakquune7lcJWq34y63shb3Tchx
BmsXcTxqGfNQep8/NWDSY0SwZfae+tFIb/RhI3i7QzJxnmjBWKWSUcI+0OUeAFK+RXiicu08x9qi
1SUVIh3zr59qma8rkmqHcpV3Wrj1U5PK3SJIAA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hTAmQzI2Be/OjWBfBKG2CWEVn+5f41BV3n3SxnmpUOC1YHKrF6NZH272Bk15ty5XjZGnUeALxxx2
Z6zIvWRkXrdlIquCI859dqLU5OYXB1KgodfN0Ripk++LtaA3Jg1jk0jYF3nM9z/lDwmMSAsoNwTX
3ihAkBKimpT0c89h37LZxAKgCKt4zJ1O4jHJMw4I93h3vEl2xMjUZx+j2sU4sIMW+7Ynn+MOwMQz
+gOCPQKO2PmfvZk86v8UadEG2RXx7figNZ0zIGIMEmVRxAGmKgYQkr+IWjh6wKCHrXFCmK4YHPU9
M5SNaLQmsqkgtUtfgQUMMdYHArTGRuNSj2z87g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8640)
`pragma protect data_block
/+CGErNCCzLg8gETByt5iJWKAMQXWE+w0b6ZuLz0adssOAwHqsslxqS2VfKLFVck9YfhKCrlHRa1
FJ2WbZ7N+1RGZXAEqwq0Gx25eCwXGcRCds0hk44/0R48ECSv3hZEwxsbju9g9+QVSoqoYDaDDt8u
4MaKU/rgW5+b31tYWJdiiFs8s+1Tg/GDrYHdEpaTYPfe9TFCfbYfYQEDrH6mHPJ4ST75PC/MeCV8
wi27SDJUAdWf2rd3F48IICVrsRzWJWanU/yoBD2ozb4Za61ETA0s/fsg9vu97flE2DxPIBP3C85s
Ip5Ns81ObmD1Y/5M5KP7Q8DeoJMtNH/2Ey54n9K6dvNMeDTmyhfdmWYig9MRazuhx8LefVPRk84r
Dhk1n+98y/fTpYoVyLL3+2KzhP3SMKz/VtqKwotTmb6D3AAmMH6WlIaCT3RC9UeBgVSW3EvNZZzv
V3GiiDZaewQsRRf2QOfAVjCkL/vZkOLLNRfYao/b8Sh69s+Kqf8Q5CX5xFQH3EQHRI2AxYHQy/mT
sMe1hrYahNOrDJPElhqOOEJ0mv0jwaXT9DmYMwauqfrZOi4CClDtopYJMfNk7x3F3e2iyJmtglGJ
W725YsIc1tMvObtRvvoEvBa4PkIArtBoS6J4Vlg1g/6ks4pXlICNRN9rWlhJ76tETGsY+/PUjTjs
fPYEB/izxxvnIp5QfG/jie9LVMZfg67BjML57q76SIe71lSN1BzxkH7g1kG0gKPVyiR/sN6yqzgi
q/hwWKeEZGACJe9QROWatv+7T0lukbpYUFRGveh2RqYQQ9aEL++U69oDvLn1PZQPgxH92dy1JSzG
l5E67hW8hc9URE+olPtDmxiYu2/63qWVKBT3xvOreuB21D8Vdd3bWANLHClQJMvToq8TnWvvIYij
qAYOrmo5F/hYYJp3cw+hPW6gCuiadey17K0ZN0oBoKikEBVHBBcJ5Wg/WTanek0ZtmhC3I6B7t6p
/Sg+cALIB4OqxlyzS+tc3Cu+gMi9Su+GFGcxkN7kohxnVMrmUtEyNAFSE8hUm7E4s7FG1kgvFYIH
7UScLU3JTugG65YcWGr3Qt08l0I+6JobGUWw9dkPf675hkbmaOioI9qZs6NCC/F2AnxwskWT8CxX
bpzuIB+vHxSf8+wgMRKSkoxVAwk92l7mPKn/S4sK43uCE7qGuv4f/T3EhB0E9pZz28QA5UbHmN4M
INmzO89RTxJJ6+7Snnmehwp6U6ejSzljGhBd2/XOOwwDn2JBFCjIipGCPczD1vdxfbPLl4ViIbKK
YlFGVhwLGLdMjxMeaQrXM2SiUtPi186+rh4ew5Y3yVS2V4dIU5HQOfGpNq551fmLBKqjTDJjlT9l
bvO9jxZNASHxZ+PgZVzMYOP8F41WkDB7iRPfDZYmo32yo6vR6o6zlb8Qp6SAH0a6G8MaW+07qXv9
9u6oszPjoDj/uINHXfaSzRFq+1Zz4w0oVpMlQkVGswQkf0yYcHIXQml2lp+8xr1pA2HNNauWIiSh
0vtOOMAyNP9iN4GG5qT64vpmJ9w5GaJOogPUje8vVukpcMHHaAAOAGXDOi50idBy3IJgjBTkVivW
suHd2CtHr9gaakMTApNk4dthuiY8xvpW7yzaoxz6bxySKBmB1C2jng+hwAu5Y4IBihJtoAD8GGSO
IjHEav8GVT+0it0AQaV8AD3k/FxY5RkpeXq7BqaIhyWInZs12FuZk4r1wIt7zwIYRKcYTwskfosz
XhMFxOQTSyfksHEVr6Az6ornZuvvzVXw7ls8f78pkv/AJl+NAuPJkhEv4eGfVXDzJRsI98WbGsIW
eutRgddo/VLgi8iGUZNg8YggeZIX7IAv0ZLGS5tHpB32R6559Arrejz5BH29PZyD8RyjdwMcvXRC
ZNJ3TlVsgT8THjIVGP8AZPfBeARDIb11AQ/DpD2jtRBq2vptpsZUBzKfOC3dg7cTAIGRtYi3MdDE
ZvtCdgBe45hrDOnIRTGv/OiiPL2ml0tBNTFdfhYQBq749fmSsHg6dsGmwmyb0LTjqVt4bWpcUiM9
rHZ2mj536ubWP0YLaprDwbPNTeOZjOWqFWpQOretBE5t95R4sICv3gPQWG6BadrE+omLnXfIz7zd
JRI/S119eaGWFM3ZKvFsbAyipqK6jeUmY8h65f3Ad8TVkNc11EZP5yeUPB54i/X6knyk+UdF9LoV
GSSl8YpM61XW3XMG/NLmSVFMctaywLdwuEc5Ovk39BTQ+HIQ5bO7VhY13UHBL/x4Qk+9UxaJBrer
BlOk8PYFC3aqNRVYkIL6GmHmyZrMmt4t7WT1PIJwr/ZZrncrGsjbGswSUab2FtRnYoES4kQZKF7+
wfh73BEKmB1yynsD5Vm3rp8ew9SMdlXLufg1QbHO/pFLBwsUaQAuqqFlEY69y57t8k47CMAVzPFl
A7Rh2OBaq1RDPRs+O+Z0lagcouv/2/10vI22x+IKUFRCOmCTPre3Kr8fEarCuYORrHtDGF/BQ7bi
RUPRA46YYtDfcTlaZiVaacFSWpOaaMmsJYVW+Y9NZS24jVwiPxxHBEPrpZqeacdfEK1syeG8yo+s
+JC/uMi7lwA9SqPvmVxpPpkw6JKUvAFwVYWRkVq4mL6P2TfnqpOZuEwbXaBA2Xai6SXClLVpsaso
j9oSw9hZr0Dmu5Yc3wJRfatBNF6o/ua88zHJjXNtPfHZeHjCcLjSFJ+53kJcmVYRpFtN04x5uoFf
gSQKas1HT6jm8nqjKsH0d2jUlH0L/AiKaDSsF3DQHBbX+cc8G0urWWW++7ttk4zBe2BFVZF/vU4P
B/CZ/Lc+abr1kTsJRrzHRYxTELhzE8AWaRMARGKKNX+oSBD+oU5gOqHuP8V81VPr3FEVRGZ5N1bt
5hy5WA6+bmH5mXc606rbu5c7csw1Nmas6UYpDVl6rCNisafCvdwQuwaUpqZcBPwU+LvjZxVSkdN8
gewxdqFfa/WQeRMBAgLLe8ANUzW37ySzxT6qnhH+i2a97U6poCZp/fj8PI+yLaVHQOXLpeqkgz/U
Z6BbG+SSvukmp9bCCBq92jMfyJAtymG5nz4Bh+Kjn2BvVXE6ycK03TAYzpCFZKEyVIEG1JG3bzol
WkrwV/yoVEn3p4dfc8D8H5kP1yCpBPNWetqN+HuD5884pb+r7vuULTvwAgARnFHDkllLAaHRTMEt
CuCk4soCKTQNx+e98QI9P6d5u+BL8acHF0T8KEaj9T+3/wYae52qSv9PzX5c/84JXwqP0gNn6Ff8
l+tpgZ7btX3X/Q3Ru7/KYCaCfE2BJZ9arj2tGZtBlPZ8h8tHSwBDJStjCmWbYKzA97YFa8z4k+0S
/lw5EkIkMIhWizADdjGg+LA33qmWH5ewBtMWJghSN9NuctRTCkD85wsN5F2BOwKj85SKttNL3aON
HRt0ncx15Mr8A2uZJH/hQLtHZ6qWjE+MT7fghvspSM/JW00X2qeoi5q/XS+D5HpeiqPnGEJjIfwv
rveQpgkU66abGx1kt1KxoeU07y6lQyDLgFZ/Cmzart8Op5e4zIWpSTqQV3eg4FW3BhwJL1MCKIA4
D2X47piMDkFVyglGriQI8TnGv5XD6f6Kxha8jjvTElUmG1PjsyCCNwnpoSBQQLOgqJPtnrtjqt4g
eLHoW6TICOv5nNePXQBUPylwQc1yb7pkdkVaPWlNLWu3fV2qGHDLHvcKmazZG52bmUp1ATibzWLv
gd5CXAxnk3ZvR0HqBl1oPHogG3WGXiKJ3u1LPs2rqRagLaM0QKXm5AfA0aTaseF2AzGOqW8UYFAX
ozWWAPwJboQUL+Zad6Hm1pUm6HhtG3tMBdjUatoquQNCyDVd+Ju+LUaJSshfrP4ZhHaSHxDXccNH
w5aMwpgHugGst4gz0LZL55cz09VauO1/fTqJChjYn6M695ghnNiq+zm+OWSU8qsKSBnK66Ex6sZQ
wvSBTU8olsAwuEAzN6cF/jA0y93f+grhUxyHyvZiwKCVZJuMP4FvbTYmalownhqrdYbeq6v88gss
SWoULAMt/GYcpt4xKQLQPYsd9gVwxWNPpAngwlRtBEAsTpS+BIEQhgVXRoA7YpCC9qxPrBmQS3L6
qmUYjWUQ5Vunzq8lYdZsK30c0CuZbzxRBmqeuSU/G7gwyPh1HrKNUrSBrnSV5yOa7MiA18RrfpAu
+DRLE0Hnkk2H1en8JMhkB+H/5pcI7PDeQXwMpfjNftmsMfNUB0EHFzvvE0UaAIxP9vUfFB5VnJUn
uMabL2OAUkfHah4kz2Vr4a1IVXhcNHJD8wjSr9V8mau2IZqNOZ57N8ygEjRx1a/cB8stsodPYP1t
aLSmVtq5n7TPnN4aPE9E7hF2Hr5A160RYsgj6fXrrsP4zQWX5Gi/yJbrtoPzUUKTEOTrNOty0AYv
673JWFOHmOAX16EIzjBV8wiVHlt+FfI6tGJLulG987M4uznGb4mcG5MOq50NDEnh85P2MqFyDSC6
BNPOTqF2upkXZ6AMyDhLtmaO0gC9o8UmzIAEW5lkkgqM/HyKFQhjbvC+PKf7wkGzTEd4eaBMg9iT
U93zL5YT2l5IWZmYi7n6yyc9iTcPsHo/yxdZw9v+8W/CvMYwbzZkYHlqWZOWVQqSKVWQkSzk5GxE
9ljaLlaPRHTtyxwjNnEmyesTmrsViaHKJgvNJm7nGo3YXCk2xCcA3o9MdtMXBxDRfWgAjtOkbwNm
CAnMxcCGU7NuUguP86OtmBgnKopKrNs5H8yQnH4MKc/llmYvoybkeE4plE4Zwf4/sPML8bPcwnfJ
NpCKaHjaOjP8GF2RAVXfEvwNgWxmHoCfYvYGiSHF69efs9m0jsSqz9b1FDfLLFVZvg8MFKn2Cfw7
uFOKSvqLgd5D8GP9TgELlVh7c9iHw1RwVClCOtbMqBKTBmrv9PvvC+2jt6AuKvV5Ma5MGIq7Nmwg
LM4qKtbE96/2lQidZdnzWZ7N1yTrDG5zU1mwcKAkQ+lDRxnCMyAGi0B1fHSxKbAsgADarEf9CqCt
7LaL+Syd4/HRTGjrUaZm8SHwomm1irZum+Plv/0v3Tkzea3pDi38rJrqCMKzi2e5YSemqrz9adwE
D0Sb/8cNJqj1IRar7NUak8vaS5kSbFnZfSuhsBllNxE5cTb1mM5vbQcH13iKUYCMcQFmU8ScWtwF
XI/FffB/87vjhc9w2RlnSWcco4S9v2bmJww5CfwpEHGNprtrxBWSomGeS1ezeOK1q+feQavCR/jZ
Jm5phnDSC8ob/6cS1tlyJByGjUATyZcVUk4RijJioRxMXRHPLUMF4QnOixazsS+GV5mKngfZRuwT
iA3bAePTMDtNFim9oiUYSTVWeRfI1yzI7qRoHRR2b58f7p+D3FmOoBEMURmLlc+0njftjboI8wdC
Vwu4kJVHZOnRyP+stT7TUtIiN25MS+0TkHMZrkrLW2695ioU6Hl99vYleocBopYvUXpGcpd+ebwJ
QUzGhAw+h6f+ZVdnD8LROYOIwU/+aG7TMSB+dw2VkgVptzPPexdwMFwcyVA514dZGuvMNV199sOx
ZDE4NhWNBguDHJ+qd7JlhaTymcqS07QlLPUVaRQvY1xbgHEc6VDedqNfrdXCF5GBgbldipwO4Zid
AnREX5nppUKoY0xsdRESc7P1atyJIzIzBS7b5eec8C1NRxris4OEs6Q3QFuMxlQjJ/xtOyARoXD0
is7CfCCOYOB+4xOI8cYpypNddhBoNfVJ3j1eiyoIhRDtdW5U1r6cdYfNduL5VnCzBqG8gH/xh+ad
laPJRRM4/nPZjz0PVspd8acZvNIVzCdyASslt8pMEGZL2FoimwF6uBOqLVFMroSM4ukeCibfrBjk
Mg8T9mcjjgaQst84afBxpwHxWCT3ewvwXM/U2figkdqIm93Hr95zcyJ8b4ZDv9F7s5ReWN9gR94Z
JOSJUwMmVKizsRQCjMGi++0RR8kFPDxaPjym/bJMWo7OwuCktlQvhDRc+azjnJ73Sv5YBPrVyoIu
b+q3U3Z7Zm5CDXvkGFWZTtrddxTIyRAUzKFKkFFhzRIA5nzRYfDwFn0ou6woKwDMIjgF+mI2FBzV
I5LLo3WGf9Sl7nVxIhCVXv2O662sMjUt4aC+wWXjAW1mQIgIug0Cb/QgrAfqDsKba0uNYeamT2Vn
kFd/x8BNu13NaJzc0bC+kTq8qt7SO+r8FdP1l5p3Du14OlkvwdNqGRWoHocmiHuBYoLQnGhwN2tz
fz1Ty9eZOqgMP4HoOnyZU6fB4D3Qn4Wa32XG3btOdVBp9wUsOClhnjUfeTxeYv5fJ1LTxaacYbsx
IVuDttIIkwqAY2jtdisIKlQW9x07WW2MER2fmFQ91R541IW7+/gnrYIYbdJuYVSHmXjqdXTjUHaq
wRL06ciXhdQsCG9zTznAfGx1JC+l2MiHbrCAqij3BEaSkoruvMxMF0DQeA6gWuZePO66XfKEE3Jy
Gd0ABQVk2pL69ojQAkNi7tjZxi48Vuo55zjfTDR9SlDK0othITVE6RaWMwzku0r6sdM8b9Z5Kz8/
Wx1ah590AO0PQu3Y1ffhAWgLkI1LFjZCb5XHTfaad1FerP3qSQlJP9a6pTiPaKzNYAlNRnkSZ/1z
/pjghXtADozyVvcfkSPYaRbVtn00e7KPjmbBrDiyNEklPEmgSww0FSg9faR0BLlbKglt4v4MGLHN
ilj8JatH33KCxpAwav83OAPmHyPvvoeTNxNVFPp31T+Guai1BWSoscB1vx0Z0L/FH6f5xLLCDI9B
PGvMFPQw+y7rWhXaMlIwoJ9pLLXh10vVqbRgSed7ZCBAJgJzp8XXs9FBAXSoqbDOSe3rr+iK/BWS
5oS3sKk7zYpISadIFTbeqAHeTQf7JhhklGloeoa7tY01o4FWWIRA0mw7GHoQPFgcvhatMR1uT37W
keefAw1/WxSiJTkdhoR/xNA4L/ABIckkmnpZfii1w7i54bqSQoS4dBTcmTUpXw1VALULdG5rUR6W
TglkftF3nEZcTPCZD2wJVf3WgvL8oFRqUybTklavxmug+4bXUu8SZIXe2ovE4DSHj1dfsCkwTggN
UrClnLzrSe/eaPJ/nyeX4+uFiSFzlJ5OVFw/2NyyslRmEwjIIra8K053wJAmRVMM/sk0BmzM/hXl
pJm5xlLD7aPxfIpNySteEyCapzLN4/PzWt8x6+EOUx7JVYECc2fKzFGRKAXTyyi8xnNO6dvx0YvA
yE/OtFuR5UXW+VgZRpypAU0ODcXT5DoSQq25j4KAEyMEKWiELG3eiuSY6jj7wOTqGeVtc9lZv+P7
KC2y3O5D48pSHcC9kjlHybA23y7AdPJZYTwCfbWlchdFRHVJqs2y2jPcesQhYFOit/Tq/rDrHFml
l7Llp9XMV8lO/6bywlKgRTRAkk1GSRCgBptXAxtqPiYeztPRLXf97L+JuCuEREg8l9xdPKKpmf34
Gt2PIl24oTzavbMmmJxZCVv4Gyi0A+Pz8aDEOJo4sXTaOSxfXpbaD4CqeieHyk9xkhNsfs46zpAj
aoDwmTtAcmu+E8vaBKOntiiwcxd0SmO0k36Ep4yGrieG8MPcZ8xSVr0KorMgQSjn7Tbxb539R6mT
rr943B6FKPEXCNE6NRsouN8njpmovRtBxRX7qRloLgHgkir2KGKTppoxr9dtWuIi7ny6qHXaQ8Hs
uvjq6hbd9HBg9OHcXdP5xlKsB/aG9kvmJJ1pTQpg2LrJJsSXDo7RJz7URfkeeYfdOJPSw6/YYbTZ
sKR9K6BeZz34RU5A0akBX4cbr41OHszk7t/XKTXHuQs72JPkY6CseJ5cNyhP9M8Owbdd4RHNc2n3
ojuZCKVR3EhH7hM0EN08MB/B9ANUBQlRwicnrvrMAPD0Jbw4kdzJRl2GeHGf+Ee3JeG7WZb8yT69
P5jgwpKHr5z0+brW6PsexnsYZMlduNHzxErdthUVUpS3RxEZJ8uGPoqrqi7Rnk5d3J3a945Xq+AR
YT0fT4wf4C2EvqFrxqwpjEz0PVh2vZqLjzPa7/bsSH6PJ1E7bcqk9rYI+tbOGxfPa4fGBAzZtt41
gZqa+18ZTxt50F5lWFE+IJhQ2egoQRdKvxV69vgstNM1L0pDNUxNc2tv6jW03xOFdOl6db1hBpe8
6al2BfgiJocMtBiTmkGhpI1N74HQyX7IqjG09Dmab0fRq+PVHqKskFTRycoYYtZ0TeRFUDrI1Hdg
RAvaTms+loEZD+cB9yNh0HIHiiqLHZSIRIqwQKNc0QIh+vuMwiFdMBL0SMsnvJ3ePrRefqsUz54H
OJgj2Feia+hHAgfqdx6MtsWIY7Z5qLsha4duzvF6QPGwsFP77k50V5NXw/Dhes9ixxDG2grTcOg5
s9ZXcILSuyX0y7FsA4ltBdkYonITMYV2GG4i3Iz7Dp1SbTK+vSkg4linlq/2HXaGzLMI4iip1+lS
VAegHaTM9ZEC1X5ZIZBLSEAz1bhhKEj8AukVqjm9MeNK3pgyFb6kBpgr4EA8zEjJARgmFsHcNSdf
dHU/5nRlhokqHPMYL4Ccvfy8X94oFwy4TH7fh72vCunuQQT0IgLtbFgwsLHxLrj/iYqw2bc4B4S7
TAV7q7rpkTDdoygOnJuF89LT1bRYmuaUJfnlesR6hqpq2fwaUt+ghR8erSkCTfkZVRK7ukfaz/eS
bqkhdRDjGDTv6/Inhs9/JhDGUexZu/lmsSte5/W2TxNPb7AmY20bHqIb4UzBxxvXzIi9GBEAnFYW
Z/DZ/UlApgJjQPMShEN6/jV8IFT+eFmGf3B1lmCVuYZiByLUJd/Xp9/BeZ+LJmJVGOVpEtSLXFae
v/x6gp4jPZqU/N24QIyU6TmI4elTbzyWSuX2NkGxhQxOZctUiDdV9hrpnAVsVhR+kEnLdbMP/7dC
/TygkB4ArYme6qECrXt49RobCFE7/9uPZ9qNcJ5ashzs4Q363XPYtvFOaKrouC1y8YroyuR0yFHG
Ch3/Yvx6qyUm/AkdLdH23r64XI/UUPuYiFMIPO69Q1PpnGbLQtgrA1TN+VVjvW3eF4plRe3CwuF3
3iiIdIcAgmJoGB4+9X3TMVCv2wOKw+9+FY+o42igyHbv6oYFISbKR+lfEwXTfLZl8qvgPwJj5UPW
C9ssTRFwdndgTXFeBTdQcOZkn2ksPgcU48m5WDW/yBEvQ/ZEkqUkn8MB4mr0iE4sTIZhV8U+DUKv
lThwePjAyo3lv2dVeOY5NGpNvwE8ufifGuW+iRPTtGBegVCPRcKTwAyoYRvMZHkkV7l5RkVOvl1T
1xLsz7WrQnOJxCo0uaWk+YCWAkuZFyyj9I7SK2j+egUMe5B3ci052l3XO797sQvBuOKmXJUaXsQ7
ks7j1BkuWzq1D3YC/cY0zNcghYOuF4M8rS12ZzsVJHosB6caRcx7Uo/cnXkdqd6YzzPBaYXsmZ7a
VHH4FOrSSomNxeQaALuUlyzjYsOjIsXspEn8JP2XFR0vM1DvjYid+WiZTmmlBYKG9cBfn26PcYNX
oay8+cymds0XoIMofDCNaAIxnmCZ/0SBwuj8BPnpsNSKkz3uZc3z38IYzUv6xPBers9n5qSpQaOM
Zme0/N8kBYUpSOspEVr/x3iGjPmueDHOkXxj93X5KZEZI741VDYEpYKKM2vv7Do/nTs2lxl5yuGd
5g22r6xE2CJEGplcB7jYnHHq3w4zCt/LxVoUke9hlVpOgD1laCNAxBGFC+g+Qswb1YQvxXjPL2v+
cwRx6GhlS6HyUAkcJgI0o+DTIFePx47qeUhslf2Oz/tQxpVu7S01LzcOKnphhROpuhL3NVca/UgQ
RflqdqZykm89Odb7Te8Cj7uuSfhwUaIU4BzIu4/Bu+YirrxY19fXaA3aWlSqwk2Vv//ifdFw/OS0
/0JhEUVrvPFWuUIhDSmzRLDqLyV2hv3tPr6YSsZXU1mIH/HZwixbfV57nhfSlglFcKF0UD42PrrQ
pU2qCh7ObgW+m/d4GxCS1rM4Nz+g90MHXtAvq/jyEngV9ORVlXLqvvs6vd8iioqZo+DyOdrUhfKn
mQ/k0+rdR/InDjYp9Z4m1NNek9dZRMyYUCcNyO7BvZAnTkWFfNmW0YBSOl6+2yPpPZHp/y69xkiT
H5uDc77Eclmsqq4Y2WMJX1XZ/Yarqm9x0aASz65PvTwwgjr9lgfnzlJayznK9OJZeUSvQC9/Amu0
9JORFhIjQqrgSvS6vuwfMry1ziHlUCNJ4f8kyFmYjdKc65jV9/PJmOhE8M/C3mzLvXHITt1jsOTl
Jz5UJcLjsuEDyp7m03EDWfuhnEljc+4s0yBeGlTr9esNe2nZltx8T8MpGTT13xX9UG7X8TqJOU23
vkoYNKayDPsvUlOeN21jn/renTHvGPyd6IQRsLqeA1fbgtxntl9uMhKc1+WoygrLqINXGvzN60sb
a2Oe8FPSQ/9oASiA4g+7FygPbnhuS1tU7y8Il/Lqevy2U4cXRlScYXhOUYDbNcc6+YvVH0NdBYyL
OCBpld1BLqFOlDYhCt0KqvC1SX+FdYS3AI4q7kybrZ0B/WA082K13HBwLXoeAx35L6Etf8rUhZaG
7FRdjFQo0dcgCCWLkdyedI8Jry5ysT1c3x1+p9GEZPoKg3vWCfOpO/H4o27TzbmNXI3sJY7Q/NSz
8QrugkLV6nYO/RxAUA3QebwX997Y8uj2IGx0aToVuQ/4k+1lEgZASs/4T65wY9JT7yR4537FZWyg
njgIco1QQklv66i3B0LkppAnX5qN3yrIBxxm/LdEcY5/Ny6U/xEwwxa/ukIdXP17HUPPEOBNcVKW
LZ2G0beBQY4fI5ZVLkWps6Re4d6H3IT0xexqqFVfFLsRzD20IGFpuW18X3314rxrDElccIA+gcDz
Lqh+RiKXRIpAlZ9i0m+ny3mCt5avWa5e9N9tQfYYWw3l8aBLOOAagNxf2MyRYjle4OPSTS4SKfiQ
qb53BsSNezVzbtDE9kJ4bcdcg2E5MUzb22Q89RXd6U0nekaYj0UAPGg93XhSSEslMpqrEGkmfcfQ
de4ksiN6g6HXJLeYKkeimfr7naepAjnGfOl4C2j7TDHew9NGYJEZkn/rCj2yUOKBbkh2Nxxb82Tf
LEvcifLGSgGbAG1zD/IxVLqTLi5jHIM6SnXJHE3afWBGaf+hv1HUDRKe3KyyiDUOqNgb9EVZe2Al
hZwvI1Eg+8HEIPeIjE3BAiFRvb9N8EJUE33UEw2lEWKOYvFjuOl1PCzNGK1AVQOlLEFrdRwEny4d
pY1gAvRY0CROo+CvVnS8iBX/F4Hqu8v9Sv2sdyrbnbX/bovCeIpH+bKY0vJPevTF5dGs/38Mcp7j
yAGACszPtCfVgmKROUkaKr7ULQEwukujsOREMxDEYQniHxyiJ5TowKZicc957LP8Z7DKVwQaISuM
UdjcuzBfOTIRT8+u/TBksvWrjH+4gTo5D2bGwwHqshaTks0lRbs/svzUczZ3Z7TH6PWlTQSh9n/1
6rUg0oWKZoD2fcNlDxfIwtncF0xk6FlUnLgR5o52l9q5
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
