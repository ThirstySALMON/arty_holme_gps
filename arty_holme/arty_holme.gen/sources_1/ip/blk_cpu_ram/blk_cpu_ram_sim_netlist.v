// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Tue Sep  8 15:33:43 2026
// Host        : DESKTOP-EALFKFH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top blk_cpu_ram -prefix
//               blk_cpu_ram_ blk_cpu_ram_sim_netlist.v
// Design      : blk_cpu_ram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_cpu_ram,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module blk_cpu_ram
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    web,
    addrb,
    dinb,
    doutb,
    rsta_busy,
    rstb_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [15:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [15:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire [15:0]dina;
  wire [15:0]dinb;
  wire [15:0]douta;
  wire [15:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rsta_busy;
  wire rstb;
  wire rstb_busy;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
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
  (* C_DEFAULT_DATA = "8000" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
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
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_cpu_ram.mem" *) 
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
  (* C_USE_DEFAULT_DATA = "1" *) 
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
  blk_cpu_ram_blk_mem_gen_v8_4_12 U0
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
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(rstb),
        .rstb_busy(rstb_busy),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 25616)
`pragma protect data_block
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
T4Nau2JVij6jTYe3U13nmNqsKPMJ13M=
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
