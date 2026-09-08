// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Tue Sep  8 15:34:24 2026
// Host        : DESKTOP-EALFKFH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/OIE/Desktop/arty_holme_gps/arty_holme/arty_holme.gen/sources_1/ip/blk_logger_ram/blk_logger_ram_sim_netlist.v
// Design      : blk_logger_ram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_logger_ram,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module blk_logger_ram
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [15:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [15:0]doutb;

  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire [15:0]dina;
  wire [15:0]dinb;
  wire [15:0]douta;
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

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.0361 mW" *) 
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
  (* C_INIT_FILE = "blk_logger_ram.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
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
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_logger_ram_blk_mem_gen_v8_4_12 U0
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
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20064)
`pragma protect data_block
1XVHxIEYp+mtFp9S3gXuPi3m/WCtWKvepcbNtEiX37oCSFKjYjG/Xvjz1toJApd4XAdZSzqptw9a
mo+yG3G6+hnEZKsq724fNPCYKmiAdttj7KBjo+9q8uO7VfQpH800eJ+pv9877GS9wPvuSbIXoqit
LIs8VuhRIL2fBvjPr8187p079WT5F/j1VVcYObeBly0+zfdS/IwR+G/NSAfLTPgU9/mfWf0L+iLR
By7VXwyiQPTBRtXjYXa7MDiKlGS034aOKfLs46PdEKgHpnhjKjM8+3XsgKwwKXDVcWSvxgi6c8+c
naz7vo0oV5pj0m3oeuMoCzcnE47gYT191DGDYMZouX5+pNfNQlWN6k6Jhh1or/3Z6fyWOYaRu/XL
KhOJ8Yn4K/ezTVxdtGp0k7MdBlRR77lx3EmIBmwZCih2kKQAJFTDrLyrtzVonMVH0P3L4FDsQQ1l
bTL71zAQmO6QqvDasw9jL4DZ5O7PoEfn16UjcDN3605toiY7VH8Dx/f3d0uOSTnYu06vm6veHAyu
MYsvTNLFeGnLojfxNIYSvd5F6rfrRFKzvjPUuqVu1YiZxXmgw2DSO0jvjmSXzrhx2I2anIDl09+M
rw5i0t4dkuo39EznGJl0vDNm4dDcInQar8wvSGCLepddAxRIh3c0jLmJq0Kh1nYy54f4qXMipMRI
MmSWygsgS2tBjFyaD2Hns2AYH2rVZqHQKDRhAP38J/MkbROqI5ZAXtNklM98O563VNodCrihr+V4
d3UPvu/wvcJbVNUSt1fuAgfYuCTLA6r/BxpSz4BbC/QUUU9ZTH0V1Sr8HtUBH8U55PhErMM4d/PA
36j7K05so3+ObsT/DH4ljwOLVMgABNBRMWvUnfTa441iBqWxbs/V6eisuY/qimYHD26INrYuHhfZ
Ha+AR/Ckj66KilrYri7hPJWzZc8qQ47/Djr6cGX+mAKo4S5+p+bS361FQgY/8yPYUfpWiCcSk4S7
i3Bvgb9AitOS+vrKamhy9OXvgT2xkQWwrmXpSXC2I0Hsc4kCxT2vEqQLG8MuPbUJRPEF1YyJDFuE
bOFhghstIg9crkid1Wq2ZJT99CIuu/e9qMquU6lebhe8jS2xcrTsvSUV9zHNlFavJbvXCt88mvj8
/gIpve4V83BefHZHAQVbh/xjBHQgpfstk9SmNx+wlOOlbMMyevJ6jyhdonxYNJlRozj9GYMJPBRU
TVMqL/cEVqXxtYwv43b9fgXjsiiDplwuI7Yzeml9EVBTd/l+eCrg22VGWPQcRUSHH/zSoZcBimHd
gzf8Bnvt16d2Cc2S5djRalqsgk3cMsRDBTmOZRB3VrZZL0weCmqUdoLEuisN9uT0EPlfHB5ohjvU
SR2o7jWnmAtD3jQiyztezrxntWa+cmalLCSWUxIndUgUKuhOopQn1qUv/PrNY4mQiHdr4X6HG2uQ
RRlz5/wWT286A2RWA3j3rdacdpSQt9AaV6ZMN693vE+uuSmZGzCc5lKAjZvfq7humFSdvlIESa5L
jtfzkh1vULtrTko3QKbFvxG/cdmDpag6deZxMRAw6tV5ZrqWNDx1nA2u2OJmqKM1t/DKtiEthOnB
aTFpXuJorBXxJWvWXaxpe12dc0ZVRYQIJva7T2plLTYtbFmY+7hDJ4WlppELC5d8NXN1cgoo2NIJ
Z+O3yg7DcK1d7KFA4rYBg5wXCSo5oDdZYa54k6kp+4AoePnSJ7gCW+E7FtMV9zJenEjHLZtjHvrN
TJ5soh3pPWsc3H7WsIfsCYAioe1d0SgwlrWTH/JQJyc80Z4nDafPAvyphW29IEdsVECQ7IeaqY4+
CnxzmV3t3V9j75qdQOaH/XMNvo2K+mWhTklW1lE822ivXEp4Km37Qu/9MNdVdXV5eC/UkqnN2jqS
TsuFEdvHqDQRbMzs0pPuNv/Aft3IKhaOYVroPWHCU/6xLfwzvQd0C9ua4gtVLmWw1kKJCspnxtew
bAUQI/zrzqxjhwLdgLXVFEKzf5n8Y8rIghqpv+SntMEZmPBX7ds6TU5zQkepG+HnrC56gZk9HE4I
SNuknJNXJRTwHDOwdWqDH9eBbkuTued81jiACFGcFZk1J81r2Eoci4DxGACmTkQvqZZgZNOYvb3M
/rIi28h3tIB3nAn/3N8hEpa3V9R/IGdRVmaVQdQ88Gc6ARr8fNtl7e0RPKxyaaGv5dX5zv+ZQhDD
XTheNBrM7VF8+meuqyeDrJuMj3+KS4G7BEhe/MYiFpZLP2JbYcZqFd7m6Ef9XZPYM+czIFQ+BKQ4
UveNxNpNe1HwvPxJMJX1xXB3jN+GLMjt6RAl5Mm/ssqp2KEqSfLJQco5+TcGpo0TTK7830qCjgYP
IVXSeRuiTkTgUF7EiF+VpEw4o60dluqK1i8tcKaiIl0cdTz6nlS9iHB/uV0UvGiShNPw7ri4YQaF
6/Punttr4HOjXOUpsgeM1RJW2f32F5ym7SyaCAwO5d/xWZughlQAX0oZkVM5D6iXG9LgqmZAeXH/
ra0aKUMSQU1tA5mF/kDPxVeBgMMuAHScDwmZf6vRgGhrDv76lRIjSNAZbGtVPnG1Z+qjJynQQ51k
k7S+o4aTgUGduzItlJUTcxFhMj8Laa9fQh22vTNgiGWTWFI55yKz0EeFD0Ddi+R/92TZwWABkYrR
IZUTOwL1z750PcE0MBS3amyvzko9Oj3MDsAyb2JDYg1eBvUJyw/21ZNtbTC59Tc9vHng8fbpSHEl
wGOkeO6++A7axxyKI7CaN1VmYsLL2veThbjdU0JfDz1Z6yxU22zgx4Qlu2z4i87AMP3XA9W++XEJ
dm2cVbuSKgLIsbQo/vvgu5WbUVSgjqEiFp79pTA6TPK2vT6BqznBE1oKkmkgwuMp8sJyN6tEXLKh
Fr2PnuAGOaE76KQlU11L9ACD1yWRP6s1k2P/oqx4Z4RtVuOk9vyYGaWfv0s6Wd+oTAxI4pYjZnrV
7fAEoIi/xGIDkthxtyQAD5cC8DZLpiKNdpedjfGaeBXQR1Dff+IL8DfhVCwRyx6Eg/jf3/a7G5Hj
/hTxIwhBN642KQx2kK2mSYEQKjqz9nHSk3z+RIYbM7/ukgmDGEMgL6O3r/iGaqcpjta4D/pBf2kT
1r2jdv0Vf2FJVaKwa+JpmfLhlzyTvPT1Bwm84TvbBAG5eWq8EE6WB2nO+gv+ekIqrKm0acpAIOp8
uQEhUdcE01s1QgWndKNX5zV8KoYygNhHQnAtKXBXPl0UZdT6W2yvO517XWQe17Fl+vmiuoiTO1rs
bebno/b0aE4+tShuhUJqA5zGJxZ8oxCVzXVewCOwk/Gal4i6HqhiWsVZ20VgTnqXvPWEq7/g3xke
UU2nUtX/+3nhkg43Rpx7uYXAwkPXJQYyHxS2cNyRqNdVbrLDxQAIdeZEDi2tuvcwS/dtGUjRn3ib
Ub5ME74kbyLZHMc6U863n0f+fi9llU14OTvJw4j+n28FUE7AfSU7q9q9NnYhZ5TcHh1b+sB/O50x
oTMWRgxCn9B0z45BFC5ywxtz0iixyvnmGJKe0Hm4EzqR0/FY0JnJDTNrP0I9nYyUrlg/yG5FmJPB
1c7zFFIZYJ7enUpHJ+iEbwb3iaefAnwXzYwJoNIXopxBQ2QuzMW0lNPer6Hb3lFC1uM/C+z/8W3g
4oBw2Bs88mBXvXEmw9QyLOTL0DxZP/o0SvVZWF/L7I8WTmjAeL/BDtJsMsyyrQYFP9YC1Ny1srES
lXv+N4TK9njsjBfrTkzBir/xuF9W1a8jL5UfPN0iIvn8NMVlQapa8KH6OlegZlcFOTAiKsEpSbTY
AJ9J4pAihSLAauK4jWi+cC3vcYWJrrHMINWwpjU0n/MvxGkIFUhB8ysu8JryyaYjlD4WlL801QHo
RU5GJry9KVLaBP/QFNtaWG7JLp065TRCU19zQ4DLSo6fUUf8FgSs3siONsn0I7oHbCWQpmewpdWz
nbahLN0lcACJlMbZdb0b6GfsX9C/1wpy1TDXRkbOI32YYAldZ2GwsScWlbWSIt4KAuRHUUljlVEv
qSYRw/n0q2BwWrNc8d/sG0oq9U2VyhnINv8o9Ayqq7Dp4e1wkELozgMBalSCZwO1pxlwxnnupT+g
WGDPNdQfL7851/Sx1rZEUz2j/HrLSWPYRybJTU4Cp8Lt/Kl+LwzQH/h78dSslE4FmsHx6lP3jMv7
Y+o+CUF6cZNPmo4OtTMAZSczs3f9mj3ndufG/0VyKiNZMytirdegMTqd4agzzoBQeeEDwmrRYyII
kW0lFP0tpMqMYoTYfecnse/eMX/p53ZkyzKsuB2p6DKO2247afKPLNnT+i5PJ6544my2rVffvTm3
M1Dy31GiAIfL3/x3llclQxtj5Vr0uj+7lziMizDVhQ+bf7PV+XyOy0MF3kM7zXkxPieiQTljTPHs
ZOSbn2HYCc80OCAHZoGWQBa25JTN7b11IKPBG10OHwi7YM3rg6pfXtiODjx9TcxckLXYfTLhOnoP
z3xCuqHhyGUBcRqVOmuVnE62Ebld6oxJOFDaUNa+8ioExRFsQKGOetHEwDKFtsDbjh0reZlac5CR
/qha7Rm9E1Hm38wrYpbYOZpE6KG9+o8tBNiGQ3HkCUv0DaK1goKXHE0Mc+ppG03XTOop/x2JNf99
cC7cs3JoKW8ewOpEmFIzEEBT/KVfSKbZD5S0+lpsBdkMZDHy77iis3lblayIxOYad96/NcpYabgU
SggfU0/C81Cni+wvIG8aIBFgZAdfdUuVH5hP820EdvMiwhTWTVM2jShfK5hJcr6ZW3w+P2y9efj+
M9fPsQt5sTljmDZ0MDOUjYIi7hsOpbsbnpYPFy4y5JZQBuRdRmbAsoco54v48EOMo4qkIXATXbUq
64B8Ju++Wt9pwoMrHgXyt4kO0dsBlYSSlGw0gEjnPCrjnvZMENkdotI/fh4EBG1p/uzmj5uitBuo
1WvvEkmjZHVp1hwcY/Y5/qkoXlt6xBobfqG7Q9otjjtpbfyju/1AXCx8fDpvUtehksPwW3Imtjgc
JBtb1oO+/tlPVq4vNGSGJGTqieUv0iPQBDu7yf3kKASuR4AuRbye+ShYBaz6WFVzLEXxWB2M24bV
zgAiPMVNcNGUkQd7GAWZsM/mr6Z0THSpgDmF3XdHETgdeXY54uiG+NBGB3A6ZhlBLiNTMk0dMcS3
squ2sQF2zlU96G6jr0aX/1lM73Q7vUhTYrFqM3bkkwMfAlK20/wbDP8MRQXn20aW1DU7fDKowsW6
P0GJPdgu0+ZDpZKrZ8iYdCCuysCzksyGgtiu3m18sn0i7+zPOshkjGg6iGvIJVGzEmNZXpsaVMdL
9AP7WJ6lJYHVOtii9SUpLX7Sp4Gtd8zeb9pfVmr5f1HMhwLeMXdaqedoKDWobqwJOmLheF6T1GJR
AIHQvc4Qe54UD9fDRYC9FJSPgVR785BwHdqOQIMQTeV/xLIYjL+ypgV9xJ2/geheEPzyPqMROtvX
fzwG6R7ibVMaXulExWHJm/Ap2hivtypQHmNGL87WSgBQ6Z5mPjmjE0FXIu2V0YPevaTQ8LlQ0LR/
3D0DoAjPqGKhVGe8qoeJhb3NS/zHTsX+PT2BwD8XO8kNd3j4RfVKb7rbL6eCbF17ULBqDC3xQP5S
3mAeCDk9S1bbM/zn0cm1PZkrzT438mkEDcw1lhh+UbMnnkpw+6yF4YfmR2W76A3Uo5tCh8JRRTkY
SPAhwhnn4/L+JSF6T12zN+gC53RwfgbaMfB/hcrisxaFJBVgJ0Zo5jgCg5KK4GDCTiQ+qFLtv/ys
b47Zl1NgNsLB+hMj0l2Nt+iLJHqnP7jip9dPeMkZRWkZ3ddx1VaQhyDpNU02U8Ep82UBEB+NF+ND
gr6M3F/Xtk7TQz/fZ7yvtcV2Fk52gLdR/bJJwdUqMZkT4ooNBg3uXHcm4kKcqD7Tm/tQuIfMp4iH
uRozv0jrzNLr9ZUadpqnRZjTrOgUtye41QUP1vemTLAprq1DcZArS9RnUBFInWXBcgm8yNqU+onz
oa32CW85mkDSHbb99XxDgThNumLFDFw1Oy8cXH/CyqLPAzV+jjSoY/MqJUM73Boqerg6mdm9npza
64AM54azKlz93q2OKIKqBRWLYWx9z2fdBVEXmV0ADv4Ky1AYXzJZzBgRaaWDZw3hgfen0xYEQAa7
m7ufIcaTP4qBoLl47UJUZ5sd1kmpB/iKD4Xikcl8ZKyZ6KZWSwBy3AEnAjEeemzLsX9YGDQgfljp
2Q7h+nEq5GVY1MiKPzkDURSJb9m1Wcrg7AlHxJLrcGkUhXQYLuk8SSI2Kc7fhr2wj805RP6S8Qis
a/t9BUhwQeWXiqIOZ7urvBu/Pb6o48/xxUF3XY0GlMfBHYPVDgpxMjr+5gqyiNq+LIyYPEV7/65n
i9K7IuMHyHCqyGIKutViuuKNt9+SCF+G+0vqDEghy8pOLtUYp+p7ZNXDQOiGK6Mn86PzUL/Qhkcc
WLfZNJAN1ufF0IfmhX2v4Ia4ZJIQZ525F+6JcfqC6tutlrJeWMyrAO2op4RABgShhI4Nl7CuQyWK
3jDaXgUo9JyCi9aNL1NPGw122m5ohR6bJqAAE1HOqvbPiUWTRCFfwMCjpV6ep29X8krSudGymv5y
eScLECwsPtwrCA6YXYs0CWg0f43hh8izKpwIWjxhTGCV1qCzjzvYrJWIelgIHAmsnsJfVE/4Ei8c
dGf7tlb+N99i2ZMly8o0Y92mZtoJrrGXpt4GnVbZMdS3nzTonSu27A4eW3+TeKx7BxMaMW7wwpIl
4NwO8jBCXnwVTEL/fm6duVZ6L2XrUo/B/5bjf4fyDrpNob4snXxX33EaFcBA6brIPGxaLDcTpSXo
Drsgf0Zb6pwVqkVvZ7svzD2S5bWG4wbydA3znlHx33eDZyswehERUySgDwrrdlkRRMwOhfCchZpV
QnHnaLlWOQq+UIjkEWY2R1PVIsu6zDdb3jfc58EUKoOEwNFJq5sei0d7w3fsTDjw1NmW+YYuKRfr
ZjKHmLwji/hGNhK5TzfQDOlnquvne/K6P4UjadaK6fkmUXGP5/DhHoPX4nFUzEfxHW6Q/NjEetoh
ppM7v3beIMynvvd3W/nG5kYp9zEQGUaMwMFaBxNf/IV/wj+H8+QJoLiBOVdvx0yuHAYLu4Kvt0mo
dtdYyencp73AsQgaDtKiIjc6VrQNpv4NN/L1QKQBxZw2BxFlYjo6kYUdXAATuZ0SgX/RqnxrMjA/
rcWESrA13y2zhA1NjXfuwK0VBD0M6HNvV2oXWqcV21eHARTeJ/KvJxw4McxNCw4hkC3skUqKlwaG
VhLkntJuBetjq8sj3G8ijTeuAbHPwHF7fxK4TSUWN9iuwQTyaOO5oeRb8o++AqYSSk1li9CP4Hj+
UqlmqPREGKxehVCEfDmJjA5f3hloIFpMhTVb97vpq0ndyALjz3B39cwsGuVeRHLd0x111fxbnn/b
zxdGlCY6FC+M4uBHpzZcNuHUNAPPSbyDCjiuV2o62Ob+ipPVj594ka6uQFS7GHLzfEnNZlSx1CM6
jAuawOB0HOPmcB6wPkuTK4eOSiBLNI+tiBX1F/J9buszuS3iKn2vam+oaROMQhOce2W4MrM/Uk9c
RbyGlyUBg3P50BGHK6UuXKNV9oxvzb3xYXuHBqoTsZQty+hpdOwJt8C+FbcbpRNOW/K4ueuplANs
P05EwUv221LM6BWXdZcse7VtYav18N0GZRtsK6eHRyHX2qZFRfVkCjY2DwQOxUZeFk/VGzqL/ML2
MgnfO04wd83CbZ0784BdU8lKrTbDq7TVBRqU8d0oiYzm9vt9s2mipBxChq7gnyC5ESLUWjbtsTtA
WAhfXoyyYEGND5sVaTKUI75hbW660KXjoCw7aM4tJuV3lxhGKaPQyL+RbcdWysJOyM+v+6RojJgR
ApRp14xZNROdpUKLy6+W9JcAUhsK4TxA9K1alS4YzMZ3IL9scZjJ6deirCcXEooW9Dmy/OgGomeC
jde/mVRFIfw1QPShDefuhFcGrmOjl+YlhiGDzM/Kr3dQCr7EGuSZrz9f+xNhSs5mZ15XEFa5E4Kc
d3yFD24PbZ7dsK1oZ4nYwgVqtD15kCiv+Y1jhyxoQjVWZw+0LwFNrGZi+TitaomDoVr3EX9Uk6Mt
v/Z94Lhh1jT7YNg6z7Scj7g80o3BrReGewKZN1LyeR89fm7OyyB7+zHpBm9XmP/uoLRjRYJ1mMNt
YklWhikXQW4TuiAch4fpofQl6yfLSe2OdMSsGt4qvmDgVAXU6Mu0EM3UIp7QcWDpwLcW9r0reozi
dJ4Z35igYWQRKg0l9sSa4uhNyOKqpfOo+pcoWvXBlkyrMx7bGeueMNg4OtarLIiGDHaydI0e07eR
EEPeQesuNKDbq+Ejj8FNve1kA5VIwJkKTn8m/wMdBNVsK14llLlmxFpSZj89zrCrBkWKgB+ye9BV
wbK0w9oEQzNgEBDqn1BjuAVmVvEYW8t3w99KfEsiVsrW5c8jiv0WyrLdPobs2sWaydUl5o9+BhpS
jLUWyDjQPVT5qx9JU/1ELb5Y7PUi4yfCEIxfwqfLf+J1W6RNrFcI4RI2e6WdSuLKqBXypl63dVef
tUdjHrRqz6WJA9nEOr+zjpB6esVNSL5VU37J+CgkvemV8d2zmINJaarCe3ohOau69GxJbKrxs57h
huPIAnYqIYjmVP2RnrOxnhyJ9140uKoLL4bl3pAVpYUNn1wHkzrf/Dk7nHm0Aw6dtb/Uqfylzrfh
TVFDTF3tTxF1YCmAVKzz9qBIX8CXmXgkg6Z84kq6MVgTi6pqsei0IPy/31yf0FiklCvTcakzWEEX
HVL7v6DVQ9Pu+paO7PCJJRxnK629e6i7n4vTGWNKRR2MdNhN2tgd0RspMZt1i3qVTTLC+Efco489
AS7dxNfOz3PYA+vcJYAB5tC2xKZpgoXwcqKTxS+CJM4uyk2FzkRyLV2uC7KmcLofF/Ln3TVLmOpO
conQ7+VuygxzkcogLNlSbA5nVYJSRPVfR7Iwu9YdsFymFDnT0/hq7ViECSO0HrySP5UG4XBwfuPQ
GViKMXATf8ASou4QM5bB8ZgRhIEOIk0PFlRI1rxHkvm/N5iAS3/L8Fj2eX+pCTOnVBCa/lxv4AxN
K+io8t8pMGih6MbhhKSK/DInIBlgq3WEg0exr2hCDGTqy5VY/UzmXhSxzZ7o4+nPyq1cVejIHbxk
K9k9eAX/6mOokKVYjPeRhyl8bwbREiGtCWZGdazufU2IevqvzgbEOjgSkqMBeU+QHKzC1zOZ3cc7
oI5XPD2wEpOmjky+uFo4dH5+gk7T1iqGHJQ/sNVcoGdEEpVnyx87Lu3z/rjPGoxO5RXDzASZkCma
pHF+wa6xxibTn8XNSapO76q7kOs924qjpFAE9V1814FYvvbZN2ayT05ejHpGqHtAKupKbWyd1abw
a+ZCO2lGa9tUkONfi/m2Wg2dSRs2+RHjT5ENzGarKclFgJvdH4ocBe54bO2byn708pPKZ1OWhOYz
Ci+ORjnSBs+ejI+4QZ3ykEnTESEzztkvTYSq4nGX+zA2BaKhg26bub6a9dCAfz0u/5ftClK5l03p
SD+2vwS0FZCwN7xrocj00RPK+dgcgtXJ/JF3rJXcX+wlH0EIlJ/iVsyE/9CqmBDzJiWJ4C0OZ7jc
vQmOX3a+Id0oZge2/rO+Jma6R6+fvsTcKKc4Y6BP59WtginrPlR55zhyj2BaLNJs399MogKgZpzU
1UhxH8/vwUBMAI+VkOwALo1KiEvOPiESvXqNL8QHi8IAXOmncaF2LOVfkFWb2Wv/k8nMrsvGwbPb
cqv3Y86/3dEvx0UPfDcMAsQDquYCE7X+i7+wRSyoPqIDiAOaEmyU+350TjEgxdD/AmDNLOQbVhCk
4vm8T3I4ElBVA4LBTw9HsdHr4L+b/CajVaFj4YbR6OTUn7Wm6RrsjCCf+unJcFUU6mx2SLSQGd63
kONJPsb3sC3bqkFrkH0/3+0YIpoR6meqDfNVnBC8s2Wmgh+qM8DMgv0KNq/7jlvIzXTc4ecnFaQ0
I1MkVI4iKw9iMd+Q6t80QmzUjBCrmSgwk54KcBzyFRk4mnqx7+rN0tDM246X0PsrAlEcHJ7N/iVk
lq69lCCO8KedWiDtJFUgMfxtzR3wPlovTv7NrMi3ijQHqsQ9fYkNGaxfl/XDGopECrX0kRyuvrQF
LL8KZNtt7XuOByuX0P8zMvXaW1N/nzfT6Y/svxXE5Bo/6c14KdF3JT17YtCZZdB64Hit7ZFmPXvr
I/sQG/4e9oatdENLhl2CMC2R3LfmZJLiXvSZ0WRpdJydq73dmOI6EfzcOv9TvnHgomTujFbKTgFm
ibQqT+LhHHj9opeH8Mxd6/88xf4Bg8SsfmAUwssBX+SKwLPq/M8Jb28JNhzXV0Z7F61XFqx2d8jq
KeUHCvQGPJmvY2r6s/sS5sCkRfLwnfCFYdwr1nUJttnDQmQLUDbeFpuT8seXTLEWye6LSm1g7sU0
68yEWsgLB4Pb6A5JvXKXVb4nlYIBLZXYBbM+2pzc3iNPIEAZQUxfQPeb5P3ztlrt95RWZgHvD+gC
hDGkO79xBiZJVhdBWiDHlfKX0ZuSppdZgJJI3JECoF77nVCvgMk2FCJp90yfChKkPcrUl3T+eXFU
//4Yr1uwxDZ70+zQBfDSDCKClY+F4x95Xb/asTLS6ILt5LJ+XiejwQFegbdCeKubKbnU+aygdTur
5XGddu2xMexSFDBdEnKGF3/D89bk7gaY+368tqUUMT5je+9BVk4f3vUS69v0+O97aJnMZnUeNj1G
Xu5moGCECK8P50KyHIMgtW5K1ZYy34cZ0QpMtrjOQ+/Qs+XoKZ46Qnn8dX9RygXrS8y7Hdw7trus
V1O9l+JCjRTXUTZja+sBm5y78H5yrmtjaP8atacgqhGgLaK278bi7w05MjKExz2NGb8W/T8Q0oVr
qbB3nSFtnuiqsPtJPAmc/0Ah26uudPzaBlZZA/CNzSK95vxGCVwYWujNajUYl8ahgx1RmwHCgQgR
4MtHhHzbjgfKvWcp5kSC5aLuKn9DruBneheyMEUPUMwtizrMB3mahVH8X+BYR5ybtGVFp7zJame4
mZLSiOSzQxxZ/7CrZ1OjgoS/mYWKvTpsLbzSChWPim1quv0XtvX2I00ZNV3KUE3Ft2jJIgw/AjTr
dC94hc5HJxvzr2HnrLHx5VRLmrGzCp6fiCoycP/DH+XAKRSsxnWa6kpSIyV7REOt9Z9Mqko1u1Pp
vSavK/wxu0rK1gE1HHtk78qMO9B2jYI6IxeSWlnNgCMryQ6HxbJofnB4haCw6Is/SGY641qOpLaI
z2SMrTDqsBHAz523lXmTyUcgz+8+WU/mmPjE7mtP7SYIbfhJpluuoR5m3qjxy9BMufpjnfbyEHUA
pMvmrzgCgdLzPb7+E7snO4mg4IJMrqTddjjD7z1X1vtmVpvoHZkd1W37NY5pUBPKtFqsJH/otTbG
e2tW7q25H3biG3bPMATWjPqRjdGRwSKLuAK5IHTTValQXtdIZ4+oVs+mLkRyJSNsxb3rEh7f0oRJ
A7Ovop2Q3wUSg8hqYyiBc4IoxQaZdKcLo7viG6QKQPlGwd5H4an+E2NsLnKzzfK0U3yZeRJb0aGz
qGWWB9HkHQJUtO/DmaYWJ2kK+yXFSri/R2C9cyN3MoHonz+z00w9KSa2qdTHUqT7NP6+N6Vt8I2d
F7BtivcsU6aKGeC4QC95W8HOXFt8I5ocWk5CVU60AbdvlWGLpnQnO1qPQTxs5iYKA30e2u4zWibE
WNJAtrcDi/foVGJJjmO8YAfG1EKZKgXJbW1UAb/uTBjM5LpbPB8IbGN6NbL4ZTM9q9RrAi3a9wOt
qJ0OBref6k1QQNt4SqsHgG/0W2aCuib1BOiy3ZI+nb3CWKxQB5nNWYfEnM6KaHWeCXLAWTWbEYl8
Q2Tv03DOAznPaNyW0q7YRlgTblHeuOYR4EIN+QV0IutD9Un+2mzuhp+puQlkY3plC+5K2neHYMyE
K/QCtqnTLl9Ygj01a4z0u76zIeDzt+EuBPJwIbT+I4+Omz+H5LtZ+arJxxfJhTpC4pc0pwDCVJZs
dvA+pQDdD3NXF3IS12sMSXLPHCbAWB8xGYDjQu7A0qLX2iuPeuLYG7Btsj58lvkc45O5lzaNvnlH
MJrfzvOVc6V36pWNYBKOqu/Spfg90wjG71Oi1HJaE/kkM53meapsy5xdf1P+IK6Bq9C/M/ex7r3T
Apz9fFuOiQyqtGe1pz1jAK9hUZV+icgWRfc2Quw98HPM2aQiaM3mKbgepVPw89gLdzXScBAFr/x7
XeSKcgYgjuKmXenjwl4bbfMfxKahAogGVri92iKkLseSXX+hSujr9Ir5TWbjb6FzyY0XpOLrFohw
eQ6nlaPSLSBBbjnV2Xgk6TozGw4jHpPy7W1eCdXbocHmQ8wxNk/i4a0CZteHH6b3iGdmpwUHi5Ou
TWabWdQWp2VlJSKTJ1aOYfwSgRk+r0CXlXnZuqekPtmKUT07OrJspn629LbIM5QaDcf+tk7G3cDe
TmACcrbt5hBl2B9rRcM/Wj1zyXRXL4proUIJYFx5slib6nwxqhYyhJzSCop9OftCR2W/3XUuvznK
QszdQA6UrNpyX8uzWnYmyAeFMQGhx0v0CP4emja8oP70VsuVEkg6mgD1exPr4FGPMtQlA4PbU7Ab
WvlQSk5oCxB0XQRKhYxJnrGKYyHSFhOpgOjHxSX/IaUnS/cTkFmQTOBAODdKviSlXPaQAOBvdPni
lYRxuMhFP/8HXLU/7bYT6UBfqfYc2mJxzzX+SD4N5EycvSDZhXByUt4VfIRDCWXmbMVziLP/AApS
LsaLRqZ2yTa2llm34g/vn8/+TbanSkwaiCJQckeefD791mnYt+uP1N14Mfl4eZGARji41f0+CqM8
w45pnuGQ9k3+mig17lrttJQCM2COrzNye1yZli7e68F8ulvJj1cSahC/rkCothLu8jq/q5F0KYhc
GKg0aL3TN8iJGj9D/mEuzUDCyMsa3VUftede18b+bsRUn/EUiaOOk0ILT1+pMT/AF3QoY/Ds/Bbt
6WLmNj7OIuB6qXXx48ICZHeL0wSNObBJIGGLjbQdUSUieXU9N4UDwZrpOAe3optxgkmL4BVuDnJM
6VhploH4YbNxra9bDHXIDf2uMyY+HsbeCOw30wEECVyJWCN2ZIezMbQOvhPUusBM2gUKk8tTgjGc
NGjZ+4Wh899DTwvs2+BsG1TBRYG6CVaCeKbY8AmgWEP6IVkXjxzZ3uJQgHRK/Hjgg6UPIfHo4EEU
ibAJT25ZfCHarJIqo20W2z/pih8oacY78In5TJFRrWgI+Sfs5P5GDZx4KsAfO42xjnXILDQwC/Qu
lpad7GZyb6WoDde5wuujLoL+bYcX2VRw8eBIBMfY2WQ7Ip0DeI3QIwvAOJbQhxKu1Sp04lmyyysn
LofXmkgnb0nLrFqVZRbXEkyL7Ccv8hPvwvWxvdtl0Kb+0xQUgnauTfkDnvrGi9zUphoFhKKR07OM
zko+CjSIo69yL914nW15KiWdswi1tS7TttLpCftAGsfUXslkEXvlPD5zF2lmHiAZ2uiIS3gopRrq
7rZDkAu9Sz97u0+u8B0GO9Z74vw+dVlHmLCqC15WQsdNIlKXARIQnDAnumf4Y6DiUzmsP8RcIBra
qM0Kx+KFsQMcx5jl36mNuUJZXSY5JZwiq8cePhvzwgR46YuKAVSClW9bZCbLdsFxnJYOQbCz3Xb5
NaBynFK2zjqg/40TvoBX10rcdCDi0ICSX3/FkB91xpB9EKyJnlvAthxWJ44xkkqwyUBfGc+gNvLb
dyPTVdyUqJrOq7zOokbwRvzPuCbiSYcZ/TFUKBiiNVyOaReCej0Spjn9t+YOg+wixmW75DKpDJ8J
Oo7fZ6aOrf4FlXlstODeHZDq2eVKK/hYEYfu4RshOdaVHNJwtIH9N+ACpysEewGZwPLU+a7C/X1K
DdTZt009HjrLtZhxB3a0zlH26NcNTUlW5mDhJsFt2yMuY/isVP94a85dHxG4TGeGgX6WJklj52U/
a9y0pDq6+tc5v3GsvOiDHYVPNlXb7bLqNaJ5qapu6ifT3L4j2yfdNkM3k5xCvhFXte4hGoSPWuYj
fhUNSuIwAXyZubQAniEdAwtWKykDXzhFGB/KOQM+kIl63F+kgjdJamoUbclo8cLBBrobSGJChQB4
afKqw0zUwuytcq1EkFFjLuF5TixTNuS+XXlBeddqfiAoUvOeDQyuc8ryssjRZTZiuDwPiK0x1gJ3
dE+EKugf6ycWAMsEz4xkrXsKmTm2vLXBpacTuHnhs54eLz4MhhY/v1gmdYhu/df29dJotss442ZK
kAAu546zfZotmINY/z/lg8Ci0HIUcq00isT3esBylo4QQXNY8wipOYMrURw0aVZ2Qjw42ueoP2jG
SK1Zq9iVLWDMa5bSMxPJYPlXPJUZguKPFSbl6KCBFiI99f80tAm61rhvqmIudIjpx2pFPNXIzioM
NiFqp1COn3N44QsEYWQuUq3guaNxRxnLQ6xtXcTCY9vk/Gczs3T89OSOBKhn7j5ol6nIpoMxAp/J
NJPyhC8k6LAmcvGApLv655SwOzGuoB2IV9FMoxrf7UFFVg4avn/lJvRSNksHAmkJWmfZb/0SQWXN
WHN1Q+wuK7tE2Bzwa5A4RHxk/Hs31Oj6nxpsC5V6hwT8tx35c5DAZHMWM4Tz+uDW6mcTWVbsQNRa
hOO+Z4ZugDb5VL3/x9QyWW1VwgFi6moHeSQgJeJLLtAcC1DB83zTHXE/E08LBBcf+oCTOGByHHWp
9T6pHzselnGI0euKcCF/OahGDernCdwpGL/ZE+BztZ0i73FwMIQ662d6iP/+OT/jZBnEu5WmMc49
Gs0QTpr0/dVoPrbwmuvUV4nbQSsH+Pt6IomcW+z3CFjy3CO4gDMjZqNQ1sCuC4ovyP/hDVe0rkIu
32bk+uROKt5xNsIIQul+4tUjp+aTQKTW/AyEYawCz1EyrvSwCDe2J3VjyTvr382WA57AJaITiVog
wdObNGDUrvCFoAndTZqikiRtO85zgu7tw1Pbf/zd4SFOKWcGcMpcV8xzngfh0aVpuxAiKqfkkVCS
nhPzQLgXZb4L6adigv71xH5RocpqNVQB7lY+2vfji3tpnTn5ioJc33xgmSVwBCxB0vY7d4ov4e9G
vdmF5OJE22r0dZDmi4xFPU6F7cqHC9OcV/fBdwW/R2KEEGIzhB2ADCvXmCZZpVNf/j0qw4MB1GNI
CNlgULVAs9hTy03OqELiBCq4nZ6YkBBKRbCLvQzV/qTUHt2L0IN7obzd03z/tE7UbwH4VBe3lpMI
4cSQqPnnjRn3fP+MRzbiwieheD+JN4B3Zhw0SzbTzxWA6wHXkLGD9/LzVMCNUWasXSUIBJ4conhV
Xz0Ool+7hxPdG/oYmi7RkBv7YvcQPMMxcBNgdwszgW6+Lc1DT26+4vcUZOgk5odM44Xlxy4HVm4A
G0UL/LZphwUjEO+SZgA6lld2K0xvcQOG+cabA3STH/GZFR+ncy6sAONh4YTlm/ut07AIgWEZvvEo
5C5Mb5ZgfE0zsJIqnWjOkXWc3xBkbpjdJbU3INGMHRtawvkbbz00rmRihOmt5DmaZvNBM4mqLxod
auLXfTCRSbWwWXAP6fFHovlSln51dhbJqqVHhJTiMlxbYm+0op402CPLp71wzC104dleuz+uxxMV
KaTsVDXIra6X4e+jMMpFnIhsKhQPM3JxwhSuTDt876ougwRV2aJ6wqKUUDlcX5OIsZr5yXlmo//k
Sl4OzJ71g1Oe+SrZKPvXLgM+YT8oPD750djehV8tP6sujwVUgeAgLHkBaoc5embKIa2JRsZ/YFu9
tFDk45xcdvv6XidfF11fILt6L/RdvN9LBASKC0QQf9luPpoSnbhZz+3bsJnSOvmnJd6FSxykWKTF
RMwcsm1AkukdSsomjWLbbieWkMFsh0VSU5z/TYPAtAiU/XvjLpWLIICkc8gn51EfsxYxp6SpTNqO
lk7FiMnxZjE2JviMTRwhZwp4moHiVrN/syqYEQUtEREYsojG/mszYtIx98xmsg+x9wM/b6WQu603
bqJObIjNXkB4XYWKuc6/WYuxdGUJHrxepHER8pQ6wLI0oGqlWHqRMzaxXP26l/EulEsj3Nht/67Q
uu4o/kj5wjDIS886sDdPWjeSR94P9FEwA2fJ/b8m879hsM8BS4+H6bi0a430nW6gGkxtHmzDB4CX
Zt49A1crVhYKhGTDhdo+ez3XF9iDP8kfYCkDj2tzB0tclXP1G/LG7zmu61/ov1psKkJcPr3QtdVe
75A2SU2/cWR63OjHUNIbsSq8SCpngRgg6E1Zo9iYxRBiT2RYfk05ZMVdZoseHJvMhjacRXjHuurG
zjNl2IVGH25kFsuGcmRuDguz7tZI3FrFOSLpoiguGWeQvSEv7bPj/65OZ+88+lapKVthObpi3Yxk
hdWoUw+X3iWJUJ+uBI13yVdg9A1KLU2GX6VhDjkjejPo5To3MDaSY1+4L8XFkR949vjhZl3vzdmO
MGOBD9by08dEQ0lkSL9y6PnbFQkdWCY7rtv0O1ELm1L8i5yUNEhHDqxBhHSo764/wmEppUPlxpy2
RYXIsMNdnU9UTmm9aQizJKK6MN6MUPrfauVCu36J3b8HBNk0INjlzsgZT2dlogtjDf1p3YVG5DUd
xhGxzq5jSgjqwtgekazfclOEbIjjRgQ789lhU+ota3RKqg2XIYje1qM+Iataol02NFh22wkLxGh4
6zITe4oyumEt61uE4jZvHoi2ZtA4G9ki65kd1oMuNM4/QRq7A3Hvrv/judWgNfYObwfWOqDxuvb5
NSfkydoIM+xSf5uoyVz3JMRJOS0QTeWQIUKEgjmzvro0V5e/JxnLkdaavVDt8SHDrdkMeN/1mbAf
4jFRjplCjxF9vTkmz9GhrsQOCXxxFUV179PJkZMxTKWiCf+F/HTvylLjdLJKKEkJZtZWMSygEKA4
yuQshEyeKjcgck/bOGCEx5D87W/lRYvFqB//bjjn+LbM3wS+wbBx9dTz41xfWt7k8SuKDZxvF9+E
b7tlaQaxE64SYrX63a0rVo3cesOuPqC92b96OhaAGcsqNCTA1mh8tmlfnGi0Hu5tYt1jEQn9n1n7
Th8jxHiZ3sWnaT7tZkxnwE99PVUbQFh32/zqWDLubMVqt+8Zh7xiT4GHxcYfX2nrgz1S1E17DRDG
LrmuI2Db8OZ3per8R5TuIbXx2072YdK0GSp5fJaroXAdI5kaFCYHi9111vXs2fBo4oqthgb0anh8
g8D/6ejgA+wE/sy91gjMYwyRzWREq0UuxAi9c8vnhFXxeYR4yKZR+21oHkiu3Hp5Za0j3J1hpyGK
hObdkIBFcK3DaIo0QnuH/upBPkMUbq8uGLocGSYxZT2maGZdXXJxwiU2wH/plBkRCSXDmeKWUMs6
c6vahoYimPCpwF/kIbAYConZirk0n9cyGhT9Lo0ojOZl1cPfDAfmuBuoN1DUVPHmXm+ho7UFeF4s
TwBjS45j037ToH3eaNIAGnViWS7OBhyqKzfg+43ViCWeU1cGqFKbcPuTgaZfSVmod29VTlR/USoS
s7HuGWjKX7JmSWzXzUo5SbJWj+Co/nZw+tq+Q3DkyETsofgHVOooXEmQBHuRqn+g0ZaVwh2bajbQ
rLrBA3ULQmYyhsjpxmrfiMmFxOaW8f5ImU0IfSvOtc4gJPM3kLszGB3XaPL8iU8iBzkPJ5llcxza
4cZCW5chfnN+GHw8/C/MV79H0dm1vFj2YH3VDGVg06LWnjpfLoh3YBmQiQG5wA7qK01arylfqsid
FW7xm0nTk3tThC0A3JzG2Sq4WE3rNO6w4YGGLfukn+TfNgJgNq7eCGeb+NAOWz2yKe0x0LdcrV3t
oAr0Ib7FUixP6PpXdW+KK28FagCuCd4lORstvoWng3yjln028AJkaa04svl2rFXaedGZ1MkDgm3w
cbBRhtJYyjym1mYlLLe9fH1jSqTDNbVwyO5oXZ4WjFJ0LkhE2lKt4PUa+GbA0LCcKCy69pARyRLY
AZfGr0mBQ1rnWCoj3HuY9SVNRKUPtjcZ1aE1iZcuIrSktK/ZTiOC9Z8AbCZMpxmWsID71RW3tFQI
hYrHzjjWyFI6KtfDY/zSHEAEW5s/UeR95nKWRMsJfW5ijLlrh7aiRhoNdecayZU+qFk0JWKMOc4s
e1Gkx3J/GfOj78uT0ZOCQNW5M6YcI8pDs7Qfdrf4+BNfwZXJLZjVI9OoFHTtpW5X8s08/lc+7ZnE
rlZd+rGDTDLIvTEUwLu2ZVrMdYryh/ixy9LkutqEhRbom6dsc5NrzDqqk/mX8OM0qlM8ssci5gOL
zp72XcX0B6LVxrSNoY5BzwHbxZbZKiHKeT9DxnaSYnXUG3kLcMuCmqg8jpemucdU9N2qB6kb+Iyq
CjRmnzJUKL4ebD3kElr4JOlsPPS+jrXed97VoNtes+1PzuURypHbR/rb7RudM9vFxxgXI6pnkmfl
HwcBmaYkRliqOEl9nFNIMw+QoBDzfwMuNOZMk01E6XINaHQR4YM7aBSPae2caeQGcyE3EeB3fwuK
438XKKa7Mcp1aa5P6mdqL0NOEO7KfoCyH7lco5ZDUos9lzEdhCpbAu0qp9Rz/UhXPkdGbcaZyU44
7lDSehVnXN79R8RVBTMBklYZWsHtxGiex9X9BdWUTxf3qDcX60wTl0S+P0fyduuo2Nx85Z+HsPBJ
ZW8zNY6FtqQZx+Fv/aobHM54ZQKuOdJEt5vGUOMrwtLayZKE8EorzbHIXk4uCLLVweOUsEH3+ZxK
/IwSq0+Ow9tTbqaOwYRkZuVSMIk4nbYFYG973OoLHmVZZORl2aY1F8xoQPUj4k6YDNHMHzux0vZ7
L/Ts6a0BXPGYTmHcYmJRMTBV9KFRH2BY57fTcz9hj6edhCukOJakwtl8B5kSPX2/frP3W/ePScly
YtDpRgEk3+ZHi/iVkab7twfimAZbyYqKKjzPiqfbNMXrgrSni8q2md/A1tJFGNFVmYQzL2Qb2uNF
FsE1ynBQWhIFcm8X6LAYjAyreJPSaxjC0G4iwYqtghaI0mbPDbiBwjTMcMnTLqgOqLJrkgeO6dDc
FQqumeSv28AB7d8vllrutjDWYigI+nKDkJL4hdAkbIrqUc9gHUv49ZWnAdgmmXSwwhvoqVOGnqAS
ZZ8Bq4CCEJgkbQeLSRpp/HuvaXGmc3NohEQyir7lXg1BKeYsHoaNTxv6f5wMDx+eN6r6hNyW4HlD
EI+UeirSxdaX38CdG5GHB+uEh+9aoB7Jahd/k18wrGOsdR9ILLJFwxSvqci5ZRjRhdqownlZXvTw
b3N5YHYO208T+COowiyhrNzjBjhsh3GnyR/ilwh+RdnUkN9b9EoPPWWw+wR1j2B96IQsAN9TcdWw
qsKJhPGVa8ASmE1Sj2rxo/0x7ks2NuBF8Ys4ngG7sQqMuYTNg/tjGaBlCfkaawhVCmZyrceE4ACB
r/QzKRwKTeoymXcM96UbQ4j25aXk0swjPMSr9NmR2hQ99vyN4Sgoxjd6CiZ8yllzdsTLbikVmDFR
DuGXErJ9qtRP2cSo8kLVAc2k3FqjZfJZVHIJfaP1Mftg3fcKKimcBE7KP8x74XB1TdFRGC9q1IE6
7lpRPBWZwdFM0Jel7Dy65nUyttv+sqn8O4qLcXOccO1d0q1axnp0qDFrx33GjNGOz+mfloUtYyFR
vxprpkTO+CA+Lr1GwVArRGgQvrdhrD/VSg2mY0OFyVhfUmc+u8BsE7u3W9XhcZV784FmhmfhkqX5
hJ6xUYEcjN9NTvW8cRqVnSVsEE1s/GYfN9GMi8aM8GL69PG4zR7P9JAGVVYgSBtrGkxdU5qPXaNi
lsPeL7nm2q/XsXjmyG9VQrTNoSeEiF/vo8w/VgQLdmV2rukZHJTfbTEbHU8WMj4tN3Ia6ks+H1HO
EOuD8tTgJdoIqUAV/ABBKq/OxkHWEtUmC/6NlXBrWjLgMJb3RT39xWA6VLOXFqNEdEfZR3T1uqH4
0NMtSpQkoJ+fwBs8QxlTt+R7z8w7fb9GsmIzEHBUmjUuvcd6m9PFeupBTc+n91SdfIf7BIAmUUqi
IxRdOAQlz3IHAzdpHZjjNyPdi/p1gR+JXD31MLqIt41yy55Gyoga9JrCO5tvaKcCLyfzLvDYTpNE
1caQ2UG/qqAWnuF2Tww3mXsrgraMEsnqSFJI0FoemXXKdgrvYCI9RqOhr6W1Sohv47sQSmdK9ZQr
RBw7P9FetyMdFQ3clq0S0efOnsWhpfw+AZzDl0PnGicgSLmYk3o4XcmdycxxHkBfJ5hs7AdKePWI
A6vxoptSJPztxbkyvJmbr3NTPBl0sQb9FaXP8B6rg0DprAILgZfgIPbFtm5ERIp3lzQd4cjZizHA
7iPG5q3kPKey0lcQlqlsJgkDNI3CpGa/W+Wrie+4iEYpE1fq5+TqYoGfXck+TUb5RBF2aFm1i6am
wdBll8et+93HJgyq9/zKKl3e6YRDauF3GBkK2n4bVS9I/eKwjgJIEtEg7A5dmK5J9Yr5Y83kY+jS
HizS3wCW1/feN+fY5Z4JYjd9brukphzljlAlZzEMGncHsv8jIg9jkl+jUnhJ6igQpogi6EnVn4LD
Wwo40BOO2rJ1V8wjpnMquGvKK3u6a4dCgEs9LnZZKVabuqjI90Xy+lhYOh+M9gVwWpuDaJRwBFJh
2AWYjUW86r0x//ZX4eL6Lee+8auK5lqNuIiPDae4V6i/+ipVlUxhP5qAajH7S+6fTsRz1m/7e5yg
A/04MXiDS8syVvMwijBpPkLVQbyQ6LjxtZVCEKUbc6Qmz1MVu4O0GMEfj8OjZYjSyCYjQBjvA8JH
/kPOakoQuNbezySf0xGKHtskKG57z44BuSAg1KRfHJ3isiHTVOkitGbZ/l+M2bfO4uC6o4hVRsYf
em3Ch3RQ/ImJWfTnMpi9cYYX9irJ6kZjASC39EtaeuS/dv8sQ6j70cJ+UwyJIsSKiczRWegNWcZ/
oc7BP95P3Zk8TTCoLWOsIWCbmEp1b7HOClxI0dqmKbsN9OlkGGPBCAt7bg5zW98NByfIP7BzUDrY
LhHZMRjEgNLv4JrULaYV4X1Okj1hp7X7nqjuTPlpoy86btiYjOyY/CyIOXEe4cCGPpaxYtj+hlNg
KpGNMFqdWmD3w2QNdbPAAVRI8F7wN3tEDu4HUEj6FYiz1j0Fcmof71947ZQcPxgpMyoBjx6e9WYt
J8Gjmmb9huM94qtg/oEnYoOEIIt7Qb7w52wIUaz2qokt5j7VtdhMghmSw8zU7uqlhAjjpx7huIIn
ZKb0C8KsbYxGPajL4THXZcHHkp4J301JfcY/dBZfUQHKgGyycGkrJj2dvCEBd//2bpc9b4797mvu
kD23+Leh9cXNjfjlh9HxSDfpvQ6JBwUbeJ2wRyR+VWwOjJcuOpqTehS5DyygigfCz//Sf+JkBC2Y
zOD2l7WgT/Ba0OTz6Xd1euS1XCew+ha37LqRpAc6OH1X35hxD0V5MxwmICwGMGN2+ExZ+ie3Ppzm
Dfi9f9m3pc6lyh3lVQZyhGFGZ8IHzzHzrxfYvDicj7KWMLb28fHXggssUgIiZBs+8A2kob7L2BOn
qXyhNUCNdB2dTs/PwT4+brDRTIpsmJGYX3xjJ8j36IAD9uF2h72yaWeRPjUDRvTOGba0WNJPtAt2
pGE7m17ggSLl+XJu53OYm1e6dPj8OFzhkPqHJReIzqq+/a4Og63mXlNbQbMGhf+GqSkIgURy8dAr
eXiS02lPveH5e0o5xouAhEZbuamrYSgiLoGFEspoPN7L6O3MPd6IYQcwjwFwcxTWTsE+VEOzvYng
e0iNYxgL76I+u0dVXuveTLK7NCOguohKOTbxCHVwLMsTp5CYU1A66e2ioAxmJM/DFo8GHr8AGc/S
eay38nfTzl/JkbdclC+DtVg+1Nao+k6oXuMeTx3kbkljihYkwbsxi6gBsjTHahQsmUO7Zu8yKbYa
J9PBCG3ff33uqqC4AbLtAlFlifWT785AuwKtrjRkaSZPsjPovXyzKsj624Cpp/RbGQDZ+HaoQSl6
PJbjYf0bPEBVOhzICEWm9hUgMsU8JldZlHjX1Cla9DcpCkuPA2isrOh8vtdc8Y3sleuHnR80OuJ5
B0p1A1jtJLZu+FCjP8rI2FudMojCO9l0x/lC2F2UquyAxUtHx3WBgHpgEyaIWj4RP4owmgSzJ/+f
nHhDICIMrmPrQnqEgFpfewhj5lwMCqJcdBAYbsWM/8TJ5RXNtLc6gmEH9NrdwYK/HEqom1EC0elM
RdhDQ6fJEjda2VUrUOvsnt2SfVAdsgNXlLanF1wwTGWhXPe9lYoFGjI1FLF70qYQvCND6q7vv4iq
pY0elENba7BCk6Doax9piWft7CNz6lJDpZY0X6xsLuiSEUMNQsjC7ROzMNaj754Lh+nL9gTVTd2K
c1s1ZE7wRmk+RNy8cJemiicByCuLyxH1X7QKihO1bvCGqIjgq6Uoi4DzKDyB1nxFr81Fdl+0yR+n
9/ae419/SRQbmX1Kydtgb4zVaJf7WhPy14fW7V287XWqWzih1N3ARo135z4/7azX5OvmgMvI7aVi
1SBqdnzfEU4Ac3zr5MQBkIZYSJJPtTAomZHTKonNAWi3bNCRzgsVYjxyCIRfpcnizcecTZGyNmZi
cLdsjJKnt4qXpQfSgMfTj39eNubj2z38FrOAd1Q1jjipXc7bIx/qDoAeBVigBZiE6jS9ZOjERl2a
1zKbwFVZFHXskIaf7cwVQpjoeVnhtxGQsWfDIf9RFVruBL11EWxLSJIxfAdgGekO0S3HZlZ/SR+s
fR6izyIRy1tBdmv3JC9u77H7OY8PJa12mNiQnQ8pVSKS1X7g7W2jT0A5/LMsWaccvwEh5a8x+d0w
gzr5jsoaapFyC6Rl0YBx1aSA2/6KDsfzT683jL8CYotPyCocDKlkFvuxIgf6JSXaUQvKyh8AhCDH
KGv0QAXg+GB76zJVWJMCH8h8KAuBeIQE5oOAjUhVOO56CHAgI6p/CWJECT8ykksBjG2lMU8twuwi
j+e1DV9Y3igg+htmLr+I/AEaX0h61G2v1WjoUu4RvwjROvCj2hG4KMUbcOmpBiN9P+fq/j5fYnOZ
JRKlx2FgV5AQshFKeywUZgYxIExUFKlfspXoBDTuH9aAIF0FAdHJwA1FZL5va/K/zgCffftNGJ2p
4GGYi/z2YhvVdih3Vv/naq6Fjyge5cUVX0gLtavVntU+G4OpJyW0rDkH30tWFhT/bpgLvlw7YZB2
y5PbudDY1GK6Q2M2RMqdf9ND0IrU0aW9A9v+wE0YyA1gk9WhGt+N6isqSRw+mSaOLgu14r5Bk/WO
I0nzwLzHrzbBgNTRMJZY136t6nvr38/oecWCQIDLJUt9hI1fq8sM1CZ1ibRCj7/Lz3hbK+iDeCsH
6IFHBAaZQGxlc+76dHa/71FQJOhjfVBFTVuUS2F618ExjevnLR3qUx1+YDBYJIP5nTxbbIDxC0kP
6jXYgdFITBUcofhodVp0nOjGrk6yqUUILF4uVVa9/zh42wCjY1BrKFeb+aaWpkM2JdnuPtC9RwqJ
YXSaONRIiseVTOY0HX0vdlZqG5P7ZnKfuqOALipsolniCGv40XnwWj/Q3O3cFVV43YpS0GhjEK3L
sEXyn1WOclYbFK8V6yfnJPCBV5r1sCyzA3HCn8fKtg1scJlRl4Rmfj8CLZAk5ugHN9TkryLrMz3X
Tr+IYItr3tWPOTQ2DCfdo785pRHNbp/v0EpHv5h5fMEkSZO8RunHrBy14N3jV+4sVhwoYVDN0gTl
FMrKNNy2fRcGkjFVaPRDrnFDrX1aH1z+87hUyRYS12FTzgbJtNHP67zn+2g6LsMJFBSzolK3N2pq
2ITIgf+i9uNg7VNANq0rj8OvkUVCnalR27MtGSln7cBapH6hZPzQDgI7uPr7P9kpQ5d4cOCnbozF
GNvJUjDjv5s2ZMpLJGqLVyGwrO4xmo07vWZ3CIXCSdVWmWU1P7RnQDF+LOcwg68l/Z9Sp6eSM3w/
2mQTVDEUQ0ItOn6nQ5K/VknmHFRtJ82Aw6ZDkK6KR6EqKNg7EhndIdf/hr1p8l5fcpduzKgJHuUC
ywMr/g2ibG8bescJJblnrpAMO378Q0nWI0pYvZUtdI99sBN3MP4/AGeH2hu4zxfsIoVS9NJhTAA7
fzbO+kPTViUk4y0aJXXjb/1Xc9Oo8jhagfQ1vZOkhUZINVU5yN0VRBTbUyxmLMJP1a57HBZreQrf
Hoqt6CiF3gEVIQnYV6pBHsz0voHfb2Kl6aa/Z3DI4dvJzt9lR89GTuJDYSnTY2/RgZRLIP8AHqq+
hx2Aj8W2w5yJcgB/aoXRM68YtgLmr+7ed3/P4vBLddUfo9rlP5UyDpqgJ51WIQndZZNhA3C719+2
SFosh38znL/chnoukUdg2pIycgKoq8GrAlhRZ1Fx/PMbZULfxI8DUqrMEiz5X4WYrsVHs9eqZF85
a2F65CDXO3+ic8rPaWhdV7yoI9fE+BTgzm/XpF49ovGfXZ6BZ/p6KO/tlBnXMPfd+1wNy4nyHq1r
U9Y6jB3MZ1Qi1u7xf3NandAnkjeCHAYw6kE//FCal9xy+nQGdjehbLaVXnT/9lmeuroazLf7L9UP
MjMYYK62I/7C8Wx9k5WKKoUfPTDl9JDmlp90WQ4qBvFjYaMS820QAqWbwvic8kkDPOz/FeNO577A
tsDlKFbnd8hvgkZNJ5/ri8aLeUmJSq7265ypXgx/FCRd4g5ligE074jcUxjK/XsZqxpJ+Ohi3G8b
NtxdrQ5uyXusO+XjUR8YHB3dan8MEIQ7bIi36gUB+rytbfE8Xp0I9iBwv9JvXOGYjXn9sMNXxiP8
CN87GQ3dRBlv1g0R/nhAbjdN2EQspiC2uglZUsuE8VqX0CPqKytwQIPamagCpX58yyymu1pkUWgA
P0bvRk9G3nae3rK1ipNFujGN0v8/D2znz80hEm5npdRjmpX3GyMhxO79e0OjMQKDrKy1HIaxj3/n
914mco1xGvlvEdunM2OPDQglzZTAP/j5BrII2EzvusL7FvW9nWMw4n7gulqNiqi99MEMtU25QG7q
5U9b9Jf/OMt/aec+bPvJ0UHewXUP0Dk6FJWKbodFasc5HWil7VlguQoD43s84eVvoj+xK4EZbo80
g6+vpe6zviPnIdIzn05jr51rJ/cntXXQUkSWNv8iH2wGCthKi8/Lrhe9ztrM4WfLXBVw522uvHqk
Se/GBlUiq1wMpVGO0g6S8h3r6HlStqTzAeuCVwttmV+ZVqh1iXOx2ChpOiCCxgkJP3StkNFXmyL+
dwSB+zem4OfeTvb2u7xX2v8TAHZuzFQ7hzIzVkWKrvI9+ZuD1RW1AEOPff0LuydaaUCOcW3tmADg
J+aWWn8fgXvvo5xcGCmh5Zb2tOTQmUfQ21UkIYkYhYIrXSunUzT+7C+o+emEE/zAFhFcaVBTSDzJ
TJMX2oaWWCarZmrcvRS7Xomt+nTyEVP6ni3j6SnLT3LUZ/q8z6F+2ZkuAIdO95fqhrB9N6K94JT8
5Fd70bjOA/zrNfSpQlpGhyjlVuZkwMdU3bU8EhUfMH03cT8oSgKVvmhojICpWzpE0jgq07RFtzyL
tUpqTNlzZKGupGDdL4aQwovmA7bfl3zd43sQSgE+1D1xN1xxb0wI1nZMSBNUIYnphiyYJPlLTWlD
GG8QOLcfI6bly9rYCCIScWvhPuAs+1SBf2jVD34qiyGp5Ot+Zgt64c5WFTJONFmW0wSxL7ZrLokd
cKaCT+Svoew3xXStgGS45++7pDB/0WmnvgJKJRA40XNgQMdLffcVHPvhVmctxnitgAnhorjOJqbN
uzrLO8m7nX+dC86Z15AGYStn7Trn0iwmnHf70y41IOqZqEWcXXImHyuCddoDlIskxxqSsDEebvLX
N0Z3HqaiKNc4ta0G+1p1Kf+BUeW4HP0cZgyAQvrMfPGKVylo8d2mHY8b2d6LRAmk9M049sriXsjX
LOIfCEdarM8WEGwgIegP+BAhHuSZSKSVe6jtY8JOYQMMZocgvPYxeJHbMbwyb7S/vF5GIrc5FCgc
ZzFdNdKzMoFgzRkF4g9YKqjjO5ekh9o+Ipc1f44yt33ObW+RJoD8O07qwGgKFZRTiRoAXrq7rV8s
iPY+joF+UDdFP7jMPlu4phS2CmL9QRHduDk4EnE+u/xAjBQPP+K8KZW7+J/AyvlgjK/tRlP/JHlm
PkadPYdJmcYu3pGDmxsVDJ7CcywUhorufzaKgm1sCIXHoE6vx1GKoPIZvL62Te4O+nK4onVX21Fk
p5iR/CY3vb8E3Jey1wx1zRh+Nyah2nmt8qTCP3v8Y6LzWVRPYR+cmLPVbUtlfKu9lhBHVQV7QewG
GpXfNmFSmqPKJvqvm+M4nATnnb/JDFR6R0i6lRzPD6VRVrhJalWtmsPlBmwAEo5BTaS4TnLtwW4f
A0uw8j1bbWVWRQONj+9jCmODG71RPfluubl/32wCiMLPQ2kRs8swFtIIj/39Emuko9uL/e5yRfYE
F4jBxckAwcHIPBD/9tgJgUtP4qn+VN7DH7/Cu31VcUejfCFDrKBaCfvy870hoBAEOc7dBa6IQdlS
5v523K5TrXITLAHYQIR+6GvtIicrEQBiUapgLy9x78j9jbGy6ZufIIjMVxb3FJATTsTiLdhnhe0q
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
