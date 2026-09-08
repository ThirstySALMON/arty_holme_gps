// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Tue Sep  8 15:34:23 2026
// Host        : DESKTOP-EALFKFH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top blk_cpu_stacks -prefix
//               blk_cpu_stacks_ blk_cpu_stacks_sim_netlist.v
// Design      : blk_cpu_stacks
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_cpu_stacks,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module blk_cpu_stacks
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [8:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;

  wire [8:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
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
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     5.9043 mW" *) 
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
  (* C_INIT_FILE = "blk_cpu_stacks.mem" *) 
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
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
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
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_cpu_stacks_blk_mem_gen_v8_4_12 U0
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 28448)
`pragma protect data_block
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
c8AVtuU=
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
