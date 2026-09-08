// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Tue Sep  8 15:34:23 2026
// Host        : DESKTOP-EALFKFH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_cpu_stacks_sim_netlist.v
// Design      : blk_cpu_stacks
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_cpu_stacks,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 28752)
`pragma protect data_block
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
A/Mj43iHod5egZayFtOx6CZtkZ1MHFZh
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
