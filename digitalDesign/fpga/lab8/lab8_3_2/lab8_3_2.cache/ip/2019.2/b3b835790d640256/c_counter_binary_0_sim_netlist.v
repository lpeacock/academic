// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sun Apr  5 20:36:33 2020
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_14 U0
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_14_viv i_synth
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
G1P+Q+aUoUM2AbMbbdT36BeJsy5DsILWvmmB1uNP9F9JPgNw6SzIC6CgVt6bWhQOih8wXYu/oeDy
qOG6rNfWvnfFC31JCFtT6aqcvHknb/O2Pm8RmbjOxfFmBcBuT/kiBt+AzEo6vbPW87jjuAJHPLeh
kwYoTeRx4XIoMIFTAQjinHfR084HwrdFBeKJF7lgTzsia4BWjbtlNcSSL5uYgvvKvvClJ7C8e7AD
s25qxn0PfoSSk+RPwKGNAjPZxDtvdvVPhz6a5IxERr7buyduP3IC/3oBWXcnNEpNcAuuhlfpKIgM
bLNsM08xvKttoUZ7150BfOoU23l9DuLkbS5qZg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aW2zjxt1NUAoHrabQzLUVB1v9+h2g/Xz9Z7zCWdStSLzEcs3itxj3YJiThv2lCC1kb8gWMShHgPj
7rXgEtNsx0eGmHir6zT/A6nX/fEuX2ETwoPTbDG8KVvR0Z/s49UyiM/RNl3aCw99axZlzpEv+htv
q11p8/Go7KFU31QRnitZhrQknrbMXFKNYm7ObFA6MVVhl894BTbPX5TeOOtSGaY8bDrb+TZMis/k
cg3BpLdkhKdSg8zAqGbO81j/M80VkEgpiO154yWuSJ5L68XweNURn4ulQf9itxRN2NXwTZL4qWiG
IeiC+Q3mSzjYH4Ke8K2lDFVzXFlVjaAhe5Mikg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 13008)
`pragma protect data_block
NNwvPKHYK1BMN6nsZcYimmQWnZmIuViuUbtvgPR4b4AsRrl0XdvPtoBkt6lEX1ns0NF/TlXrRNzB
5i8qlzBoHY/LprMoqJGi4uE93gfNNcYW17cCpbnG8xiECpzfvKIhKEz7EArvlz1NIlblhU0DxqlP
EFp0NZXgXxFWrzx6NoCg37dFqjCyv1jTQwV6+dsiS2/A5f8Ts/V8AvKGcbT6DrfAEMDK7HMLrtpX
7jgWO/2Dgs1IFMfF34kupWq8duuBuZTmyHy8EtiAfpSbsBslm03sgHMczyv+BtPmrNnScZRfh0rc
PPKEXkyUUkRPLBgkZKAxWxGbjKiChCQSnvVfBp6rcEVcFoxpHivhuHWL3fox2GDVrqheO67QzQc3
YCdcTaEqWw1BdhdfeKQRJC46bPeTo41WVVMmCtk7WqjXAvw2lLL+1EU0qvw+L24YwM/ZEn98N6wq
vU1JruHjqM6D69iPBaXOXDAyKwUMM5MVX/OO41Wnj0FuemzPXRDCf0mLwb87g7jy0UwLqfCo73ld
shQnNP3gRI5pRamfWZB6OyphT/Gk2/PEpJD8+GYlp1j0R/tOf7n0L6p3Hvdr5J8dE9V4ypDejavl
uLcJ4puZHv+IEascrLYrmtPe4//KiqtKIZI36R3YCU4o4HxWSdmqSlJh1qqGgNF27sXbHH/yfPgC
3VBY/tjfNUikKpujRxivi0wnJyrtQMR7Pn91zd9kJ7Drmv0eY+eAx4ggDgY/r/3I7P5GP61rl5f9
IW/yvD49ShW7p4OfYrlL9ItGH0eplVSuYSw7+nAEvWoQ9LgjHPc/ex0nnku0YmYPNelI5/w6iOrO
PUuDJj78F49g/X9Pz4JHF8Yy4Ukv2lsAR35VY0Kuv1i05dVRVE64nNy0kgQwMRvml6lHIzi5is0k
DiAZa1V8TxUA3hPkb8ZvQg58WxKKl6vjrTx8g+fRUyn4jN8TNsML/C0ia27JUHoG9v867yj6ThOp
pxN7SLAlmDOkqyAIek3CwEioKdEFU8WlnhB6ukhrKXXQUqj0IT86TKryaHSD2VN+3uhWLU6p0BHy
oJJC1s9W07aIYTlqbl+S+NW1G4/neGydW0T+POQ7JqOQPmN77q76n7345+OM5BUg9hA6MoPYo6eY
oogItq4qYc5FA0IqUWFHmjxWX2CE0qqg879Znu09xJftwzq8sjkqxaHGoPuLEGvmm3bZfSwlhdAy
ZXiC1coXrHBQ+9/fNpzak66NAKpR8ScMUcX6PYk3y2ag6tyKQFeFpQGMBmd4GMM01beTMyJ02cRS
nj62KepnHuUqTTvMe/Hr9PJE5hgGDX+kLB/BqD7pE5ItGEn9H8qoqQrSWEUi849/h8TFv/CY/KtS
m5FYoz4tm6hQEO0wvXG/sUUa2x/vl1XknyaMJu2ST2TCrsMaVvLrhnn6e8wvPDY6e4nIEDCXEOC0
O9ajvFt4FnM3bfVwufpERTv/a/W7ggjjpIN/sCy9X8yGxrmeawaykwOYJPDkAMGSbT5bt8dQbPhp
HyPfYzJMCW3z9kqT5CtrahfzPppeUBjHKJRiLcWIWa5ptOJzUYz0QDO9vz0O58a2Wrnt4zeDaowD
m38LdpDRNAV89wEjPBv+y5VcNSjCpwMVesv6mBJvBzoxAPU0cGkaggleQdgwD/TqSdYwGswBTAOi
bkuRNX4joEd/30ROS//r4Av7B9neAotNKFi6BU/a83tHmLVJJo3rgh1Eracc3EVU8qTd0/9XyivT
fCoOmA97G7GQ7SdHoJI2dWd6LwKkLSfnlXrTUGu6JNE6B63T8TKtVXJrNLnoiHrK+ZhxI93Pj1Mt
ylRs/zpVsAAjxeLI4jKW4gYfSTl9EiVWWsTpnf42iAhlHxV24FEnhDK6o30+2O9TLonHi4dUJUXM
B4Pxve8UNwqom74dbA69HH44W2gv8eMlIyZKr+jquw8jrd5+LN5jQj4w6i2cK+QSxO1+X2cozqPm
D3QnIpWbWQoR9w7+f6sOAHukN6egH+D+wPRoxUMV6/GldiNvALUom/z24RuPgaIIyFGltG2OZYCv
lNwCGa/4Uc3GHv59uIqPsGbaILq5lIIncYySoPntuqcCGLAtb372jY5hxsSr33w+NGhNiyxj3wrz
jm7GoyxY+ZOotblmNUcQZABHUbHtATbB+Vamz9D9iIezrPzlbLTaaZi630rjmHmc92gvYEup5zzP
ApaCpjLcW0OnBvTtx1sNEFYHRXPT4lx9P8qcPo9BApfKCtVQxgBEFBLi5L92JCQCEe32UcBxiHyW
vcX2kWop0xvHs0CwRvhuJTlDqNy7XtIo5pA/0Puq6j1xGwZNs6CauU11GDOmU+Y3XnG8quErFr9J
yU/I3B5mRkEaFQ4L6e4fp9jqppQof6bndjVr1WWvrVoixXXkq/htvu6k/7/Yej4hppThPIhdSGVk
gRnAcpG3TSdHWAvCGe41XLJq0RlXOEytnANF1o7REzaagMciDj13o3rcY7nwmGaxC5Ev/vdIr+Il
C50ZMeyYR8yghHKVhsBy8Ghx+2vzrxF/H7amBAHdCpm0oZ9r4cGVANurKXe4L5fun/q/1l/0S0y/
2+Dh8FjfciS6WEE0QzcCrbn6WKRridLQRkY1kBgw0aENF9ig47cKIaINYRuxPXThYDAoA4FonQQ/
gI7xHcR52qgcwifKygvzVToynMdBxhRY/AFyH5SZ789p2ev5kWcCPZnYahmsBQ25AaGEmVz9ub72
uFN/61gZZ1bh96fTj5qH4nozZBHO2a2kY4cAZ4FnUYoWNHP57fa1VVtzPAb1DyOY1+oEjTJ8JgZy
gg8FzH1vk4EK9tI7ucAfQxuRQrA9QU7sLEbtfei/c3j44QYiCxtNor5EWCcwJzneREfITAIzoelw
P1W80wVwI+slYf7wjY3Ekag8P1ihbIzRm9ImRG4VapRZPhWVt2NCn2zryphRJAkRwzzLXKCUqsBQ
SNiyywyTAja6yMcjo9GYvk9Shrt2EgdqmAQnQVVIViR/59E/Gb/cbkZcj3cUmgMuJMoMZ4U1Y/GJ
2cCT4CMMAnSXgfs5zD8UF/7CMQhot8s99Dac0Zx5EZzKoVN2JPyPuwRYqmoWlekCY5YVGjcM/zof
NIRblKLN5ZOe2TMEatGWilj3BHHiqXfEgVGF8QYzql+oJW1R6EGfS1hnzjVnkQIy7w1QLMtxrbzC
3MH2A4UjzHH4NPw6PsMqlDq3JGVYS3gds3MwLp5InYZeUo4/Me/t6MDaZ9mTEDs0E1eDZ/7fB34U
GfyFXpnQDDYSXp242+OuUqccDrbmu2cp7CLILef2yczbPhJFGPaawgnwvv2AaSGT7i7qEXxnJ4iG
infVSKlDdNegZqImXQlwNDdSN1G2196nnAcVrch3sePlvLRwBBwihRw/vzZwOSMQpFTHH9DiersZ
aiexp/V630lbP5GgX+QFtoaJJDH/ncVEDKqxe5lI533bFIgKnUJTaOrZXv7DZ9zuLy19mpzm6ohr
x12kmoIIFItc116RQZywqNEoJuCiTz86IOsnIJ3nyjuyyjLw2aQBOcJ+dHiNluCX8w7ncB17FrZ+
yaxgLB890Ou6m1WR3WCIrrUvhSaAEg8Oy3B7zTn1W4NVbv8uXMPlrKpZ+mgzqrZRfGnt2qkUOuuw
8XCGTR+yBUNuAhiHxBXx2AbG6UYFxYQkHIwa/geX4hpwvvq0cBPGWpbVtfJJzcKl0Q0lgignoqFv
zfHQpbpTBgY0LK0TFTfwPAL4NEiU76E+wtrv1PSPfy+Nd2zEl7SRMoPb8O99n6sSf35/1WzxXg0t
ymeAeESnOMMxK15qXl/f5OdxDRMWyQ7YB85aZiBKnvD5or68JeulTvVowm+HdxXjpcJUmvFVSYM0
uHgZU7eGiKm7gFYPROLxrm/Y6aJGkpCDtRzZgn1vyPJvydjMlDVKQq61Z8ju32AwqEJ6VHsqR1K8
KjQH/ipqdSPr+z0AWUfWtOB0PGGpYdOzxpJdMLi1D4r62TjVwmhEuqaI8DC/e+urkgUFgQjNRos6
+omYviQl/8PuRr2TGGR5fwYaFIAuzd75u/TOCh1WFJ5fa3FoeZ9pm85TXaHy8U6W/7P6/5BmV8Um
j8A76/ze3hqt44nms5LVc4ykHM792NzpbDGaKMSajeUm+jmJgGnbz3xTUSM20ZEN2jfFzs3f0YVn
CFoGiZHlu1Fb9I/Q+FuKeDhK3Vj0rK/BeHiunXhWAzdTD+K0R32jtMdDkQAyzwhkYmm0Ac/R6Gnn
fh6ja4mITBBIKWTAbSOGl8BMm/CX2yP8DsyMqhRSuwezk8rbEvJedO1rDQt1D4cGMUZ5x6eF1okY
+8BfIN28fpvAtHCv+joy1+rGafzLDqZDFojw3fZnsPzBy7MhwO8D01gSuearSL0Pki5Zw0qc0+Re
ZpdRB6EM/aRjN8gRSWxrZb4vwjBxydiq60Rpne58rDI1/FE4uAek8WLxnob3tgDL/bjxrnm2s41Y
ZKuzyn8h4mDUYxMVdr7KWANFEXtTvHUgs5k2H0juxSGh2AhO+JAEfSFc0IT2M1auegqcsPQ80jrp
kglPabH9/q6U0VSy7A+024GjOp9wXWCU0aI6JMD4KNzmm7vXad5RyOvkxf4a2XMfSD0Lal88byHF
T20L5+NoEUEkaqN93K99BrmyXvCv2VXVvEIHxye8XBY6wMPfPpgGXbsXjramxKSIfHqEGqHuZxml
fZouQirrEBd6tX1Ni+GecZ4/1f91Yg4RmiWOnJ9TVUjrdkDcADmHMufpzeiRI1EKkp/Fiux4S45o
C4/NwlLZInDPhYQc0cBQUwbV4wHq5bJXNKbeFeViAhu9KCfecoOfAzUWV1fkhifksSZZ+rpvJSBw
4jVdQNi36I1ppJh2p1iQTjt/m8yW6oFinF8NC4m2Rva7s424d7d9V80AMi4/dXTClS8KZ9thOEO6
NMT+CUO4wf9qfVynG6okLQaDDw4fLTL1GgV5LQVRB8OoiQUJGWTPRi639TkWeNUwsrvtIQFBwFJB
NamomybymxvNUHypM4vpRlU+5AHXfrZ3Yw9rNTEPStCuTIH0/LaNIbp35YKydQ5jRWMBs0+jTt4a
yvDf+U7VTKgjbpUEAmPpWJlX9pQDsL+HKeuGuU/zVI/ifcY03RDYoTwOQ9k6CMvk/F0tRk+o2P8R
P4sgHpJUF8PlVRBtUV9mviPqav9sLhoCDketRO3rPBSu0LObWi0vs4IxdjgZ9I7K5pfbZ67G5Z4J
+nydeQmrbdXdKmHufOPKKZG5KAlwWEzWU3zYxPNaDvmVnHBZZPsf+d71y9r0Z7LkXu/rhR14qRfi
V0+DwR9AWf6xd/LEX+PP/l2asZSHrK7nK+Orsb9/hpvGCZyo3jhdd7tMZ2h1HdKnt1paug0s1GHb
09rozVLuf+PkdcoYE0m9zshh1Ki/y7OXf2o503i07bgt9JPuSDeUfSQptROuwgnRWqPIUfdtNFCj
FMHXhTNwX1BYR3lKW44RDEo3QUlnXDeMQNygdWy58+sX7833WglSAG2K2PbIMU3ZhYV4TOWyTMA/
szxIGfU+i0WANJpfz7LZw9lFjFeXJv36YK8GRueDxTzzIewWg4GG5H9PmTpqbuSnpMumB0PvGoVr
lr4hDyBX3DkjKGDnNCZEAK1pVF/V+IEzGE7RbqxudflrYSVjuZphMCf5N/v4rxF+thSltu4PHjhX
CCA8lS5yk9QE+v/jx160eZRqt2MLahKexdIwDE957zYEnU/1dRtUNSPiCoWo3WYW3+IwQ1r7Sd/7
ZRmX+20SEXvyoDESg3vOhKl6F8qQiasyVkFIWNH//Z7Zq6DPfmS7HDZBzLRiM4vvrnD1ucE4/y3l
HPTwfF9f2BKsO+Xe8sv9wuD9Mjxko+xWsdwTTChaJ2wrC599/RwSA9XfY+2/K1n50uRlDJpiqbOG
6In6kFCwUoYZzsYJUrY+vur47HAPzxkB1JgCUxhD5FnY91KBxeRnHDLana0XWtEJtSnDXu+SNi+X
DOQuokijsxVjRup1mSlLxKAJzV6w515g7yjbdmTSDvARMpNjxuGvZstn7jdE40GfbAIM1MHM9so9
4KdydBOT3Ed+tXGzIK2YAs/6dYKPkrO0WUmXHLINxX/bLe5naXNrv2e1CSp5KJobSMZy6GRjyKK7
BW4t0gKrsZ4Er9TfANnvF4HSnWMJBJ1Fd+Eqk4Vg4dcq/RBCY+UxQXql2B3ZZ0QAPS9ChlclLggG
nM1lK5ECPkD/V21uQR7xCPpZnWfVlmLkkqe6MdR6Fsb7tU8gNZaIlhXf4b5FZKXoadP7baZmHZSJ
jceHs+7fLSm7YOKvfti+c5/yDk2q4AjfBhU+FifYiCX0COwZy5XTokEbZBzJkSEEeOQCWey0N51Z
v+29psx5sZP7I4eduIo0WWxLnU+Zb0vhhseNc76OyRnBJ9sybB6KAj3E2PQdgxXx3vQZYDZMAsPH
sEUv6eZwaQiW4fNuIo/wFaexKXQR5ArziyxR4DzVHW6PxEDyS6IKoK2F2t6m4hXYfx29SesZxpje
VOJgcg0+JMgIY2t7GyVdZdhR01lE+icSg0vuVYgSvCrEtVVBalvQX7wsaust+zPpc/kN9puU+IO3
NCgHz2qalSE2z1GRnIZc8n0a6AMBSLNY7/lMy8O/OxO/SQ3lFcqt6mo85iPsfM+NqdcAGsRT/oXd
ivVagfHNtAGHzGB8g9f22WB+3sZW1we3xcl/FBl0U4waSMQC7JyrsVEHH+y/PJhlpWwL5aFlDZFY
p3g+9zEn8MnG2T0zcZgkDnZvczf3dq/8jnZ+hUTVJU2BHDvvfWT3sxggyKiDMSlchJAsohi9mABj
etjpcbKgOI0x+lplm0Yantw1LRht8m+3ZCymvFbxeeCDbB7RE2MxvWEiMBeRM2GYZqX8mGbc3l2x
Ldh0Fvkf4I7EQBc96xrMxj+VaIFHcoM7FecOXmmLVbeDXgNq0Rr13eSW4skGtXzMPPOMWbJ4zq5U
gmrSh43NtY1tub34jJpgxp19+xt01bJAUv9bqYKcFzeLgLHVrbhlxPclevIfWkoWeoSEB4qvlKsm
Tl/jCTX4YqJ/kvxeMWvnZsEwCyzvNFtMdRGVpbkNf957ySWdVuH50Y8pAIFntl4c7K1eNI/dG7SJ
c1f+kqNm1AZ8K380QsFe57FL9au2+ToB+UizX9APqmPMxyiwfwNACD6p5p9XaWgOyy2AHCF1xcfF
ZcfGTEe9jVVna8F31VxyEfNqm2lxTfX2J4iHpQ9HQvNbhgVMYxsrabGp/eEImpsDWb5FetiqC5fj
dVKojeyd5zyBcjwB1Q8pZ4OjHp+5rl9UiMKIbNcwV85CRWsFjHZM/ykaCOpVr/cgFoyvNMWMkhlz
sdLETRqyq6cH4ZqJJcWMcnoW5LtAG/pwHyke12YYiLWwBn0r5hAe+9VXfHnIEEsVWNafeGmC85nz
ehTe1OhknLEQLGKX+u+v7ddTmnpAqJ6GSkRlRkqTP9oeypcSnKtA6ro5+kSLg9qutiP5E5zEadVU
BPttWO+LoHv4yj7XUEbiwCeZYg+4GlCBCZjzZsDFbUX+51aLOxI21xkHAhWiQ4Z4tbkE2kTId0IO
YpbGOb1z92WzYTfSNp8HiguxfLlNLZ4NTt6WOBpuYBsE0MkeUqOMKy9grYJ7eULj/4uvgL0O5IvG
+pbay8JWzgYalFHAgMj/Ev6qvvi4zFlktefMAiOmkfa/9qhMt4FKeVbZ8iwuedVqOJCwK9ntomr9
orRj79fTs/YJetKWd4FZmHuUbeMbbNUxOBypl1S+m25QhMIyICcxC1dmA0B25737wHv+Qez/gjzw
Wq1TVdQGbnnX8LjPzSGgzObdv4uaeRsalDO200hHjv4iSnmCK8Eo8NzfRenlT6CBThdMeuF6kXpo
Jy2YoU+oW8rGE+OU4JhtHmVdAgWruV1vasbzXNBbSq9m8Mz1iZuS9rZ14flDO4VBBSC6GxJKtC04
ks3Fb6S93293/apEFdZ59NnMEnUEvuv/g22zc7CM2aqTTD6sdlE3JRqxC9fvP4Y3J/GtRLNNTj2C
u1Cn43K6nX0ej3Y8BST6I6qCes81kCMjrp0+3VOE/j7M2EQt8A+LjuZli+TbZShedONRJBXUtI11
pWo6+dc/O4IHi4tAXz63Y8CQaWUxOKfMvLekh5w4GlpaZH82++t3RFkYCQiQqgYkdy5j7VWN4Ehj
rXu/rKDuO9jdIPKWsC1MVznCIadkqLwEvfkuWQt83edOmgEFDbleMiqt/jSsiUfuJ/s+34Wk792K
MqgB7wAETv1Q8Rzmimm1VftWVryP37tHoS/0nY2RswyAk7JNu46u8ZmtZLtaKLMgHJR2dkhA4Gua
rE+xRe55PAX8knMBDI6kzacqiGUl5JQZ4LF7m7zQzDhYDl6DQSQ4nRbsDCGXUVDKbBaEUFlRYSDZ
TSCloCu0zYJkrpYhMmYTxgw7k5vtCIfRYgfaUGn3auJ3lQg/f40LSNy2XruIPEbsCWNyMzbU2Phw
RLvX0L0uMetup03AmDJtSP5wt4y1KSQbz816mCuKEncrDCIrbc9u8YXmhqPVrGS+MGPhMfRp221M
+IjBdGQoJQBj2MzX89NpWOSsldShZodMP197SHvBHiqY4Rg8ddCvnG6U4Pf9PCh/NZllXAOHMLEb
U0fFp9JDsYWH3tD7DAuVcdpGvbGQBdwDjEx2Rl7X79q7Vt3XQzXY19Px0X7saimIcj5J4aEX19ct
nWDcIuft3EWiH+YNleKmQbeMzsjJR131g9+sN25dQ2zMphJ3dEvysVFzDsQMTWB9MVzQ1t59GTuy
AK4ubTjvs63RZoQO6d0GlVYHUJV/BTWjajRC2or+lQQzQU0hz/ZzXc4RprCQHO2SNzI85T+flW5Z
9+CKAv+tgFv5oQNA5UyO9JUAjAqx06fARqjZmynhUIF66hok9Ro1PTw4v1aAFHG6p/LrJiZ+MtII
gyIuWR801cyDXE07gfFXpymtcdqV+Byj7VQeMurDFd88fWiHTJcc7hyUaeD0IjV5H3jdSUOm0jiC
xXhv89AKkFIFMwT/05kWGIzLT71/EP2Re15rWVnjL8qotKA6GgfIq1nI6i7b+NigpmhVdA9ugxd1
emzLyS5ZOp0Fq8JN8gzKFdnkwETszQENia77gyol+s8IO77Fv+8syxwvWIggn6qYGlsewWbVMxRN
DmWYBKjva55sv2qDsJObKSs+KlYNau2rMmu1Io5snW3bHnj+gnhVQk59JMxujujjvp/At98YZr4E
qBPxn4XzRMgJ3EnlxeCtcv4wX/4fiU4lRabWvZWDwLY5zPQj5BYbjnPfKeloN6B7TraxZOSzL+wK
pkdF3vFXama4XiqY5/5ZuRsq73JIWYSVqfBZ+tGfyorr2DrHIbbL2x9RzbpPvnXXx1CbWZnTpHnX
G2oa2byvpwzIppbnboEXAG4tnzeBll6nLlkk8Bq/QVQNs+bVjuCMfeO5NoCJGy+0a92qgyj4tN4a
60iZEbMPVo5hzRKM/QbTqCLt7T0N+SEdiAnU0XADZsRNWD3vQbi+vR8S+SRdh2Z08mCR/C1jNLfy
J9V2p/fCxZl1bsUfsg5oNgIGhwWUqCkmyNR6UMpkFcQtqGdVZRopkg1g5V35NR6bLWopa02PystY
f51lRRW1qATf4P2OVKmciuOwJUVfrYqLplX8pFri87DLquo59lar3Qbhkx6eSKp/dyJym30UVn5N
VFBpKJULVUIbVOf8Id0qWd4r3C1tMBgAK6d+E3udS3bccVVZNv1LRnp4aNQFdXyIvOZgpdxZxhod
z1jwg9j+agrSxk3xji60QQcfLMkHASVzyiEHHpMnfITmuB2dMDg+B011V0VluIvfsRTojymFxo3l
F3olQlr1k2p6QnDdbTRUO7jFyGQ7bgH/1KhK4MfvP7sBbJAyVHaIvbyy+tZcJcePXBVLaqCl/Qim
zIReFUaeFOYwCFHJRuIoAyUazASFIHw5AVd12XsRrVXCnECQ33CLn3QmQbEsb9pLuQqmp+fNqfzy
FkNST4It5J1hDpYuNVWd5zR/KMCBRtZOTdrnZGhJPNpeOpfi06f3ldXl22xwqagXHmNITF4T1I8H
Lc2qsH/MmnuVQAe34Y/W8pkh2MEKzbaXsnDbXgIR5vdQCBnpnmvMG1OsspHAma8Oh5LBdPCIiZvj
FKnESN4cGEmVXO2yWtgF4SpbwRx4BFmV7KOwJ5Z6OGaItgDFcr92kIenHifnOu+uMw3Mz7fnAluT
flohQSZ1wddrDAKuEo2V3kfF/apqeJQ58Rk62fWrATgniORmigassJU+xwXsVTDv9a2JEc/9Zh2d
6x/Q5qLKuCfy/A5d0Gl6HTurWZvU3p9uwoGomd/WKaCmVW0BC+z0wK1ggb2uikUYCuiBMS+QFiF8
UgUCZTMtkeeYYcCKkqEb8rO1JQ8Ei7fSBBE+uINLDOVcSGnMBwFEWR1ArqaDtn14Kz6aDQ16fsVI
HzcXJVVFBikStDwMukZ2KyvFljkCWdOrhve9bboNWJpbHJtesPz+sTwWcikZedaJ8feaOGEoKFgO
H4/+3QZZ8e/1ydJL2mgN59ZPgbQXI+HDLU7h6kd5OVpHwB/sV03B4mopu4BJr2hxeVA4pvhh6wkb
DdPghK0TLmh6eQGVrk23TF3/jrLYEWNBAo03jLPrZ/vOM9Af/IIL8H+J6PuryFDYfPew1VRJ0teT
O/YI5iRmGA1oFNlSxrsvsnAA6kkIcV5gEpLK2wdylC8zD5t3aa69t5hjtLIwYXobicCjHAjzmuM9
kVjtt/ywit1A+J7yguUBYsPAt0vyQgdNS95GOh0FBpLlErbk8tQRNUwkl2EX/6Le/NfJMobzir1S
q9PcQnCI1zQoOCHIdaOUQEpXHUXakpt8g6aS54GeiZPuwUWKcKfcuYklbirsAHgkJmozQ4eoqOM3
mTWMWkeKpT5RoISsakZ/+NntbdJKCXnoVKe/fHFVT+CtgbU5HZgrO7q8j+y1faDi5kKlykNUuVUV
DuvGlXvbWO9v8YU028hDGz/AP3fPe/dNhY3rotaYg9poUTN0BwUmf5tmYay9wB3XynpQGm6lw8hD
fZJw/hjEEnbtY35W+KeLo2HiP8wpuJcq78RGYq0Ft1P7O3Dy6ozlO3Xc09QHn1IwqW0AYhX9DnlK
/d7FYq+on7ul/gL43ijKbDsUCNGH020k0ri0HFHxVh0L4yrCKAzM9Ta2SLy7DfndB4lhZgBSgnsi
B4tUEvTcaVKafVYXLnMDk+tBPTD/98jvse0Nkla7WG7vCE5Hl+yKrpwmvEG+IfzugzXyb7mgBqYW
8l0cv9RhHcgiR+jXzdapcMPqiaHVo0TDG6pqv9+QCSIstt95cRkOB/KULDOgPlRwMbGoZcjKocbM
cm7yBSV/vT8dyCpS6zvFS1IJL2a2vnk1SFWnmuqrweeBWUci50KBUwF/rPSPDZlAHp64yPQZiIqO
hL64lTwId2/6qP43uR+Ic3yJ1rSVupG1KRP5H2s5W3JHhNSluNjZjcibU+n5Z00RMD6zK2IY1o0k
88TLu/brsPrZ8Sk0sUeE3s/DxNjZnaIWusgKgfx/UgS5MhJ5dRhZax03xflUDwNmDTyQ2f6WJeFo
sjNaVpre6XR6pMj5yjA3P/IbDswI0+O5E3jgzcptrO3OrPBQtII39ulWf7qwBxbdtm6t6a+27FTm
/FapxW32ztW8Zopa+lg9RgDVnhCdQJtg2WSdUUU0eF1X1hBl7a3cUgCIeX2bUPWc7XyD2stEYwP0
NrKSbYrPB+WcoImb2TA7kCLt/sbghMttyVXjELkLmn00R25AjyocNuyBv1ah1ONhBAEmLOn7SNoA
NDym064e/ZxeyFlsinDdVlt40XhL1/SH1Ho6n6siU8+Ysp6Ghe8QO+EFozjZfWP7gKrQpKdEFzGw
gN5JB/8PKLwGXkIaaDn4XXJ4TfDZshL/XH9fJGApbV5svBoa+7UwW+mARZar8ihPxPIKyuR9zDoM
Lj4GrNsuYyGdFNQto5UlDbmDIR56cFIBDXBeaFn/vSG6Odg6D52BzNCbksATkBw+aAtVVhsETAmW
l7L9mdnRJIakR/CeUiQKMNOC9cCyfNU/uQT88uot/CVCyD0/kff9/63qVlj8TSg9/Cza8tE2iCoZ
lHP2vz2L8gfo2qRknUBoFC37/SU1Yo4ps+paQpdJFJwjbjw1X0ZmGopQh0/Ajo3N8IaENtum0Bon
C3/N+Pj38org+1siHpCpSmAhj13oBh31gKhkqLOmfB0PI8yuqBUnSKkJTB6OhvOi9beRBwW+TT0I
7pcl72GuEDRKNiqaByVI7t4fRCivRODvUcMlKV6Y3wLP5j0/YbBJU+KjM6wpCxJXOL45Pcykf1fK
x1ufcPtNqVFsoIsXIjyyUhXjWFQ+/OivccExfLChmnMZI4sI0mpOMrkYBlFv3E+0VcQbrYem6bf3
YnCz3CO8AdschJ/9NBOafoR6R9R1OxwwVC1b/pB69lf2ctdbvSlpeRhZMO2egTkW6Lzt2TqQ35Pw
OMZhgM7XNjSbIF48pQDqkKcEP3la35LVenE8bSnmusPlEpqiDAWxlFnDGYkiM5m+o9y4AhAIinKi
XzWTgc3YXbSzCap1t+v3llEIeD8lJdkNBVdZqTURI2nfYddNVoSQtaCUb2mqwQG90d3CyF5/MiEZ
gyUhTQOuLC7Ib/NCY2orUvzOwHHISFEGcRl/8yRmobG7P9Q1ONySbH57BV7K1IhUHt2CIottKuFS
rrAMogXqS7nSqNSZH9hefC21s2alkQ8n5n2DaVrQBorC0Wn0pmRYvurB5/uryVmXPF99qJWQYAUJ
KDhMydqF4BFPns0p5kc9iCxN1dxavzQVEsy0PINutYj0mUhxsGBcWlY85MTdFcRaUJcINOIraygC
b8gd3X/DlKr1QEYlQ4ribNPOEc9OrcE+PSLR8QLs2EAz/AjDe8isWv+8aGoRJRUY5aDNhmQ5/+0J
bNuv9NaXBCsdotVWIAYjhjgiLUUCU4/4zcxV3MH3VFAbfjwylleYlLnpXRpukN84yPcDh/sSa9p1
n9QBERrKTNnuKTWGQcty7e69R6Xcnamcf8smkeNHETGytJnlV99AlMh/VzVnJRvJa2Qd3VlBUlh7
9fcucW9k85ek2Q2izf9lhR45yLLr/9tH4y1XPfwmjojHgDzaWmN44LxQXVtn8ul7u+11DLVr2DcW
bscxqF0OZoCdTBBtc09qvK9Cx5d32fVz3htoqXsMLNIX9Z921fb7ZB2t4coiLc5paBRBujRsNMlA
DCarvPbPuacGDnOUCr4sn23qDhS9ctqV3xEyop0zIXreDUQC6teyW9kExaJHgSY7ooimJPvqCG8r
80udMYGT4hFynx4TEchs6c6kzRlyq391gXi2C78JCNd+wLAdB3fdeHhAQnn36ZV2Uy9oznvtx4u5
CdX8STN8DxxDzdYSeHk2utnicbimzw2p4HSzs7gxr8anWrlSrBTqZPDEz+iUeSyZUmGyuBGG2sTG
aV8RHW2iSlRzYcg5705a0JSlHQb1+zp/89yIVR115GkhDzod3VEnpSk9nEzjJbyKnt7MlZxAzvYL
xiiRb5gBzCezkgegr51j4xNwAN8S9Y5KBYqXqjJ3gQg/ZAid8zfQyurBAD4Z4uH6cgilqqcar/O4
BjL7TYT65r9Y+Isj3fKDQSZMC35yDQH9V2TLIS1Xnq8d7EuNoZp32zpk4Mo4oKV6TK+zoDLGu6WH
8D7vry+Qar1HzMnyIFP3S5cNl6Mn6iL7nPPMEP3SFlIqV46p7Y316eB/gjQ0ozQrzWe2c900Vokp
eZMUvQZrqf/7K4Zyjc6kZmsudKldwbo7uuFOvp3NDFiuGImu55WKiXlCeKS0sxULh7q0WsluahJR
hafPMYHav1qTR+/K3RGj+rOc96trakL5qEgdTn900si7XNNL2zClbJnqWqGw9xb/sRYE7fINC0RW
vDFkkIF9YYsMznvsrBrzN7ju7lkoIPpISZsmeX9lXRSgt1yUwRXwMTHTQegKk1fAfhJuULkOdX8o
RVxaHBCTalfeWAxLPMmmeYrar4TgmGNXogbO6gVHf+OcPedidGmqUbyhkxCNJlsBwjMJmLmOnxIy
4vsrdbd+m3M4JRk9MOPxc0FhRpn2cyi49mrdbdCpU4+mwueWz2Ih7DNlXif0iJTFRgUt5OBDR4wA
LKQmfiS2tVhdZ7kcOfUgpXQe/QiGE5SjELzonoiIS6g4dzuypUmwfvmv0TLlEDd7ZDc5XbazBkt8
duNYvme5gkMfTLTQYFvMEymR5eoUhhjaRW6SocE6RwZRdJokvGO8L4gFOoy8i8iU29jUX4Mbgysy
XZQS/kVo/juYaWBsE0It2LkYgy9iPMnt1072WFlumuRCfiUn18yZVvEQlrsYp9eVbeLLQRwAxWI4
Oe7iIgyEerzl4LcBKgKX2lcRIqcFk3cUFrkF0gCcRmwOsOImd697TDLuDJ2kpn/9fzXVlWcZ9Xr2
WmeRtxzvd2zDsRCTbCDM3da47KiFRLJXOv1VTK+gz1lWhm9QJAV0OF+TiSWnPlgCmFegKr2RU0YU
Z7UMZ2J6KEPRkMrSM0ima/CbQOJ3BN/Dj3O1il6eZ4QvY3kZFG4hymWZqjfbQEJGXbD+PyCeSSiu
HdGcTJSKE/t7rBLhLzNJOIVX0NxsI71DQM1k7CYVvVVbOVbClpeNiO5k6FMkQOtFH8Sm/ULW/oj7
ih84GNKApgWZALt/eMkvTVHEGxJibT4HaGOj2pv8hwuE34nvZLaVnd0JZi5N196l8j0RvmmItGwK
tYsCNFE4ond2nP0LiTyjSeQgdfOySihO9MFOi0r186iI/QNVdtqXwgi6bIux45TD5LlQRDkpUg87
GT+kgSl4I+UByVEADBRM+rrEIf8v/ZVnRYa91hd9Uh3qE1U0OAbEsgpEBCzyE92ere0gx477ORZs
IpTzRCSGyjXPjAQu7mevzPR4kdzqNkE+X7uVSPqN4TLP0ah7pcBnHWBpecHe4sA/3BMZ7ewer9U6
WO2MJrPIxRiVtQxh3E4Q7yb+AHCgMYD2ggtMcPV8ntSpR9jDxTD+tUOVVS+F/SMYdxCvuy27GTMO
IMDLdwKMfd0LjDOCsZviX87kU93zBUhfhqVchXHm8/6ZlHjiUYk+jDzqOzaZgii2fVqKTde3RRps
YgcFsaiZa6lN2Q/0YOq2lAPW1AbRXNiugs7Nq6RbnFzAN2lMZQSTEt4qFm5H7Ejv42S6zjvc5YL9
7aW52IfHh/lVvR2W/CtbaNGDVjO3sHkAOGDFvy2L0chnhlWVqlEhaaabL1Fhb9d5MzKpKTDO0mtM
aPL3xis2H3FMCAcnjfw1Wh5OCnsmaCym9yWZREqGFmG2xIThJ/6/yQwZbbMCDJB195+QrYFRP08a
n7vOiM/Lhn1wkQnHfBAWQUKTTYdn551PhwdqEojQEwBTHX6rCD67SVOwXo4kZYXoFtbDFolN5i7l
igpQ2e+RyjDU/P9Y1gNS8fsSTkmaAcsBLsLYXrRxPwaiLWdDvqoIzWB09XDBpx0Shk3Uf/AtHGzt
9t3qq78K7p2dBX5qqIk5D7q0WbExkxxixH9cWKJf/yDaX+XsKfrb+1ovhOUUlEBQ1q52qx5aCryc
xld4/AiZhoNOmyo3VK7K8SWNLpmQPsySBWpcD7/R6Sz4u8pYmfeCkrgZV1siOd2PXVnlRybWNA99
Ux4PdqSAPI/T4Da80xEJQ7wfMGj1CbBUamKPubr5Tqb3UGbAAkBF2cQuWjGJdZKuRIlm5i3+SGuN
vg0a/DZDtNgg5i+iBek/T/hbr0N3xh+GeTi101xX8X1JuByNbwDdLfSEZMaT2nFVxRluGW23XPZY
LTQfZ+FPd9sFCOEhWYPdwLNinu/LNuHssVQ86Lp85XOtz6VhK5sN2TwCCKZws+qBr37SAE9vZC8c
zIJK3XqFB2gFvQ90cUEKn120ionGkfWdrzliDUcvvVMNddVZ21SHbFeINo2uLsFgID5anuoDCe2y
6l7fgSjiI3iDdrnS5fQzQuq0WQIr3CqJdokOSnHQwn24VLq4k/qYIKpcoO2k6b3hKlDh1hG9SQUj
SZPGMbA6BkCXNDlg7EhKfkvF82YgtuW7bLG5UTmkn+4E848OvGg6gfzNOuUtB2+Q4GNoBbiusbSZ
k7vuXmiU62nVnAaDa9DUKxpkeKPeGyvWryoa0YMWAYGW1GHZvnubj1GXFM3nfarR99Fajp93FUnk
hlrsQkMcEJFmjxV825w+fJaNkh1IygRb/HtaR3qk6esRuweeShKNr7odYTGwZ5LHQKKULCicV3v+
um09EfdGLssRXmdn64oBv8g10q4tngMo4FKluYQhVzhm9dBQH/JKqNCPfVU1qxkTB2zkmqaaeNvU
Z7a4aWBK8lhcPRuPzpwz4do6ugFjxhqIJ5doYJwk9lX7pMxDMYPub+2xeuW9B3AUPgKnDNavioEV
LqQ7rGrSSqjykOIrdochxAYNbgMC8noQkF+ffA/NzeLruRpDY5cSblRoPFb3GAAjeWS/Kpoup6gv
QlTAAA85VPl9aNSTNvfr8RaVWPqWSfVf+NfTxigKwKqjOdSPFUlzsSbUkhT2jWBCHmSBHSeES5mi
vIfadSx4aTtTEaaqQaKp5/u2bj7JG0i7Yl48ttaZTKAwvsQp/W2P4MuLTo8exNiIzhAUHes6mofB
d8GNkskotx/sXCWp7+Cz9fvtbJb6kRJNzN58XbPghWaEThwijYt2lEXlJDEThXRhWX+PJsrS5xCk
EhRd95GURjyrV39/AbYE+84+H07txEZkibjr5zNZjoIHaGAevbdNxhyOIFqHN9LthaTFLXe3ZeWJ
/8IDf7nIWclImUAnY/XWpxBWc4O+U0MAYPDwvRSPnxPN0hynGBTszsFlwcJq+EMM/bnv0awo7aGV
HxPJobMg7eWtnrTZ2+NcvuDeMWSPUslXUeOk4mVIelqXUDB8XIhsgeA0xFcEBvX3OsaSa4KurGAO
YEhLlQ3zucVWJQIGK+Lxq29liDhhJlbatMsCS3gZwNWbQWqN7foUcgGH8UnwxFPQKcDHYK8u2rgA
hpGyvQkUO/W4VnJmGEjCXbl3UymsSW73dhw5Loh8sYMGV7lu3AGFTBUvylcZicRc9BOWNKi3mE0u
4MVxvQh1/j4Jfb71sbrBd5x+xgJDcaoe3sFEBj3u5gXgmrBXNosRNoBrcWN7IqxIbXVCy5J621VQ
4OvNfQL1TXfnj2Vb7G32GpNg2fl+Jqg0d5N98o8fhFy73rQyjHUxujnS7aCEIlt9ma70+TwFI+Uq
nGsgOl1TXGdnon7+
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
