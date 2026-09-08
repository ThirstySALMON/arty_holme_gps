// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Tue Sep  8 14:34:19 2026
// Host        : DESKTOP-EALFKFH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/OIE/Desktop/arty_holme_gps/arty_holme/arty_holme.gen/sources_1/ip/blk_cpu_stack/blk_cpu_stack_sim_netlist.v
// Design      : blk_cpu_stack
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_cpu_stack,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module blk_cpu_stack
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [8:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [35:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [35:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [8:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [35:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [35:0]doutb;

  wire [8:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire [35:0]dina;
  wire [35:0]dinb;
  wire [35:0]douta;
  wire [35:0]doutb;
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
  wire [8:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [8:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [35:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "9" *) 
  (* C_ADDRB_WIDTH = "9" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     6.223851 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
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
  (* C_INIT_FILE = "blk_cpu_stack.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "512" *) 
  (* C_READ_DEPTH_B = "512" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "36" *) 
  (* C_READ_WIDTH_B = "36" *) 
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
  (* C_WRITE_DEPTH_A = "512" *) 
  (* C_WRITE_DEPTH_B = "512" *) 
  (* C_WRITE_MODE_A = "READ_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "36" *) 
  (* C_WRITE_WIDTH_B = "36" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_cpu_stack_blk_mem_gen_v8_4_12 U0
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[8:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[8:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[35:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 28128)
`pragma protect data_block
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
ecRBpV0YJZduzYm0PKd9zEdWbj+635eAR42V
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
