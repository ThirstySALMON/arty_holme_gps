// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Tue Sep  8 15:36:16 2026
// Host        : DESKTOP-EALFKFH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/OIE/Desktop/arty_holme_gps/arty_holme/arty_holme.gen/sources_1/ip/blk_sampler_ram/blk_sampler_ram_sim_netlist.v
// Design      : blk_sampler_ram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_sampler_ram,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module blk_sampler_ram
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
  blk_sampler_ram_blk_mem_gen_v8_4_12 U0
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
