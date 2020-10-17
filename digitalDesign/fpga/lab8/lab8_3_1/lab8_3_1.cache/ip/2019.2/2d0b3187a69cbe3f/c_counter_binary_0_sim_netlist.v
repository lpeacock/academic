// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sun Apr  5 18:40:22 2020
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
  (* c_count_mode = "0" *) 
  (* c_count_to = "101110111000" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
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
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "101110111000" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
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
  (* c_count_mode = "0" *) 
  (* c_count_to = "101110111000" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
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
N2QFhQm9QyUH8JPEoX9mMYM+nJ6sobbp5APEivdKisXL4hG+zlRFS3SLPaHBiiWvaTOxWnHA4u/l
f2/M8txpulsTOtXaWHXRLuX5WiwQ8ff4flctjB/QTefJl3z+VfZiU7nwaY03Xdz93FKELoaQdEzM
AlDREfWUTdAwKCZDrLg87oEYRlhZwUZ1hZoty33VzMZFDWskoUOprLzKFaVNTgUehdlb95OkqRT+
1/3Hzc4xkwi62aGitf82+RsVPx/p40SUqlEmwZ34zh9iKsQgnrwoph48z8Bb7mAXnDCKY8exgIDo
Zt6rTOFFdg5QJL3pVT5vi7b2HQFCBgApr1KSnQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fOFJYaCrYP44ciy1ZxPVQ0OpqggkUe5Daz3tL1U6/ggyshM+yRgjliYfcEu5/5fmIdGdGGZFLQlQ
Q5k3BqD/fGbkYjjxQDYn2i0SAOlC91w+MAAR0MZIhGc8DFJaT3vwXhZlhiNbpqwYAINw75Buhnqt
cF9cf316EKUeV3Xk1EfO0gbpr1xKlvJLzPo2AhVk+5IAEPvD3iIyGvJNWKh6URGFXcwKSXLt6DE1
z3Zo7lFqVV/7A6hF56nJgLQV7x9EOqCtBho417/Y1Ptj6C9o6HhspeELTDStDwsrRY/krM7n+K7I
SVpqMtAlVehd/o/Wpb0dARjT/N8v9tkzK9qhsQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10256)
`pragma protect data_block
MaKuMqIJ3m9jR4MwghxQUsNkIMho0FtBFT2X37EhK0sZR8aBzom+7FD3H2NP8WKhiY4+FBXp2oiX
5begmk4MU4QLSVwKko9vSk0cQb1Z3eWjJ9zES5AEZ+dlp+GDxfGxjz0vzcko6Ro2jr4T7hdb9LHx
6VXTFG5UFYBfaddcFFxBzZO2UAFBjvjdyz4O4RDpFh5ygUrWuPGvlVzWWVkqTr2aRQX7ydL+pu4I
pEmOWcjJ3GIdicYRdLoS6V2LlMCXe3VViBJYKg/I5ZVK5C2nqZvmvQZgd3J03dgWpRQmwohx0+qY
aFlY7FD+kORWFh19ofQ/XRmm5rvzhKQPExRHNuTf8C0IQoPX+cQ43VgJ10nm4FtHobQyDfpSnYTp
9O6BE7O9N3NioX6N/uQY8XkVKUrzeNbd5QrT9Xdnu3hBcjE/DHacxcnsii3IzPyWLVdFzFN3QF0/
CNpmLlXsy+hwQQPRePxbJmwU9DRYy40i3bvJ8Q1evuusFavCAyOu51/WesIjiiQQtEIyBtVlzWS5
L6vX0kn7fgUGG5BWx1gDXwsCYXtlQL3o8lTLYBW4e+tdMY1qcUtLzerW4+gBs/zphccBjetgq53C
TTbNy+tfUAmipU+ZUW4VQaqX2ki/LJ/NHEWbNI9yOO8F5mOQcYquQDBNvD5OZzhSweUaT/qcKCep
A8Egi54xDK0zA9CNMXQ1JSGMYqn84UprJYacE0IxiEZvzBd+6HXXW9oqj1ORKepHOAdhyqQjeufN
iO/lGm3Q+MFDP6l+Edafy0fhS0EfkxiiubPQXnQeDKqxl5f562+kYZemUys+vD6WVOyu7Lk+Le/+
gZ5TJ3rLvxvx6FQWpTgJUhoAsHUcqq3NB9U69pIr479pMXyC6AZpbR1Tt3UDeOR8H9w9Ssz/DdPY
Y+e7Z860/V2YR/O0iZ5pTjFjxNWP+79+UiiVNRgdBMKhgMocTXtt41Bb6jQ//qhUJJIJGEuJQ4ZB
mJVoCuNL2YdsycemWoW/l2/ymGIWu9dDSVbQzGHoVUWak1FnID0His5c29U7AQpwJRp8CzYaT18S
JAhTUGuphvhP70/toTzcMcwXeMlUDQyxUMlXE8mv1lzVTq6XrZxL8LdgOuikOdcb9XXHG9fNjjVk
3F3hdwTzwzvN+3hZrzuUVgHSo5PmU6zLLkvlTGeml37o5nLSxyHFxjo759r3Nb0f6U2P0gWVesz+
W1f6ccWrse+E+/kkZFhOu4SVNxTR5EfvWtFOs0Rqhyy9CSJgyiZ4Ytc3056ZwqZv4acXGmBDGPhg
EyBznbOUZz2mjkJm4iCDXYy4hmG/kVsVegpfNMZXaifAWqAY7siBKLwgunHtCS6aSbcGydqWSDmi
vsdryTn0XqcJenEuXXLj2+IAyDp76Vf8/glTHSNbFCpVq7aGAj5dAyRTWrVzOWl+TEMEq66mLpaE
H0H3YIvyJmWTsOHH1P2lYIYP/sgmzJEZDt9HZwN2s/X2+YWlQUqcV1qyGIIR7SDCG7InltI70LeP
dxS5FiTws2bSlVkzH1zVVtTDfD3l3mX8hD7z6iiUGnovr2aPAI1WIRkzMWDA15mlodOtywaeZHUk
CIZQrEw5Q/fSG51WFZvgTvKQPSilhrKik8ipj1goEmxoxvBOg/ywMqSH9TJLWSkqTDfqiUP7yTzI
J2EOwIsx3LiwjDcnaZxGtIcnySdL8HM4Zktc4THP7fabFlQmLxHSeODiss5dqfaoaz/sY6UCNh3L
GQlsYQDY2gYk7u+VGzefuGmsWVosQIpjXDyksVq6sL/GVUwCkb7YleIDc5TTSPMlW3QlAx/EJ4jY
GkXTHqS/Rkao8OsnjffzhcbsRsmk0fnWF0ylrX7X5hjlgWn/c+Vh9JE524sBndvemajwEaerP4nV
Y8x7asCUzCjdvJfcrwES6azyJhFZXyqhFT5Yh7hXH3k6xBzA0Z5GTOq5xo85PQ79Otu73Gi2oKte
qybXGcG6Ikf/TgZigRNB5Ut4lPv6144lmtKg2S1O6/yFJedg4AwyXQR2iFxX+Esi3qJoZLRkSjTH
QAmHbaa6LkCaY+cVPiuBMaFa5CCu+AJkLGpJUbrnimSTM0I9rx+RLdmcJmaV1W0YN1n9vpeOZX0p
hdjXdG7VLfpvLy8IEUwAwHc+7djV+t7KpwIajlTpWjmDdHs9qsj64GW3jVcOInRQUo1dhK0zjtyY
adDjqyr5LvcxRnuWnfAek5L8WNHJDivI9s64ZdmxtBXRMBLrBRIuDiI0h3JfnhGxu7/Z82JohqC6
NIV35+C/IBWalgpKN1vfPdt1LQPvuuHWpN0hT6pTHrsvsi2a5buwPfWL8m2momhsZx9IuezBMHKR
slFBeh/CGNQm7TSkwiKv3gcthem4wfqbnLjQ+dx10mEDVqCsbnc5ugvlqG/iOVsqJ7ZE5FcBAZoB
UuUn96TIYenNHiiXSM/BS7rHv9NBYtU3FyBjxbTiMkLJdckwLq1Pwjcx2rruKWxwT0rw5vJX+nnp
agu9JlIOBIzYkzHAYPGTftP0r0epajqa/bjWtWZgvgvJbRlWOQhI4/K3nbX344vGTGjCNwDTKtJL
M32uKdpXFkIOqL+Bys2VYXzAQEakm8x3FWFXRA1nVO1j077KDrOoI+5kL0oyf9XiuhAGyLzCsqol
PwSypAjcFGUgCuegJuRizB9SqNb01K79IDLEUWv8a5/rMjqQvgklPoXuepPBeWIHTf/H5xNvYnE/
mU6xAY8db1cVNc4poLRMnpGGuIo7XTEPR7bk0yuYtoHBJC+RwDQZDlr/Ygs9ziNsWjlvUbAyOr4M
sOn+Z+20YmJWmfDt/iJg831EBkA3Ek/8/cMrVGYCm52FwPiXN0dGuRy7vYIJlJQ796C95qvu/Mtg
cSGX0pFwAk/MczpT+uPoxpgFRFDwIz2fXywmlkW00yF2cpLRCF/OuUuB/lwKsxVDhNWs/yCzKCJu
ynJJIEwSmYYhcBp18YRk0T+9lyO8Bn5Iu8CNQUcEM1b2m29FAx7WcnfBXgxlZqzLYb3MdNet8UA2
13hLeGzIZ9CJ8Z8NqwYGq7eFvI4BSFkgyGpvIQndP4BcU7OvBbotQz0FcnobxK5eSne9jtYZcIkt
uDq4RooeMrktd4CF/l4ycUdvMUUqpXJP9bA0NFVqnNYGHm/UJ7momUwfrhWbv7Hqf1EB64hG/MgF
DGkiv5lg9ikf/YeJnHqPkcIIjDmjD438cARc9rnoN/aUkYi5sfFADF7TbpL+5gwGP3d5nprGwIXq
ZMQq+my1ONmpoziU5hxVDeRocwlhJPveDHRwkXk5VFODU4LN0cOmNlzyYfEwEFohByBuTDYjbC4y
i+NVj4UC85icBb033kI3D6/OFMKNKGPeMpicqoICPa02ZS/maCaC/b4p634hwio0O2QQIc/KTxTl
ypSax1nLdwbpxI3KSl6HDvkZzTTmxpVGxPrg38qLjAJG5spY7sV6zHY3uegNemKfWkByVajFZUBY
kU07zHWOQuJIOa3yCwmgyrrPu/hy544HPt1h0OY4QRIYzgaKtCpATsMKeYeJD7ufpO44lvqVqX+5
AN0sbKi2HyMcd9J4LWCEDD9VPFxa+gwxnQ6YX1RnR8uZ+ndBV/dG0C7AGCjDp1wdBhmjCwSNasst
+nk4uCpVFNNpzRV7Pqda1SIoHJDANr1ZauHe9+1hiX/0x1a6Pz0OFT0zxglycstUwOk4EFXl2Ltx
DKZhAGJ45sLt6ZC5NtEvd8LHVGKNjkpzu7Qzokg6uWEF4KtaMt16Xff9UYUv/Xwtx3dYpRXF/e75
ZVGT+kOdR0e/jpokV9oHG6sTjOI7WOTH7ZhQ2Kp49v3vAlV+VlaxpDAjLFC3XsqOY3MovBVTFdTe
S6ViO+DAN5PzyUmaJ2uJdRVMhBNqXr4/Mkr8o5lDnWBTHm24NJ8++ZY7e7SDn6n/ZMVV3/A5ikO1
cjKDfCuon+Vr4xE7u3qNITB5OZfXbP7dmi0JZdNWSuQxx6KkAmyeR2F0ebwLT3nSL4pF6pBf7u7B
TQVHPC8w3fT0PwYgzciSqlK6uT9Gmmve+FhYSCoCh/Bv/YCe8PCRaAA+prRJ4I/ULMT5d98xWj5Y
c6l3pHUp59gWqmI0veB6PR8VZfZiZckrhE1B4uiIkL8OgA8uBTNCZXyCYIu3VwAcQ0AWlDKNI1SG
sw29ITMP7v4G3PI9QUjK/d2W0gCB0+LFYB/FPKrCT4z2ynMbJyuXC5GdpdjeAx8CdO4zBwiRZKM/
egKSQHcXlEIcQd+tsbIlLkJREddiG5YowDVDeHlhJTY6vFKzabgxcwyny22qiOXlX8mOEjlIE9tc
XMOvaFHHNer9U3sIaAx07Vlf7WS1RfhEsjD5RMMso1EL291b0vefTr/j/7BBiRu6VHGItHGhH1AA
rGoXU75RuMm/pgIC7KI7C7MllcmTydlvzY86GxCW/dZ7LfpUpUbOZh7tWaczSevOHIL5cByF+xej
8l+p3gww6BtdZlghQWEhk4n/t3PMoaOhrFsiEhiwfukV4i0MNekBErbsgfM7cn1mNsWGNK7bWACJ
ZHz1/q4h75kSuffvo0RSx717e1GTIBojxrwnARVVQovyGQJaPH8L9aWWXupBk7yuUQoNdvmBPuXZ
2eku7mv/OtsbzPy9Yl315baELW1PSvSNfg+jx+T3YC1Y9PLI7wXPLzMgjUrnNdi5y0hpIsp7UCY8
KR69Eb9TwdlORUbgmpqMOxGskdHWRgK7X5QMYu09jpQleRldQ83UuULDj66pS1uOkQcfwrJ+onzT
4wRRH5AgWitM0GQOy3vm+WgZofPOG46izQIvEeVrwcZuEZBwENuG3OV6Uut5TkUTFQS0dRlEvUzH
NJGCxmO+kZk4FE6HgrMVT/K+1Zj/eCP0jWp659decN0ZRUQVhy/3BHPL6mtWPCH4MdkLmMm9zctp
DPjqiXFxsltYP6PVi1WLDBUBFZ2KdLBdgEwohOLhuRD0Gwbh6v4aWhAaAYB9c0//tZy8BtoBRbpM
fzfhHYYdiBE5tmGwboCpMCg05MWIdzmKO0kALblfRGvFkOv38SHDwNeJhCC5HUruf9Wus8ut97p+
0U3hpHTv4nAZhqEfOjvsYF77YLM8X7MotbH+QIzyeVt8p4eubwtBrSaNQxXrGrPYXgJvL2hriKaS
nkAKr2EbndGcFqOLnzLSDFLeKDCIimXoBf1fwifhpj8Xf5deDR0Hk3x0fTDLRaBc6erQM5bWzWwE
wQQ0XF1JhzpBR1Cc1UigBARa0PvvD6Jio3dfUqEvQz3b3/dsP5j93mHwqrEKFTTRXdAmURpknHfV
EZ7MeKF0hVLEZSRunqbZ7hhCHAv1Om5J4NCJZeiFB5QCrvcsljGE6tNVcK8Jz2ONwaAGtD8+A3BZ
Z0ltv/BEAoVFuVaspl/8D69k42IeKntq7M0YDZRgzkSDEJBPTgwU2VAS8QUyU5o6EFt+n3cHd93x
Sls3r5PYwAeILgRFYlPn59Yks6WsMRJd7QXToAkw85QYvfL6KkLwWfK69zLL9QIz5dRzc2wdH3YT
wHEIUaekEliy3tozzU1ve0J4ctoTifGXBrDFvTGsb6g91qMYXWB9cuuqvKOzvevWUYiwnQsDEj6p
d/L0esLQuZ+ylUNpHEFO/oV2sjfj8BRdZmJn2fDRmOuCdlq6Ve9qh+Cjzrab8qLrLGsXFNNPqvgA
6/pX7FgRoXRcp9GqVM06h1ZJCHW9m96edP5Ee0bmgxriSq4kSdtSGbF2TmKoOy+kLGVVJB1cx0qG
rJF1YO//XcBPSyXYf0lS6qBKl2NE82t02E05dfJqgtR0HQRO8XIlzYhOMmUgoJ3A++sRLLbzz+Oq
8G3LgWhkXNHVAGVRD9NQqSgAl4J2gt8Yhx7I5z63SAkCrr9tp3iZskdQMp7TY6mBhQoOiMyxBgI2
TuTdi96m9cuWdveP/HsuFbzaX71p0AweD2+1rOHzEsG/JdfZMDASVbk4L6VuZrsC8Y37Bh0dtZ7D
+TO5B86IYyLJP1uQwkjoh6xzEdb/7ntHJYkBdL39A+2jWVLUT415ubRfsJ9iYsuuqy7mMd7moYPJ
MKn+eD3SzJ0brZuaKOzHyVmbmCy9iuEQBI57ff1kwXYTTTqHpjKe++RhwgmC+KqjMaOUWx4+vUki
YLUTHyQ6mVbA0+/N63o/GenZvmvRmtiaZrpEBoxeFtdxc/q8VPtpTVJYoalkwWiBMZ1guWX7+p/X
i0+dkCuEpNujWQNK/yHtwmUCfhaN2s4z8nprt0PbX9RxImCiGnDQDPxldXpknGlvRftBMjE9Tl6m
lCDMnW5bu8bnvZAUmALBpzwM6k3S678N4EeVmgCRZipRyCXy8m7bND86+AsxU/WUGlkGoxN41fJo
PvE6DDszWg+76M8Gc1UttsrF89/aUCB84WDDdbLPqhjz7Kf80mpGM+ezlTZ6u8Rjf31sgc2EmogV
3xIKnpyHEWujNsQp9WkQUFFUCQIyCl9aOoT9fRLQQYLk2dya6QslJmPKfB+5+z6W32/If3bKKIbr
ajkqnWCf4dw71FklnGXJwfHjpOZNF0Pmm2IFZN0n4pnod7V/AQFoot8gO6IbF8qDv9yYO9sR+ktV
TWuYjnvLvqBIpwxW4WjYhNgC/1X6JxAgFg4wgWClTraU55RAXtezBnXehgpAVgoHhUc0OTx2gtGw
w/Fyp+gg+XvNdk/NQtdq1pqKQBGuu620D07xVk1RoHlWN4iGsNuJ9G2J9gPg7/dABf9qLryfrBJ1
yBuhF2SfAwQjBXVrF1wgOtTCvg6hrlcDw+WGOFgxMamZQobiFx3jsHSxuA9Er089iOg/lFJeOF/A
3siFQtJVxVxt7TxVvWhRmyzV4PNW31CE9Bm1v9lLrU7G7hQy85ZjmmEaFp1BbjGVUPQUllLlZjtE
61cV0YaJwcflg4M/R/WE1/Cn/AwZketAqTGGKVCO6BbI0USY/fprtQz1YdupO4mz6vEGILzDCZyp
b1+p+XumJ0VcPvy1+iHGKaE50KHdrU/XAFK8FLoLnuHuU9TCITfA9E7o7TgoThhVOAq3kalFiNz0
kWfq+LmRsSkX/sbHyfuPM85r4tMn9j+ES864Q/IT6/5GzoZvbYbqDfJCgpVVOUdPW9v6P61iPFBD
JUfQVkQwAdYXlk4s7JLBFYKKT0+A04uyVwGgN2xsI/9NDfgfuC7Lhnx5a5mWrXrg0Bf0yg5uproU
+E0r2kQNCgfaMM53uPNMLr+aRj5C5PjaQSraBeZqXY+xNyX0NdY+NgO7JNHj2qVzMOdem3tPOf96
Oz+CyMjkIfMm81MAxg8m9WmHTummzPegaQ8qGxvdlPPSuW2qnskgLGNRCyCk2xkKGn1vggNnUmz0
aZ1xn/BMhmeaYYaH+PnQCCc1GJ2/0cf4MbgKn9YMsKA4x3wb5oEoWVsBcApsoUB7nS/V1n9FdAiy
ldHHdwV9d1kBfsU+PvSLQHQzVqD383cTphJOndR44IRu162XZgigyfwanXmDkGd3SfAdG+0zXbyQ
WQ6BlbZNOWA9rsKltWD5CJ+IEU41gR9qHnDyvSvuYFW4DAyTDbBn7lR3tMq12J/BTdb0xAOJljWs
KgrVDX1JP3pd5F4kBwX/cN0KwMyMsmh5hJCa7hS8SK41cwgYxcvtkifQwYUke8k0eZ5ECcsTgloo
uNyo1ZpKie4rK8TE+r3ZcKyXy3gjPVirTRXL/i+aD9Kr8T/X820eaZzWAx+G/pVZjos6W8BvDdpD
61T2QF/Nx5nEiuSjfxbNnuqXVO7g/BbxHyQgVswacqeZy32LV5p548339de5p2hukFcwgfgh1oLM
JDBwWNtCVw2EEYRP/f9Tx/EjQFNjeGZ2VMtSv14MiSYLMP5BPx7xdYOSp27bIA1wTJo9iXntO9MK
xpIaG0aXx5LkH3h45eXUE0jPu0SY5BY+sXuZuY78v/9Yc4wGE1TBGNBRhDwKh7tZBtkzseMU7DUT
f2YHnpGkc3aoFIpasjBnmBt33EW4HxVKPnqY2qfAfYkf0RfR8w380nh60Azd/jwtJ+COEW43MBKt
lDFfgKvLHYhEjCO74p/ZCTApobX1b680jOfooY2EwbdaE9L4g0giGCajmP0uBHVepBzOF0qxsGtg
xSufTOogXVnguIjXTQZakcbxTMLLDyrgN6fGXTyCnoIjCkrLsgXv40wYVXu+vC08UeVDcDL3amkw
SrS6PQ87bYSsag8YOwIw0MrmULx6gth7cyms3Vbce45MSxrcOxAwQ8AdklIIzAAyEHUiR2AxKaDH
aOLNlBNTykvBaWGSxGYg8Fu4GpLxGhPDazZHZeDa9jLO5m0JO2lzjxqXDwozwG04Q8EePrZaxoV/
VL+AA+kVq/MBNQUc5o8GaEAOj+kL6WaTsHI7w9XM+mbSNFNcux5HB1qPdu2NrsgYgPzDSVAEJPOR
2ApTeaMUOOlz69cgirFdGgh9SJPH4hFNOXg8mbex4t4IMGjFpS+7dmIf9/gXGztJ6vz7nV3wDITz
ieufNShcmdXnLapGpXBehyBY1wazhJjT/KmW0qyCrTAfz7kpgT/NWodAm8v2YtvkPGVRWFWIZE7e
fttB1Y1COOyoTlqCB3rofNuGbNxT7g2RFke3bYD2bKtXZ4EBQmyOdmtyvK+JJXg3f+9hzITP1tUz
nSShok+7NgY0Kijd0XHMusr0jyXefMbM38HDMz/pmy/7KdU6Ew8k4HeEDpFiUBgxId/FHE9Bcdut
HehynxIFeh+avJpflYuJfwd49vGnAUYW21KuXbXMpKzJBNYDGxNPrB0lvxRc8Tr9p43VNYJnqyhK
PKIpGnJTOiExNB1dR9HlqgQ0lax22uAUFzl6yWc/5kd5pFHPWBL+bc6ZgZ3OHgNcWBS7Fb/iKcik
iw2XYWJwVKzUYqa6KUd980qanBCW54i0c720qgHg/X8rmlsDKgVS8PFriy874+Re5irjDfjVd8S+
BGgDxDDXyUpkIG3avJKUcdyf7K5FtxhycO7XzOeU6OZqM/I9g2Rec+tWdEhIBhLfd3uz9hYgAVUf
NX1USFPlmR/nvn4OzZFeMMxEuTaPDT3Xs1Bf49zHdM8luak4Ju9a6sSfXYQt1BnUEIeN91XclX5Z
2WmBpzPMXwldvxGQQuc9IlMVy1KRCLtzPzWj4+jTMcqL5ynSbz0GNZyFRnEsLuEY7Uv4hnjKy1H6
FxbzLep7GlxbPz0hShaSym4EOnclsITq+zsA/vlPZTeSXsf1rsxAcBs1n5FAr1xoLUr27HFMMLbU
6ei5oxl5Pk27v9/kndukzzwFn1LqolPzExvSqV1tQRgNHz304sZkJoTjhQ5uab4fVrdDpQCgEIHL
Q+zGxgHlAjZzp0NGbgeUm0fWi/55ZWj42DziCijkrTWZc+o/+XHmPFXGYoAudNSNPrZEjDwsJHlX
hivTzRvbAtVpj6+KI2A5Z/cCxFMtNt4pDyQjIp28lduMhknHOYiSuYEAfK1nirkBvr8knlPg0JfY
6tLIYbE0b6rfC+2QHAODRtWPxzV2XzBUkLGKOUSycPJOK8p2+4jCo6wclU0SaHLDQ0N7J+xwvK+C
B8GOPyB80D99UK5e4/PbTyFWVQBHHjmNcOw+wVnoTuG/PqdVs/eAiuILlzVY4MJRr8cPyJ1O1Hjm
g8bjtAHjWka0FqnDkDLbwVnxg3nr/7/3JtHzovAZGXSMj86rInqqa/spJuxcft4Woh4hXjieMq2F
/ukn8vL8zN9VwaDYRw0bXmqnXX9zkIzMCtWBfUGMmCXbN9xhB7OF7bjlv2TASU1CQdGNfeDzjBdR
J/pr7gLJTRmEZrHdscj/yZUexUUexxKq6kCm+oAPE7sFOaHLCZgwFIoPS6aya4evKIR2EtN5fIuR
5oG7AU5jwMR1/qT1DUd+Jw0RNWTx9Dufc5Nn2v2npgrNz8TjmUdCcjOZh/hpghQLaR5z9KTPZOS6
JuGW1zHbdeaeaG5/JGoXk2Lh2kqbyXCThDAW2qKo3+7na+L5+KSCcZ3Zc6dYpOXEwOjFf/TG7C2+
rdKdPHlyWHW92j+v/1WET1ELlmAFFWPJrg11yAmHgsKXD0XJEVxAEax47s1OO0c94+snPkUEJ4jT
qbyvi5hjqBceCMfUIpWXtfnVWDAsPpdV2Y3F9i4K+jNqn2Ms3gxltVXae32FMf8k7+iBy3BhPuUi
ve9addlfBIdF9rvnsMwR9CixyVzzAdOGL0K3TiuWnpWSjzV1NFisg5dMg8bca9FBJBK9OwJ3ooRH
dQEtuI9X2NTd56Sxl3h8Z2CnIdvfOGLjLDVrWUn/4dUoJEwxU4K/X0T8baWcSokfo9ajrBxU5e1I
smJOpl4IA9Cxk/+EmcgKXYgmBH0VfW4ngw1//+RFdjHfmg/xjlzIfB3p6PYmHDEI3riTMAbru8ao
wykyxjwLHpp/4TzATJFDymQURfyZh9YOP4tAZ1a7a+4m5ayAHC+N0GuL14GzhijT9w5W7CvjkXJE
hkYAOFHaBFvKKYk/JZk5GpxjnIDPzsoEqOH3DfTeZ8QgkQeYGR5FyJsmxQQoup6akHcEyMvYd3gD
cJgwLhGSw8VuR8pEpjTbFV6vrdTfkcC2u6EhU0KlsL92bAM69+6oAD6Ke/ckp3r5MXoZT74QfPTA
f7M+yqs2/cXLGIbY/OjK/n4VY3mte/07v/j8PwYsfOxcTedyDPXRKUdN620wor2abi2cDsZW8RIl
ZZxS+JYTh70l6Cno0wN/OdWwg8ljDvMHXOE1fxnLqwcvxdmpfgPO8e+UU12BPTFOxAGRqF3Tl3Fq
xSw99UeDU2pxS+8QBjbvwECGhtZotpvwFlMbsFGgL19HcpW4ctDenu0W4pu+DEg6IpAYHXVs/mo+
KcOPmGUF0sv13WwR+WzS2xMqZ3AzOkghZPy53B/CV1rK8FCTylFAcYbnEexrV9gQcP4AWvVWFAwb
Elh/AA8TYOpPpKqw7EFdyCRPQ4ivdWtAn0qVnWdYWBijxWMPwTcP4KIeJFnq8Jpl3Xv6p26agzW/
Isk1rEl9kNjF2k0g4o058e5VlwUhYs9UeZGrjSyizhDZjAqGxHhFgJEI23WQy99Wtz41OvhAODag
aO/GBqB0SbDcI5hk3hmMpXxXUTnxwnlznypsafKPpmtmDyY+tKQxvI6TCJW9r2w8QwXrWDRtiqaT
/GGbx/CfaByJpqwGSzXB+kUPdqKUC78OeueTLw2uPw55PmHYrVQ96m/cNNicNUUqqJ8yYqpi6apI
vNOAqZBulNoF0RPgGIETVY3v44eDnb58f6Kes/+HXY2uI8sEgTMFjdOC/vZHbfNXo0KMR2W0n89L
u6HijkRaNfDxBeCzfUcVICl9rafywRxzBZ3gOGV0G/mrkrw1tzggrebHE+Y/7z919eTyQ0tIF1dg
rtRcySKA1VaBLwXNSyOVv9pIoXezqqYm0CDvpBYyzB9hl5yIbw/kxUVYTqWTI7eroYwQ4BINNPAU
IGl+AuM0rPTQ32vNWxW+6KoXyITjokOp74kv4H6cAFngqwUych319eOCTpBNjagPaBm81jIdgizj
yNCow86WQh12OwnzbHSfuvLmX7Qpqrt8fE0SziI7baLXbpQ5/p3y7/SMAsMK8rW5ilZ93jjhZtrq
XLHqWzUh6zw+DLdUa2ThrUIs+8kGlowxDxiAYnE+tpuD9spa30EoyY4YYqTibMidqIaYBeIPIO5M
iysdktOZOvKYT7oOS0ustc3s9gmKU0tqyorlNP8SPD4N2hgcB5QK16oeXRm46bukVEtVZjXNqL2O
k+VBFioOAtcDcCI4gqyRjcmiVCENJ8ZfvzG/wBXHzuhTbAwmQxPfEWbHIYg5Gh3leVVSSII93jSu
TvmIlEMsi1Wu8UNzUuSpx29J5ldqJcs3X9eYFl6ndva/8My1zbyyC89NvQSMbKrKCNVKswmeY6sL
iy2VX0jZnNn7UDdziQN7OfFSh+cgXHHgfGI/cllaqu/SImF4Z1Ea9Jvvmi2RspmyW+yR0WJR+6Mp
xtSdjSM/4TTTVq4d1ZzIsef/q8kR/OqVmuEjxCLQ+UOLNW5A4Q4DH1E4BN2olSjqiV4xhIlcrmb6
09qthk2LB9rEhTY1t1BiIQsGA2sYrw/tGqGsw1Tlqih4XSEHXPmo2xCr7D8YfTE1CIHhdzxDpi2s
eM18wbfI0GK50BxjjsfcgFLoKJWJckqeaC12X1BDYM+zav2D/rF3XxJCzHu5S68VlQWM7KvHe2d1
IYYYeHD2FnMJi/q0oy5ir7GBfTQieGibwNe1T4PulCIlZV3jdyx5ClDxFURt9KuV1O65WW/W+nkW
so5vEajzXmeiUz/SPGZFOPLy+PH9Vg5ltuTAMNJUsT8Kb8XxuNDoCoOk7f9hbW9CJ7tvX+0I9WHX
czlyNEkQced5zRfvdbMB/57RblxvE8BDhS9rcV50hm6oZkJRfzVIY1brCK/FwGvVMb73TD6Fq1NJ
Dno4UxMR8gtQK+dk6E3vC9GMfX1bFkJhJTQtzhUKd2b15EDyS5vppSACOtZDfeLk541Yyy+ZPhrE
uAS97tmSMbYr791Tz6sgKiCg6A4AEaR4aTsp9MN5WLCKLC6fuFLx4A1ta8HstlqT/EdyYP9DnVsU
xSeW13GD0ptjQWO8QosIDxjnhZF38sQLYgndwSidxjFzRDkTd2Ppz5r+HmicPAH3h0NpnFEJJ6BB
1fmOGLhXRvnn1TerOJO52kkGt8V1Y1h6n/n1gWNeAq20TDFeTQqyp3YE8b1WVKiPbZ/+K+bb53YS
ew5nSntt9UbemGEP4fJnfchWpkd/p+KRQ9b6wsutRS48XW5wk4nm+DjEC15ljMnr2IUl+BXQq3wm
3Yudpa+zhlc31jH2cVSMFx5IPHfjYIGDMColAo4LZwG+afgzwYUc51M1+/rhCjGE00uBUsznAJjO
DcA5TJ/2wajIWNq0/cMJFFuR9FMRZEI3EBUEj41K3S8SJskbyuVR0vGXbx4ViG0yfbhfY5oZ0VUy
hXuQtbcQxWMuCNobhWLtTcM56fP4m20xXsssF5CQhOwpQUwACNxdvqj5RZ2SvPqP83ZGdv0wI0aG
E4ABJvyJqc+GQ39fXadeRKabY9xM5lKkW3WebgxOLFSYC61jUoS94XiYO1W9oqY2sP14AcbehiQe
m0KkdW4/0oPMsaDpYL9UaZAagovA9xs1kMq+pG0YXsnqm/G1UTSu6LmLn+bH18XUu4nlkeaAhC9F
pCFo00CIneDDd0euHOiWAjahKxqwRX6vZvOCw2tcOYAFb88ni5RQdZi8EkJlGIgGZIdc2HhWExXg
S8Asi7lMIgIz9YADaA3nqapj32DbB9Jvr3Yoyy/veLRonV4XWdPhtZ16AZFH8qrkBtXPHObbtlvq
SHyC2D09LFZCQ9wA+L+MbKn7deka9Nc9eyHytFqJRefVCc088yv7obJNCtk8AlhP2Bip5dDVZoRa
HAQTPQdKKe7iFqZjSC9hiyB0mZP8s/W9Kw1ktZnN/rI09bnZzml1wfEE2VsFxRSpt/Kzdl8J0RYi
bUEv9x0eEV5WfXoaLw1isfe2/AozgIOyOETYwGVzcVCcwh5ag22rbn9DV5RMHoONnNOHZc3P7gfp
ULM4Jl2+eu1dwLUt41oE8iawctt7ZimRoN3hsiZn7BRlw5HSryLTkSUDeTfVpdCIkG+wPG0=
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
