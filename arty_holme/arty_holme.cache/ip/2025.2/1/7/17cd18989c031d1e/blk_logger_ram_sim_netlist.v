// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Tue Sep  8 15:33:50 2026
// Host        : DESKTOP-EALFKFH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_logger_ram_sim_netlist.v
// Design      : blk_logger_ram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_logger_ram,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20080)
`pragma protect data_block
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
KyEFpRCuS/Br5YjUwgqSdw==
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
