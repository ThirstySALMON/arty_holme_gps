// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Tue Sep  8 15:34:39 2026
// Host        : DESKTOP-EALFKFH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_host_fifo_sim_netlist.v
// Design      : blk_host_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_host_fifo,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [15:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [15:0]doutb;

  wire [13:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [0:0]dina;
  wire [15:0]dinb;
  wire [0:0]douta;
  wire [15:0]doutb;
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
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "14" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.83395 mW" *) 
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
  (* C_INIT_FILE = "blk_host_fifo.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "16384" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "1" *) 
  (* C_READ_WIDTH_B = "16" *) 
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
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "READ_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "1" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_12 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20512)
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
