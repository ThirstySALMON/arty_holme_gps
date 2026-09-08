// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Tue Sep  8 15:34:42 2026
// Host        : DESKTOP-EALFKFH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/OIE/Desktop/arty_holme_gps/arty_holme/arty_holme.gen/sources_1/ip/blk_host_fifo/blk_host_fifo_sim_netlist.v
// Design      : blk_host_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_host_fifo,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module blk_host_fifo
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
  blk_host_fifo_blk_mem_gen_v8_4_12 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20496)
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
