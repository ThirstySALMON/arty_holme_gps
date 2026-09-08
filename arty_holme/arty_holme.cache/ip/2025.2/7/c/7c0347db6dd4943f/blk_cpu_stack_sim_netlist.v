// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Tue Sep  8 14:34:18 2026
// Host        : DESKTOP-EALFKFH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_cpu_stack_sim_netlist.v
// Design      : blk_cpu_stack
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_cpu_stack,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 28160)
`pragma protect data_block
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
iGA=
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
