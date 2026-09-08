// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Tue Sep  8 15:33:43 2026
// Host        : DESKTOP-EALFKFH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_cpu_ram_sim_netlist.v
// Design      : blk_cpu_ram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_cpu_ram,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 25936)
`pragma protect data_block
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
Gw==
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
