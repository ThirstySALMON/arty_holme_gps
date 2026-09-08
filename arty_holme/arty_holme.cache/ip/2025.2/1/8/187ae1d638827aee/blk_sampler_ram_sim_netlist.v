// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Tue Sep  8 15:36:15 2026
// Host        : DESKTOP-EALFKFH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_sampler_ram_sim_netlist.v
// Design      : blk_sampler_ram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_sampler_ram,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    enb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [13:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [0:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [0:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [11:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [3:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [3:0]doutb;

  wire [13:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire [0:0]dina;
  wire [3:0]dinb;
  wire [0:0]douta;
  wire [3:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [11:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "14" *) 
  (* C_ADDRB_WIDTH = "12" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.5289 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_sampler_ram.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "16384" *) 
  (* C_READ_DEPTH_B = "4096" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "1" *) 
  (* C_READ_WIDTH_B = "4" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "16384" *) 
  (* C_WRITE_DEPTH_B = "4096" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "1" *) 
  (* C_WRITE_WIDTH_B = "4" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_12 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[11:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[11:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[3:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YqH9kwIC39+qbZg4PSfFsXuB9k9wnuxNryS/CfnEri6Ci9fSC6fsrQ/T/hnt3u/yolbJ8DJa1Qu6
Qnm24A9jLbA+fu3Nsmm6/rM6a4vU6OfVl/gTFd/CiWDutv6Dhn6Lim4uUNPahoOR/A2Yc4Zo2tdI
kMLO9gn9WlH2l3O2oXs=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XJYO2VHd/cnMxQd3i7/2qRhl57dl+doEKuhAunQyv3vpGRG/jlNxj8PqrgLoF0HMdqE3qJUVE/oq
kBSapqjVjLDMOrNGQ+Tc6VGsKMZH8FE/TXHQJ/IM5Iuiu2eozEwwVUomF+7cfqn+9OsVsqCONQ1M
g0oRlangiqasJDhhMfnlGGqwAwmgWRGQA6dmhTuua1s8zdvIv540zY6p5au8cAKVhqyyKK7wbxEE
SGuFqX+NYoyRV+rfWCcWM+hJEmnWS8LNAKkd13YE2+17sPYzUdZ23DmTxXK6KlAxKFW27CBySUfg
qdNXp2DSs2KAQYih27pBNMuHfGbM/ATFPWFvxg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lYoEi/e8HsDTz6N11EDe/B/iitERmeYndlCklmCluwgb0N4W80JUGVlkd7NlRZHRNhxaNBJPkcjC
n61nO0tb17NwsMwjbY5TF8JWRYTNw1JXCFacvQYrdKv4/7QNQEtwVGiCLxFhOA8aHlWMZIrc2fri
VRMVWaEBcPwCGorlVIM=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QEw9fEsWFbdX0OQLvYs/gl+zyEOW3ak9TdQVaq+0AXXOT3LIqF7wDxJ6ZBnlf9mNbdsUVH5tAz1o
H8u7ihJl1L3THEvugW+TS8hkvVbEA9rKO2vV15KAj4Lla7UdFT/xDfe79RFarlLI7yGrubjgdoRi
QWy//UKsffG7IWNwmoSuppWiWB4ZHJtkunNyIkm70JPGyZF62VxJg1MTT+5LUbZG5vZjjuHZud9w
xJaKv1tFP/x8RVqLU5gPOqGqTW7/nKO2S+450Vo4D9vAmBVVcXpaL1EbSmCvQ+qJmcQKtf9qYFRV
Zko08hbpHjPxstqvTDro01jRzB8592m4xU2TWA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TC7q853CWBPPJgbRfgDV1lmjUwSAtliljShAyNFg8sfRfwDzchthzoSPH1UCHV++E2JXacEKq1lB
UWsNP92U4Xh0/Gu+6esOI0pJb8I+TRTxyBN1I4cRQEfQHcwfhbSdeH3yX9OV3opLEqYmT37hWU+J
zCawYnxVESI0FtRzEXve9gdEWlrKKckrT/hp4mvxxOjvOkOSQBvy0elgUOqh6mEOZl+JnUbsR+Wm
CoZLE1eefMZy3FnVmyDNPv3JPXi88aLXMyimal0MYFkTiS4XJiGT3eAIMIbksehXY+eYi/KFpZWQ
GHpX+lG3UmiWWLwyPakFwKEHbrBc70AlJ2eV9g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
j9nmCKgjPWNChPbpSW6EWLrMA6oCG2JGPoum8px09v0PEAh0DRXZi0J8HPzXUsZgOEMcKpA7X54u
YFcDDCLAQ+urha/eSPbQYHQh4yGCursxAQ1C6LEyNQ2wJ0eLlO2bJeAl/gof06zqsYVM2lLJVNv5
wao1k2bmgPdfpfY3c9vPD0fSMuZPS41EoRS0cQhO5GTZnKdjxm6tEUL3GnTjB8ynSCIbCJUsMtAX
4FRHNa52gudx5B5fagR+lXgFhE7e++rWTJELr7SYB+r5Es8qZLTpCH8TrQxEkV0rY/+e4sAjNE2D
gHw8GD7VcUtc15B8y1BbVmh29qc8Nd3V2i/miA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UkCD6I/Vye4qNoNoa3hIexBXG3xyKUJPAHAjIo7UcNVCDXpMQiYEtPDqExZMfiPlJn2nswCYIfIJ
FYWqMCloKSQyyI/7yZ2EtbyWEklb/P5IyZyvGi6hhFUo/JFTb12b4bK0gZPr+bCDdlVQKTx5GVHz
wptdUJO2omSj8axVMPbLRRtVzlJIZ29dTJ2ATXVXAcBxPnFfHRAMnYYKLeeLExX61vQvpqrkLQHm
XG7hpVzJi56gYKAzxa2BLq072OCVpVS70bfWlhlSTVcSlCrUf+EcarEk4FD8+Ih2NCvrqremG6yn
TtcBn8Xr8M/6zhOYvLi6AD6eArDMKA8n+Ccv8A==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A5y5QVZU8yjPexRVPioSiAGohCHD5DX5FVobuMyhcgQRExLUhPvnnS8HOtxTj/2IapEcz68gFMGG
Hpi+m725u85/om/Vze9pGIW9Mn328Kz2FIg3W5EvGstfGwY+48LiAGAmTR269JS4lJGVYWYOz7Xk
S8cEsFd2m7j8iyKtARJzD90+UdXq/cIIh725jC9i8nbgxB364zddvm1Z/DF3JRw1qFp6GGcuRai1
KNcJ1j8c9wtIgktpsteU3e5+bxHEw8NT3gWXUFYjm00NDq97Jals8Jjktmum2nQxoF7ivPacfEey
gnSF6jRMkTsZObzc30hAhs0CEtc33hZLhPLHSn8pQ0WyvKJLHdd5s2yckgTZtqxC1Sbwe7WEgNXe
ZMX3pIkz+aoXsAL7GBLyVBMVQcyMoF0w8QGAaTe8sqatABwPqXidYRqNROTf62IYcMpV89XYgaTv
EwIn/oni9KOFd2BFVxRZbFGGC4IjvigsTBUijI+Dk6kVnDh240clGcc4

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Omtp+lCaqUx7Z4qdFj2zrN8LpCkit2eX4hlMtig+ielGm/x4FSZkpjoFmiqdKFPi2eg0pg09MSai
XyGH68UzAR7Xrj8f1jlIoUmMKp4GcxfdqfTeuu7kWGOJEP6cvgTjSJFj2gawDv7f4yZcltnK2x0L
e4GW/rBTmGvZtKWb2ahjINLxPuh3dDaSaWdb+zVgbtyrI5FrjxBkq+aOxSjyNsqnCx1L0uWbxnkl
88NbXN3dTaECXHNm/fsleayM5hKis7kTv9BFajJMGy+BhQlmIYpE+F5zchnTTFUFJZCz1sX9Fc8e
HcY7irB8mR3ajdzjUZLBQEMktp096Nheq3U75A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hpeBLwN9x2ZFDwroYLlUe5GjjDepHik2l0c2s3/6S7JPCRkzQSyt2V1Ad/JewAs/QNp5SXSbYYB4
rQl0My1LDMF3xw43r0g2IbcyHVpPhGp0W5msuQdF67afnsRv90iJYWLMI3QkYGCTWAzl4HrLxFSg
3z8XZRK670IcxznOrlvgHmIKsvubZrBkuc1EynrVb9Nw16QnIx2rc4WgcEXeFf+4i1RoYLDd3gXK
NFCNMdtaRYUThunFP6Z4ViZ5UnDmKq+IMhd31jTaqIlWOBDxPI1+v5RJYxIyTbn4rxlKR2fNbl5/
z4OUjBTd+1GH3I2OXlqmAOvIhpe2Z2HH7nZu/A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Mt2RhTSUwEIEWeNARbyL+EdfS1UF6nPaL/fKl/7oO2gina93egwCWDLl1fbBtkfaPco0cu4MJ9K3
OraAsyHRlY+MNShmJ1LzAIA1LjZx4y55lu9dlQqSUXR7AW7wVbkg1864mK+hM/1XygU0jvebKNW9
B7xSER+asLO6pxi0mt7uC2PHxLPAYEszFhmnap82TtbDGdQ2qtyekY+ngs+N2fAdsblxVwJruiMl
e6XJ127M8N1mYwhWU2HtRpBOSnnKoHgD9fG51XK/rhk8DxT66QnX9uLPB+H25eDupBJGi1Y5o6x8
hOwZiSUVlBLh7brfzevh7+eRn+7es6wBas0+3w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20048)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
