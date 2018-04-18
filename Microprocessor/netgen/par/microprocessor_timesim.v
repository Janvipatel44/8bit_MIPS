////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: microprocessor_timesim.v
// /___/   /\     Timestamp: Fri Oct 14 16:30:38 2016
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 5 -pcf microprocessor.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim microprocessor.ncd microprocessor_timesim.v 
// Device	: 3s500efg320-5 (PRODUCTION 1.27 2013-10-13)
// Input file	: microprocessor.ncd
// Output file	: E:\Nishi_3rdsem\LAB\netgen\par\microprocessor_timesim.v
// # of Modules	: 1
// Design Name	: microprocessor
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module microprocessor (
  clk, reset, mem_rw_ex, mem_en_ex, mem_rw_dec, mem_mux_sel_ex, mem_mux_sel_dec, mem_en_dec, B_Bypass, data_out, ans_ex, RW_ex, flag_ex, A, B, data_in
, op_dec, RW_dec
);
  input clk;
  input reset;
  output mem_rw_ex;
  output mem_en_ex;
  input mem_rw_dec;
  output mem_mux_sel_ex;
  input mem_mux_sel_dec;
  input mem_en_dec;
  output [7 : 0] B_Bypass;
  output [7 : 0] data_out;
  output [7 : 0] ans_ex;
  output [4 : 0] RW_ex;
  output [3 : 0] flag_ex;
  input [7 : 0] A;
  input [7 : 0] B;
  input [7 : 0] data_in;
  input [4 : 0] op_dec;
  input [4 : 0] RW_dec;
  wire reset_IBUF_1690;
  wire clk_BUFGP;
  wire mem_mux_sel_ex_OBUF_1692;
  wire data_in_4_IBUF_1693;
  wire data_in_5_IBUF_1696;
  wire A_2_IBUF_1697;
  wire B_2_IBUF_1698;
  wire \And1<2>_0 ;
  wire \Madd_AUX_3_addsub0000_lut<0>_0 ;
  wire N01;
  wire flag_3_mux000065;
  wire flag_3_mux000070;
  wire op_dec_4_IBUF_1704;
  wire op_dec_0_IBUF_1705;
  wire op_dec_1_IBUF_1706;
  wire op_dec_2_IBUF_1707;
  wire flag_3_mux000079_0;
  wire \Madd__AUX_23_lut<0>_0 ;
  wire flag_1_mux0000578_0;
  wire A_7_IBUF_1715;
  wire B_7_IBUF_1716;
  wire N102_0;
  wire RW_ex_0_1719;
  wire \ans_temp<4>20_1720 ;
  wire \ans_temp<4>34_0 ;
  wire ans_temp_cmp_eq0021_0;
  wire \Ls<4>_0 ;
  wire \ans_temp<4>4_0 ;
  wire \ans_temp<4>9_0 ;
  wire \Madd_AUX_5_addsub0000_lut<0>_0 ;
  wire N6;
  wire \ans_temp<4>50_0 ;
  wire data_in_6_IBUF_1729;
  wire Ls_or0000;
  wire B_1_IBUF_1731;
  wire N21;
  wire B_0_IBUF_1733;
  wire A_1_IBUF_1734;
  wire A_0_IBUF_1735;
  wire \Ls<1>_0 ;
  wire mem_en_ex_OBUF_1737;
  wire ans_temp_or0003_0;
  wire ans_temp_or0004;
  wire \Rsa<5>_0 ;
  wire data_in_7_IBUF_1743;
  wire \ans_temp<5>44_0 ;
  wire flag_3_mux00009_0;
  wire RW_ex_1_1746;
  wire \Or1<1>_0 ;
  wire \And1<1>_0 ;
  wire A_5_IBUF_1749;
  wire B_5_IBUF_1750;
  wire N3;
  wire N22;
  wire op_dec_3_IBUF_1756;
  wire RW_ex_2_1759;
  wire \Madd_AUX_6_addsub0000_lut<0>_0 ;
  wire \Madd_AUX_7_addsub0000_lut<0>_0 ;
  wire flag_1_mux0000465_0;
  wire RW_ex_3_1766;
  wire A_3_IBUF_1767;
  wire N60_0;
  wire N121_0;
  wire RW_ex_4_1770;
  wire flag_3_mux0000303_0;
  wire flag_3_mux0000343_0;
  wire flag_3_mux0000383_0;
  wire N4;
  wire flag_3_mux0000178_0;
  wire flag_3_mux0000181_0;
  wire flag_3_mux0000160_1779;
  wire flag_3_mux000051_0;
  wire flag_3_mux0000115_0;
  wire flag_3_mux0000140_0;
  wire flag_3_mux0000202_0;
  wire \Madd__AUX_21_lut<0>_0 ;
  wire N24;
  wire \Madd_AUX_8_addsub0000_lut<0>_0 ;
  wire flag_1_mux0000452_0;
  wire A_6_IBUF_1791;
  wire A_4_IBUF_1792;
  wire N411;
  wire \B<0>_mmx_out4 ;
  wire N49_0;
  wire N50_0;
  wire \Rsa[1] ;
  wire Sh2;
  wire \B<0>_mmx_out2_0 ;
  wire \B<0>_mmx_out_0 ;
  wire \Rsa[2] ;
  wire data_in_2_IBUF_1804;
  wire ans_temp_or0001;
  wire B_4_IBUF_1806;
  wire \ans_temp<2>34_0 ;
  wire \Madd_AUX_16_addsub0001_lut<0>_0 ;
  wire flag_0_and0000_0;
  wire \sub1<5>_0 ;
  wire N7;
  wire \B<0>_mmx_out3 ;
  wire \Madd__AUX_19_lut<0>_0 ;
  wire \sub1<7>_0 ;
  wire \ans_temp<3>50_0 ;
  wire \ans_temp<3>67 ;
  wire Sh21_1823;
  wire N31_0;
  wire ans_temp_cmp_eq0022;
  wire \Rsa<0>_0 ;
  wire ans_temp_or0000;
  wire N86;
  wire \Ls<3>_0 ;
  wire Mmux_Rsa5_0;
  wire \Madd_D2_cy[3] ;
  wire \Rsa<0>20 ;
  wire B_6_IBUF_1838;
  wire c_out_add1_0;
  wire N136;
  wire \Ls<7>31 ;
  wire \Madd_AUX_11_addsub0001_lut<0>_0 ;
  wire \sub1[2] ;
  wire \ans_temp<6>9_0 ;
  wire \ans_temp<6>27 ;
  wire \And1<5>_0 ;
  wire \And1<6>_0 ;
  wire \And1<7>_0 ;
  wire B_3_IBUF_1850;
  wire Sh3;
  wire \ans_temp<5>9_0 ;
  wire \ans_temp<5>27 ;
  wire \B<1>_mmx_out ;
  wire \ans_temp<4>67 ;
  wire \And1[0] ;
  wire flag_3_mux0000325_1858;
  wire N124_0;
  wire flag_3_mux0000255_0;
  wire flag_3_mux0000261_1861;
  wire \Rs<5>_0 ;
  wire \Rs<0>_0 ;
  wire flag_3_mux0000270_0;
  wire N13_0;
  wire \sub1<6>_0 ;
  wire flag_1_mux0000496_0;
  wire \Madd_AUX_13_addsub0001_lut<0>_0 ;
  wire flag_3_mux0000315_0;
  wire flag_1_mux0000531_0;
  wire N134_0;
  wire flag_1_mux00004_0;
  wire flag_1_mux000037_0;
  wire \ans_temp<7>42_0 ;
  wire \ans_temp<7>36_0 ;
  wire \Rs<7>_0 ;
  wire \ans_temp<0>49_0 ;
  wire \ans_temp<0>59_0 ;
  wire N90_0;
  wire flag_1_mux000091_1883;
  wire flag_1_mux000096_0;
  wire \sub1<4>_0 ;
  wire \sub1[1] ;
  wire N120_0;
  wire \Madd_AUX_17_addsub0000_lut<0>_0 ;
  wire flag_3_mux0000368_0;
  wire flag_3_mux0000232_0;
  wire flag_3_mux0000288_1891;
  wire N12_0;
  wire \ans_temp<5>47_1893 ;
  wire \Madd_D2_cy[4] ;
  wire \Madd_D2_cy[1] ;
  wire N76_0;
  wire \Or1<6>_0 ;
  wire N144;
  wire N112_0;
  wire N106;
  wire \ans_temp<6>44_1903 ;
  wire \Rs<6>_0 ;
  wire \Rsa[6] ;
  wire \ans_temp<6>52_0 ;
  wire N132_0;
  wire \Or1<7>_0 ;
  wire \ans_temp<7>14_0 ;
  wire ans_temp_or0002;
  wire \Madd_D2_cy[5] ;
  wire \Madd_AUX_15_addsub0001_lut<0>_0 ;
  wire \Ls<6>_0 ;
  wire N94;
  wire \Ls<7>_0 ;
  wire flag_3_mux0000216_0;
  wire \Or1<5>_0 ;
  wire \Ls<0>_0 ;
  wire flag_1_mux0000331_0;
  wire flag_3_mux000034_0;
  wire N88_0;
  wire flag_3_mux000029_0;
  wire N92;
  wire N311;
  wire flag_3_mux00004_0;
  wire flag_1_mux00009_0;
  wire \Or1<4>_0 ;
  wire flag_1_mux0000218_0;
  wire N96;
  wire N8;
  wire flag_1_mux000070_0;
  wire N142;
  wire data_in_0_IBUF_1936;
  wire data_in_1_IBUF_1937;
  wire data_in_3_IBUF_1938;
  wire flag_1_mux0000150_0;
  wire N122_0;
  wire \ans_temp<2>9_0 ;
  wire \Or1<2>_0 ;
  wire N138;
  wire flag_1_mux0000293_0;
  wire flag_1_mux0000234_1945;
  wire flag_1_mux0000111_0;
  wire flag_1_mux0000203_0;
  wire N114_0;
  wire flag_1_mux0000249_0;
  wire flag_1_mux0000356_0;
  wire flag_1_mux0000402_1951;
  wire N100_0;
  wire N116_0;
  wire flag_1_mux0000163_1954;
  wire flag_3_mux0000101_0;
  wire N130;
  wire flag_1_mux0000352_1958;
  wire flag_1_mux0000198_1959;
  wire flag_1_mux0000625_1960;
  wire flag_1_mux0000377_1962;
  wire \ans_temp<0>4_1963 ;
  wire \ans_temp<3>9_0 ;
  wire \ans_temp<1>4_0 ;
  wire \ans_temp<3>34_0 ;
  wire \ans_temp<2>4_0 ;
  wire \ans_temp<1>66_0 ;
  wire \ans_temp<1>9_0 ;
  wire \ans_temp<1>20_1971 ;
  wire \ans_temp<3>4_0 ;
  wire N59;
  wire \ans_temp<1>46_0 ;
  wire B_Bypass_0_1978;
  wire B_Bypass_1_1979;
  wire \ans_temp<2>20_1980 ;
  wire B_Bypass_2_1982;
  wire B_Bypass_3_1983;
  wire N02;
  wire B_Bypass_4_1985;
  wire B_Bypass_5_1986;
  wire B_Bypass_6_1987;
  wire B_Bypass_7_1988;
  wire N104;
  wire \ans_temp<3>20_1990 ;
  wire \ans_temp<1>77_1991 ;
  wire \ans_temp<7>4_1993 ;
  wire flag_3_mux0000126_0;
  wire flag_3_mux0000106_1995;
  wire flag_3_mux0000131_1996;
  wire \mem_mux_sel_dec/INBUF ;
  wire \data_in<4>/INBUF ;
  wire \ans_temp<2>50_5540 ;
  wire \ans_temp<2>20_pack_1 ;
  wire \mem_mux_sel_ex/O ;
  wire \A<5>/INBUF ;
  wire \A<3>/INBUF ;
  wire flag_3_mux0000255_5268;
  wire \Rs<4>_pack_1 ;
  wire N22_pack_1;
  wire \op_dec<4>/INBUF ;
  wire \clk/INBUF ;
  wire \B<0>/INBUF ;
  wire c_out_add1;
  wire \cin_add1<6>_pack_1 ;
  wire \op_dec<3>/INBUF ;
  wire \ans_temp<0>59_5292 ;
  wire N8_pack_1;
  wire flag_3_mux0000216_5376;
  wire \Ls<2>_pack_1 ;
  wire \A<2>/INBUF ;
  wire \ans_temp<1>46_5340 ;
  wire N88;
  wire \A<1>/INBUF ;
  wire \A<0>/INBUF ;
  wire \B<1>/INBUF ;
  wire \B<0>_mmx_out ;
  wire \ans_temp<0>49_5308 ;
  wire \A<4>/INBUF ;
  wire N100;
  wire flag_1_mux0000377_pack_1;
  wire N114;
  wire flag_1_mux0000163_pack_1;
  wire \ans_temp<4>9_4848 ;
  wire N122;
  wire \Rsa<6>_pack_2 ;
  wire N116;
  wire flag_1_mux0000402_pack_1;
  wire \ans_temp<5>9_5064 ;
  wire \ans_temp<1>4_5057 ;
  wire flag_1_mux0000356_4896;
  wire flag_1_mux0000352_pack_1;
  wire flag_1_mux0000203_4920;
  wire flag_1_mux0000198_pack_1;
  wire \ans_temp<0>30_4992 ;
  wire \ans_temp<0>4_pack_1 ;
  wire \ans_temp<2>9_4656 ;
  wire ans_temp_or0003_4800;
  wire N311_pack_1;
  wire \ans_temp<7>42_5112 ;
  wire ans_temp_or0002_pack_1;
  wire \B<1>_mmx_out_pack_1 ;
  wire flag_ex_1_OBUF_4944;
  wire flag_1_mux0000625_pack_1;
  wire \ans_temp<3>34_5088 ;
  wire ans_temp_or0001_pack_1;
  wire flag_1_mux0000578_4872;
  wire N130_pack_1;
  wire \ans_temp<3>9_5040 ;
  wire ans_temp_or0000_pack_1;
  wire flag_3_mux0000101_4776;
  wire \Or1<3>_pack_1 ;
  wire flag_1_mux0000293_4680;
  wire N138_pack_1;
  wire flag_1_mux0000249_4704;
  wire flag_1_mux0000234_pack_1;
  wire \ans_temp<1>29_5184 ;
  wire \ans_temp<1>20_pack_1 ;
  wire \ans_temp<1>66_5160 ;
  wire \ans_temp<1>9_5153 ;
  wire \sub1[6] ;
  wire \Madd_AUX_14_addsub0001_lut<0>_pack_2 ;
  wire N59_pack_1;
  wire \ans_temp<3>4_5196 ;
  wire \ans_temp<4>4_5136 ;
  wire \ans_temp<2>4_5129 ;
  wire flag_ex_3_OBUF_2604;
  wire N4_pack_1;
  wire \op_dec<0>/INBUF ;
  wire \RW_dec<2>/INBUF ;
  wire flag_1_mux0000465_2485;
  wire \Madd_AUX_2_addsub0000_lut<0>_pack_1 ;
  wire \RW_dec<4>/INBUF ;
  wire N60;
  wire N121;
  wire \RW_dec<3>/INBUF ;
  wire \ans_ex<7>/O ;
  wire \mem_rw_ex/O ;
  wire \ans_temp<5>93 ;
  wire N7_pack_1;
  wire \ans_temp_or0004/F5MUX_2994 ;
  wire ans_temp_or00041_2992;
  wire \ans_temp_or0004/BXINV_2987 ;
  wire ans_temp_or00042_2985;
  wire \Sh2/F5MUX_2822 ;
  wire Sh22_2820;
  wire \Sh2/BXINV_2813 ;
  wire Sh23;
  wire \Rsa<2>/F5MUX_2847 ;
  wire N157;
  wire \Rsa<2>/BXINV_2840 ;
  wire N156;
  wire \ans_temp<7>88 ;
  wire \ans_temp<3>83_3010 ;
  wire \flag_ex_0_OBUF/F5MUX_2896 ;
  wire N163;
  wire \flag_ex_0_OBUF/BXINV_2889 ;
  wire N162;
  wire \op_dec<1>/INBUF ;
  wire flag_1_mux0000452_2722;
  wire N6_pack_1;
  wire \Rsa<1>/F5MUX_2797 ;
  wire N153;
  wire \Rsa<1>/BXINV_2789 ;
  wire N152;
  wire flag_3_mux0000202_2663;
  wire flag_3_mux0000160_pack_1;
  wire \Madd__AUX_18_lut<0>_pack_3 ;
  wire \op_dec<2>/INBUF ;
  wire \clk_BUFGP/BUFG/S_INVNOT ;
  wire \clk_BUFGP/BUFG/I0_INV ;
  wire \ans_temp<2>34_2870 ;
  wire \ans_temp<4>34_2863 ;
  wire \ans_temp<4>95 ;
  wire \ans_temp<6>92 ;
  wire \Rs<2>/F5MUX_2945 ;
  wire N147;
  wire \Rs<2>/BXINV_2937 ;
  wire N146;
  wire \Rs<3>/F5MUX_3043 ;
  wire N159;
  wire \Rs<3>/BXINV_3036 ;
  wire N158;
  wire \N411/F5MUX_2748 ;
  wire \Ls<6>_SW0 ;
  wire \N411/BXINV_2741 ;
  wire \Ls<6>_SW01_2739 ;
  wire \Rs<1>/F5MUX_3068 ;
  wire \Rs<1>1 ;
  wire \Rs<1>/BXINV_3059 ;
  wire \Rs<1>11_3057 ;
  wire N120;
  wire \ans_temp<5>68_3936 ;
  wire \ans_temp<5>47_pack_1 ;
  wire N76;
  wire \Madd_D2_cy<4>_pack_1 ;
  wire N134;
  wire \ans_temp<3>93_3629 ;
  wire flag_1_mux0000531_3612;
  wire N124;
  wire flag_1_mux00004_3660;
  wire flag_1_mux000037_3653;
  wire flag_3_mux0000303_3912;
  wire flag_3_mux0000288_pack_1;
  wire \Rsa[0] ;
  wire flag_3_mux0000181_3532;
  wire N90;
  wire \ans_temp<0>85 ;
  wire flag_3_mux0000343_3516;
  wire flag_3_mux0000325_pack_1;
  wire N31;
  wire Mmux_Rsa5;
  wire flag_1_mux000096_3780;
  wire flag_1_mux000091_pack_1;
  wire flag_3_mux0000270_3564;
  wire flag_3_mux0000261_pack_1;
  wire flag_3_mux0000315_3840;
  wire \sub1<1>_pack_3 ;
  wire \ans_temp<4>83_3792 ;
  wire flag_3_mux0000383_3876;
  wire \Madd_D2_cy<3>_pack_1 ;
  wire flag_0_and0000;
  wire N13;
  wire flag_3_mux0000368_3888;
  wire \And1[5] ;
  wire \And1[6] ;
  wire N112;
  wire N144_pack_1;
  wire flag_3_mux000079_2110;
  wire N01_pack_1;
  wire \reset/INBUF ;
  wire N102;
  wire \Madd__AUX_24_lut<0>_pack_1 ;
  wire \ans_ex<3>/O ;
  wire \ans_ex<4>/O ;
  wire \data_in<5>/INBUF ;
  wire \And1[2] ;
  wire \RW_dec<0>/INBUF ;
  wire \ans_temp<4>50_2208 ;
  wire \ans_temp<4>20_pack_1 ;
  wire \data_in<6>/INBUF ;
  wire N21_pack_1;
  wire \ans_ex<5>/O ;
  wire \ans_temp<5>44_2312 ;
  wire flag_3_mux00009_2305;
  wire \And1[1] ;
  wire N126;
  wire N3_pack_1;
  wire \ans_ex<6>/O ;
  wire \mem_en_dec/INBUF ;
  wire \RW_dec<1>/INBUF ;
  wire \data_in<7>/INBUF ;
  wire \Sh3/F5MUX_3418 ;
  wire N151;
  wire \Sh3/BXINV_3410 ;
  wire N150;
  wire \flag_3_mux000070/F5MUX_3368 ;
  wire flag_3_mux0000701_3366;
  wire \flag_3_mux000070/BXINV_3361 ;
  wire flag_3_mux0000702_3359;
  wire \ans_temp<5>27/F5MUX_3443 ;
  wire \ans_temp<5>27/F ;
  wire \ans_temp<5>27/BXINV_3432 ;
  wire \ans_temp<5>271_3430 ;
  wire \N86/F5MUX_3143 ;
  wire \ans_temp<0>30_SW0 ;
  wire \N86/BXINV_3136 ;
  wire \ans_temp<0>30_SW01_3134 ;
  wire \N136/F5MUX_3243 ;
  wire N161;
  wire \N136/BXINV_3235 ;
  wire N160;
  wire \ans_temp_cmp_eq0022/F5MUX_3118 ;
  wire ans_temp_cmp_eq00221_3116;
  wire \ans_temp_cmp_eq0022/BXINV_3111 ;
  wire \ans_temp_cmp_eq0022/G ;
  wire \Rsa<0>20/F5MUX_3218 ;
  wire \B<0>_mmx_out2_rt_3216 ;
  wire \Rsa<0>20/BXINV_3208 ;
  wire \Rsa<0>201_3206 ;
  wire \sub1<2>/F5MUX_3293 ;
  wire \sub1<2>1 ;
  wire \sub1<2>/BXINV_3286 ;
  wire \sub1<2>11_3284 ;
  wire \ans_temp<3>67/F5MUX_3168 ;
  wire \ans_temp<3>671_3166 ;
  wire \ans_temp<3>67/BXINV_3161 ;
  wire \ans_temp<3>672_3159 ;
  wire \Madd_AUX_13_addsub0001_cy<0>/F5MUX_3193 ;
  wire \Madd_AUX_13_addsub0001_cy<0>1_3191 ;
  wire \Madd_AUX_13_addsub0001_cy<0>/BXINV_3186 ;
  wire \Madd_AUX_13_addsub0001_cy<0>2_3184 ;
  wire \Ls_or0000/F5MUX_3393 ;
  wire \Ls_or0000/F ;
  wire \Ls_or0000/BXINV_3382 ;
  wire Ls_or00001_3380;
  wire \Ls<7>31/F5MUX_3268 ;
  wire N155;
  wire \Ls<7>31/BXINV_3261 ;
  wire N154;
  wire \Ls<5>/F5MUX_3093 ;
  wire N149;
  wire \Ls<5>/BXINV_3085 ;
  wire N148;
  wire \ans_temp<6>27/F5MUX_3343 ;
  wire \ans_temp<6>27/F ;
  wire \ans_temp<6>27/BXINV_3332 ;
  wire \ans_temp<6>271_3330 ;
  wire \Madd_AUX_11_addsub0001_cy<0>/F5MUX_3318 ;
  wire \Madd_AUX_11_addsub0001_cy<0>1_3316 ;
  wire \Madd_AUX_11_addsub0001_cy<0>/BXINV_3311 ;
  wire A_2_IBUF_rt_3309;
  wire \flag_3_mux000065/F5MUX_3493 ;
  wire flag_3_mux0000651_3491;
  wire \flag_3_mux000065/BXINV_3486 ;
  wire flag_3_mux0000652_3484;
  wire \ans_temp<4>67/F5MUX_3468 ;
  wire \ans_temp<4>671_3466 ;
  wire \ans_temp<4>67/BXINV_3461 ;
  wire \ans_temp<4>672_3459 ;
  wire \ans_temp<6>52_4116 ;
  wire \ans_temp<6>44_pack_1 ;
  wire \ans_temp<2>90 ;
  wire flag_1_mux0000496_4068;
  wire N106_pack_1;
  wire N50;
  wire \B<0>_mmx_out2 ;
  wire \sub1[7] ;
  wire \Madd_AUX_15_addsub0001_cy<0>_pack_1 ;
  wire \B<0>_mmx_out3_pack_1 ;
  wire \And1[7] ;
  wire flag_3_mux0000232_4308;
  wire N94_pack_1;
  wire \ans_temp<7>36_4349 ;
  wire \Madd_D2_cy<5>_pack_1 ;
  wire \sub1[5] ;
  wire flag_1_mux0000331_4404;
  wire \ans_temp<7>62_4397 ;
  wire flag_3_mux000034_4419;
  wire flag_3_mux000051_4464;
  wire N92_pack_1;
  wire \ans_temp<6>9_4212 ;
  wire N128;
  wire flag_1_mux0000218_4512;
  wire \Or1<0>_pack_1 ;
  wire flag_1_mux000070_4536;
  wire N96_pack_1;
  wire flag_1_mux00009_4488;
  wire flag_3_mux000029_4481;
  wire \ans_temp<7>14_4179 ;
  wire flag_ex_2_OBUF_4044;
  wire \Rsa[5] ;
  wire \B<0>_mmx_out4_pack_1 ;
  wire flag_3_mux00004_4608;
  wire flag_1_mux0000150_4601;
  wire N49;
  wire \ans_temp<6>81_4584 ;
  wire N142_pack_1;
  wire \B_Bypass<1>/O ;
  wire \B<6>/INBUF ;
  wire \A<6>/INBUF ;
  wire \B_Bypass<0>/O ;
  wire N12;
  wire N02_pack_1;
  wire \B_Bypass<2>/O ;
  wire \B<4>/INBUF ;
  wire \B<7>/INBUF ;
  wire flag_3_mux0000178_5844;
  wire N104_pack_1;
  wire \A<7>/INBUF ;
  wire \B<5>/INBUF ;
  wire \mem_rw_dec/INBUF ;
  wire ans_temp_cmp_eq0021;
  wire N24_pack_1;
  wire \B<2>/INBUF ;
  wire \Madd__AUX_20_lut<0>_pack_1 ;
  wire \B<3>/INBUF ;
  wire \sub1[4] ;
  wire \Madd_AUX_12_addsub0001_lut<0>_pack_2 ;
  wire \data_out<1>/O ;
  wire \RW_ex<0>/O ;
  wire \B_Bypass<4>/O ;
  wire \B_Bypass<5>/O ;
  wire \flag_ex<3>/O ;
  wire \RW_ex<1>/O ;
  wire \B_Bypass<3>/O ;
  wire \data_out<0>/O ;
  wire \data_out<3>/O ;
  wire Sh21_pack_1;
  wire \flag_ex<2>/O ;
  wire \data_out<2>/O ;
  wire \B_Bypass<6>/O ;
  wire \flag_ex<0>/O ;
  wire \ans_temp<3>50_6026 ;
  wire \ans_temp<3>20_pack_1 ;
  wire \Madd__AUX_22_lut<0>_pack_1 ;
  wire \B_Bypass<7>/O ;
  wire \ans_temp<1>84 ;
  wire \ans_temp<1>77_pack_1 ;
  wire \mem_en_ex/O ;
  wire \flag_ex<1>/O ;
  wire \data_out<5>/O ;
  wire \RW_ex<2>/O ;
  wire \data_out<4>/O ;
  wire N132;
  wire \ans_temp<7>4_pack_1 ;
  wire \RW_ex<3>/O ;
  wire \data_in<0>/INBUF ;
  wire flag_3_mux0000126_6252;
  wire \Madd_AUX_4_addsub0000_lut<0>_pack_1 ;
  wire \ans_ex<2>/O ;
  wire flag_3_mux0000140_6396;
  wire flag_3_mux0000131_pack_1;
  wire flag_1_mux0000111;
  wire \And1<0>_pack_1 ;
  wire flag_3_mux0000115_6337;
  wire flag_3_mux0000106_pack_1;
  wire \data_in<2>/INBUF ;
  wire \data_in<3>/INBUF ;
  wire \ans_ex<1>/O ;
  wire \ans_ex<0>/O ;
  wire \data_out<7>/O ;
  wire \Madd_D2_cy<1>_pack_1 ;
  wire \data_in<1>/INBUF ;
  wire \RW_ex<4>/O ;
  wire \data_out<6>/O ;
  wire \mem_mux_sel_dec/IFF/ISR_USED_2011 ;
  wire \mem_mux_sel_dec/IFF/ICLK1INV_2009 ;
  wire \mem_mux_sel_dec/IFF/IDDRIN_MUX_2007 ;
  wire \ans_ex<4>/OUTPUT/OTCLK1INV_2127 ;
  wire ans_ex_4_2139;
  wire \ans_ex<4>/OUTPUT/OFF/OREV_USED_2137 ;
  wire \ans_ex<4>/OUTPUT/OFF/OSR_USED_2135 ;
  wire \ans_ex<4>/OUTPUT/OFF/ODDRIN1_MUX ;
  wire \ans_ex<3>/OUTPUT/OFF/ODDRIN1_MUX ;
  wire \ans_ex<3>/OUTPUT/OFF/OSR_USED_2046 ;
  wire \ans_ex<3>/OUTPUT/OFF/OREV_USED_2048 ;
  wire ans_ex_3_2050;
  wire \ans_ex<3>/OUTPUT/OTCLK1INV_2038 ;
  wire \mem_en_dec/IFF/ISR_USED_2255 ;
  wire \mem_en_dec/IFF/ICLK1INV_2253 ;
  wire \mem_en_dec/IFF/IDDRIN_MUX_2251 ;
  wire \ans_ex<5>/OUTPUT/OFF/ODDRIN1_MUX ;
  wire \ans_ex<5>/OUTPUT/OFF/OSR_USED_2284 ;
  wire \ans_ex<5>/OUTPUT/OFF/OREV_USED_2286 ;
  wire ans_ex_5_2288;
  wire \ans_ex<5>/OUTPUT/OTCLK1INV_2276 ;
  wire \RW_dec<0>/IFF/ISR_USED_2180 ;
  wire \RW_dec<0>/IFF/ICLK1INV_2178 ;
  wire \RW_dec<0>/IFF/IDDRIN_MUX_2176 ;
  wire \ans_ex<6>/OUTPUT/OTCLK1INV_2404 ;
  wire ans_ex_6_2416;
  wire \ans_ex<6>/OUTPUT/OFF/OREV_USED_2414 ;
  wire \ans_ex<6>/OUTPUT/OFF/OSR_USED_2412 ;
  wire \ans_ex<6>/OUTPUT/OFF/ODDRIN1_MUX ;
  wire \RW_dec<1>/IFF/ISR_USED_2329 ;
  wire \RW_dec<1>/IFF/ICLK1INV_2327 ;
  wire \RW_dec<1>/IFF/IDDRIN_MUX_2325 ;
  wire \RW_dec<2>/IFF/ISR_USED_2457 ;
  wire \RW_dec<2>/IFF/ICLK1INV_2455 ;
  wire \RW_dec<2>/IFF/IDDRIN_MUX_2453 ;
  wire \RW_dec<3>/IFF/ISR_USED_2531 ;
  wire \RW_dec<3>/IFF/ICLK1INV_2529 ;
  wire \RW_dec<3>/IFF/IDDRIN_MUX_2527 ;
  wire \ans_ex<7>/OUTPUT/OTCLK1INV_2502 ;
  wire ans_ex_7_2514;
  wire \ans_ex<7>/OUTPUT/OFF/OREV_USED_2512 ;
  wire \ans_ex<7>/OUTPUT/OFF/OSR_USED_2510 ;
  wire \ans_ex<7>/OUTPUT/OFF/ODDRIN1_MUX ;
  wire \mem_rw_ex/OUTPUT/OFF/ODDRIN1_MUX ;
  wire \mem_rw_ex/OUTPUT/OFF/OSR_USED_2625 ;
  wire mem_rw_ex_OBUF_2627;
  wire \mem_rw_ex/OUTPUT/OTCLK1INV_2618 ;
  wire \RW_dec<4>/IFF/ISR_USED_2576 ;
  wire \RW_dec<4>/IFF/ICLK1INV_2574 ;
  wire \RW_dec<4>/IFF/IDDRIN_MUX_2572 ;
  wire \B<0>/IFF/ISR_USED_5481 ;
  wire \B<0>/IFF/ICLK1INV_5479 ;
  wire \B<0>/IFF/IDDRIN_MUX_5477 ;
  wire \B<2>/IFF/ISR_USED_5589 ;
  wire \B<2>/IFF/ICLK1INV_5587 ;
  wire \B<2>/IFF/IDDRIN_MUX_5585 ;
  wire \B<1>/IFF/ISR_USED_5511 ;
  wire \B<1>/IFF/ICLK1INV_5509 ;
  wire \B<1>/IFF/IDDRIN_MUX_5507 ;
  wire \B<3>/IFF/ISR_USED_5643 ;
  wire \B<3>/IFF/ICLK1INV_5641 ;
  wire \B<3>/IFF/IDDRIN_MUX_5639 ;
  wire \B<5>/IFF/ISR_USED_5745 ;
  wire \B<5>/IFF/ICLK1INV_5743 ;
  wire \B<5>/IFF/IDDRIN_MUX_5741 ;
  wire \B<4>/IFF/ISR_USED_5721 ;
  wire \B<4>/IFF/ICLK1INV_5719 ;
  wire \B<4>/IFF/IDDRIN_MUX_5717 ;
  wire \B<6>/IFF/ISR_USED_5769 ;
  wire \B<6>/IFF/ICLK1INV_5767 ;
  wire \B<6>/IFF/IDDRIN_MUX_5765 ;
  wire \B<7>/IFF/ISR_USED_5793 ;
  wire \B<7>/IFF/ICLK1INV_5791 ;
  wire \B<7>/IFF/IDDRIN_MUX_5789 ;
  wire \data_out<0>/OUTPUT/OFF/ODDRIN1_MUX ;
  wire \data_out<0>/OUTPUT/OFF/OSR_USED_5953 ;
  wire data_out_0_5955;
  wire \data_out<0>/OUTPUT/OTCLK1INV_5946 ;
  wire \data_out<1>/OUTPUT/OTCLK1INV_5977 ;
  wire data_out_1_5986;
  wire \data_out<1>/OUTPUT/OFF/OSR_USED_5984 ;
  wire \data_out<1>/OUTPUT/OFF/ODDRIN1_MUX ;
  wire \data_out<2>/OUTPUT/OFF/ODDRIN1_MUX ;
  wire \data_out<2>/OUTPUT/OFF/OSR_USED_6047 ;
  wire data_out_2_6049;
  wire \data_out<2>/OUTPUT/OTCLK1INV_6040 ;
  wire \data_out<3>/OUTPUT/OTCLK1INV_6127 ;
  wire data_out_3_6136;
  wire \data_out<3>/OUTPUT/OFF/OSR_USED_6134 ;
  wire \data_out<3>/OUTPUT/OFF/ODDRIN1_MUX ;
  wire \data_out<4>/OUTPUT/OFF/ODDRIN1_MUX ;
  wire \data_out<4>/OUTPUT/OFF/OSR_USED_6189 ;
  wire data_out_4_6191;
  wire \data_out<4>/OUTPUT/OTCLK1INV_6182 ;
  wire \data_out<5>/OUTPUT/OFF/ODDRIN1_MUX ;
  wire \data_out<5>/OUTPUT/OFF/OSR_USED_6226 ;
  wire data_out_5_6228;
  wire \data_out<5>/OUTPUT/OTCLK1INV_6219 ;
  wire \data_out<6>/OUTPUT/OFF/ODDRIN1_MUX ;
  wire \data_out<6>/OUTPUT/OFF/OSR_USED_6311 ;
  wire data_out_6_6313;
  wire \data_out<6>/OUTPUT/OTCLK1INV_6304 ;
  wire \ans_ex<1>/OUTPUT/OFF/ODDRIN1_MUX ;
  wire \ans_ex<1>/OUTPUT/OFF/OSR_USED_6444 ;
  wire \ans_ex<1>/OUTPUT/OFF/OREV_USED_6446 ;
  wire ans_ex_1_6448;
  wire \ans_ex<1>/OUTPUT/OTCLK1INV_6436 ;
  wire \data_out<7>/OUTPUT/OFF/ODDRIN1_MUX ;
  wire \data_out<7>/OUTPUT/OFF/OSR_USED_6417 ;
  wire data_out_7_6419;
  wire \data_out<7>/OUTPUT/OTCLK1INV_6410 ;
  wire \ans_ex<0>/OUTPUT/OFF/ODDRIN1_MUX ;
  wire \ans_ex<0>/OUTPUT/OFF/OSR_USED_6362 ;
  wire \ans_ex<0>/OUTPUT/OFF/OREV_USED_6364 ;
  wire ans_ex_0_6366;
  wire \ans_ex<0>/OUTPUT/OTCLK1INV_6354 ;
  wire \ans_ex<2>/OUTPUT/OTCLK1INV_6495 ;
  wire ans_ex_2_6507;
  wire \ans_ex<2>/OUTPUT/OFF/OREV_USED_6505 ;
  wire \ans_ex<2>/OUTPUT/OFF/OSR_USED_6503 ;
  wire \ans_ex<2>/OUTPUT/OFF/ODDRIN1_MUX ;
  wire GND;
  wire VCC;
  wire [0 : 0] Madd__AUX_22_lut;
  wire [0 : 0] Madd__AUX_24_lut;
  wire [6 : 6] cin_add1;
  wire [0 : 0] Madd_AUX_2_addsub0000_lut;
  wire [0 : 0] Madd_AUX_4_addsub0000_lut;
  wire [0 : 0] Madd_AUX_15_addsub0001_cy;
  wire [7 : 0] Rs;
  wire [0 : 0] Madd__AUX_18_lut;
  wire [0 : 0] Madd__AUX_20_lut;
  wire [7 : 0] Ls;
  wire [0 : 0] Madd_AUX_12_addsub0001_lut;
  wire [0 : 0] Madd_AUX_11_addsub0001_cy;
  wire [0 : 0] Madd_AUX_13_addsub0001_cy;
  wire [7 : 0] Or1;
  wire [0 : 0] Madd_AUX_14_addsub0001_lut;
  wire [7 : 0] data_out_buff;
  wire [0 : 0] Madd__AUX_19_lut;
  wire [0 : 0] Madd_AUX_17_addsub0000_lut;
  wire [0 : 0] Madd_AUX_13_addsub0001_lut;
  wire [0 : 0] Madd_AUX_6_addsub0000_lut;
  wire [0 : 0] Madd_AUX_7_addsub0000_lut;
  wire [0 : 0] Madd_AUX_3_addsub0000_lut;
  wire [0 : 0] Madd_AUX_8_addsub0000_lut;
  wire [0 : 0] Madd_AUX_16_addsub0001_lut;
  wire [0 : 0] Madd_AUX_15_addsub0001_lut;
  wire [0 : 0] Madd_AUX_5_addsub0000_lut;
  wire [0 : 0] Madd_AUX_11_addsub0001_lut;
  wire [0 : 0] Madd__AUX_21_lut;
  wire [0 : 0] Madd__AUX_23_lut;
  initial $sdf_annotate("netgen/par/microprocessor_timesim.sdf");
  X_IPAD #(
    .LOC ( "PAD232" ))
  \mem_mux_sel_dec/PAD  (
    .PAD(mem_mux_sel_dec)
  );
  X_BUF #(
    .LOC ( "PAD232" ))
  mem_mux_sel_dec_IBUF (
    .I(mem_mux_sel_dec),
    .O(\mem_mux_sel_dec/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD188" ))
  \data_in<4>/PAD  (
    .PAD(data_in[4])
  );
  X_BUF #(
    .LOC ( "PAD188" ))
  data_in_4_IBUF (
    .I(data_in[4]),
    .O(\data_in<4>/INBUF )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y22" ))
  \ans_temp<2>50/YUSED  (
    .I(\ans_temp<2>20_pack_1 ),
    .O(\ans_temp<2>20_1980 )
  );
  X_OPAD #(
    .LOC ( "PAD231" ))
  \mem_mux_sel_ex/PAD  (
    .PAD(mem_mux_sel_ex)
  );
  X_OBUF #(
    .LOC ( "PAD231" ))
  mem_mux_sel_ex_OBUF (
    .I(\mem_mux_sel_ex/O ),
    .O(mem_mux_sel_ex)
  );
  X_IPAD #(
    .LOC ( "PAD169" ))
  \A<5>/PAD  (
    .PAD(A[5])
  );
  X_BUF #(
    .LOC ( "PAD169" ))
  A_5_IBUF (
    .I(A[5]),
    .O(\A<5>/INBUF )
  );
  X_IPAD #(
    .LOC ( "IPAD171" ))
  \A<3>/PAD  (
    .PAD(A[3])
  );
  X_BUF #(
    .LOC ( "IPAD171" ))
  A_3_IBUF (
    .I(A[3]),
    .O(\A<3>/INBUF )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y50" ))
  \flag_3_mux0000255/XUSED  (
    .I(flag_3_mux0000255_5268),
    .O(flag_3_mux0000255_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y50" ))
  \flag_3_mux0000255/YUSED  (
    .I(\Rs<4>_pack_1 ),
    .O(Rs[4])
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y3" ))
  \data_out_buff<7>/YUSED  (
    .I(N22_pack_1),
    .O(N22)
  );
  X_IPAD #(
    .LOC ( "PAD178" ))
  \op_dec<4>/PAD  (
    .PAD(op_dec[4])
  );
  X_BUF #(
    .LOC ( "PAD178" ))
  op_dec_4_IBUF (
    .I(op_dec[4]),
    .O(\op_dec<4>/INBUF )
  );
  X_IPAD #(
    .LOC ( "IPAD28" ))
  \clk/PAD  (
    .PAD(clk)
  );
  X_BUF #(
    .LOC ( "IPAD28" ))
  \clk_BUFGP/IBUFG  (
    .I(clk),
    .O(\clk/INBUF )
  );
  X_IPAD #(
    .LOC ( "IPAD194" ))
  \B<0>/PAD  (
    .PAD(B[0])
  );
  X_BUF #(
    .LOC ( "IPAD194" ))
  B_0_IBUF (
    .I(B[0]),
    .O(\B<0>/INBUF )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y7" ))
  \c_out_add1/XUSED  (
    .I(c_out_add1),
    .O(c_out_add1_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y7" ))
  \c_out_add1/YUSED  (
    .I(\cin_add1<6>_pack_1 ),
    .O(cin_add1[6])
  );
  X_IPAD #(
    .LOC ( "IPAD184" ))
  \op_dec<3>/PAD  (
    .PAD(op_dec[3])
  );
  X_BUF #(
    .LOC ( "IPAD184" ))
  op_dec_3_IBUF (
    .I(op_dec[3]),
    .O(\op_dec<3>/INBUF )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y17" ))
  \ans_temp<0>59/XUSED  (
    .I(\ans_temp<0>59_5292 ),
    .O(\ans_temp<0>59_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y17" ))
  \ans_temp<0>59/YUSED  (
    .I(N8_pack_1),
    .O(N8)
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y31" ))
  \flag_3_mux0000216/XUSED  (
    .I(flag_3_mux0000216_5376),
    .O(flag_3_mux0000216_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y31" ))
  \flag_3_mux0000216/YUSED  (
    .I(\Ls<2>_pack_1 ),
    .O(Ls[2])
  );
  X_IPAD #(
    .LOC ( "PAD172" ))
  \A<2>/PAD  (
    .PAD(A[2])
  );
  X_BUF #(
    .LOC ( "PAD172" ))
  A_2_IBUF (
    .I(A[2]),
    .O(\A<2>/INBUF )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y43" ))
  \ans_temp<1>46/XUSED  (
    .I(\ans_temp<1>46_5340 ),
    .O(\ans_temp<1>46_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y43" ))
  \ans_temp<1>46/YUSED  (
    .I(N88),
    .O(N88_0)
  );
  X_IPAD #(
    .LOC ( "PAD177" ))
  \A<1>/PAD  (
    .PAD(A[1])
  );
  X_BUF #(
    .LOC ( "PAD177" ))
  A_1_IBUF (
    .I(A[1]),
    .O(\A<1>/INBUF )
  );
  X_IPAD #(
    .LOC ( "IPAD174" ))
  \A<0>/PAD  (
    .PAD(A[0])
  );
  X_BUF #(
    .LOC ( "IPAD174" ))
  A_0_IBUF (
    .I(A[0]),
    .O(\A<0>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD197" ))
  \B<1>/PAD  (
    .PAD(B[1])
  );
  X_BUF #(
    .LOC ( "PAD197" ))
  B_1_IBUF (
    .I(B[1]),
    .O(\B<1>/INBUF )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y39" ))
  \B<0>_mmx_out/XUSED  (
    .I(\B<0>_mmx_out ),
    .O(\B<0>_mmx_out_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y39" ))
  \B<0>_mmx_out/YUSED  (
    .I(\ans_temp<0>49_5308 ),
    .O(\ans_temp<0>49_0 )
  );
  X_IPAD #(
    .LOC ( "IPAD170" ))
  \A<4>/PAD  (
    .PAD(A[4])
  );
  X_BUF #(
    .LOC ( "IPAD170" ))
  A_4_IBUF (
    .I(A[4]),
    .O(\A<4>/INBUF )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y50" ))
  \N100/XUSED  (
    .I(N100),
    .O(N100_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y50" ))
  \N100/YUSED  (
    .I(flag_1_mux0000377_pack_1),
    .O(flag_1_mux0000377_1962)
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y38" ))
  \N114/XUSED  (
    .I(N114),
    .O(N114_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y38" ))
  \N114/YUSED  (
    .I(flag_1_mux0000163_pack_1),
    .O(flag_1_mux0000163_1954)
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y28" ))
  \ans_temp<4>9/XUSED  (
    .I(\ans_temp<4>9_4848 ),
    .O(\ans_temp<4>9_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y28" ))
  \ans_temp<4>9/YUSED  (
    .I(Or1[4]),
    .O(\Or1<4>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y42" ))
  \N122/XUSED  (
    .I(N122),
    .O(N122_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y42" ))
  \N122/YUSED  (
    .I(\Rsa<6>_pack_2 ),
    .O(\Rsa[6] )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y33" ))
  \N116/XUSED  (
    .I(N116),
    .O(N116_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y33" ))
  \N116/YUSED  (
    .I(flag_1_mux0000402_pack_1),
    .O(flag_1_mux0000402_1951)
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y48" ))
  \ans_temp<5>9/XUSED  (
    .I(\ans_temp<5>9_5064 ),
    .O(\ans_temp<5>9_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y48" ))
  \ans_temp<5>9/YUSED  (
    .I(\ans_temp<1>4_5057 ),
    .O(\ans_temp<1>4_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y31" ))
  \flag_1_mux0000356/XUSED  (
    .I(flag_1_mux0000356_4896),
    .O(flag_1_mux0000356_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y31" ))
  \flag_1_mux0000356/YUSED  (
    .I(flag_1_mux0000352_pack_1),
    .O(flag_1_mux0000352_1958)
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y16" ))
  \flag_1_mux0000203/XUSED  (
    .I(flag_1_mux0000203_4920),
    .O(flag_1_mux0000203_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y16" ))
  \flag_1_mux0000203/YUSED  (
    .I(flag_1_mux0000198_pack_1),
    .O(flag_1_mux0000198_1959)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y40" ))
  \ans_temp<0>30/YUSED  (
    .I(\ans_temp<0>4_pack_1 ),
    .O(\ans_temp<0>4_1963 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y22" ))
  \ans_temp<2>9/XUSED  (
    .I(\ans_temp<2>9_4656 ),
    .O(\ans_temp<2>9_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y22" ))
  \ans_temp<2>9/YUSED  (
    .I(Or1[2]),
    .O(\Or1<2>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y38" ))
  \ans_temp_or0003/XUSED  (
    .I(ans_temp_or0003_4800),
    .O(ans_temp_or0003_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y38" ))
  \ans_temp_or0003/YUSED  (
    .I(N311_pack_1),
    .O(N311)
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y37" ))
  \ans_temp<7>42/XUSED  (
    .I(\ans_temp<7>42_5112 ),
    .O(\ans_temp<7>42_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y37" ))
  \ans_temp<7>42/YUSED  (
    .I(ans_temp_or0002_pack_1),
    .O(ans_temp_or0002)
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y53" ))
  \Rs<0>/XUSED  (
    .I(Rs[0]),
    .O(\Rs<0>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y53" ))
  \Rs<0>/YUSED  (
    .I(\B<1>_mmx_out_pack_1 ),
    .O(\B<1>_mmx_out )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y13" ))
  \flag_ex_1_OBUF/YUSED  (
    .I(flag_1_mux0000625_pack_1),
    .O(flag_1_mux0000625_1960)
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y21" ))
  \Ls<0>/XUSED  (
    .I(Ls[0]),
    .O(\Ls<0>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y21" ))
  \Ls<0>/YUSED  (
    .I(Ls[7]),
    .O(\Ls<7>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y36" ))
  \ans_temp<3>34/XUSED  (
    .I(\ans_temp<3>34_5088 ),
    .O(\ans_temp<3>34_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y36" ))
  \ans_temp<3>34/YUSED  (
    .I(ans_temp_or0001_pack_1),
    .O(ans_temp_or0001)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y26" ))
  \flag_1_mux0000578/XUSED  (
    .I(flag_1_mux0000578_4872),
    .O(flag_1_mux0000578_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y26" ))
  \flag_1_mux0000578/YUSED  (
    .I(N130_pack_1),
    .O(N130)
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y28" ))
  \ans_temp<3>9/XUSED  (
    .I(\ans_temp<3>9_5040 ),
    .O(\ans_temp<3>9_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y28" ))
  \ans_temp<3>9/YUSED  (
    .I(ans_temp_or0000_pack_1),
    .O(ans_temp_or0000)
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y15" ))
  \flag_3_mux0000101/XUSED  (
    .I(flag_3_mux0000101_4776),
    .O(flag_3_mux0000101_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y15" ))
  \flag_3_mux0000101/YUSED  (
    .I(\Or1<3>_pack_1 ),
    .O(Or1[3])
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y43" ))
  \flag_1_mux0000293/XUSED  (
    .I(flag_1_mux0000293_4680),
    .O(flag_1_mux0000293_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y43" ))
  \flag_1_mux0000293/YUSED  (
    .I(N138_pack_1),
    .O(N138)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y17" ))
  \flag_1_mux0000249/XUSED  (
    .I(flag_1_mux0000249_4704),
    .O(flag_1_mux0000249_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y17" ))
  \flag_1_mux0000249/YUSED  (
    .I(flag_1_mux0000234_pack_1),
    .O(flag_1_mux0000234_1945)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y49" ))
  \ans_temp<1>29/YUSED  (
    .I(\ans_temp<1>20_pack_1 ),
    .O(\ans_temp<1>20_1971 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y49" ))
  \ans_temp<1>66/XUSED  (
    .I(\ans_temp<1>66_5160 ),
    .O(\ans_temp<1>66_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y49" ))
  \ans_temp<1>66/YUSED  (
    .I(\ans_temp<1>9_5153 ),
    .O(\ans_temp<1>9_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y9" ))
  \sub1<6>/XUSED  (
    .I(\sub1[6] ),
    .O(\sub1<6>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y9" ))
  \sub1<6>/YUSED  (
    .I(\Madd_AUX_14_addsub0001_lut<0>_pack_2 ),
    .O(Madd_AUX_14_addsub0001_lut[0])
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y35" ))
  \Ls<4>/XUSED  (
    .I(Ls[4]),
    .O(\Ls<4>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y35" ))
  \Ls<4>/YUSED  (
    .I(N59_pack_1),
    .O(N59)
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y32" ))
  \ans_temp<3>4/XUSED  (
    .I(\ans_temp<3>4_5196 ),
    .O(\ans_temp<3>4_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y30" ))
  \ans_temp<4>4/XUSED  (
    .I(\ans_temp<4>4_5136 ),
    .O(\ans_temp<4>4_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y30" ))
  \ans_temp<4>4/YUSED  (
    .I(\ans_temp<2>4_5129 ),
    .O(\ans_temp<2>4_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y24" ))
  \flag_ex_3_OBUF/YUSED  (
    .I(N4_pack_1),
    .O(N4)
  );
  X_IPAD #(
    .LOC ( "PAD187" ))
  \op_dec<0>/PAD  (
    .PAD(op_dec[0])
  );
  X_BUF #(
    .LOC ( "PAD187" ))
  op_dec_0_IBUF (
    .I(op_dec[0]),
    .O(\op_dec<0>/INBUF )
  );
  X_IPAD #(
    .LOC ( "IPAD214" ))
  \RW_dec<2>/PAD  (
    .PAD(RW_dec[2])
  );
  X_BUF #(
    .LOC ( "IPAD214" ))
  RW_dec_2_IBUF (
    .I(RW_dec[2]),
    .O(\RW_dec<2>/INBUF )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y12" ))
  \flag_1_mux0000465/XUSED  (
    .I(flag_1_mux0000465_2485),
    .O(flag_1_mux0000465_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y12" ))
  \flag_1_mux0000465/YUSED  (
    .I(\Madd_AUX_2_addsub0000_lut<0>_pack_1 ),
    .O(Madd_AUX_2_addsub0000_lut[0])
  );
  X_IPAD #(
    .LOC ( "PAD220" ))
  \RW_dec<4>/PAD  (
    .PAD(RW_dec[4])
  );
  X_BUF #(
    .LOC ( "PAD220" ))
  RW_dec_4_IBUF (
    .I(RW_dec[4]),
    .O(\RW_dec<4>/INBUF )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y32" ))
  \N60/XUSED  (
    .I(N60),
    .O(N60_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y32" ))
  \N60/YUSED  (
    .I(N121),
    .O(N121_0)
  );
  X_IPAD #(
    .LOC ( "IPAD209" ))
  \RW_dec<3>/PAD  (
    .PAD(RW_dec[3])
  );
  X_BUF #(
    .LOC ( "IPAD209" ))
  RW_dec_3_IBUF (
    .I(RW_dec[3]),
    .O(\RW_dec<3>/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD196" ))
  \ans_ex<7>/PAD  (
    .PAD(ans_ex[7])
  );
  X_OBUF #(
    .LOC ( "PAD196" ))
  ans_ex_7_OBUF (
    .I(\ans_ex<7>/O ),
    .O(ans_ex[7])
  );
  X_OPAD #(
    .LOC ( "PAD229" ))
  \mem_rw_ex/PAD  (
    .PAD(mem_rw_ex)
  );
  X_OBUF #(
    .LOC ( "PAD229" ))
  mem_rw_ex_OBUF (
    .I(\mem_rw_ex/O ),
    .O(mem_rw_ex)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y42" ))
  \ans_temp<5>93/YUSED  (
    .I(N7_pack_1),
    .O(N7)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y53" ))
  \ans_temp_or0004/XUSED  (
    .I(\ans_temp_or0004/F5MUX_2994 ),
    .O(ans_temp_or0004)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X0Y53" ))
  \ans_temp_or0004/F5MUX  (
    .IA(ans_temp_or00042_2985),
    .IB(ans_temp_or00041_2992),
    .SEL(\ans_temp_or0004/BXINV_2987 ),
    .O(\ans_temp_or0004/F5MUX_2994 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y53" ))
  \ans_temp_or0004/BXINV  (
    .I(op_dec_4_IBUF_1704),
    .O(\ans_temp_or0004/BXINV_2987 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y3" ))
  \Sh2/XUSED  (
    .I(\Sh2/F5MUX_2822 ),
    .O(Sh2)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X3Y3" ))
  \Sh2/F5MUX  (
    .IA(Sh23),
    .IB(Sh22_2820),
    .SEL(\Sh2/BXINV_2813 ),
    .O(\Sh2/F5MUX_2822 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y3" ))
  \Sh2/BXINV  (
    .I(B_1_IBUF_1731),
    .O(\Sh2/BXINV_2813 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y37" ))
  \Rsa<2>/XUSED  (
    .I(\Rsa<2>/F5MUX_2847 ),
    .O(\Rsa[2] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X3Y37" ))
  \Rsa<2>/F5MUX  (
    .IA(N156),
    .IB(N157),
    .SEL(\Rsa<2>/BXINV_2840 ),
    .O(\Rsa<2>/F5MUX_2847 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y37" ))
  \Rsa<2>/BXINV  (
    .I(B_2_IBUF_1698),
    .O(\Rsa<2>/BXINV_2840 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X0Y6" ))
  \flag_ex_0_OBUF/F5MUX  (
    .IA(N162),
    .IB(N163),
    .SEL(\flag_ex_0_OBUF/BXINV_2889 ),
    .O(\flag_ex_0_OBUF/F5MUX_2896 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y6" ))
  \flag_ex_0_OBUF/BXINV  (
    .I(op_dec_0_IBUF_1705),
    .O(\flag_ex_0_OBUF/BXINV_2889 )
  );
  X_IPAD #(
    .LOC ( "IPAD189" ))
  \op_dec<1>/PAD  (
    .PAD(op_dec[1])
  );
  X_BUF #(
    .LOC ( "IPAD189" ))
  op_dec_1_IBUF (
    .I(op_dec[1]),
    .O(\op_dec<1>/INBUF )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y15" ))
  \flag_1_mux0000452/XUSED  (
    .I(flag_1_mux0000452_2722),
    .O(flag_1_mux0000452_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y15" ))
  \flag_1_mux0000452/YUSED  (
    .I(N6_pack_1),
    .O(N6)
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y41" ))
  \Rsa<1>/XUSED  (
    .I(\Rsa<1>/F5MUX_2797 ),
    .O(\Rsa[1] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X1Y41" ))
  \Rsa<1>/F5MUX  (
    .IA(N152),
    .IB(N153),
    .SEL(\Rsa<1>/BXINV_2789 ),
    .O(\Rsa<1>/F5MUX_2797 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y41" ))
  \Rsa<1>/BXINV  (
    .I(B_2_IBUF_1698),
    .O(\Rsa<1>/BXINV_2789 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y34" ))
  \flag_3_mux0000202/XUSED  (
    .I(flag_3_mux0000202_2663),
    .O(flag_3_mux0000202_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y34" ))
  \flag_3_mux0000202/YUSED  (
    .I(flag_3_mux0000160_pack_1),
    .O(flag_3_mux0000160_1779)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y27" ))
  \Madd__AUX_19_lut<0>/XUSED  (
    .I(Madd__AUX_19_lut[0]),
    .O(\Madd__AUX_19_lut<0>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y27" ))
  \Madd__AUX_19_lut<0>/YUSED  (
    .I(\Madd__AUX_18_lut<0>_pack_3 ),
    .O(Madd__AUX_18_lut[0])
  );
  X_IPAD #(
    .LOC ( "PAD186" ))
  \op_dec<2>/PAD  (
    .PAD(op_dec[2])
  );
  X_BUF #(
    .LOC ( "PAD186" ))
  op_dec_2_IBUF (
    .I(op_dec[2]),
    .O(\op_dec<2>/INBUF )
  );
  X_BUFGMUX #(
    .LOC ( "BUFGMUX_X2Y10" ))
  \clk_BUFGP/BUFG  (
    .I0(\clk_BUFGP/BUFG/I0_INV ),
    .I1(GND),
    .S(\clk_BUFGP/BUFG/S_INVNOT ),
    .O(clk_BUFGP)
  );
  X_INV #(
    .LOC ( "BUFGMUX_X2Y10" ))
  \clk_BUFGP/BUFG/SINV  (
    .I(1'b1),
    .O(\clk_BUFGP/BUFG/S_INVNOT )
  );
  X_BUF #(
    .LOC ( "BUFGMUX_X2Y10" ))
  \clk_BUFGP/BUFG/I0_USED  (
    .I(\clk/INBUF ),
    .O(\clk_BUFGP/BUFG/I0_INV )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y48" ))
  \ans_temp<2>34/XUSED  (
    .I(\ans_temp<2>34_2870 ),
    .O(\ans_temp<2>34_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y48" ))
  \ans_temp<2>34/YUSED  (
    .I(\ans_temp<4>34_2863 ),
    .O(\ans_temp<4>34_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y45" ))
  \Rs<2>/XUSED  (
    .I(\Rs<2>/F5MUX_2945 ),
    .O(Rs[2])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X0Y45" ))
  \Rs<2>/F5MUX  (
    .IA(N146),
    .IB(N147),
    .SEL(\Rs<2>/BXINV_2937 ),
    .O(\Rs<2>/F5MUX_2945 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y45" ))
  \Rs<2>/BXINV  (
    .I(B_2_IBUF_1698),
    .O(\Rs<2>/BXINV_2937 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y52" ))
  \Rs<3>/XUSED  (
    .I(\Rs<3>/F5MUX_3043 ),
    .O(Rs[3])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X1Y52" ))
  \Rs<3>/F5MUX  (
    .IA(N158),
    .IB(N159),
    .SEL(\Rs<3>/BXINV_3036 ),
    .O(\Rs<3>/F5MUX_3043 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y52" ))
  \Rs<3>/BXINV  (
    .I(B_2_IBUF_1698),
    .O(\Rs<3>/BXINV_3036 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y20" ))
  \N411/XUSED  (
    .I(\N411/F5MUX_2748 ),
    .O(N411)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X3Y20" ))
  \N411/F5MUX  (
    .IA(\Ls<6>_SW01_2739 ),
    .IB(\Ls<6>_SW0 ),
    .SEL(\N411/BXINV_2741 ),
    .O(\N411/F5MUX_2748 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y20" ))
  \N411/BXINV  (
    .I(N121_0),
    .O(\N411/BXINV_2741 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y54" ))
  \Rs<1>/XUSED  (
    .I(\Rs<1>/F5MUX_3068 ),
    .O(Rs[1])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X1Y54" ))
  \Rs<1>/F5MUX  (
    .IA(\Rs<1>11_3057 ),
    .IB(\Rs<1>1 ),
    .SEL(\Rs<1>/BXINV_3059 ),
    .O(\Rs<1>/F5MUX_3068 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y54" ))
  \Rs<1>/BXINV  (
    .I(B_2_IBUF_1698),
    .O(\Rs<1>/BXINV_3059 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y18" ))
  \N120/XUSED  (
    .I(N120),
    .O(N120_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y18" ))
  \N120/YUSED  (
    .I(Madd_AUX_17_addsub0000_lut[0]),
    .O(\Madd_AUX_17_addsub0000_lut<0>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y51" ))
  \ans_temp<5>68/YUSED  (
    .I(\ans_temp<5>47_pack_1 ),
    .O(\ans_temp<5>47_1893 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y8" ))
  \N76/XUSED  (
    .I(N76),
    .O(N76_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y8" ))
  \N76/YUSED  (
    .I(\Madd_D2_cy<4>_pack_1 ),
    .O(\Madd_D2_cy[4] )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y42" ))
  \N134/XUSED  (
    .I(N134),
    .O(N134_0)
  );
  X_LUT4 #(
    .INIT ( 16'hA080 ),
    .LOC ( "SLICE_X13Y1" ))
  \data_out_buff<5>1  (
    .ADR0(A_5_IBUF_1749),
    .ADR1(op_dec_3_IBUF_1756),
    .ADR2(op_dec_4_IBUF_1704),
    .ADR3(N22),
    .O(data_out_buff[5])
  );
  X_LUT4 #(
    .INIT ( 16'hE000 ),
    .LOC ( "SLICE_X13Y1" ))
  \data_out_buff<4>1  (
    .ADR0(N22),
    .ADR1(op_dec_3_IBUF_1756),
    .ADR2(A_4_IBUF_1792),
    .ADR3(op_dec_4_IBUF_1704),
    .O(data_out_buff[4])
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y8" ))
  \flag_1_mux0000531/XUSED  (
    .I(flag_1_mux0000531_3612),
    .O(flag_1_mux0000531_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y8" ))
  \flag_1_mux0000531/YUSED  (
    .I(N124),
    .O(N124_0)
  );
  X_LUT4 #(
    .INIT ( 16'h5A5A ),
    .LOC ( "SLICE_X0Y18" ))
  \Madd_AUX_17_addsub0000_lut<0>1  (
    .ADR0(A_0_IBUF_1735),
    .ADR1(VCC),
    .ADR2(B_0_IBUF_1733),
    .ADR3(VCC),
    .O(Madd_AUX_17_addsub0000_lut[0])
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y17" ))
  \flag_1_mux00004/XUSED  (
    .I(flag_1_mux00004_3660),
    .O(flag_1_mux00004_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y17" ))
  \flag_1_mux00004/YUSED  (
    .I(flag_1_mux000037_3653),
    .O(flag_1_mux000037_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y37" ))
  \flag_3_mux0000303/XUSED  (
    .I(flag_3_mux0000303_3912),
    .O(flag_3_mux0000303_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y37" ))
  \flag_3_mux0000303/YUSED  (
    .I(flag_3_mux0000288_pack_1),
    .O(flag_3_mux0000288_1891)
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y45" ))
  \Rsa<0>/XUSED  (
    .I(\Rsa[0] ),
    .O(\Rsa<0>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y45" ))
  \Rsa<0>/YUSED  (
    .I(flag_3_mux0000181_3532),
    .O(flag_3_mux0000181_0)
  );
  X_LUT4 #(
    .INIT ( 16'h711E ),
    .LOC ( "SLICE_X0Y18" ))
  flag_3_mux0000368_SW1 (
    .ADR0(B_1_IBUF_1731),
    .ADR1(A_1_IBUF_1734),
    .ADR2(B_0_IBUF_1733),
    .ADR3(A_0_IBUF_1735),
    .O(N120)
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y36" ))
  \N90/XUSED  (
    .I(N90),
    .O(N90_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y12" ))
  \flag_3_mux0000343/XUSED  (
    .I(flag_3_mux0000343_3516),
    .O(flag_3_mux0000343_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y12" ))
  \flag_3_mux0000343/YUSED  (
    .I(flag_3_mux0000325_pack_1),
    .O(flag_3_mux0000325_1858)
  );
  X_LUT4 #(
    .INIT ( 16'hAFA0 ),
    .LOC ( "SLICE_X0Y34" ))
  Sh411 (
    .ADR0(A_2_IBUF_1697),
    .ADR1(VCC),
    .ADR2(B_1_IBUF_1731),
    .ADR3(A_4_IBUF_1792),
    .O(N31)
  );
  X_LUT4 #(
    .INIT ( 16'hCACA ),
    .LOC ( "SLICE_X0Y34" ))
  Mmux_Rsa9 (
    .ADR0(N50_0),
    .ADR1(\B<0>_mmx_out4 ),
    .ADR2(B_1_IBUF_1731),
    .ADR3(VCC),
    .O(Mmux_Rsa5)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y34" ))
  \N31/XUSED  (
    .I(N31),
    .O(N31_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y34" ))
  \N31/YUSED  (
    .I(Mmux_Rsa5),
    .O(Mmux_Rsa5_0)
  );
  X_LUT4 #(
    .INIT ( 16'h135F ),
    .LOC ( "SLICE_X1Y1" ))
  flag_1_mux000091 (
    .ADR0(A_3_IBUF_1767),
    .ADR1(A_4_IBUF_1792),
    .ADR2(B_3_IBUF_1850),
    .ADR3(B_4_IBUF_1806),
    .O(flag_1_mux000091_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h0400 ),
    .LOC ( "SLICE_X1Y1" ))
  flag_1_mux000096 (
    .ADR0(\And1<1>_0 ),
    .ADR1(N01),
    .ADR2(\And1<2>_0 ),
    .ADR3(flag_1_mux000091_1883),
    .O(flag_1_mux000096_3780)
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y1" ))
  \flag_1_mux000096/XUSED  (
    .I(flag_1_mux000096_3780),
    .O(flag_1_mux000096_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y1" ))
  \flag_1_mux000096/YUSED  (
    .I(flag_1_mux000091_pack_1),
    .O(flag_1_mux000091_1883)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y52" ))
  \flag_3_mux0000270/XUSED  (
    .I(flag_3_mux0000270_3564),
    .O(flag_3_mux0000270_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y52" ))
  \flag_3_mux0000270/YUSED  (
    .I(flag_3_mux0000261_pack_1),
    .O(flag_3_mux0000261_1861)
  );
  X_LUT4 #(
    .INIT ( 16'h6966 ),
    .LOC ( "SLICE_X0Y4" ))
  \sub1<1>1  (
    .ADR0(B_1_IBUF_1731),
    .ADR1(A_1_IBUF_1734),
    .ADR2(A_0_IBUF_1735),
    .ADR3(B_0_IBUF_1733),
    .O(\sub1<1>_pack_3 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y4" ))
  \flag_3_mux0000315/XUSED  (
    .I(flag_3_mux0000315_3840),
    .O(flag_3_mux0000315_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y4" ))
  \flag_3_mux0000315/YUSED  (
    .I(\sub1<1>_pack_3 ),
    .O(\sub1[1] )
  );
  X_LUT4 #(
    .INIT ( 16'hFFEA ),
    .LOC ( "SLICE_X2Y43" ))
  \ans_temp<4>83  (
    .ADR0(\ans_temp<4>67 ),
    .ADR1(N7),
    .ADR2(\sub1<4>_0 ),
    .ADR3(\ans_temp<4>50_0 ),
    .O(\ans_temp<4>83_3792 )
  );
  X_LUT4 #(
    .INIT ( 16'h6996 ),
    .LOC ( "SLICE_X0Y4" ))
  flag_3_mux0000315 (
    .ADR0(B_0_IBUF_1733),
    .ADR1(A_0_IBUF_1735),
    .ADR2(\sub1[2] ),
    .ADR3(\sub1[1] ),
    .O(flag_3_mux0000315_3840)
  );
  X_LUT4 #(
    .INIT ( 16'h6996 ),
    .LOC ( "SLICE_X0Y24" ))
  flag_3_mux0000383 (
    .ADR0(Madd__AUX_22_lut[0]),
    .ADR1(\Madd__AUX_23_lut<0>_0 ),
    .ADR2(Madd__AUX_24_lut[0]),
    .ADR3(flag_3_mux0000368_0),
    .O(flag_3_mux0000383_3876)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y24" ))
  \flag_3_mux0000383/XUSED  (
    .I(flag_3_mux0000383_3876),
    .O(flag_3_mux0000383_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y7" ))
  \Madd_AUX_13_addsub0001_lut<0>/XUSED  (
    .I(Madd_AUX_13_addsub0001_lut[0]),
    .O(\Madd_AUX_13_addsub0001_lut<0>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y7" ))
  \Madd_AUX_13_addsub0001_lut<0>/YUSED  (
    .I(\Madd_D2_cy<3>_pack_1 ),
    .O(\Madd_D2_cy[3] )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y44" ))
  \flag_0_and0000/XUSED  (
    .I(flag_0_and0000),
    .O(flag_0_and0000_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y44" ))
  \flag_0_and0000/YUSED  (
    .I(N13),
    .O(N13_0)
  );
  X_LUT4 #(
    .INIT ( 16'h6996 ),
    .LOC ( "SLICE_X1Y25" ))
  flag_3_mux0000368 (
    .ADR0(Madd__AUX_20_lut[0]),
    .ADR1(\Madd__AUX_21_lut<0>_0 ),
    .ADR2(\Madd_AUX_3_addsub0000_lut<0>_0 ),
    .ADR3(N120_0),
    .O(flag_3_mux0000368_3888)
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y25" ))
  \flag_3_mux0000368/XUSED  (
    .I(flag_3_mux0000368_3888),
    .O(flag_3_mux0000368_0)
  );
  X_LUT4 #(
    .INIT ( 16'hCC00 ),
    .LOC ( "SLICE_X1Y5" ))
  \And1<5>1  (
    .ADR0(VCC),
    .ADR1(B_5_IBUF_1750),
    .ADR2(VCC),
    .ADR3(A_5_IBUF_1749),
    .O(\And1[5] )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y5" ))
  \Madd_AUX_6_addsub0000_lut<0>/XUSED  (
    .I(Madd_AUX_6_addsub0000_lut[0]),
    .O(\Madd_AUX_6_addsub0000_lut<0>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y5" ))
  \Madd_AUX_6_addsub0000_lut<0>/YUSED  (
    .I(\And1[5] ),
    .O(\And1<5>_0 )
  );
  X_LUT4 #(
    .INIT ( 16'h33CC ),
    .LOC ( "SLICE_X1Y5" ))
  \Madd_AUX_6_addsub0000_lut<0>1  (
    .ADR0(VCC),
    .ADR1(B_5_IBUF_1750),
    .ADR2(VCC),
    .ADR3(A_5_IBUF_1749),
    .O(Madd_AUX_6_addsub0000_lut[0])
  );
  X_BUF #(
    .LOC ( "SLICE_X11Y2" ))
  \Or1<6>/XUSED  (
    .I(Or1[6]),
    .O(\Or1<6>_0 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFCC ),
    .LOC ( "SLICE_X11Y2" ))
  \Or1<6>1  (
    .ADR0(VCC),
    .ADR1(B_6_IBUF_1838),
    .ADR2(VCC),
    .ADR3(A_6_IBUF_1791),
    .O(Or1[6])
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y0" ))
  \Madd_AUX_7_addsub0000_lut<0>/XUSED  (
    .I(Madd_AUX_7_addsub0000_lut[0]),
    .O(\Madd_AUX_7_addsub0000_lut<0>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y0" ))
  \Madd_AUX_7_addsub0000_lut<0>/YUSED  (
    .I(\And1[6] ),
    .O(\And1<6>_0 )
  );
  X_LUT4 #(
    .INIT ( 16'h4080 ),
    .LOC ( "SLICE_X1Y51" ))
  \ans_temp<1>77_SW0  (
    .ADR0(A_1_IBUF_1734),
    .ADR1(flag_0_and0000_0),
    .ADR2(op_dec_0_IBUF_1705),
    .ADR3(N144),
    .O(N112)
  );
  X_LUT4 #(
    .INIT ( 16'hD2D2 ),
    .LOC ( "SLICE_X1Y51" ))
  \ans_temp<1>77_SW0_SW0  (
    .ADR0(B_0_IBUF_1733),
    .ADR1(A_0_IBUF_1735),
    .ADR2(B_1_IBUF_1731),
    .ADR3(VCC),
    .O(N144_pack_1)
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y51" ))
  \N112/XUSED  (
    .I(N112),
    .O(N112_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y51" ))
  \N112/YUSED  (
    .I(N144_pack_1),
    .O(N144)
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y4" ))
  \flag_3_mux000079/XUSED  (
    .I(flag_3_mux000079_2110),
    .O(flag_3_mux000079_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y4" ))
  \flag_3_mux000079/YUSED  (
    .I(N01_pack_1),
    .O(N01)
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ),
    .LOC ( "SLICE_X1Y37" ))
  flag_3_mux0000303 (
    .ADR0(flag_3_mux0000288_1891),
    .ADR1(flag_3_mux0000202_0),
    .ADR2(flag_3_mux0000270_0),
    .ADR3(flag_3_mux0000232_0),
    .O(flag_3_mux0000303_3912)
  );
  X_IPAD #(
    .LOC ( "IPAD228" ))
  \reset/PAD  (
    .PAD(reset)
  );
  X_BUF #(
    .LOC ( "IPAD228" ))
  reset_IBUF (
    .I(reset),
    .O(\reset/INBUF )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y16" ))
  \N102/XUSED  (
    .I(N102),
    .O(N102_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y16" ))
  \N102/YUSED  (
    .I(\Madd__AUX_24_lut<0>_pack_1 ),
    .O(Madd__AUX_24_lut[0])
  );
  X_OPAD #(
    .LOC ( "PAD203" ))
  \ans_ex<3>/PAD  (
    .PAD(ans_ex[3])
  );
  X_OBUF #(
    .LOC ( "PAD203" ))
  ans_ex_3_OBUF (
    .I(\ans_ex<3>/O ),
    .O(ans_ex[3])
  );
  X_OPAD #(
    .LOC ( "PAD207" ))
  \ans_ex<4>/PAD  (
    .PAD(ans_ex[4])
  );
  X_OBUF #(
    .LOC ( "PAD207" ))
  ans_ex_4_OBUF (
    .I(\ans_ex<4>/O ),
    .O(ans_ex[4])
  );
  X_IPAD #(
    .LOC ( "PAD192" ))
  \data_in<5>/PAD  (
    .PAD(data_in[5])
  );
  X_BUF #(
    .LOC ( "PAD192" ))
  data_in_5_IBUF (
    .I(data_in[5]),
    .O(\data_in<5>/INBUF )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y0" ))
  \And1<2>/XUSED  (
    .I(\And1[2] ),
    .O(\And1<2>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y0" ))
  \And1<2>/YUSED  (
    .I(Madd_AUX_3_addsub0000_lut[0]),
    .O(\Madd_AUX_3_addsub0000_lut<0>_0 )
  );
  X_IPAD #(
    .LOC ( "IPAD224" ))
  \RW_dec<0>/PAD  (
    .PAD(RW_dec[0])
  );
  X_BUF #(
    .LOC ( "IPAD224" ))
  RW_dec_0_IBUF (
    .I(RW_dec[0]),
    .O(\RW_dec<0>/INBUF )
  );
  X_LUT4 #(
    .INIT ( 16'hECEC ),
    .LOC ( "SLICE_X0Y51" ))
  \ans_temp<5>47  (
    .ADR0(\Rs<5>_0 ),
    .ADR1(\ans_temp<5>44_0 ),
    .ADR2(ans_temp_cmp_eq0022),
    .ADR3(VCC),
    .O(\ans_temp<5>47_pack_1 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y39" ))
  \ans_temp<4>50/XUSED  (
    .I(\ans_temp<4>50_2208 ),
    .O(\ans_temp<4>50_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y39" ))
  \ans_temp<4>50/YUSED  (
    .I(\ans_temp<4>20_pack_1 ),
    .O(\ans_temp<4>20_1720 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFF8 ),
    .LOC ( "SLICE_X0Y51" ))
  \ans_temp<5>68  (
    .ADR0(Ls[5]),
    .ADR1(ans_temp_cmp_eq0021_0),
    .ADR2(\ans_temp<5>47_1893 ),
    .ADR3(\ans_temp<5>27 ),
    .O(\ans_temp<5>68_3936 )
  );
  X_IPAD #(
    .LOC ( "PAD217" ))
  \data_in<6>/PAD  (
    .PAD(data_in[6])
  );
  X_BUF #(
    .LOC ( "PAD217" ))
  data_in_6_IBUF (
    .I(data_in[6]),
    .O(\data_in<6>/INBUF )
  );
  X_LUT4 #(
    .INIT ( 16'h0100 ),
    .LOC ( "SLICE_X1Y8" ))
  \Madd_D2_cy<4>11  (
    .ADR0(B_2_IBUF_1698),
    .ADR1(B_3_IBUF_1850),
    .ADR2(B_4_IBUF_1806),
    .ADR3(\Madd_D2_cy[1] ),
    .O(\Madd_D2_cy<4>_pack_1 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y55" ))
  \Ls<1>/XUSED  (
    .I(Ls[1]),
    .O(\Ls<1>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y55" ))
  \Ls<1>/YUSED  (
    .I(N21_pack_1),
    .O(N21)
  );
  X_LUT4 #(
    .INIT ( 16'h2882 ),
    .LOC ( "SLICE_X1Y37" ))
  flag_3_mux0000288 (
    .ADR0(N13_0),
    .ADR1(B_7_IBUF_1716),
    .ADR2(B_5_IBUF_1750),
    .ADR3(N12_0),
    .O(flag_3_mux0000288_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'hE88E ),
    .LOC ( "SLICE_X1Y8" ))
  \Madd_AUX_15_addsub0001_cy<0>_SW2  (
    .ADR0(A_5_IBUF_1749),
    .ADR1(Madd_AUX_13_addsub0001_cy[0]),
    .ADR2(\Madd_D2_cy[4] ),
    .ADR3(B_5_IBUF_1750),
    .O(N76)
  );
  X_OPAD #(
    .LOC ( "PAD206" ))
  \ans_ex<5>/PAD  (
    .PAD(ans_ex[5])
  );
  X_OBUF #(
    .LOC ( "PAD206" ))
  ans_ex_5_OBUF (
    .I(\ans_ex<5>/O ),
    .O(ans_ex[5])
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y47" ))
  \ans_temp<5>44/XUSED  (
    .I(\ans_temp<5>44_2312 ),
    .O(\ans_temp<5>44_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y47" ))
  \ans_temp<5>44/YUSED  (
    .I(flag_3_mux00009_2305),
    .O(flag_3_mux00009_0)
  );
  X_LUT4 #(
    .INIT ( 16'hFFEC ),
    .LOC ( "SLICE_X1Y36" ))
  \ans_temp<0>851  (
    .ADR0(ans_temp_cmp_eq0022),
    .ADR1(\ans_temp<0>59_0 ),
    .ADR2(\Rs<0>_0 ),
    .ADR3(\ans_temp<0>49_0 ),
    .O(\ans_temp<0>85 )
  );
  X_LUT4 #(
    .INIT ( 16'h5AA5 ),
    .LOC ( "SLICE_X1Y7" ))
  \Madd_AUX_13_addsub0001_lut<0>1  (
    .ADR0(B_4_IBUF_1806),
    .ADR1(VCC),
    .ADR2(A_4_IBUF_1792),
    .ADR3(\Madd_D2_cy[3] ),
    .O(Madd_AUX_13_addsub0001_lut[0])
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y0" ))
  \Or1<1>/XUSED  (
    .I(Or1[1]),
    .O(\Or1<1>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y0" ))
  \Or1<1>/YUSED  (
    .I(\And1[1] ),
    .O(\And1<1>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y48" ))
  \N126/YUSED  (
    .I(N3_pack_1),
    .O(N3)
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X2Y17" ))
  flag_1_mux00004 (
    .ADR0(B_4_IBUF_1806),
    .ADR1(B_5_IBUF_1750),
    .ADR2(B_6_IBUF_1838),
    .ADR3(B_7_IBUF_1716),
    .O(flag_1_mux00004_3660)
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ),
    .LOC ( "SLICE_X2Y17" ))
  flag_1_mux000037 (
    .ADR0(B_4_IBUF_1806),
    .ADR1(B_5_IBUF_1750),
    .ADR2(B_6_IBUF_1838),
    .ADR3(B_7_IBUF_1716),
    .O(flag_1_mux000037_3653)
  );
  X_OPAD #(
    .LOC ( "PAD202" ))
  \ans_ex<6>/PAD  (
    .PAD(ans_ex[6])
  );
  X_OBUF #(
    .LOC ( "PAD202" ))
  ans_ex_6_OBUF (
    .I(\ans_ex<6>/O ),
    .O(ans_ex[6])
  );
  X_IPAD #(
    .LOC ( "PAD227" ))
  \mem_en_dec/PAD  (
    .PAD(mem_en_dec)
  );
  X_BUF #(
    .LOC ( "PAD227" ))
  mem_en_dec_IBUF (
    .I(mem_en_dec),
    .O(\mem_en_dec/INBUF )
  );
  X_LUT4 #(
    .INIT ( 16'hFFEC ),
    .LOC ( "SLICE_X1Y36" ))
  \ans_temp<7>62_SW0  (
    .ADR0(\Rs<7>_0 ),
    .ADR1(\ans_temp<7>42_0 ),
    .ADR2(ans_temp_cmp_eq0022),
    .ADR3(\ans_temp<7>36_0 ),
    .O(N90)
  );
  X_IPAD #(
    .LOC ( "IPAD219" ))
  \RW_dec<1>/PAD  (
    .PAD(RW_dec[1])
  );
  X_BUF #(
    .LOC ( "IPAD219" ))
  RW_dec_1_IBUF (
    .I(RW_dec[1]),
    .O(\RW_dec<1>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD193" ))
  \data_in<7>/PAD  (
    .PAD(data_in[7])
  );
  X_BUF #(
    .LOC ( "PAD193" ))
  data_in_7_IBUF (
    .I(data_in[7]),
    .O(\data_in<7>/INBUF )
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ),
    .LOC ( "SLICE_X1Y7" ))
  flag_1_mux000056 (
    .ADR0(B_0_IBUF_1733),
    .ADR1(B_3_IBUF_1850),
    .ADR2(B_1_IBUF_1731),
    .ADR3(B_2_IBUF_1698),
    .O(\Madd_D2_cy<3>_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hEE44 ),
    .LOC ( "SLICE_X1Y10" ))
  Sh3_G (
    .ADR0(B_0_IBUF_1733),
    .ADR1(A_1_IBUF_1734),
    .ADR2(VCC),
    .ADR3(A_0_IBUF_1735),
    .O(N151)
  );
  X_LUT4 #(
    .INIT ( 16'hD8D8 ),
    .LOC ( "SLICE_X1Y10" ))
  Sh3_F (
    .ADR0(B_0_IBUF_1733),
    .ADR1(A_2_IBUF_1697),
    .ADR2(A_3_IBUF_1767),
    .ADR3(VCC),
    .O(N150)
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y10" ))
  \Sh3/XUSED  (
    .I(\Sh3/F5MUX_3418 ),
    .O(Sh3)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X1Y10" ))
  \Sh3/F5MUX  (
    .IA(N150),
    .IB(N151),
    .SEL(\Sh3/BXINV_3410 ),
    .O(\Sh3/F5MUX_3418 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y10" ))
  \Sh3/BXINV  (
    .I(B_1_IBUF_1731),
    .O(\Sh3/BXINV_3410 )
  );
  X_LUT4 #(
    .INIT ( 16'h956A ),
    .LOC ( "SLICE_X1Y2" ))
  flag_3_mux0000702 (
    .ADR0(\And1<7>_0 ),
    .ADR1(A_5_IBUF_1749),
    .ADR2(B_5_IBUF_1750),
    .ADR3(\And1<6>_0 ),
    .O(flag_3_mux0000702_3359)
  );
  X_LUT4 #(
    .INIT ( 16'h6996 ),
    .LOC ( "SLICE_X1Y2" ))
  flag_3_mux0000701 (
    .ADR0(\And1<7>_0 ),
    .ADR1(A_4_IBUF_1792),
    .ADR2(\And1<5>_0 ),
    .ADR3(\And1<6>_0 ),
    .O(flag_3_mux0000701_3366)
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y2" ))
  \flag_3_mux000070/XUSED  (
    .I(\flag_3_mux000070/F5MUX_3368 ),
    .O(flag_3_mux000070)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X1Y2" ))
  \flag_3_mux000070/F5MUX  (
    .IA(flag_3_mux0000702_3359),
    .IB(flag_3_mux0000701_3366),
    .SEL(\flag_3_mux000070/BXINV_3361 ),
    .O(\flag_3_mux000070/F5MUX_3368 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y2" ))
  \flag_3_mux000070/BXINV  (
    .I(B_4_IBUF_1806),
    .O(\flag_3_mux000070/BXINV_3361 )
  );
  X_LUT4 #(
    .INIT ( 16'hFCEE ),
    .LOC ( "SLICE_X2Y50" ))
  \ans_temp<5>271  (
    .ADR0(ans_temp_or0001),
    .ADR1(\ans_temp<5>9_0 ),
    .ADR2(ans_temp_or0000),
    .ADR3(B_5_IBUF_1750),
    .O(\ans_temp<5>271_3430 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y50" ))
  \ans_temp<5>27/XUSED  (
    .I(\ans_temp<5>27/F5MUX_3443 ),
    .O(\ans_temp<5>27 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X2Y50" ))
  \ans_temp<5>27/F5MUX  (
    .IA(\ans_temp<5>271_3430 ),
    .IB(\ans_temp<5>27/F ),
    .SEL(\ans_temp<5>27/BXINV_3432 ),
    .O(\ans_temp<5>27/F5MUX_3443 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y50" ))
  \ans_temp<5>27/BXINV  (
    .I(N126),
    .O(\ans_temp<5>27/BXINV_3432 )
  );
  X_LUT4 #(
    .INIT ( 16'h9600 ),
    .LOC ( "SLICE_X1Y12" ))
  flag_3_mux0000343 (
    .ADR0(\sub1<7>_0 ),
    .ADR1(\sub1<5>_0 ),
    .ADR2(flag_3_mux0000325_1858),
    .ADR3(N7),
    .O(flag_3_mux0000343_3516)
  );
  X_LUT4 #(
    .INIT ( 16'h6996 ),
    .LOC ( "SLICE_X0Y52" ))
  flag_3_mux0000261 (
    .ADR0(\Rs<0>_0 ),
    .ADR1(Rs[1]),
    .ADR2(Rs[3]),
    .ADR3(\Rs<5>_0 ),
    .O(flag_3_mux0000261_pack_1)
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y46" ))
  \N86/XUSED  (
    .I(\N86/F5MUX_3143 ),
    .O(N86)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X1Y46" ))
  \N86/F5MUX  (
    .IA(\ans_temp<0>30_SW01_3134 ),
    .IB(\ans_temp<0>30_SW0 ),
    .SEL(\N86/BXINV_3136 ),
    .O(\N86/F5MUX_3143 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y46" ))
  \N86/BXINV  (
    .I(N3),
    .O(\N86/BXINV_3136 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y6" ))
  \N136/XUSED  (
    .I(\N136/F5MUX_3243 ),
    .O(N136)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X2Y6" ))
  \N136/F5MUX  (
    .IA(N160),
    .IB(N161),
    .SEL(\N136/BXINV_3235 ),
    .O(\N136/F5MUX_3243 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y6" ))
  \N136/BXINV  (
    .I(op_dec_0_IBUF_1705),
    .O(\N136/BXINV_3235 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y55" ))
  \ans_temp_cmp_eq0022/XUSED  (
    .I(\ans_temp_cmp_eq0022/F5MUX_3118 ),
    .O(ans_temp_cmp_eq0022)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X3Y55" ))
  \ans_temp_cmp_eq0022/F5MUX  (
    .IA(\ans_temp_cmp_eq0022/G ),
    .IB(ans_temp_cmp_eq00221_3116),
    .SEL(\ans_temp_cmp_eq0022/BXINV_3111 ),
    .O(\ans_temp_cmp_eq0022/F5MUX_3118 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y55" ))
  \ans_temp_cmp_eq0022/BXINV  (
    .I(op_dec_4_IBUF_1704),
    .O(\ans_temp_cmp_eq0022/BXINV_3111 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y36" ))
  \Rsa<0>20/XUSED  (
    .I(\Rsa<0>20/F5MUX_3218 ),
    .O(\Rsa<0>20 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X2Y36" ))
  \Rsa<0>20/F5MUX  (
    .IA(\Rsa<0>201_3206 ),
    .IB(\B<0>_mmx_out2_rt_3216 ),
    .SEL(\Rsa<0>20/BXINV_3208 ),
    .O(\Rsa<0>20/F5MUX_3218 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y36" ))
  \Rsa<0>20/BXINV  (
    .I(B_1_IBUF_1731),
    .O(\Rsa<0>20/BXINV_3208 )
  );
  X_LUT4 #(
    .INIT ( 16'h2080 ),
    .LOC ( "SLICE_X1Y42" ))
  \ans_temp<3>93  (
    .ADR0(op_dec_0_IBUF_1705),
    .ADR1(Madd_AUX_11_addsub0001_cy[0]),
    .ADR2(flag_0_and0000_0),
    .ADR3(Madd_AUX_12_addsub0001_lut[0]),
    .O(\ans_temp<3>93_3629 )
  );
  X_LUT4 #(
    .INIT ( 16'h0008 ),
    .LOC ( "SLICE_X1Y42" ))
  \ans_temp<2>901_SW0  (
    .ADR0(\Madd__AUX_19_lut<0>_0 ),
    .ADR1(N24),
    .ADR2(op_dec_0_IBUF_1705),
    .ADR3(op_dec_4_IBUF_1704),
    .O(N134)
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y3" ))
  \sub1<2>/XUSED  (
    .I(\sub1<2>/F5MUX_3293 ),
    .O(\sub1[2] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X2Y3" ))
  \sub1<2>/F5MUX  (
    .IA(\sub1<2>11_3284 ),
    .IB(\sub1<2>1 ),
    .SEL(\sub1<2>/BXINV_3286 ),
    .O(\sub1<2>/F5MUX_3293 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y3" ))
  \sub1<2>/BXINV  (
    .I(\Madd_AUX_11_addsub0001_lut<0>_0 ),
    .O(\sub1<2>/BXINV_3286 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y47" ))
  \ans_temp<3>67/XUSED  (
    .I(\ans_temp<3>67/F5MUX_3168 ),
    .O(\ans_temp<3>67 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X2Y47" ))
  \ans_temp<3>67/F5MUX  (
    .IA(\ans_temp<3>672_3159 ),
    .IB(\ans_temp<3>671_3166 ),
    .SEL(\ans_temp<3>67/BXINV_3161 ),
    .O(\ans_temp<3>67/F5MUX_3168 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y47" ))
  \ans_temp<3>67/BXINV  (
    .I(B_2_IBUF_1698),
    .O(\ans_temp<3>67/BXINV_3161 )
  );
  X_LUT4 #(
    .INIT ( 16'hCFC0 ),
    .LOC ( "SLICE_X1Y45" ))
  \Rsa<0>39  (
    .ADR0(VCC),
    .ADR1(\B<1>_mmx_out ),
    .ADR2(B_2_IBUF_1698),
    .ADR3(\Rsa<0>20 ),
    .O(\Rsa[0] )
  );
  X_LUT4 #(
    .INIT ( 16'h0800 ),
    .LOC ( "SLICE_X0Y44" ))
  flag_1_mux000061 (
    .ADR0(op_dec_2_IBUF_1707),
    .ADR1(op_dec_0_IBUF_1705),
    .ADR2(op_dec_4_IBUF_1704),
    .ADR3(op_dec_1_IBUF_1706),
    .O(N13)
  );
  X_LUT4 #(
    .INIT ( 16'h6699 ),
    .LOC ( "SLICE_X0Y8" ))
  flag_3_mux0000325_SW0 (
    .ADR0(flag_3_mux0000315_0),
    .ADR1(\Madd_AUX_13_addsub0001_lut<0>_0 ),
    .ADR2(VCC),
    .ADR3(\sub1<6>_0 ),
    .O(N124)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y5" ))
  \Madd_AUX_13_addsub0001_cy<0>/XUSED  (
    .I(\Madd_AUX_13_addsub0001_cy<0>/F5MUX_3193 ),
    .O(Madd_AUX_13_addsub0001_cy[0])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X0Y5" ))
  \Madd_AUX_13_addsub0001_cy<0>/F5MUX  (
    .IA(\Madd_AUX_13_addsub0001_cy<0>2_3184 ),
    .IB(\Madd_AUX_13_addsub0001_cy<0>1_3191 ),
    .SEL(\Madd_AUX_13_addsub0001_cy<0>/BXINV_3186 ),
    .O(\Madd_AUX_13_addsub0001_cy<0>/F5MUX_3193 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y5" ))
  \Madd_AUX_13_addsub0001_cy<0>/BXINV  (
    .I(Madd_AUX_12_addsub0001_lut[0]),
    .O(\Madd_AUX_13_addsub0001_cy<0>/BXINV_3186 )
  );
  X_LUT4 #(
    .INIT ( 16'h0AA0 ),
    .LOC ( "SLICE_X0Y52" ))
  flag_3_mux0000270 (
    .ADR0(ans_temp_cmp_eq0022),
    .ADR1(VCC),
    .ADR2(flag_3_mux0000255_0),
    .ADR3(flag_3_mux0000261_1861),
    .O(flag_3_mux0000270_3564)
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ),
    .LOC ( "SLICE_X0Y23" ))
  Ls_or00001 (
    .ADR0(B_4_IBUF_1806),
    .ADR1(B_5_IBUF_1750),
    .ADR2(B_3_IBUF_1850),
    .ADR3(B_6_IBUF_1838),
    .O(Ls_or00001_3380)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y23" ))
  \Ls_or0000/XUSED  (
    .I(\Ls_or0000/F5MUX_3393 ),
    .O(Ls_or0000)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X0Y23" ))
  \Ls_or0000/F5MUX  (
    .IA(Ls_or00001_3380),
    .IB(\Ls_or0000/F ),
    .SEL(\Ls_or0000/BXINV_3382 ),
    .O(\Ls_or0000/F5MUX_3393 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y23" ))
  \Ls_or0000/BXINV  (
    .I(B_7_IBUF_1716),
    .O(\Ls_or0000/BXINV_3382 )
  );
  X_LUT4 #(
    .INIT ( 16'hF609 ),
    .LOC ( "SLICE_X1Y12" ))
  flag_3_mux0000325 (
    .ADR0(Madd_AUX_11_addsub0001_cy[0]),
    .ADR1(A_3_IBUF_1767),
    .ADR2(Madd_AUX_12_addsub0001_lut[0]),
    .ADR3(N124_0),
    .O(flag_3_mux0000325_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h0011 ),
    .LOC ( "SLICE_X0Y44" ))
  ans_temp_cmp_eq000011 (
    .ADR0(op_dec_4_IBUF_1704),
    .ADR1(op_dec_2_IBUF_1707),
    .ADR2(VCC),
    .ADR3(op_dec_1_IBUF_1706),
    .O(flag_0_and0000)
  );
  X_LUT4 #(
    .INIT ( 16'h0002 ),
    .LOC ( "SLICE_X0Y8" ))
  flag_1_mux0000531 (
    .ADR0(flag_1_mux0000496_0),
    .ADR1(\sub1<7>_0 ),
    .ADR2(\sub1<5>_0 ),
    .ADR3(\sub1<6>_0 ),
    .O(flag_1_mux0000531_3612)
  );
  X_LUT4 #(
    .INIT ( 16'h2D78 ),
    .LOC ( "SLICE_X1Y45" ))
  flag_3_mux0000181 (
    .ADR0(B_2_IBUF_1698),
    .ADR1(\B<1>_mmx_out ),
    .ADR2(\Rsa[1] ),
    .ADR3(\Rsa<0>20 ),
    .O(flag_3_mux0000181_3532)
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y20" ))
  \Ls<7>31/XUSED  (
    .I(\Ls<7>31/F5MUX_3268 ),
    .O(\Ls<7>31 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X2Y20" ))
  \Ls<7>31/F5MUX  (
    .IA(N154),
    .IB(N155),
    .SEL(\Ls<7>31/BXINV_3261 ),
    .O(\Ls<7>31/F5MUX_3268 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y20" ))
  \Ls<7>31/BXINV  (
    .I(B_0_IBUF_1733),
    .O(\Ls<7>31/BXINV_3261 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y44" ))
  \Ls<5>/XUSED  (
    .I(\Ls<5>/F5MUX_3093 ),
    .O(Ls[5])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X1Y44" ))
  \Ls<5>/F5MUX  (
    .IA(N148),
    .IB(N149),
    .SEL(\Ls<5>/BXINV_3085 ),
    .O(\Ls<5>/F5MUX_3093 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y44" ))
  \Ls<5>/BXINV  (
    .I(B_2_IBUF_1698),
    .O(\Ls<5>/BXINV_3085 )
  );
  X_LUT4 #(
    .INIT ( 16'hFCFA ),
    .LOC ( "SLICE_X2Y38" ))
  \ans_temp<6>271  (
    .ADR0(ans_temp_or0001),
    .ADR1(ans_temp_or0000),
    .ADR2(\ans_temp<6>9_0 ),
    .ADR3(B_6_IBUF_1838),
    .O(\ans_temp<6>271_3330 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y38" ))
  \ans_temp<6>27/XUSED  (
    .I(\ans_temp<6>27/F5MUX_3343 ),
    .O(\ans_temp<6>27 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X2Y38" ))
  \ans_temp<6>27/F5MUX  (
    .IA(\ans_temp<6>271_3330 ),
    .IB(\ans_temp<6>27/F ),
    .SEL(\ans_temp<6>27/BXINV_3332 ),
    .O(\ans_temp<6>27/F5MUX_3343 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y38" ))
  \ans_temp<6>27/BXINV  (
    .I(N128),
    .O(\ans_temp<6>27/BXINV_3332 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y3" ))
  \Madd_AUX_11_addsub0001_cy<0>/XUSED  (
    .I(\Madd_AUX_11_addsub0001_cy<0>/F5MUX_3318 ),
    .O(Madd_AUX_11_addsub0001_cy[0])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X1Y3" ))
  \Madd_AUX_11_addsub0001_cy<0>/F5MUX  (
    .IA(A_2_IBUF_rt_3309),
    .IB(\Madd_AUX_11_addsub0001_cy<0>1_3316 ),
    .SEL(\Madd_AUX_11_addsub0001_cy<0>/BXINV_3311 ),
    .O(\Madd_AUX_11_addsub0001_cy<0>/F5MUX_3318 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y3" ))
  \Madd_AUX_11_addsub0001_cy<0>/BXINV  (
    .I(\Madd_AUX_11_addsub0001_lut<0>_0 ),
    .O(\Madd_AUX_11_addsub0001_cy<0>/BXINV_3311 )
  );
  X_LUT4 #(
    .INIT ( 16'h6996 ),
    .LOC ( "SLICE_X0Y1" ))
  flag_3_mux0000651 (
    .ADR0(\And1<2>_0 ),
    .ADR1(\And1[0] ),
    .ADR2(A_3_IBUF_1767),
    .ADR3(\And1<1>_0 ),
    .O(flag_3_mux0000651_3491)
  );
  X_LUT4 #(
    .INIT ( 16'h956A ),
    .LOC ( "SLICE_X0Y1" ))
  flag_3_mux0000652 (
    .ADR0(\And1<2>_0 ),
    .ADR1(A_0_IBUF_1735),
    .ADR2(B_0_IBUF_1733),
    .ADR3(\And1<1>_0 ),
    .O(flag_3_mux0000652_3484)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y1" ))
  \flag_3_mux000065/XUSED  (
    .I(\flag_3_mux000065/F5MUX_3493 ),
    .O(flag_3_mux000065)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X0Y1" ))
  \flag_3_mux000065/F5MUX  (
    .IA(flag_3_mux0000652_3484),
    .IB(flag_3_mux0000651_3491),
    .SEL(\flag_3_mux000065/BXINV_3486 ),
    .O(\flag_3_mux000065/F5MUX_3493 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y1" ))
  \flag_3_mux000065/BXINV  (
    .I(B_3_IBUF_1850),
    .O(\flag_3_mux000065/BXINV_3486 )
  );
  X_LUT4 #(
    .INIT ( 16'hC0EA ),
    .LOC ( "SLICE_X3Y51" ))
  \ans_temp<4>672  (
    .ADR0(\B<1>_mmx_out ),
    .ADR1(Rs[4]),
    .ADR2(ans_temp_cmp_eq0022),
    .ADR3(ans_temp_or0004),
    .O(\ans_temp<4>672_3459 )
  );
  X_LUT4 #(
    .INIT ( 16'hA0EC ),
    .LOC ( "SLICE_X3Y51" ))
  \ans_temp<4>671  (
    .ADR0(ans_temp_cmp_eq0022),
    .ADR1(A_7_IBUF_1715),
    .ADR2(Rs[4]),
    .ADR3(ans_temp_or0004),
    .O(\ans_temp<4>671_3466 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y51" ))
  \ans_temp<4>67/XUSED  (
    .I(\ans_temp<4>67/F5MUX_3468 ),
    .O(\ans_temp<4>67 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X3Y51" ))
  \ans_temp<4>67/F5MUX  (
    .IA(\ans_temp<4>672_3459 ),
    .IB(\ans_temp<4>671_3466 ),
    .SEL(\ans_temp<4>67/BXINV_3461 ),
    .O(\ans_temp<4>67/F5MUX_3468 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y51" ))
  \ans_temp<4>67/BXINV  (
    .I(B_2_IBUF_1698),
    .O(\ans_temp<4>67/BXINV_3461 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y48" ))
  \ans_temp<6>52/XUSED  (
    .I(\ans_temp<6>52_4116 ),
    .O(\ans_temp<6>52_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y48" ))
  \ans_temp<6>52/YUSED  (
    .I(\ans_temp<6>44_pack_1 ),
    .O(\ans_temp<6>44_1903 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y20" ))
  \Ls<3>/XUSED  (
    .I(Ls[3]),
    .O(\Ls<3>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y20" ))
  \Ls<3>/YUSED  (
    .I(Ls[6]),
    .O(\Ls<6>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y5" ))
  \flag_1_mux0000496/XUSED  (
    .I(flag_1_mux0000496_4068),
    .O(flag_1_mux0000496_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y5" ))
  \flag_1_mux0000496/YUSED  (
    .I(N106_pack_1),
    .O(N106)
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y35" ))
  \N50/XUSED  (
    .I(N50),
    .O(N50_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y35" ))
  \N50/YUSED  (
    .I(\B<0>_mmx_out2 ),
    .O(\B<0>_mmx_out2_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y9" ))
  \sub1<7>/XUSED  (
    .I(\sub1[7] ),
    .O(\sub1<7>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y9" ))
  \sub1<7>/YUSED  (
    .I(\Madd_AUX_15_addsub0001_cy<0>_pack_1 ),
    .O(Madd_AUX_15_addsub0001_cy[0])
  );
  X_LUT4 #(
    .INIT ( 16'h6F7E ),
    .LOC ( "SLICE_X2Y5" ))
  flag_1_mux0000496_SW0 (
    .ADR0(Madd_AUX_12_addsub0001_lut[0]),
    .ADR1(Madd_AUX_11_addsub0001_cy[0]),
    .ADR2(\Madd_AUX_13_addsub0001_lut<0>_0 ),
    .ADR3(A_3_IBUF_1767),
    .O(N106_pack_1)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y46" ))
  \Rs<6>/XUSED  (
    .I(Rs[6]),
    .O(\Rs<6>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y46" ))
  \Rs<6>/YUSED  (
    .I(\B<0>_mmx_out3_pack_1 ),
    .O(\B<0>_mmx_out3 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y2" ))
  \Madd_AUX_8_addsub0000_lut<0>/XUSED  (
    .I(Madd_AUX_8_addsub0000_lut[0]),
    .O(\Madd_AUX_8_addsub0000_lut<0>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y2" ))
  \Madd_AUX_8_addsub0000_lut<0>/YUSED  (
    .I(\And1[7] ),
    .O(\And1<7>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y30" ))
  \flag_3_mux0000232/XUSED  (
    .I(flag_3_mux0000232_4308),
    .O(flag_3_mux0000232_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y30" ))
  \flag_3_mux0000232/YUSED  (
    .I(N94_pack_1),
    .O(N94)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y11" ))
  \Madd_AUX_16_addsub0001_lut<0>/XUSED  (
    .I(Madd_AUX_16_addsub0001_lut[0]),
    .O(\Madd_AUX_16_addsub0001_lut<0>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y11" ))
  \Madd_AUX_16_addsub0001_lut<0>/YUSED  (
    .I(\ans_temp<7>36_4349 ),
    .O(\ans_temp<7>36_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y7" ))
  \Madd_AUX_15_addsub0001_lut<0>/XUSED  (
    .I(Madd_AUX_15_addsub0001_lut[0]),
    .O(\Madd_AUX_15_addsub0001_lut<0>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y7" ))
  \Madd_AUX_15_addsub0001_lut<0>/YUSED  (
    .I(\Madd_D2_cy<5>_pack_1 ),
    .O(\Madd_D2_cy[5] )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y10" ))
  \Or1<5>/XUSED  (
    .I(Or1[5]),
    .O(\Or1<5>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y10" ))
  \Or1<5>/YUSED  (
    .I(\sub1[5] ),
    .O(\sub1<5>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y30" ))
  \flag_1_mux0000331/XUSED  (
    .I(flag_1_mux0000331_4404),
    .O(flag_1_mux0000331_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y34" ))
  \Madd_AUX_5_addsub0000_lut<0>/XUSED  (
    .I(Madd_AUX_5_addsub0000_lut[0]),
    .O(\Madd_AUX_5_addsub0000_lut<0>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y34" ))
  \Madd_AUX_5_addsub0000_lut<0>/YUSED  (
    .I(flag_3_mux000034_4419),
    .O(flag_3_mux000034_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y37" ))
  \flag_3_mux000051/XUSED  (
    .I(flag_3_mux000051_4464),
    .O(flag_3_mux000051_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y37" ))
  \flag_3_mux000051/YUSED  (
    .I(N92_pack_1),
    .O(N92)
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y38" ))
  \ans_temp<6>9/XUSED  (
    .I(\ans_temp<6>9_4212 ),
    .O(\ans_temp<6>9_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y14" ))
  \flag_1_mux0000218/XUSED  (
    .I(flag_1_mux0000218_4512),
    .O(flag_1_mux0000218_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y14" ))
  \flag_1_mux0000218/YUSED  (
    .I(\Or1<0>_pack_1 ),
    .O(Or1[0])
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y17" ))
  \flag_1_mux000070/XUSED  (
    .I(flag_1_mux000070_4536),
    .O(flag_1_mux000070_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y17" ))
  \flag_1_mux000070/YUSED  (
    .I(N96_pack_1),
    .O(N96)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y20" ))
  \flag_1_mux00009/XUSED  (
    .I(flag_1_mux00009_4488),
    .O(flag_1_mux00009_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y20" ))
  \flag_1_mux00009/YUSED  (
    .I(flag_3_mux000029_4481),
    .O(flag_3_mux000029_0)
  );
  X_LUT4 #(
    .INIT ( 16'hB8B8 ),
    .LOC ( "SLICE_X2Y35" ))
  \B<0>21  (
    .ADR0(A_3_IBUF_1767),
    .ADR1(B_0_IBUF_1733),
    .ADR2(A_2_IBUF_1697),
    .ADR3(VCC),
    .O(\B<0>_mmx_out2 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y24" ))
  \Or1<7>/XUSED  (
    .I(Or1[7]),
    .O(\Or1<7>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y24" ))
  \Or1<7>/YUSED  (
    .I(\ans_temp<7>14_4179 ),
    .O(\ans_temp<7>14_0 )
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ),
    .LOC ( "SLICE_X3Y2" ))
  flag_2_mux0000 (
    .ADR0(op_dec_2_IBUF_1707),
    .ADR1(op_dec_1_IBUF_1706),
    .ADR2(op_dec_4_IBUF_1704),
    .ADR3(N136),
    .O(flag_ex_2_OBUF_4044)
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y35" ))
  \Rsa<5>/XUSED  (
    .I(\Rsa[5] ),
    .O(\Rsa<5>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y35" ))
  \Rsa<5>/YUSED  (
    .I(\B<0>_mmx_out4_pack_1 ),
    .O(\B<0>_mmx_out4 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y39" ))
  \flag_3_mux00004/XUSED  (
    .I(flag_3_mux00004_4608),
    .O(flag_3_mux00004_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y39" ))
  \flag_3_mux00004/YUSED  (
    .I(flag_1_mux0000150_4601),
    .O(flag_1_mux0000150_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y4" ))
  \Madd_AUX_11_addsub0001_lut<0>/XUSED  (
    .I(Madd_AUX_11_addsub0001_lut[0]),
    .O(\Madd_AUX_11_addsub0001_lut<0>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y4" ))
  \Madd_AUX_11_addsub0001_lut<0>/YUSED  (
    .I(N49),
    .O(N49_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y47" ))
  \ans_temp<6>81/YUSED  (
    .I(N142_pack_1),
    .O(N142)
  );
  X_OPAD #(
    .LOC ( "PAD213" ))
  \B_Bypass<1>/PAD  (
    .PAD(B_Bypass[1])
  );
  X_OBUF #(
    .LOC ( "PAD213" ))
  B_Bypass_1_OBUF (
    .I(\B_Bypass<1>/O ),
    .O(B_Bypass[1])
  );
  X_IPAD #(
    .LOC ( "PAD176" ))
  \B<6>/PAD  (
    .PAD(B[6])
  );
  X_BUF #(
    .LOC ( "PAD176" ))
  B_6_IBUF (
    .I(B[6]),
    .O(\B<6>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD168" ))
  \A<6>/PAD  (
    .PAD(A[6])
  );
  X_BUF #(
    .LOC ( "PAD168" ))
  A_6_IBUF (
    .I(A[6]),
    .O(\A<6>/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD205" ))
  \B_Bypass<0>/PAD  (
    .PAD(B_Bypass[0])
  );
  X_OBUF #(
    .LOC ( "PAD205" ))
  B_Bypass_0_OBUF (
    .I(\B_Bypass<0>/O ),
    .O(B_Bypass[0])
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y36" ))
  \N12/XUSED  (
    .I(N12),
    .O(N12_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y36" ))
  \N12/YUSED  (
    .I(N02_pack_1),
    .O(N02)
  );
  X_OPAD #(
    .LOC ( "PAD210" ))
  \B_Bypass<2>/PAD  (
    .PAD(B_Bypass[2])
  );
  X_OBUF #(
    .LOC ( "PAD210" ))
  B_Bypass_2_OBUF (
    .I(\B_Bypass<2>/O ),
    .O(B_Bypass[2])
  );
  X_IPAD #(
    .LOC ( "PAD215" ))
  \B<4>/PAD  (
    .PAD(B[4])
  );
  X_BUF #(
    .LOC ( "PAD215" ))
  B_4_IBUF (
    .I(B[4]),
    .O(\B<4>/INBUF )
  );
  X_IPAD #(
    .LOC ( "IPAD175" ))
  \B<7>/PAD  (
    .PAD(B[7])
  );
  X_BUF #(
    .LOC ( "IPAD175" ))
  B_7_IBUF (
    .I(B[7]),
    .O(\B<7>/INBUF )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y39" ))
  \flag_3_mux0000178/XUSED  (
    .I(flag_3_mux0000178_5844),
    .O(flag_3_mux0000178_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y39" ))
  \flag_3_mux0000178/YUSED  (
    .I(N104_pack_1),
    .O(N104)
  );
  X_IPAD #(
    .LOC ( "PAD157" ))
  \A<7>/PAD  (
    .PAD(A[7])
  );
  X_BUF #(
    .LOC ( "PAD157" ))
  A_7_IBUF (
    .I(A[7]),
    .O(\A<7>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD179" ))
  \B<5>/PAD  (
    .PAD(B[5])
  );
  X_BUF #(
    .LOC ( "PAD179" ))
  B_5_IBUF (
    .I(B[5]),
    .O(\B<5>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD230" ))
  \mem_rw_dec/PAD  (
    .PAD(mem_rw_dec)
  );
  X_BUF #(
    .LOC ( "PAD230" ))
  mem_rw_dec_IBUF (
    .I(mem_rw_dec),
    .O(\mem_rw_dec/INBUF )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y43" ))
  \ans_temp_cmp_eq0021/XUSED  (
    .I(ans_temp_cmp_eq0021),
    .O(ans_temp_cmp_eq0021_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y43" ))
  \ans_temp_cmp_eq0021/YUSED  (
    .I(N24_pack_1),
    .O(N24)
  );
  X_IPAD #(
    .LOC ( "IPAD180" ))
  \B<2>/PAD  (
    .PAD(B[2])
  );
  X_BUF #(
    .LOC ( "IPAD180" ))
  B_2_IBUF (
    .I(B[2]),
    .O(\B<2>/INBUF )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y28" ))
  \Madd__AUX_21_lut<0>/XUSED  (
    .I(Madd__AUX_21_lut[0]),
    .O(\Madd__AUX_21_lut<0>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y28" ))
  \Madd__AUX_21_lut<0>/YUSED  (
    .I(\Madd__AUX_20_lut<0>_pack_1 ),
    .O(Madd__AUX_20_lut[0])
  );
  X_IPAD #(
    .LOC ( "PAD191" ))
  \B<3>/PAD  (
    .PAD(B[3])
  );
  X_BUF #(
    .LOC ( "PAD191" ))
  B_3_IBUF (
    .I(B[3]),
    .O(\B<3>/INBUF )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y21" ))
  \sub1<4>/XUSED  (
    .I(\sub1[4] ),
    .O(\sub1<4>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y21" ))
  \sub1<4>/YUSED  (
    .I(\Madd_AUX_12_addsub0001_lut<0>_pack_2 ),
    .O(Madd_AUX_12_addsub0001_lut[0])
  );
  X_OPAD #(
    .LOC ( "PAD167" ))
  \data_out<1>/PAD  (
    .PAD(data_out[1])
  );
  X_OBUF #(
    .LOC ( "PAD167" ))
  data_out_1_OBUF (
    .I(\data_out<1>/O ),
    .O(data_out[1])
  );
  X_OPAD #(
    .LOC ( "PAD225" ))
  \RW_ex<0>/PAD  (
    .PAD(RW_ex[0])
  );
  X_OBUF #(
    .LOC ( "PAD225" ))
  RW_ex_0_OBUF (
    .I(\RW_ex<0>/O ),
    .O(RW_ex[0])
  );
  X_OPAD #(
    .LOC ( "PAD216" ))
  \B_Bypass<4>/PAD  (
    .PAD(B_Bypass[4])
  );
  X_OBUF #(
    .LOC ( "PAD216" ))
  B_Bypass_4_OBUF (
    .I(\B_Bypass<4>/O ),
    .O(B_Bypass[4])
  );
  X_OPAD #(
    .LOC ( "PAD195" ))
  \B_Bypass<5>/PAD  (
    .PAD(B_Bypass[5])
  );
  X_OBUF #(
    .LOC ( "PAD195" ))
  B_Bypass_5_OBUF (
    .I(\B_Bypass<5>/O ),
    .O(B_Bypass[5])
  );
  X_OPAD #(
    .LOC ( "PAD185" ))
  \flag_ex<3>/PAD  (
    .PAD(flag_ex[3])
  );
  X_OBUF #(
    .LOC ( "PAD185" ))
  flag_ex_3_OBUF (
    .I(\flag_ex<3>/O ),
    .O(flag_ex[3])
  );
  X_OPAD #(
    .LOC ( "PAD222" ))
  \RW_ex<1>/PAD  (
    .PAD(RW_ex[1])
  );
  X_OBUF #(
    .LOC ( "PAD222" ))
  RW_ex_1_OBUF (
    .I(\RW_ex<1>/O ),
    .O(RW_ex[1])
  );
  X_OPAD #(
    .LOC ( "PAD212" ))
  \B_Bypass<3>/PAD  (
    .PAD(B_Bypass[3])
  );
  X_OBUF #(
    .LOC ( "PAD212" ))
  B_Bypass_3_OBUF (
    .I(\B_Bypass<3>/O ),
    .O(B_Bypass[3])
  );
  X_OPAD #(
    .LOC ( "PAD166" ))
  \data_out<0>/PAD  (
    .PAD(data_out[0])
  );
  X_OBUF #(
    .LOC ( "PAD166" ))
  data_out_0_OBUF (
    .I(\data_out<0>/O ),
    .O(data_out[0])
  );
  X_OPAD #(
    .LOC ( "PAD163" ))
  \data_out<3>/PAD  (
    .PAD(data_out[3])
  );
  X_OBUF #(
    .LOC ( "PAD163" ))
  data_out_3_OBUF (
    .I(\data_out<3>/O ),
    .O(data_out[3])
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y57" ))
  \Rs<5>/XUSED  (
    .I(Rs[5]),
    .O(\Rs<5>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y57" ))
  \Rs<5>/YUSED  (
    .I(Sh21_pack_1),
    .O(Sh21_1823)
  );
  X_OPAD #(
    .LOC ( "PAD173" ))
  \flag_ex<2>/PAD  (
    .PAD(flag_ex[2])
  );
  X_OBUF #(
    .LOC ( "PAD173" ))
  flag_ex_2_OBUF (
    .I(\flag_ex<2>/O ),
    .O(flag_ex[2])
  );
  X_OPAD #(
    .LOC ( "PAD165" ))
  \data_out<2>/PAD  (
    .PAD(data_out[2])
  );
  X_OBUF #(
    .LOC ( "PAD165" ))
  data_out_2_OBUF (
    .I(\data_out<2>/O ),
    .O(data_out[2])
  );
  X_OPAD #(
    .LOC ( "PAD208" ))
  \B_Bypass<6>/PAD  (
    .PAD(B_Bypass[6])
  );
  X_OBUF #(
    .LOC ( "PAD208" ))
  B_Bypass_6_OBUF (
    .I(\B_Bypass<6>/O ),
    .O(B_Bypass[6])
  );
  X_OPAD #(
    .LOC ( "PAD181" ))
  \flag_ex<0>/PAD  (
    .PAD(flag_ex[0])
  );
  X_OBUF #(
    .LOC ( "PAD181" ))
  flag_ex_0_OBUF (
    .I(\flag_ex<0>/O ),
    .O(flag_ex[0])
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y32" ))
  \ans_temp<3>50/XUSED  (
    .I(\ans_temp<3>50_6026 ),
    .O(\ans_temp<3>50_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y32" ))
  \ans_temp<3>50/YUSED  (
    .I(\ans_temp<3>20_pack_1 ),
    .O(\ans_temp<3>20_1990 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y14" ))
  \Madd__AUX_23_lut<0>/XUSED  (
    .I(Madd__AUX_23_lut[0]),
    .O(\Madd__AUX_23_lut<0>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y14" ))
  \Madd__AUX_23_lut<0>/YUSED  (
    .I(\Madd__AUX_22_lut<0>_pack_1 ),
    .O(Madd__AUX_22_lut[0])
  );
  X_OPAD #(
    .LOC ( "PAD190" ))
  \B_Bypass<7>/PAD  (
    .PAD(B_Bypass[7])
  );
  X_OBUF #(
    .LOC ( "PAD190" ))
  B_Bypass_7_OBUF (
    .I(\B_Bypass<7>/O ),
    .O(B_Bypass[7])
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y49" ))
  \ans_temp<1>84/YUSED  (
    .I(\ans_temp<1>77_pack_1 ),
    .O(\ans_temp<1>77_1991 )
  );
  X_OPAD #(
    .LOC ( "PAD223" ))
  \mem_en_ex/PAD  (
    .PAD(mem_en_ex)
  );
  X_OBUF #(
    .LOC ( "PAD223" ))
  mem_en_ex_OBUF (
    .I(\mem_en_ex/O ),
    .O(mem_en_ex)
  );
  X_OPAD #(
    .LOC ( "PAD183" ))
  \flag_ex<1>/PAD  (
    .PAD(flag_ex[1])
  );
  X_OBUF #(
    .LOC ( "PAD183" ))
  flag_ex_1_OBUF (
    .I(\flag_ex<1>/O ),
    .O(flag_ex[1])
  );
  X_OPAD #(
    .LOC ( "PAD160" ))
  \data_out<5>/PAD  (
    .PAD(data_out[5])
  );
  X_OBUF #(
    .LOC ( "PAD160" ))
  data_out_5_OBUF (
    .I(\data_out<5>/O ),
    .O(data_out[5])
  );
  X_OPAD #(
    .LOC ( "PAD221" ))
  \RW_ex<2>/PAD  (
    .PAD(RW_ex[2])
  );
  X_OBUF #(
    .LOC ( "PAD221" ))
  RW_ex_2_OBUF (
    .I(\RW_ex<2>/O ),
    .O(RW_ex[2])
  );
  X_OPAD #(
    .LOC ( "PAD164" ))
  \data_out<4>/PAD  (
    .PAD(data_out[4])
  );
  X_OBUF #(
    .LOC ( "PAD164" ))
  data_out_4_OBUF (
    .I(\data_out<4>/O ),
    .O(data_out[4])
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y25" ))
  \N132/XUSED  (
    .I(N132),
    .O(N132_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y25" ))
  \N132/YUSED  (
    .I(\ans_temp<7>4_pack_1 ),
    .O(\ans_temp<7>4_1993 )
  );
  X_OPAD #(
    .LOC ( "PAD211" ))
  \RW_ex<3>/PAD  (
    .PAD(RW_ex[3])
  );
  X_OBUF #(
    .LOC ( "PAD211" ))
  RW_ex_3_OBUF (
    .I(\RW_ex<3>/O ),
    .O(RW_ex[3])
  );
  X_IPAD #(
    .LOC ( "IPAD204" ))
  \data_in<0>/PAD  (
    .PAD(data_in[0])
  );
  X_BUF #(
    .LOC ( "IPAD204" ))
  data_in_0_IBUF (
    .I(data_in[0]),
    .O(\data_in<0>/INBUF )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y14" ))
  \flag_3_mux0000126/XUSED  (
    .I(flag_3_mux0000126_6252),
    .O(flag_3_mux0000126_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y14" ))
  \flag_3_mux0000126/YUSED  (
    .I(\Madd_AUX_4_addsub0000_lut<0>_pack_1 ),
    .O(Madd_AUX_4_addsub0000_lut[0])
  );
  X_OPAD #(
    .LOC ( "PAD182" ))
  \ans_ex<2>/PAD  (
    .PAD(ans_ex[2])
  );
  X_OBUF #(
    .LOC ( "PAD182" ))
  ans_ex_2_OBUF (
    .I(\ans_ex<2>/O ),
    .O(ans_ex[2])
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y15" ))
  \flag_3_mux0000140/XUSED  (
    .I(flag_3_mux0000140_6396),
    .O(flag_3_mux0000140_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y15" ))
  \flag_3_mux0000140/YUSED  (
    .I(flag_3_mux0000131_pack_1),
    .O(flag_3_mux0000131_1996)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y3" ))
  \flag_1_mux0000111/XUSED  (
    .I(flag_1_mux0000111),
    .O(flag_1_mux0000111_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y3" ))
  \flag_1_mux0000111/YUSED  (
    .I(\And1<0>_pack_1 ),
    .O(\And1[0] )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y15" ))
  \flag_3_mux0000115/XUSED  (
    .I(flag_3_mux0000115_6337),
    .O(flag_3_mux0000115_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y15" ))
  \flag_3_mux0000115/YUSED  (
    .I(flag_3_mux0000106_pack_1),
    .O(flag_3_mux0000106_1995)
  );
  X_IPAD #(
    .LOC ( "PAD218" ))
  \data_in<2>/PAD  (
    .PAD(data_in[2])
  );
  X_BUF #(
    .LOC ( "PAD218" ))
  data_in_2_IBUF (
    .I(data_in[2]),
    .O(\data_in<2>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD198" ))
  \data_in<3>/PAD  (
    .PAD(data_in[3])
  );
  X_BUF #(
    .LOC ( "PAD198" ))
  data_in_3_IBUF (
    .I(data_in[3]),
    .O(\data_in<3>/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD201" ))
  \ans_ex<1>/PAD  (
    .PAD(ans_ex[1])
  );
  X_OBUF #(
    .LOC ( "PAD201" ))
  ans_ex_1_OBUF (
    .I(\ans_ex<1>/O ),
    .O(ans_ex[1])
  );
  X_OPAD #(
    .LOC ( "PAD200" ))
  \ans_ex<0>/PAD  (
    .PAD(ans_ex[0])
  );
  X_OBUF #(
    .LOC ( "PAD200" ))
  ans_ex_0_OBUF (
    .I(\ans_ex<0>/O ),
    .O(ans_ex[0])
  );
  X_OPAD #(
    .LOC ( "PAD156" ))
  \data_out<7>/PAD  (
    .PAD(data_out[7])
  );
  X_OBUF #(
    .LOC ( "PAD156" ))
  data_out_7_OBUF (
    .I(\data_out<7>/O ),
    .O(data_out[7])
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y29" ))
  \Rs<7>/XUSED  (
    .I(Rs[7]),
    .O(\Rs<7>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y29" ))
  \Rs<7>/YUSED  (
    .I(\Madd_D2_cy<1>_pack_1 ),
    .O(\Madd_D2_cy[1] )
  );
  X_IPAD #(
    .LOC ( "IPAD199" ))
  \data_in<1>/PAD  (
    .PAD(data_in[1])
  );
  X_BUF #(
    .LOC ( "IPAD199" ))
  data_in_1_IBUF (
    .I(data_in[1]),
    .O(\data_in<1>/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD226" ))
  \RW_ex<4>/PAD  (
    .PAD(RW_ex[4])
  );
  X_OBUF #(
    .LOC ( "PAD226" ))
  RW_ex_4_OBUF (
    .I(\RW_ex<4>/O ),
    .O(RW_ex[4])
  );
  X_OPAD #(
    .LOC ( "PAD161" ))
  \data_out<6>/PAD  (
    .PAD(data_out[6])
  );
  X_OBUF #(
    .LOC ( "PAD161" ))
  data_out_6_OBUF (
    .I(\data_out<6>/O ),
    .O(data_out[6])
  );
  X_LUT4 #(
    .INIT ( 16'h33CC ),
    .LOC ( "SLICE_X1Y0" ))
  \Madd_AUX_7_addsub0000_lut<0>1  (
    .ADR0(VCC),
    .ADR1(B_6_IBUF_1838),
    .ADR2(VCC),
    .ADR3(A_6_IBUF_1791),
    .O(Madd_AUX_7_addsub0000_lut[0])
  );
  X_LUT4 #(
    .INIT ( 16'hCC00 ),
    .LOC ( "SLICE_X1Y0" ))
  \And1<6>1  (
    .ADR0(VCC),
    .ADR1(B_6_IBUF_1838),
    .ADR2(VCC),
    .ADR3(A_6_IBUF_1791),
    .O(\And1[6] )
  );
  X_LUT4 #(
    .INIT ( 16'hE000 ),
    .LOC ( "SLICE_X11Y2" ))
  \data_out_buff<6>1  (
    .ADR0(op_dec_3_IBUF_1756),
    .ADR1(N22),
    .ADR2(op_dec_4_IBUF_1704),
    .ADR3(A_6_IBUF_1791),
    .O(data_out_buff[6])
  );
  X_LUT4 #(
    .INIT ( 16'h0002 ),
    .LOC ( "SLICE_X2Y5" ))
  flag_1_mux0000496 (
    .ADR0(N7),
    .ADR1(\sub1[1] ),
    .ADR2(N106),
    .ADR3(\sub1[2] ),
    .O(flag_1_mux0000496_4068)
  );
  X_LUT4 #(
    .INIT ( 16'hF444 ),
    .LOC ( "SLICE_X1Y48" ))
  \ans_temp<4>34  (
    .ADR0(B_4_IBUF_1806),
    .ADR1(ans_temp_or0001),
    .ADR2(data_in_4_IBUF_1693),
    .ADR3(ans_temp_or0003_0),
    .O(\ans_temp<4>34_2863 )
  );
  X_LUT4 #(
    .INIT ( 16'hCFFF ),
    .LOC ( "SLICE_X0Y53" ))
  ans_temp_or00042 (
    .ADR0(VCC),
    .ADR1(op_dec_2_IBUF_1707),
    .ADR2(op_dec_0_IBUF_1705),
    .ADR3(op_dec_1_IBUF_1706),
    .O(ans_temp_or00042_2985)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ),
    .LOC ( "SLICE_X1Y40" ))
  \ans_temp<7>881  (
    .ADR0(\sub1<7>_0 ),
    .ADR1(N7),
    .ADR2(N4),
    .ADR3(Madd__AUX_24_lut[0]),
    .O(\ans_temp<7>88 )
  );
  X_LUT4 #(
    .INIT ( 16'h00B8 ),
    .LOC ( "SLICE_X0Y45" ))
  \Rs<2>_F  (
    .ADR0(\B<0>_mmx_out_0 ),
    .ADR1(B_1_IBUF_1731),
    .ADR2(\B<0>_mmx_out2_0 ),
    .ADR3(Ls_or0000),
    .O(N146)
  );
  X_LUT4 #(
    .INIT ( 16'hFFEC ),
    .LOC ( "SLICE_X1Y40" ))
  \ans_temp<3>83  (
    .ADR0(Madd__AUX_20_lut[0]),
    .ADR1(\ans_temp<3>67 ),
    .ADR2(N4),
    .ADR3(\ans_temp<3>50_0 ),
    .O(\ans_temp<3>83_3010 )
  );
  X_LUT4 #(
    .INIT ( 16'h2DB4 ),
    .LOC ( "SLICE_X0Y27" ))
  \Madd__AUX_19_lut<0>1  (
    .ADR0(Madd__AUX_18_lut[0]),
    .ADR1(A_1_IBUF_1734),
    .ADR2(\Madd_AUX_3_addsub0000_lut<0>_0 ),
    .ADR3(B_1_IBUF_1731),
    .O(Madd__AUX_19_lut[0])
  );
  X_LUT4 #(
    .INIT ( 16'h5410 ),
    .LOC ( "SLICE_X1Y52" ))
  \Rs<3>_F  (
    .ADR0(Ls_or0000),
    .ADR1(B_1_IBUF_1731),
    .ADR2(N50_0),
    .ADR3(\B<0>_mmx_out4 ),
    .O(N158)
  );
  X_LUT4 #(
    .INIT ( 16'h0004 ),
    .LOC ( "SLICE_X1Y52" ))
  \Rs<3>_G  (
    .ADR0(B_0_IBUF_1733),
    .ADR1(A_7_IBUF_1715),
    .ADR2(B_1_IBUF_1731),
    .ADR3(Ls_or0000),
    .O(N159)
  );
  X_LUT4 #(
    .INIT ( 16'hE080 ),
    .LOC ( "SLICE_X0Y6" ))
  flag_0_mux0000_F (
    .ADR0(B_7_IBUF_1716),
    .ADR1(cin_add1[6]),
    .ADR2(flag_0_and0000_0),
    .ADR3(A_7_IBUF_1715),
    .O(N162)
  );
  X_LUT4 #(
    .INIT ( 16'h0004 ),
    .LOC ( "SLICE_X0Y42" ))
  flag_1_mux000051 (
    .ADR0(op_dec_4_IBUF_1704),
    .ADR1(op_dec_0_IBUF_1705),
    .ADR2(op_dec_2_IBUF_1707),
    .ADR3(op_dec_1_IBUF_1706),
    .O(N7_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ),
    .LOC ( "SLICE_X0Y42" ))
  \ans_temp<5>931  (
    .ADR0(N4),
    .ADR1(Madd__AUX_22_lut[0]),
    .ADR2(\sub1<5>_0 ),
    .ADR3(N7),
    .O(\ans_temp<5>93 )
  );
  X_LUT4 #(
    .INIT ( 16'hAE0C ),
    .LOC ( "SLICE_X1Y48" ))
  \ans_temp<2>34  (
    .ADR0(ans_temp_or0003_0),
    .ADR1(ans_temp_or0001),
    .ADR2(B_2_IBUF_1698),
    .ADR3(data_in_2_IBUF_1804),
    .O(\ans_temp<2>34_2870 )
  );
  X_LUT4 #(
    .INIT ( 16'h0030 ),
    .LOC ( "SLICE_X0Y45" ))
  \Rs<2>_G  (
    .ADR0(VCC),
    .ADR1(B_1_IBUF_1731),
    .ADR2(\B<0>_mmx_out3 ),
    .ADR3(Ls_or0000),
    .O(N147)
  );
  X_LUT4 #(
    .INIT ( 16'h13CF ),
    .LOC ( "SLICE_X0Y53" ))
  ans_temp_or00041 (
    .ADR0(op_dec_0_IBUF_1705),
    .ADR1(op_dec_2_IBUF_1707),
    .ADR2(op_dec_1_IBUF_1706),
    .ADR3(op_dec_3_IBUF_1756),
    .O(ans_temp_or00041_2992)
  );
  X_LUT4 #(
    .INIT ( 16'hA088 ),
    .LOC ( "SLICE_X0Y6" ))
  flag_0_mux0000_G (
    .ADR0(flag_0_and0000_0),
    .ADR1(A_7_IBUF_1715),
    .ADR2(Madd_AUX_15_addsub0001_cy[0]),
    .ADR3(\Madd_AUX_16_addsub0001_lut<0>_0 ),
    .O(N163)
  );
  X_LUT4 #(
    .INIT ( 16'h9666 ),
    .LOC ( "SLICE_X0Y27" ))
  \Madd__AUX_18_lut<0>1  (
    .ADR0(A_1_IBUF_1734),
    .ADR1(B_1_IBUF_1731),
    .ADR2(B_0_IBUF_1733),
    .ADR3(A_0_IBUF_1735),
    .O(\Madd__AUX_18_lut<0>_pack_3 )
  );
  X_LUT4 #(
    .INIT ( 16'h5050 ),
    .LOC ( "SLICE_X1Y54" ))
  \Rs<1>11  (
    .ADR0(Ls_or0000),
    .ADR1(VCC),
    .ADR2(Sh21_1823),
    .ADR3(VCC),
    .O(\Rs<1>1 )
  );
  X_LUT4 #(
    .INIT ( 16'hDD88 ),
    .LOC ( "SLICE_X2Y36" ))
  \Rsa<0>201  (
    .ADR0(B_0_IBUF_1733),
    .ADR1(A_1_IBUF_1734),
    .ADR2(VCC),
    .ADR3(A_0_IBUF_1735),
    .O(\Rsa<0>201_3206 )
  );
  X_LUT4 #(
    .INIT ( 16'h88F8 ),
    .LOC ( "SLICE_X2Y47" ))
  \ans_temp<3>671  (
    .ADR0(\Ls<3>_0 ),
    .ADR1(ans_temp_cmp_eq0021_0),
    .ADR2(A_7_IBUF_1715),
    .ADR3(ans_temp_or0004),
    .O(\ans_temp<3>671_3166 )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ),
    .LOC ( "SLICE_X2Y36" ))
  \B<0>_mmx_out2_rt  (
    .ADR0(\B<0>_mmx_out2_0 ),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\B<0>_mmx_out2_rt_3216 )
  );
  X_LUT4 #(
    .INIT ( 16'hB24D ),
    .LOC ( "SLICE_X2Y6" ))
  flag_2_mux0000_SW0_F (
    .ADR0(A_6_IBUF_1791),
    .ADR1(\Madd__AUX_23_lut<0>_0 ),
    .ADR2(B_6_IBUF_1838),
    .ADR3(c_out_add1_0),
    .O(N160)
  );
  X_LUT4 #(
    .INIT ( 16'hE8B2 ),
    .LOC ( "SLICE_X0Y5" ))
  \Madd_AUX_13_addsub0001_cy<0>2  (
    .ADR0(A_4_IBUF_1792),
    .ADR1(\Madd_D2_cy[3] ),
    .ADR2(A_3_IBUF_1767),
    .ADR3(B_4_IBUF_1806),
    .O(\Madd_AUX_13_addsub0001_cy<0>2_3184 )
  );
  X_LUT4 #(
    .INIT ( 16'hFAAF ),
    .LOC ( "SLICE_X2Y6" ))
  flag_2_mux0000_SW0_G (
    .ADR0(\Madd_AUX_16_addsub0001_lut<0>_0 ),
    .ADR1(VCC),
    .ADR2(Madd_AUX_15_addsub0001_cy[0]),
    .ADR3(A_7_IBUF_1715),
    .O(N161)
  );
  X_LUT4 #(
    .INIT ( 16'hFDFC ),
    .LOC ( "SLICE_X1Y46" ))
  \ans_temp<0>30_SW01  (
    .ADR0(ans_temp_or0004),
    .ADR1(A_0_IBUF_1735),
    .ADR2(B_0_IBUF_1733),
    .ADR3(\Rsa<0>_0 ),
    .O(\ans_temp<0>30_SW0 )
  );
  X_LUT4 #(
    .INIT ( 16'h0020 ),
    .LOC ( "SLICE_X3Y55" ))
  ans_temp_cmp_eq00221 (
    .ADR0(op_dec_3_IBUF_1756),
    .ADR1(op_dec_0_IBUF_1705),
    .ADR2(op_dec_1_IBUF_1706),
    .ADR3(op_dec_2_IBUF_1707),
    .O(ans_temp_cmp_eq00221_3116)
  );
  X_LUT4 #(
    .INIT ( 16'h5404 ),
    .LOC ( "SLICE_X1Y54" ))
  \Rs<1>12  (
    .ADR0(Ls_or0000),
    .ADR1(N49_0),
    .ADR2(B_1_IBUF_1731),
    .ADR3(N50_0),
    .O(\Rs<1>11_3057 )
  );
  X_LUT4 #(
    .INIT ( 16'hE8D4 ),
    .LOC ( "SLICE_X0Y5" ))
  \Madd_AUX_13_addsub0001_cy<0>1  (
    .ADR0(\Madd_D2_cy[3] ),
    .ADR1(Madd_AUX_11_addsub0001_cy[0]),
    .ADR2(A_4_IBUF_1792),
    .ADR3(B_4_IBUF_1806),
    .O(\Madd_AUX_13_addsub0001_cy<0>1_3191 )
  );
  X_LUT4 #(
    .INIT ( 16'hD5C0 ),
    .LOC ( "SLICE_X1Y46" ))
  \ans_temp<0>30_SW02  (
    .ADR0(ans_temp_or0004),
    .ADR1(ans_temp_or0000),
    .ADR2(B_0_IBUF_1733),
    .ADR3(\Rsa<0>_0 ),
    .O(\ans_temp<0>30_SW01_3134 )
  );
  X_LUT4 #(
    .INIT ( 16'hAE0C ),
    .LOC ( "SLICE_X2Y47" ))
  \ans_temp<3>672  (
    .ADR0(\Ls<3>_0 ),
    .ADR1(Mmux_Rsa5_0),
    .ADR2(ans_temp_or0004),
    .ADR3(ans_temp_cmp_eq0021_0),
    .O(\ans_temp<3>672_3159 )
  );
  X_LUT4 #(
    .INIT ( 16'h2230 ),
    .LOC ( "SLICE_X1Y44" ))
  \Ls<5>_F  (
    .ADR0(N31_0),
    .ADR1(Ls_or0000),
    .ADR2(N121_0),
    .ADR3(B_0_IBUF_1733),
    .O(N148)
  );
  X_LUT4 #(
    .INIT ( 16'h0404 ),
    .LOC ( "SLICE_X1Y44" ))
  \Ls<5>_G  (
    .ADR0(Ls_or0000),
    .ADR1(N21),
    .ADR2(B_1_IBUF_1731),
    .ADR3(VCC),
    .O(N149)
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ),
    .LOC ( "SLICE_X1Y3" ))
  A_2_IBUF_rt (
    .ADR0(A_2_IBUF_1697),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(A_2_IBUF_rt_3309)
  );
  X_LUT4 #(
    .INIT ( 16'h3022 ),
    .LOC ( "SLICE_X2Y20" ))
  \Ls<7>31_F  (
    .ADR0(A_7_IBUF_1715),
    .ADR1(B_2_IBUF_1698),
    .ADR2(A_5_IBUF_1749),
    .ADR3(B_1_IBUF_1731),
    .O(N154)
  );
  X_LUT4 #(
    .INIT ( 16'h4450 ),
    .LOC ( "SLICE_X2Y20" ))
  \Ls<7>31_G  (
    .ADR0(B_2_IBUF_1698),
    .ADR1(A_4_IBUF_1792),
    .ADR2(A_6_IBUF_1791),
    .ADR3(B_1_IBUF_1731),
    .O(N155)
  );
  X_LUT4 #(
    .INIT ( 16'hE620 ),
    .LOC ( "SLICE_X2Y3" ))
  \sub1<2>12  (
    .ADR0(B_0_IBUF_1733),
    .ADR1(B_1_IBUF_1731),
    .ADR2(A_0_IBUF_1735),
    .ADR3(A_1_IBUF_1734),
    .O(\sub1<2>11_3284 )
  );
  X_LUT4 #(
    .INIT ( 16'h19DF ),
    .LOC ( "SLICE_X2Y3" ))
  \sub1<2>11  (
    .ADR0(B_0_IBUF_1733),
    .ADR1(B_1_IBUF_1731),
    .ADR2(A_0_IBUF_1735),
    .ADR3(A_1_IBUF_1734),
    .O(\sub1<2>1 )
  );
  X_BUF #(
    .LOC ( "PAD232" ))
  \mem_mux_sel_dec/IFF/IDDRIN_MUX  (
    .I(\mem_mux_sel_dec/INBUF ),
    .O(\mem_mux_sel_dec/IFF/IDDRIN_MUX_2007 )
  );
  X_INV #(
    .LOC ( "PAD232" ))
  \mem_mux_sel_dec/IFF/ISR_USED  (
    .I(reset_IBUF_1690),
    .O(\mem_mux_sel_dec/IFF/ISR_USED_2011 )
  );
  X_BUF #(
    .LOC ( "PAD232" ))
  \mem_mux_sel_dec/IFF/ICLK1INV  (
    .I(clk_BUFGP),
    .O(\mem_mux_sel_dec/IFF/ICLK1INV_2009 )
  );
  X_SFF #(
    .LOC ( "PAD232" ),
    .INIT ( 1'b0 ))
  mem_mux_sel_ex_734 (
    .I(\mem_mux_sel_dec/IFF/IDDRIN_MUX_2007 ),
    .CE(VCC),
    .CLK(\mem_mux_sel_dec/IFF/ICLK1INV_2009 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\mem_mux_sel_dec/IFF/ISR_USED_2011 ),
    .O(mem_mux_sel_ex_OBUF_1692)
  );
  X_BUF #(
    .LOC ( "IPAD228" ))
  \reset/IFF/IMUX  (
    .I(\reset/INBUF ),
    .O(reset_IBUF_1690)
  );
  X_BUF #(
    .LOC ( "PAD188" ))
  \data_in<4>/IFF/IMUX  (
    .I(\data_in<4>/INBUF ),
    .O(data_in_4_IBUF_1693)
  );
  X_BUF #(
    .LOC ( "PAD192" ))
  \data_in<5>/IFF/IMUX  (
    .I(\data_in<5>/INBUF ),
    .O(data_in_5_IBUF_1696)
  );
  X_BUF #(
    .LOC ( "PAD207" ))
  \ans_ex<4>/OUTPUT/OTCLK1INV  (
    .I(clk_BUFGP),
    .O(\ans_ex<4>/OUTPUT/OTCLK1INV_2127 )
  );
  X_LUT4 #(
    .INIT ( 16'hF000 ),
    .LOC ( "SLICE_X0Y0" ))
  \And1<2>1  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(B_2_IBUF_1698),
    .ADR3(A_2_IBUF_1697),
    .O(\And1[2] )
  );
  X_BUF #(
    .LOC ( "PAD207" ))
  \ans_ex<4>/OUTPUT/OFF/OMUX  (
    .I(ans_ex_4_2139),
    .O(\ans_ex<4>/O )
  );
  X_BUF #(
    .LOC ( "PAD207" ))
  \ans_ex<4>/OUTPUT/OFF/OREV_USED  (
    .I(\ans_temp<4>83_3792 ),
    .O(\ans_ex<4>/OUTPUT/OFF/OREV_USED_2137 )
  );
  X_INV #(
    .LOC ( "PAD207" ))
  \ans_ex<4>/OUTPUT/OFF/OSR_USED  (
    .I(reset_IBUF_1690),
    .O(\ans_ex<4>/OUTPUT/OFF/OSR_USED_2135 )
  );
  X_BUF #(
    .LOC ( "PAD207" ))
  \ans_ex<4>/OUTPUT/OFF/O1_DDRMUX  (
    .I(\ans_temp<4>95 ),
    .O(\ans_ex<4>/OUTPUT/OFF/ODDRIN1_MUX )
  );
  X_SFF #(
    .LOC ( "PAD207" ),
    .INIT ( 1'b0 ))
  ans_ex_4 (
    .I(\ans_ex<4>/OUTPUT/OFF/ODDRIN1_MUX ),
    .CE(VCC),
    .CLK(\ans_ex<4>/OUTPUT/OTCLK1INV_2127 ),
    .SET(GND),
    .RST(GND),
    .SSET(\ans_ex<4>/OUTPUT/OFF/OREV_USED_2137 ),
    .SRST(\ans_ex<4>/OUTPUT/OFF/OSR_USED_2135 ),
    .O(ans_ex_4_2139)
  );
  X_LUT4 #(
    .INIT ( 16'h0FF0 ),
    .LOC ( "SLICE_X0Y0" ))
  \Madd_AUX_3_addsub0000_lut<0>1  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(B_2_IBUF_1698),
    .ADR3(A_2_IBUF_1697),
    .O(Madd_AUX_3_addsub0000_lut[0])
  );
  X_LUT4 #(
    .INIT ( 16'h0002 ),
    .LOC ( "SLICE_X1Y4" ))
  flag_1_mux000011 (
    .ADR0(op_dec_2_IBUF_1707),
    .ADR1(op_dec_1_IBUF_1706),
    .ADR2(op_dec_0_IBUF_1705),
    .ADR3(op_dec_4_IBUF_1704),
    .O(N01_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h30C0 ),
    .LOC ( "SLICE_X1Y4" ))
  flag_3_mux000079 (
    .ADR0(VCC),
    .ADR1(flag_3_mux000065),
    .ADR2(N01),
    .ADR3(flag_3_mux000070),
    .O(flag_3_mux000079_2110)
  );
  X_BUF #(
    .LOC ( "PAD203" ))
  \ans_ex<3>/OUTPUT/OFF/O1_DDRMUX  (
    .I(\ans_temp<3>93_3629 ),
    .O(\ans_ex<3>/OUTPUT/OFF/ODDRIN1_MUX )
  );
  X_INV #(
    .LOC ( "PAD203" ))
  \ans_ex<3>/OUTPUT/OFF/OSR_USED  (
    .I(reset_IBUF_1690),
    .O(\ans_ex<3>/OUTPUT/OFF/OSR_USED_2046 )
  );
  X_BUF #(
    .LOC ( "PAD203" ))
  \ans_ex<3>/OUTPUT/OFF/OREV_USED  (
    .I(\ans_temp<3>83_3010 ),
    .O(\ans_ex<3>/OUTPUT/OFF/OREV_USED_2048 )
  );
  X_BUF #(
    .LOC ( "PAD203" ))
  \ans_ex<3>/OUTPUT/OFF/OMUX  (
    .I(ans_ex_3_2050),
    .O(\ans_ex<3>/O )
  );
  X_SFF #(
    .LOC ( "PAD203" ),
    .INIT ( 1'b0 ))
  ans_ex_3 (
    .I(\ans_ex<3>/OUTPUT/OFF/ODDRIN1_MUX ),
    .CE(VCC),
    .CLK(\ans_ex<3>/OUTPUT/OTCLK1INV_2038 ),
    .SET(GND),
    .RST(GND),
    .SSET(\ans_ex<3>/OUTPUT/OFF/OREV_USED_2048 ),
    .SRST(\ans_ex<3>/OUTPUT/OFF/OSR_USED_2046 ),
    .O(ans_ex_3_2050)
  );
  X_BUF #(
    .LOC ( "PAD203" ))
  \ans_ex<3>/OUTPUT/OTCLK1INV  (
    .I(clk_BUFGP),
    .O(\ans_ex<3>/OUTPUT/OTCLK1INV_2038 )
  );
  X_LUT4 #(
    .INIT ( 16'hAAF0 ),
    .LOC ( "SLICE_X0Y55" ))
  Sh341 (
    .ADR0(A_0_IBUF_1735),
    .ADR1(VCC),
    .ADR2(A_1_IBUF_1734),
    .ADR3(B_0_IBUF_1733),
    .O(N21_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'hFFF8 ),
    .LOC ( "SLICE_X2Y39" ))
  \ans_temp<4>50  (
    .ADR0(\Ls<4>_0 ),
    .ADR1(ans_temp_cmp_eq0021_0),
    .ADR2(\ans_temp<4>20_1720 ),
    .ADR3(\ans_temp<4>34_0 ),
    .O(\ans_temp<4>50_2208 )
  );
  X_BUF #(
    .LOC ( "PAD227" ))
  \mem_en_dec/IFF/IDDRIN_MUX  (
    .I(\mem_en_dec/INBUF ),
    .O(\mem_en_dec/IFF/IDDRIN_MUX_2251 )
  );
  X_INV #(
    .LOC ( "PAD227" ))
  \mem_en_dec/IFF/ISR_USED  (
    .I(reset_IBUF_1690),
    .O(\mem_en_dec/IFF/ISR_USED_2255 )
  );
  X_BUF #(
    .LOC ( "PAD227" ))
  \mem_en_dec/IFF/ICLK1INV  (
    .I(clk_BUFGP),
    .O(\mem_en_dec/IFF/ICLK1INV_2253 )
  );
  X_LUT4 #(
    .INIT ( 16'h0010 ),
    .LOC ( "SLICE_X0Y55" ))
  \Ls<1>1  (
    .ADR0(B_2_IBUF_1698),
    .ADR1(B_1_IBUF_1731),
    .ADR2(N21),
    .ADR3(Ls_or0000),
    .O(Ls[1])
  );
  X_SFF #(
    .LOC ( "PAD227" ),
    .INIT ( 1'b0 ))
  mem_en_ex_848 (
    .I(\mem_en_dec/IFF/IDDRIN_MUX_2251 ),
    .CE(VCC),
    .CLK(\mem_en_dec/IFF/ICLK1INV_2253 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\mem_en_dec/IFF/ISR_USED_2255 ),
    .O(mem_en_ex_OBUF_1737)
  );
  X_LUT4 #(
    .INIT ( 16'h0002 ),
    .LOC ( "SLICE_X0Y16" ))
  flag_1_mux0000625_SW0 (
    .ADR0(flag_1_mux0000578_0),
    .ADR1(\Madd__AUX_23_lut<0>_0 ),
    .ADR2(Madd__AUX_22_lut[0]),
    .ADR3(Madd__AUX_24_lut[0]),
    .O(N102)
  );
  X_LUT4 #(
    .INIT ( 16'hFEFC ),
    .LOC ( "SLICE_X2Y39" ))
  \ans_temp<4>20  (
    .ADR0(\Madd_AUX_5_addsub0000_lut<0>_0 ),
    .ADR1(\ans_temp<4>9_0 ),
    .ADR2(\ans_temp<4>4_0 ),
    .ADR3(N6),
    .O(\ans_temp<4>20_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h9966 ),
    .LOC ( "SLICE_X0Y16" ))
  \Madd__AUX_24_lut<0>1  (
    .ADR0(B_7_IBUF_1716),
    .ADR1(A_7_IBUF_1715),
    .ADR2(VCC),
    .ADR3(cin_add1[6]),
    .O(\Madd__AUX_24_lut<0>_pack_1 )
  );
  X_BUF #(
    .LOC ( "PAD217" ))
  \data_in<6>/IFF/IMUX  (
    .I(\data_in<6>/INBUF ),
    .O(data_in_6_IBUF_1729)
  );
  X_BUF #(
    .LOC ( "PAD206" ))
  \ans_ex<5>/OUTPUT/OFF/O1_DDRMUX  (
    .I(\ans_temp<5>93 ),
    .O(\ans_ex<5>/OUTPUT/OFF/ODDRIN1_MUX )
  );
  X_INV #(
    .LOC ( "PAD206" ))
  \ans_ex<5>/OUTPUT/OFF/OSR_USED  (
    .I(reset_IBUF_1690),
    .O(\ans_ex<5>/OUTPUT/OFF/OSR_USED_2284 )
  );
  X_BUF #(
    .LOC ( "PAD206" ))
  \ans_ex<5>/OUTPUT/OFF/OREV_USED  (
    .I(\ans_temp<5>68_3936 ),
    .O(\ans_ex<5>/OUTPUT/OFF/OREV_USED_2286 )
  );
  X_BUF #(
    .LOC ( "PAD206" ))
  \ans_ex<5>/OUTPUT/OFF/OMUX  (
    .I(ans_ex_5_2288),
    .O(\ans_ex<5>/O )
  );
  X_SFF #(
    .LOC ( "PAD206" ),
    .INIT ( 1'b0 ))
  ans_ex_5 (
    .I(\ans_ex<5>/OUTPUT/OFF/ODDRIN1_MUX ),
    .CE(VCC),
    .CLK(\ans_ex<5>/OUTPUT/OTCLK1INV_2276 ),
    .SET(GND),
    .RST(GND),
    .SSET(\ans_ex<5>/OUTPUT/OFF/OREV_USED_2286 ),
    .SRST(\ans_ex<5>/OUTPUT/OFF/OSR_USED_2284 ),
    .O(ans_ex_5_2288)
  );
  X_BUF #(
    .LOC ( "PAD206" ))
  \ans_ex<5>/OUTPUT/OTCLK1INV  (
    .I(clk_BUFGP),
    .O(\ans_ex<5>/OUTPUT/OTCLK1INV_2276 )
  );
  X_SFF #(
    .LOC ( "IPAD224" ),
    .INIT ( 1'b0 ))
  RW_ex_0 (
    .I(\RW_dec<0>/IFF/IDDRIN_MUX_2176 ),
    .CE(VCC),
    .CLK(\RW_dec<0>/IFF/ICLK1INV_2178 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\RW_dec<0>/IFF/ISR_USED_2180 ),
    .O(RW_ex_0_1719)
  );
  X_BUF #(
    .LOC ( "IPAD224" ))
  \RW_dec<0>/IFF/IDDRIN_MUX  (
    .I(\RW_dec<0>/INBUF ),
    .O(\RW_dec<0>/IFF/IDDRIN_MUX_2176 )
  );
  X_INV #(
    .LOC ( "IPAD224" ))
  \RW_dec<0>/IFF/ISR_USED  (
    .I(reset_IBUF_1690),
    .O(\RW_dec<0>/IFF/ISR_USED_2180 )
  );
  X_BUF #(
    .LOC ( "IPAD224" ))
  \RW_dec<0>/IFF/ICLK1INV  (
    .I(clk_BUFGP),
    .O(\RW_dec<0>/IFF/ICLK1INV_2178 )
  );
  X_LUT4 #(
    .INIT ( 16'h0020 ),
    .LOC ( "SLICE_X3Y48" ))
  flag_1_mux000021 (
    .ADR0(op_dec_2_IBUF_1707),
    .ADR1(op_dec_1_IBUF_1706),
    .ADR2(op_dec_0_IBUF_1705),
    .ADR3(op_dec_4_IBUF_1704),
    .O(N3_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'hFC28 ),
    .LOC ( "SLICE_X3Y48" ))
  \ans_temp<5>27_SW0_SW0  (
    .ADR0(N6),
    .ADR1(A_5_IBUF_1749),
    .ADR2(B_5_IBUF_1750),
    .ADR3(N3),
    .O(N126)
  );
  X_LUT4 #(
    .INIT ( 16'hF000 ),
    .LOC ( "SLICE_X2Y0" ))
  \And1<1>1  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(A_1_IBUF_1734),
    .ADR3(B_1_IBUF_1731),
    .O(\And1[1] )
  );
  X_BUF #(
    .LOC ( "PAD202" ))
  \ans_ex<6>/OUTPUT/OTCLK1INV  (
    .I(clk_BUFGP),
    .O(\ans_ex<6>/OUTPUT/OTCLK1INV_2404 )
  );
  X_SFF #(
    .LOC ( "PAD202" ),
    .INIT ( 1'b0 ))
  ans_ex_6 (
    .I(\ans_ex<6>/OUTPUT/OFF/ODDRIN1_MUX ),
    .CE(VCC),
    .CLK(\ans_ex<6>/OUTPUT/OTCLK1INV_2404 ),
    .SET(GND),
    .RST(GND),
    .SSET(\ans_ex<6>/OUTPUT/OFF/OREV_USED_2414 ),
    .SRST(\ans_ex<6>/OUTPUT/OFF/OSR_USED_2412 ),
    .O(ans_ex_6_2416)
  );
  X_BUF #(
    .LOC ( "PAD202" ))
  \ans_ex<6>/OUTPUT/OFF/OMUX  (
    .I(ans_ex_6_2416),
    .O(\ans_ex<6>/O )
  );
  X_BUF #(
    .LOC ( "PAD202" ))
  \ans_ex<6>/OUTPUT/OFF/OREV_USED  (
    .I(\ans_temp<6>81_4584 ),
    .O(\ans_ex<6>/OUTPUT/OFF/OREV_USED_2414 )
  );
  X_INV #(
    .LOC ( "PAD202" ))
  \ans_ex<6>/OUTPUT/OFF/OSR_USED  (
    .I(reset_IBUF_1690),
    .O(\ans_ex<6>/OUTPUT/OFF/OSR_USED_2412 )
  );
  X_BUF #(
    .LOC ( "PAD202" ))
  \ans_ex<6>/OUTPUT/OFF/O1_DDRMUX  (
    .I(\ans_temp<6>92 ),
    .O(\ans_ex<6>/OUTPUT/OFF/ODDRIN1_MUX )
  );
  X_LUT4 #(
    .INIT ( 16'hFFF0 ),
    .LOC ( "SLICE_X2Y0" ))
  \Or1<1>1  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(A_1_IBUF_1734),
    .ADR3(B_1_IBUF_1731),
    .O(Or1[1])
  );
  X_LUT4 #(
    .INIT ( 16'h6996 ),
    .LOC ( "SLICE_X1Y47" ))
  flag_3_mux00009 (
    .ADR0(data_in_6_IBUF_1729),
    .ADR1(data_in_5_IBUF_1696),
    .ADR2(data_in_7_IBUF_1743),
    .ADR3(data_in_4_IBUF_1693),
    .O(flag_3_mux00009_2305)
  );
  X_BUF #(
    .LOC ( "PAD193" ))
  \data_in<7>/IFF/IMUX  (
    .I(\data_in<7>/INBUF ),
    .O(data_in_7_IBUF_1743)
  );
  X_LUT4 #(
    .INIT ( 16'hDC50 ),
    .LOC ( "SLICE_X1Y47" ))
  \ans_temp<5>44  (
    .ADR0(ans_temp_or0004),
    .ADR1(ans_temp_or0003_0),
    .ADR2(\Rsa<5>_0 ),
    .ADR3(data_in_5_IBUF_1696),
    .O(\ans_temp<5>44_2312 )
  );
  X_BUF #(
    .LOC ( "IPAD219" ))
  \RW_dec<1>/IFF/IDDRIN_MUX  (
    .I(\RW_dec<1>/INBUF ),
    .O(\RW_dec<1>/IFF/IDDRIN_MUX_2325 )
  );
  X_INV #(
    .LOC ( "IPAD219" ))
  \RW_dec<1>/IFF/ISR_USED  (
    .I(reset_IBUF_1690),
    .O(\RW_dec<1>/IFF/ISR_USED_2329 )
  );
  X_BUF #(
    .LOC ( "IPAD219" ))
  \RW_dec<1>/IFF/ICLK1INV  (
    .I(clk_BUFGP),
    .O(\RW_dec<1>/IFF/ICLK1INV_2327 )
  );
  X_SFF #(
    .LOC ( "IPAD219" ),
    .INIT ( 1'b0 ))
  RW_ex_1 (
    .I(\RW_dec<1>/IFF/IDDRIN_MUX_2325 ),
    .CE(VCC),
    .CLK(\RW_dec<1>/IFF/ICLK1INV_2327 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\RW_dec<1>/IFF/ISR_USED_2329 ),
    .O(RW_ex_1_1746)
  );
  X_BUF #(
    .LOC ( "IPAD214" ))
  \RW_dec<2>/IFF/IDDRIN_MUX  (
    .I(\RW_dec<2>/INBUF ),
    .O(\RW_dec<2>/IFF/IDDRIN_MUX_2453 )
  );
  X_INV #(
    .LOC ( "IPAD214" ))
  \RW_dec<2>/IFF/ISR_USED  (
    .I(reset_IBUF_1690),
    .O(\RW_dec<2>/IFF/ISR_USED_2457 )
  );
  X_BUF #(
    .LOC ( "IPAD214" ))
  \RW_dec<2>/IFF/ICLK1INV  (
    .I(clk_BUFGP),
    .O(\RW_dec<2>/IFF/ICLK1INV_2455 )
  );
  X_BUF #(
    .LOC ( "IPAD209" ))
  \RW_dec<3>/IFF/IDDRIN_MUX  (
    .I(\RW_dec<3>/INBUF ),
    .O(\RW_dec<3>/IFF/IDDRIN_MUX_2527 )
  );
  X_INV #(
    .LOC ( "IPAD209" ))
  \RW_dec<3>/IFF/ISR_USED  (
    .I(reset_IBUF_1690),
    .O(\RW_dec<3>/IFF/ISR_USED_2531 )
  );
  X_BUF #(
    .LOC ( "IPAD209" ))
  \RW_dec<3>/IFF/ICLK1INV  (
    .I(clk_BUFGP),
    .O(\RW_dec<3>/IFF/ICLK1INV_2529 )
  );
  X_SFF #(
    .LOC ( "IPAD209" ),
    .INIT ( 1'b0 ))
  RW_ex_3 (
    .I(\RW_dec<3>/IFF/IDDRIN_MUX_2527 ),
    .CE(VCC),
    .CLK(\RW_dec<3>/IFF/ICLK1INV_2529 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\RW_dec<3>/IFF/ISR_USED_2531 ),
    .O(RW_ex_3_1766)
  );
  X_LUT4 #(
    .INIT ( 16'hE000 ),
    .LOC ( "SLICE_X8Y1" ))
  \data_out_buff<0>1  (
    .ADR0(N22),
    .ADR1(op_dec_3_IBUF_1756),
    .ADR2(op_dec_4_IBUF_1704),
    .ADR3(A_0_IBUF_1735),
    .O(data_out_buff[0])
  );
  X_SFF #(
    .LOC ( "IPAD214" ),
    .INIT ( 1'b0 ))
  RW_ex_2 (
    .I(\RW_dec<2>/IFF/IDDRIN_MUX_2453 ),
    .CE(VCC),
    .CLK(\RW_dec<2>/IFF/ICLK1INV_2455 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\RW_dec<2>/IFF/ISR_USED_2457 ),
    .O(RW_ex_2_1759)
  );
  X_BUF #(
    .LOC ( "PAD196" ))
  \ans_ex<7>/OUTPUT/OTCLK1INV  (
    .I(clk_BUFGP),
    .O(\ans_ex<7>/OUTPUT/OTCLK1INV_2502 )
  );
  X_LUT4 #(
    .INIT ( 16'hE000 ),
    .LOC ( "SLICE_X8Y1" ))
  \data_out_buff<1>1  (
    .ADR0(N22),
    .ADR1(op_dec_3_IBUF_1756),
    .ADR2(op_dec_4_IBUF_1704),
    .ADR3(A_1_IBUF_1734),
    .O(data_out_buff[1])
  );
  X_LUT4 #(
    .INIT ( 16'hFA0A ),
    .LOC ( "SLICE_X3Y32" ))
  Sh511 (
    .ADR0(A_5_IBUF_1749),
    .ADR1(VCC),
    .ADR2(B_1_IBUF_1731),
    .ADR3(A_3_IBUF_1767),
    .O(N121)
  );
  X_LUT4 #(
    .INIT ( 16'hAEBF ),
    .LOC ( "SLICE_X3Y32" ))
  \Ls<4>_SW1  (
    .ADR0(B_2_IBUF_1698),
    .ADR1(B_1_IBUF_1731),
    .ADR2(A_1_IBUF_1734),
    .ADR3(A_3_IBUF_1767),
    .O(N60)
  );
  X_SFF #(
    .LOC ( "PAD196" ),
    .INIT ( 1'b0 ))
  ans_ex_7 (
    .I(\ans_ex<7>/OUTPUT/OFF/ODDRIN1_MUX ),
    .CE(VCC),
    .CLK(\ans_ex<7>/OUTPUT/OTCLK1INV_2502 ),
    .SET(GND),
    .RST(GND),
    .SSET(\ans_ex<7>/OUTPUT/OFF/OREV_USED_2512 ),
    .SRST(\ans_ex<7>/OUTPUT/OFF/OSR_USED_2510 ),
    .O(ans_ex_7_2514)
  );
  X_BUF #(
    .LOC ( "PAD196" ))
  \ans_ex<7>/OUTPUT/OFF/OMUX  (
    .I(ans_ex_7_2514),
    .O(\ans_ex<7>/O )
  );
  X_BUF #(
    .LOC ( "PAD196" ))
  \ans_ex<7>/OUTPUT/OFF/OREV_USED  (
    .I(\ans_temp<7>62_4397 ),
    .O(\ans_ex<7>/OUTPUT/OFF/OREV_USED_2512 )
  );
  X_INV #(
    .LOC ( "PAD196" ))
  \ans_ex<7>/OUTPUT/OFF/OSR_USED  (
    .I(reset_IBUF_1690),
    .O(\ans_ex<7>/OUTPUT/OFF/OSR_USED_2510 )
  );
  X_BUF #(
    .LOC ( "PAD196" ))
  \ans_ex<7>/OUTPUT/OFF/O1_DDRMUX  (
    .I(\ans_temp<7>88 ),
    .O(\ans_ex<7>/OUTPUT/OFF/ODDRIN1_MUX )
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ),
    .LOC ( "SLICE_X0Y12" ))
  flag_1_mux0000465 (
    .ADR0(\Madd_AUX_5_addsub0000_lut<0>_0 ),
    .ADR1(\Madd_AUX_6_addsub0000_lut<0>_0 ),
    .ADR2(\Madd_AUX_7_addsub0000_lut<0>_0 ),
    .ADR3(Madd_AUX_2_addsub0000_lut[0]),
    .O(flag_1_mux0000465_2485)
  );
  X_LUT4 #(
    .INIT ( 16'h33CC ),
    .LOC ( "SLICE_X0Y12" ))
  \Madd_AUX_2_addsub0000_lut<0>1  (
    .ADR0(VCC),
    .ADR1(A_1_IBUF_1734),
    .ADR2(VCC),
    .ADR3(B_1_IBUF_1731),
    .O(\Madd_AUX_2_addsub0000_lut<0>_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hF0F6 ),
    .LOC ( "SLICE_X1Y34" ))
  flag_3_mux0000202 (
    .ADR0(flag_3_mux0000178_0),
    .ADR1(flag_3_mux0000181_0),
    .ADR2(flag_3_mux0000160_1779),
    .ADR3(ans_temp_or0004),
    .O(flag_3_mux0000202_2663)
  );
  X_LUT4 #(
    .INIT ( 16'h1000 ),
    .LOC ( "SLICE_X0Y54" ))
  \ans_temp<6>921  (
    .ADR0(op_dec_4_IBUF_1704),
    .ADR1(op_dec_0_IBUF_1705),
    .ADR2(N24),
    .ADR3(\Madd__AUX_23_lut<0>_0 ),
    .O(\ans_temp<6>92 )
  );
  X_BUF #(
    .LOC ( "IPAD189" ))
  \op_dec<1>/IFF/IMUX  (
    .I(\op_dec<1>/INBUF ),
    .O(op_dec_1_IBUF_1706)
  );
  X_BUF #(
    .LOC ( "PAD186" ))
  \op_dec<2>/IFF/IMUX  (
    .I(\op_dec<2>/INBUF ),
    .O(op_dec_2_IBUF_1707)
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ),
    .LOC ( "SLICE_X1Y24" ))
  flag_1_mux000031 (
    .ADR0(op_dec_0_IBUF_1705),
    .ADR1(op_dec_4_IBUF_1704),
    .ADR2(op_dec_2_IBUF_1707),
    .ADR3(op_dec_1_IBUF_1706),
    .O(N4_pack_1)
  );
  X_BUF #(
    .LOC ( "PAD229" ))
  \mem_rw_ex/OUTPUT/OFF/O1_DDRMUX  (
    .I(\mem_rw_dec/INBUF ),
    .O(\mem_rw_ex/OUTPUT/OFF/ODDRIN1_MUX )
  );
  X_INV #(
    .LOC ( "PAD229" ))
  \mem_rw_ex/OUTPUT/OFF/OSR_USED  (
    .I(reset_IBUF_1690),
    .O(\mem_rw_ex/OUTPUT/OFF/OSR_USED_2625 )
  );
  X_BUF #(
    .LOC ( "PAD229" ))
  \mem_rw_ex/OUTPUT/OFF/OMUX  (
    .I(mem_rw_ex_OBUF_2627),
    .O(\mem_rw_ex/O )
  );
  X_BUF #(
    .LOC ( "PAD229" ))
  \mem_rw_ex/OUTPUT/OTCLK1INV  (
    .I(clk_BUFGP),
    .O(\mem_rw_ex/OUTPUT/OTCLK1INV_2618 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ),
    .LOC ( "SLICE_X1Y34" ))
  flag_3_mux0000160 (
    .ADR0(flag_3_mux0000140_0),
    .ADR1(flag_3_mux0000115_0),
    .ADR2(flag_3_mux000051_0),
    .ADR3(flag_3_mux000079_0),
    .O(flag_3_mux0000160_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h1000 ),
    .LOC ( "SLICE_X0Y54" ))
  \ans_temp<4>951  (
    .ADR0(op_dec_4_IBUF_1704),
    .ADR1(op_dec_0_IBUF_1705),
    .ADR2(N24),
    .ADR3(\Madd__AUX_21_lut<0>_0 ),
    .O(\ans_temp<4>95 )
  );
  X_SFF #(
    .LOC ( "PAD229" ),
    .INIT ( 1'b0 ))
  mem_rw_ex_1017 (
    .I(\mem_rw_ex/OUTPUT/OFF/ODDRIN1_MUX ),
    .CE(VCC),
    .CLK(\mem_rw_ex/OUTPUT/OTCLK1INV_2618 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\mem_rw_ex/OUTPUT/OFF/OSR_USED_2625 ),
    .O(mem_rw_ex_OBUF_2627)
  );
  X_SFF #(
    .LOC ( "PAD220" ),
    .INIT ( 1'b0 ))
  RW_ex_4 (
    .I(\RW_dec<4>/IFF/IDDRIN_MUX_2572 ),
    .CE(VCC),
    .CLK(\RW_dec<4>/IFF/ICLK1INV_2574 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\RW_dec<4>/IFF/ISR_USED_2576 ),
    .O(RW_ex_4_1770)
  );
  X_BUF #(
    .LOC ( "PAD220" ))
  \RW_dec<4>/IFF/IDDRIN_MUX  (
    .I(\RW_dec<4>/INBUF ),
    .O(\RW_dec<4>/IFF/IDDRIN_MUX_2572 )
  );
  X_INV #(
    .LOC ( "PAD220" ))
  \RW_dec<4>/IFF/ISR_USED  (
    .I(reset_IBUF_1690),
    .O(\RW_dec<4>/IFF/ISR_USED_2576 )
  );
  X_BUF #(
    .LOC ( "PAD220" ))
  \RW_dec<4>/IFF/ICLK1INV  (
    .I(clk_BUFGP),
    .O(\RW_dec<4>/IFF/ICLK1INV_2574 )
  );
  X_BUF #(
    .LOC ( "PAD187" ))
  \op_dec<0>/IFF/IMUX  (
    .I(\op_dec<0>/INBUF ),
    .O(op_dec_0_IBUF_1705)
  );
  X_LUT4 #(
    .INIT ( 16'hFEEE ),
    .LOC ( "SLICE_X1Y24" ))
  flag_3_mux0000398 (
    .ADR0(flag_3_mux0000303_0),
    .ADR1(flag_3_mux0000343_0),
    .ADR2(N4),
    .ADR3(flag_3_mux0000383_0),
    .O(flag_ex_3_OBUF_2604)
  );
  X_LUT4 #(
    .INIT ( 16'hC800 ),
    .LOC ( "SLICE_X12Y1" ))
  \data_out_buff<2>1  (
    .ADR0(N22),
    .ADR1(op_dec_4_IBUF_1704),
    .ADR2(op_dec_3_IBUF_1756),
    .ADR3(A_2_IBUF_1697),
    .O(data_out_buff[2])
  );
  X_LUT4 #(
    .INIT ( 16'h0E04 ),
    .LOC ( "SLICE_X3Y20" ))
  \Ls<6>_SW02  (
    .ADR0(B_1_IBUF_1731),
    .ADR1(A_6_IBUF_1791),
    .ADR2(B_0_IBUF_1733),
    .ADR3(A_4_IBUF_1792),
    .O(\Ls<6>_SW01_2739 )
  );
  X_LUT4 #(
    .INIT ( 16'h0010 ),
    .LOC ( "SLICE_X0Y15" ))
  flag_1_mux0000452 (
    .ADR0(\Madd_AUX_8_addsub0000_lut<0>_0 ),
    .ADR1(\Madd_AUX_3_addsub0000_lut<0>_0 ),
    .ADR2(N6),
    .ADR3(Madd_AUX_4_addsub0000_lut[0]),
    .O(flag_1_mux0000452_2722)
  );
  X_LUT4 #(
    .INIT ( 16'h0020 ),
    .LOC ( "SLICE_X0Y15" ))
  flag_1_mux000041 (
    .ADR0(op_dec_1_IBUF_1706),
    .ADR1(op_dec_0_IBUF_1705),
    .ADR2(op_dec_2_IBUF_1707),
    .ADR3(op_dec_4_IBUF_1704),
    .O(N6_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'hE4E4 ),
    .LOC ( "SLICE_X1Y41" ))
  Mmux_Rsa6_F (
    .ADR0(B_1_IBUF_1731),
    .ADR1(N49_0),
    .ADR2(N50_0),
    .ADR3(VCC),
    .O(N152)
  );
  X_LUT4 #(
    .INIT ( 16'hFEAE ),
    .LOC ( "SLICE_X3Y20" ))
  \Ls<6>_SW01  (
    .ADR0(B_0_IBUF_1733),
    .ADR1(A_6_IBUF_1791),
    .ADR2(B_1_IBUF_1731),
    .ADR3(A_4_IBUF_1792),
    .O(\Ls<6>_SW0 )
  );
  X_LUT4 #(
    .INIT ( 16'hC800 ),
    .LOC ( "SLICE_X12Y1" ))
  \data_out_buff<3>1  (
    .ADR0(N22),
    .ADR1(op_dec_4_IBUF_1704),
    .ADR2(op_dec_3_IBUF_1756),
    .ADR3(A_3_IBUF_1767),
    .O(data_out_buff[3])
  );
  X_LUT4 #(
    .INIT ( 16'hFC30 ),
    .LOC ( "SLICE_X3Y37" ))
  Mmux_Rsa8_F (
    .ADR0(VCC),
    .ADR1(B_1_IBUF_1731),
    .ADR2(\B<0>_mmx_out2_0 ),
    .ADR3(\B<0>_mmx_out_0 ),
    .O(N156)
  );
  X_LUT4 #(
    .INIT ( 16'h00CC ),
    .LOC ( "SLICE_X3Y3" ))
  Sh21 (
    .ADR0(VCC),
    .ADR1(A_0_IBUF_1735),
    .ADR2(VCC),
    .ADR3(B_0_IBUF_1733),
    .O(Sh22_2820)
  );
  X_LUT4 #(
    .INIT ( 16'hF0E2 ),
    .LOC ( "SLICE_X3Y37" ))
  Mmux_Rsa8_G (
    .ADR0(A_6_IBUF_1791),
    .ADR1(B_1_IBUF_1731),
    .ADR2(A_7_IBUF_1715),
    .ADR3(B_0_IBUF_1733),
    .O(N157)
  );
  X_LUT4 #(
    .INIT ( 16'hE260 ),
    .LOC ( "SLICE_X1Y3" ))
  \Madd_AUX_11_addsub0001_cy<0>1  (
    .ADR0(B_0_IBUF_1733),
    .ADR1(B_1_IBUF_1731),
    .ADR2(A_1_IBUF_1734),
    .ADR3(A_0_IBUF_1735),
    .O(\Madd_AUX_11_addsub0001_cy<0>1_3316 )
  );
  X_LUT4 #(
    .INIT ( 16'hAFA0 ),
    .LOC ( "SLICE_X1Y41" ))
  Mmux_Rsa6_G (
    .ADR0(A_7_IBUF_1715),
    .ADR1(VCC),
    .ADR2(B_1_IBUF_1731),
    .ADR3(\B<0>_mmx_out4 ),
    .O(N153)
  );
  X_LUT4 #(
    .INIT ( 16'hCCF0 ),
    .LOC ( "SLICE_X3Y3" ))
  Sh22 (
    .ADR0(VCC),
    .ADR1(A_1_IBUF_1734),
    .ADR2(A_2_IBUF_1697),
    .ADR3(B_0_IBUF_1733),
    .O(Sh23)
  );
  X_LUT4 #(
    .INIT ( 16'hABA8 ),
    .LOC ( "SLICE_X3Y35" ))
  Mmux_Rsa121 (
    .ADR0(A_7_IBUF_1715),
    .ADR1(B_2_IBUF_1698),
    .ADR2(B_1_IBUF_1731),
    .ADR3(\B<0>_mmx_out4 ),
    .O(\Rsa[5] )
  );
  X_LUT4 #(
    .INIT ( 16'h6969 ),
    .LOC ( "SLICE_X0Y7" ))
  \Madd_AUX_15_addsub0001_lut<0>1  (
    .ADR0(A_6_IBUF_1791),
    .ADR1(B_6_IBUF_1838),
    .ADR2(\Madd_D2_cy[5] ),
    .ADR3(VCC),
    .O(Madd_AUX_15_addsub0001_lut[0])
  );
  X_LUT4 #(
    .INIT ( 16'h0010 ),
    .LOC ( "SLICE_X0Y46" ))
  \Rs<6>1  (
    .ADR0(Ls_or0000),
    .ADR1(B_1_IBUF_1731),
    .ADR2(\B<0>_mmx_out3 ),
    .ADR3(B_2_IBUF_1698),
    .O(Rs[6])
  );
  X_LUT4 #(
    .INIT ( 16'hEE22 ),
    .LOC ( "SLICE_X2Y35" ))
  Sh17_SW1 (
    .ADR0(A_3_IBUF_1767),
    .ADR1(B_0_IBUF_1733),
    .ADR2(VCC),
    .ADR3(A_4_IBUF_1792),
    .O(N50)
  );
  X_LUT4 #(
    .INIT ( 16'h4450 ),
    .LOC ( "SLICE_X1Y20" ))
  \Ls<6>  (
    .ADR0(Ls_or0000),
    .ADR1(Sh2),
    .ADR2(N411),
    .ADR3(B_2_IBUF_1698),
    .O(Ls[6])
  );
  X_LUT4 #(
    .INIT ( 16'h0022 ),
    .LOC ( "SLICE_X0Y7" ))
  \Madd_D2_cy<5>11  (
    .ADR0(\Madd_D2_cy[3] ),
    .ADR1(B_5_IBUF_1750),
    .ADR2(VCC),
    .ADR3(B_4_IBUF_1806),
    .O(\Madd_D2_cy<5>_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hCC80 ),
    .LOC ( "SLICE_X3Y38" ))
  \ans_temp<6>9  (
    .ADR0(B_6_IBUF_1838),
    .ADR1(A_6_IBUF_1791),
    .ADR2(N01),
    .ADR3(ans_temp_or0002),
    .O(\ans_temp<6>9_4212 )
  );
  X_LUT4 #(
    .INIT ( 16'h33CC ),
    .LOC ( "SLICE_X0Y2" ))
  \Madd_AUX_8_addsub0000_lut<0>1  (
    .ADR0(VCC),
    .ADR1(B_7_IBUF_1716),
    .ADR2(VCC),
    .ADR3(A_7_IBUF_1715),
    .O(Madd_AUX_8_addsub0000_lut[0])
  );
  X_LUT4 #(
    .INIT ( 16'hECCC ),
    .LOC ( "SLICE_X2Y24" ))
  \ans_temp<7>14  (
    .ADR0(N01),
    .ADR1(N132_0),
    .ADR2(A_7_IBUF_1715),
    .ADR3(B_7_IBUF_1716),
    .O(\ans_temp<7>14_4179 )
  );
  X_LUT4 #(
    .INIT ( 16'hE2E2 ),
    .LOC ( "SLICE_X0Y46" ))
  \B<0>31  (
    .ADR0(A_6_IBUF_1791),
    .ADR1(B_0_IBUF_1733),
    .ADR2(A_7_IBUF_1715),
    .ADR3(VCC),
    .O(\B<0>_mmx_out3_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hF0AA ),
    .LOC ( "SLICE_X3Y35" ))
  \B<0>41  (
    .ADR0(A_5_IBUF_1749),
    .ADR1(VCC),
    .ADR2(A_6_IBUF_1791),
    .ADR3(B_0_IBUF_1733),
    .O(\B<0>_mmx_out4_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hAE0C ),
    .LOC ( "SLICE_X0Y48" ))
  \ans_temp<6>44  (
    .ADR0(ans_temp_or0003_0),
    .ADR1(\Rsa[6] ),
    .ADR2(ans_temp_or0004),
    .ADR3(data_in_6_IBUF_1729),
    .O(\ans_temp<6>44_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hDCA8 ),
    .LOC ( "SLICE_X3Y38" ))
  \ans_temp<6>27_SW0_SW0  (
    .ADR0(B_6_IBUF_1838),
    .ADR1(N3),
    .ADR2(N6),
    .ADR3(A_6_IBUF_1791),
    .O(N128)
  );
  X_LUT4 #(
    .INIT ( 16'hCC00 ),
    .LOC ( "SLICE_X0Y2" ))
  \And1<7>1  (
    .ADR0(VCC),
    .ADR1(B_7_IBUF_1716),
    .ADR2(VCC),
    .ADR3(A_7_IBUF_1715),
    .O(\And1[7] )
  );
  X_LUT4 #(
    .INIT ( 16'hFFAA ),
    .LOC ( "SLICE_X2Y24" ))
  \Or1<7>1  (
    .ADR0(A_7_IBUF_1715),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(B_7_IBUF_1716),
    .O(Or1[7])
  );
  X_LUT4 #(
    .INIT ( 16'hFFF8 ),
    .LOC ( "SLICE_X0Y48" ))
  \ans_temp<6>52  (
    .ADR0(\Rs<6>_0 ),
    .ADR1(ans_temp_cmp_eq0022),
    .ADR2(\ans_temp<6>27 ),
    .ADR3(\ans_temp<6>44_1903 ),
    .O(\ans_temp<6>52_4116 )
  );
  X_LUT4 #(
    .INIT ( 16'h000C ),
    .LOC ( "SLICE_X1Y20" ))
  \Ls<3>1  (
    .ADR0(VCC),
    .ADR1(Sh3),
    .ADR2(Ls_or0000),
    .ADR3(B_2_IBUF_1698),
    .O(Ls[3])
  );
  X_LUT4 #(
    .INIT ( 16'hFFF0 ),
    .LOC ( "SLICE_X0Y10" ))
  \Or1<5>1  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(B_5_IBUF_1750),
    .ADR3(A_5_IBUF_1749),
    .O(Or1[5])
  );
  X_LUT4 #(
    .INIT ( 16'hEB82 ),
    .LOC ( "SLICE_X0Y9" ))
  \Madd_AUX_15_addsub0001_cy<0>  (
    .ADR0(N76_0),
    .ADR1(B_6_IBUF_1838),
    .ADR2(\Madd_D2_cy[5] ),
    .ADR3(A_6_IBUF_1791),
    .O(\Madd_AUX_15_addsub0001_cy<0>_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h32E2 ),
    .LOC ( "SLICE_X0Y11" ))
  \ans_temp<7>36  (
    .ADR0(ans_temp_or0001),
    .ADR1(B_7_IBUF_1716),
    .ADR2(N6),
    .ADR3(A_7_IBUF_1715),
    .O(\ans_temp<7>36_4349 )
  );
  X_LUT4 #(
    .INIT ( 16'h0FF0 ),
    .LOC ( "SLICE_X0Y9" ))
  \sub1<7>1  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(Madd_AUX_15_addsub0001_cy[0]),
    .ADR3(\Madd_AUX_16_addsub0001_lut<0>_0 ),
    .O(\sub1[7] )
  );
  X_LUT4 #(
    .INIT ( 16'h6996 ),
    .LOC ( "SLICE_X2Y34" ))
  flag_3_mux000034 (
    .ADR0(B_4_IBUF_1806),
    .ADR1(B_5_IBUF_1750),
    .ADR2(B_7_IBUF_1716),
    .ADR3(B_6_IBUF_1838),
    .O(flag_3_mux000034_4419)
  );
  X_LUT4 #(
    .INIT ( 16'h4F8F ),
    .LOC ( "SLICE_X0Y37" ))
  flag_3_mux000051 (
    .ADR0(flag_3_mux000029_0),
    .ADR1(ans_temp_or0000),
    .ADR2(N92),
    .ADR3(flag_3_mux000034_0),
    .O(flag_3_mux000051_4464)
  );
  X_LUT4 #(
    .INIT ( 16'hFFF8 ),
    .LOC ( "SLICE_X0Y30" ))
  \ans_temp<7>62  (
    .ADR0(\Ls<7>_0 ),
    .ADR1(ans_temp_cmp_eq0021_0),
    .ADR2(\ans_temp<7>14_0 ),
    .ADR3(N90_0),
    .O(\ans_temp<7>62_4397 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFEC ),
    .LOC ( "SLICE_X0Y41" ))
  \ans_temp<2>901  (
    .ADR0(Ls[2]),
    .ADR1(N88_0),
    .ADR2(ans_temp_cmp_eq0021_0),
    .ADR3(N134_0),
    .O(\ans_temp<2>90 )
  );
  X_LUT4 #(
    .INIT ( 16'h9A65 ),
    .LOC ( "SLICE_X0Y11" ))
  \Madd_AUX_16_addsub0001_lut<0>1  (
    .ADR0(B_7_IBUF_1716),
    .ADR1(B_6_IBUF_1838),
    .ADR2(\Madd_D2_cy[5] ),
    .ADR3(A_7_IBUF_1715),
    .O(Madd_AUX_16_addsub0001_lut[0])
  );
  X_LUT4 #(
    .INIT ( 16'h4884 ),
    .LOC ( "SLICE_X1Y30" ))
  flag_3_mux0000232 (
    .ADR0(\Ls<4>_0 ),
    .ADR1(ans_temp_cmp_eq0021_0),
    .ADR2(N94),
    .ADR3(\Ls<3>_0 ),
    .O(flag_3_mux0000232_4308)
  );
  X_LUT4 #(
    .INIT ( 16'h9669 ),
    .LOC ( "SLICE_X1Y30" ))
  flag_3_mux0000232_SW0 (
    .ADR0(flag_3_mux0000216_0),
    .ADR1(Ls[5]),
    .ADR2(\Ls<6>_0 ),
    .ADR3(\Ls<7>_0 ),
    .O(N94_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h55AA ),
    .LOC ( "SLICE_X2Y34" ))
  \Madd_AUX_5_addsub0000_lut<0>1  (
    .ADR0(B_4_IBUF_1806),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(A_4_IBUF_1792),
    .O(Madd_AUX_5_addsub0000_lut[0])
  );
  X_LUT4 #(
    .INIT ( 16'hFFD7 ),
    .LOC ( "SLICE_X0Y37" ))
  flag_3_mux000051_SW0 (
    .ADR0(op_dec_4_IBUF_1704),
    .ADR1(flag_3_mux00004_0),
    .ADR2(flag_3_mux00009_0),
    .ADR3(N311),
    .O(N92_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h0004 ),
    .LOC ( "SLICE_X0Y30" ))
  flag_1_mux0000331 (
    .ADR0(\Ls<7>_0 ),
    .ADR1(ans_temp_cmp_eq0021_0),
    .ADR2(\Ls<0>_0 ),
    .ADR3(\Ls<1>_0 ),
    .O(flag_1_mux0000331_4404)
  );
  X_LUT4 #(
    .INIT ( 16'h9669 ),
    .LOC ( "SLICE_X0Y10" ))
  \sub1<5>1  (
    .ADR0(\Madd_D2_cy[4] ),
    .ADR1(A_5_IBUF_1749),
    .ADR2(B_5_IBUF_1750),
    .ADR3(Madd_AUX_13_addsub0001_cy[0]),
    .O(\sub1[5] )
  );
  X_LUT4 #(
    .INIT ( 16'hFFF0 ),
    .LOC ( "SLICE_X3Y14" ))
  \Or1<0>1  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(B_0_IBUF_1733),
    .ADR3(A_0_IBUF_1735),
    .O(\Or1<0>_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ),
    .LOC ( "SLICE_X3Y14" ))
  flag_1_mux0000218 (
    .ADR0(\Or1<4>_0 ),
    .ADR1(\Or1<6>_0 ),
    .ADR2(Or1[0]),
    .ADR3(\Or1<5>_0 ),
    .O(flag_1_mux0000218_4512)
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ),
    .LOC ( "SLICE_X2Y42" ))
  flag_1_mux0000293_SW0_SW0 (
    .ADR0(A_7_IBUF_1715),
    .ADR1(\Rsa<5>_0 ),
    .ADR2(ans_temp_or0004),
    .ADR3(\Rsa[6] ),
    .O(N122)
  );
  X_LUT4 #(
    .INIT ( 16'hFF80 ),
    .LOC ( "SLICE_X3Y17" ))
  flag_1_mux000070 (
    .ADR0(ans_temp_or0000),
    .ADR1(flag_1_mux000037_0),
    .ADR2(\Madd_D2_cy[3] ),
    .ADR3(N96),
    .O(flag_1_mux000070_4536)
  );
  X_LUT4 #(
    .INIT ( 16'hACAC ),
    .LOC ( "SLICE_X3Y4" ))
  Sh17_SW0 (
    .ADR0(A_2_IBUF_1697),
    .ADR1(A_1_IBUF_1734),
    .ADR2(B_0_IBUF_1733),
    .ADR3(VCC),
    .O(N49)
  );
  X_LUT4 #(
    .INIT ( 16'h6996 ),
    .LOC ( "SLICE_X0Y20" ))
  flag_3_mux000029 (
    .ADR0(B_2_IBUF_1698),
    .ADR1(B_1_IBUF_1731),
    .ADR2(B_3_IBUF_1850),
    .ADR3(B_0_IBUF_1733),
    .O(flag_3_mux000029_4481)
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ),
    .LOC ( "SLICE_X1Y39" ))
  flag_1_mux0000150 (
    .ADR0(data_in_1_IBUF_1937),
    .ADR1(data_in_2_IBUF_1804),
    .ADR2(data_in_3_IBUF_1938),
    .ADR3(data_in_0_IBUF_1936),
    .O(flag_1_mux0000150_4601)
  );
  X_LUT4 #(
    .INIT ( 16'hE11E ),
    .LOC ( "SLICE_X3Y4" ))
  \Madd_AUX_11_addsub0001_lut<0>1  (
    .ADR0(B_1_IBUF_1731),
    .ADR1(B_0_IBUF_1733),
    .ADR2(B_2_IBUF_1698),
    .ADR3(A_2_IBUF_1697),
    .O(Madd_AUX_11_addsub0001_lut[0])
  );
  X_LUT4 #(
    .INIT ( 16'h6996 ),
    .LOC ( "SLICE_X1Y39" ))
  flag_3_mux00004 (
    .ADR0(data_in_0_IBUF_1936),
    .ADR1(data_in_2_IBUF_1804),
    .ADR2(data_in_3_IBUF_1938),
    .ADR3(data_in_1_IBUF_1937),
    .O(flag_3_mux00004_4608)
  );
  X_LUT4 #(
    .INIT ( 16'hFAFA ),
    .LOC ( "SLICE_X0Y22" ))
  \Or1<2>1  (
    .ADR0(B_2_IBUF_1698),
    .ADR1(VCC),
    .ADR2(A_2_IBUF_1697),
    .ADR3(VCC),
    .O(Or1[2])
  );
  X_LUT4 #(
    .INIT ( 16'hD850 ),
    .LOC ( "SLICE_X0Y47" ))
  \ans_temp<6>81_SW1  (
    .ADR0(op_dec_4_IBUF_1704),
    .ADR1(\Ls<6>_0 ),
    .ADR2(\sub1<6>_0 ),
    .ADR3(op_dec_3_IBUF_1756),
    .O(N142_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X0Y20" ))
  flag_1_mux00009 (
    .ADR0(B_2_IBUF_1698),
    .ADR1(B_1_IBUF_1731),
    .ADR2(B_3_IBUF_1850),
    .ADR3(B_0_IBUF_1733),
    .O(flag_1_mux00009_4488)
  );
  X_LUT4 #(
    .INIT ( 16'hEEA0 ),
    .LOC ( "SLICE_X0Y22" ))
  \ans_temp<2>9  (
    .ADR0(N3),
    .ADR1(ans_temp_or0000),
    .ADR2(A_2_IBUF_1697),
    .ADR3(B_2_IBUF_1698),
    .O(\ans_temp<2>9_4656 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X3Y17" ))
  flag_1_mux000070_SW0 (
    .ADR0(op_dec_0_IBUF_1705),
    .ADR1(N8),
    .ADR2(flag_1_mux00004_0),
    .ADR3(flag_1_mux00009_0),
    .O(N96_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'hF0E2 ),
    .LOC ( "SLICE_X2Y42" ))
  Mmux_Rsa131 (
    .ADR0(\B<0>_mmx_out3 ),
    .ADR1(B_1_IBUF_1731),
    .ADR2(A_7_IBUF_1715),
    .ADR3(B_2_IBUF_1698),
    .O(\Rsa<6>_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hECCC ),
    .LOC ( "SLICE_X0Y47" ))
  \ans_temp<6>81  (
    .ADR0(N24),
    .ADR1(\ans_temp<6>52_0 ),
    .ADR2(N142),
    .ADR3(op_dec_0_IBUF_1705),
    .O(\ans_temp<6>81_4584 )
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ),
    .LOC ( "SLICE_X1Y38" ))
  flag_1_mux0000163 (
    .ADR0(data_in_5_IBUF_1696),
    .ADR1(data_in_4_IBUF_1693),
    .ADR2(data_in_7_IBUF_1743),
    .ADR3(data_in_6_IBUF_1729),
    .O(flag_1_mux0000163_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h0E0A ),
    .LOC ( "SLICE_X1Y21" ))
  \Ls<7>52  (
    .ADR0(\Ls<7>31 ),
    .ADR1(Sh3),
    .ADR2(Ls_or0000),
    .ADR3(B_2_IBUF_1698),
    .O(Ls[7])
  );
  X_LUT4 #(
    .INIT ( 16'hDC50 ),
    .LOC ( "SLICE_X0Y17" ))
  flag_1_mux0000234 (
    .ADR0(N311),
    .ADR1(flag_1_mux0000203_0),
    .ADR2(N114_0),
    .ADR3(flag_1_mux0000218_0),
    .O(flag_1_mux0000234_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'hA000 ),
    .LOC ( "SLICE_X1Y38" ))
  flag_1_mux0000234_SW0 (
    .ADR0(flag_1_mux0000150_0),
    .ADR1(VCC),
    .ADR2(flag_1_mux0000163_1954),
    .ADR3(op_dec_4_IBUF_1704),
    .O(N114)
  );
  X_LUT4 #(
    .INIT ( 16'hFE5F ),
    .LOC ( "SLICE_X0Y38" ))
  ans_temp_or0003_SW0 (
    .ADR0(op_dec_2_IBUF_1707),
    .ADR1(op_dec_0_IBUF_1705),
    .ADR2(op_dec_1_IBUF_1706),
    .ADR3(op_dec_3_IBUF_1756),
    .O(N311_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h0051 ),
    .LOC ( "SLICE_X0Y33" ))
  flag_1_mux0000402 (
    .ADR0(N100_0),
    .ADR1(\Rsa<0>_0 ),
    .ADR2(Ls_or0000),
    .ADR3(Rs[2]),
    .O(flag_1_mux0000402_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'hFFF8 ),
    .LOC ( "SLICE_X0Y17" ))
  flag_1_mux0000249 (
    .ADR0(flag_1_mux000096_0),
    .ADR1(flag_1_mux0000111_0),
    .ADR2(flag_1_mux0000234_1945),
    .ADR3(flag_1_mux000070_0),
    .O(flag_1_mux0000249_4704)
  );
  X_LUT4 #(
    .INIT ( 16'hFAFA ),
    .LOC ( "SLICE_X3Y15" ))
  \Or1<3>1  (
    .ADR0(A_3_IBUF_1767),
    .ADR1(VCC),
    .ADR2(B_3_IBUF_1850),
    .ADR3(VCC),
    .O(\Or1<3>_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hFAFA ),
    .LOC ( "SLICE_X2Y28" ))
  \Or1<4>1  (
    .ADR0(B_4_IBUF_1806),
    .ADR1(VCC),
    .ADR2(A_4_IBUF_1792),
    .ADR3(VCC),
    .O(Or1[4])
  );
  X_LUT4 #(
    .INIT ( 16'h6996 ),
    .LOC ( "SLICE_X3Y15" ))
  flag_3_mux0000101 (
    .ADR0(\Or1<2>_0 ),
    .ADR1(\Or1<1>_0 ),
    .ADR2(Or1[0]),
    .ADR3(Or1[3]),
    .O(flag_3_mux0000101_4776)
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ),
    .LOC ( "SLICE_X3Y43" ))
  flag_1_mux0000293_SW1 (
    .ADR0(\Rsa[2] ),
    .ADR1(\B<1>_mmx_out ),
    .ADR2(\Rsa[1] ),
    .ADR3(N122_0),
    .O(N138_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h3031 ),
    .LOC ( "SLICE_X3Y43" ))
  flag_1_mux0000293 (
    .ADR0(Mmux_Rsa5_0),
    .ADR1(N138),
    .ADR2(B_2_IBUF_1698),
    .ADR3(\Rsa<0>20 ),
    .O(flag_1_mux0000293_4680)
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ),
    .LOC ( "SLICE_X0Y33" ))
  flag_1_mux0000665_SW0 (
    .ADR0(flag_1_mux0000356_0),
    .ADR1(flag_1_mux0000293_0),
    .ADR2(flag_1_mux0000402_1951),
    .ADR3(flag_1_mux0000249_0),
    .O(N116)
  );
  X_LUT4 #(
    .INIT ( 16'h00AA ),
    .LOC ( "SLICE_X0Y38" ))
  ans_temp_or0003 (
    .ADR0(op_dec_4_IBUF_1704),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(N311),
    .O(ans_temp_or0003_4800)
  );
  X_LUT4 #(
    .INIT ( 16'h0200 ),
    .LOC ( "SLICE_X1Y21" ))
  \Ls<0>1  (
    .ADR0(A_0_IBUF_1735),
    .ADR1(B_2_IBUF_1698),
    .ADR2(Ls_or0000),
    .ADR3(\Madd_D2_cy[1] ),
    .O(Ls[0])
  );
  X_LUT4 #(
    .INIT ( 16'h0010 ),
    .LOC ( "SLICE_X0Y50" ))
  flag_1_mux0000377 (
    .ADR0(\Rs<6>_0 ),
    .ADR1(Rs[1]),
    .ADR2(ans_temp_cmp_eq0022),
    .ADR3(\Rs<7>_0 ),
    .O(flag_1_mux0000377_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h00C9 ),
    .LOC ( "SLICE_X0Y26" ))
  flag_1_mux0000578 (
    .ADR0(B_2_IBUF_1698),
    .ADR1(Madd_AUX_4_addsub0000_lut[0]),
    .ADR2(A_2_IBUF_1697),
    .ADR3(N130),
    .O(flag_1_mux0000578_4872)
  );
  X_LUT4 #(
    .INIT ( 16'hC8C0 ),
    .LOC ( "SLICE_X0Y40" ))
  \ans_temp<0>4  (
    .ADR0(B_0_IBUF_1733),
    .ADR1(A_0_IBUF_1735),
    .ADR2(ans_temp_or0002),
    .ADR3(N01),
    .O(\ans_temp<0>4_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFEA ),
    .LOC ( "SLICE_X0Y40" ))
  \ans_temp<0>30  (
    .ADR0(N86),
    .ADR1(\Ls<0>_0 ),
    .ADR2(ans_temp_cmp_eq0021_0),
    .ADR3(\ans_temp<0>4_1963 ),
    .O(\ans_temp<0>30_4992 )
  );
  X_LUT4 #(
    .INIT ( 16'hFA50 ),
    .LOC ( "SLICE_X1Y53" ))
  \B<1>_mmx_out1  (
    .ADR0(B_1_IBUF_1731),
    .ADR1(VCC),
    .ADR2(\B<0>_mmx_out_0 ),
    .ADR3(\B<0>_mmx_out3 ),
    .O(\B<1>_mmx_out_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h00CA ),
    .LOC ( "SLICE_X1Y53" ))
  \Rs<0>1  (
    .ADR0(\Rsa<0>20 ),
    .ADR1(\B<1>_mmx_out ),
    .ADR2(B_2_IBUF_1698),
    .ADR3(Ls_or0000),
    .O(Rs[0])
  );
  X_LUT4 #(
    .INIT ( 16'hFEFF ),
    .LOC ( "SLICE_X0Y26" ))
  flag_1_mux0000578_SW1 (
    .ADR0(\Madd__AUX_21_lut<0>_0 ),
    .ADR1(\Madd__AUX_19_lut<0>_0 ),
    .ADR2(Madd__AUX_18_lut[0]),
    .ADR3(N4),
    .O(N130_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'hFA88 ),
    .LOC ( "SLICE_X2Y28" ))
  \ans_temp<4>9  (
    .ADR0(B_4_IBUF_1806),
    .ADR1(ans_temp_or0000),
    .ADR2(A_4_IBUF_1792),
    .ADR3(N3),
    .O(\ans_temp<4>9_4848 )
  );
  X_LUT4 #(
    .INIT ( 16'h0100 ),
    .LOC ( "SLICE_X1Y28" ))
  ans_temp_or00001 (
    .ADR0(op_dec_0_IBUF_1705),
    .ADR1(op_dec_4_IBUF_1704),
    .ADR2(op_dec_2_IBUF_1707),
    .ADR3(op_dec_1_IBUF_1706),
    .O(ans_temp_or0000_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ),
    .LOC ( "SLICE_X2Y16" ))
  flag_1_mux0000198 (
    .ADR0(B_2_IBUF_1698),
    .ADR1(B_3_IBUF_1850),
    .ADR2(A_2_IBUF_1697),
    .ADR3(A_3_IBUF_1767),
    .O(flag_1_mux0000198_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'hFEFA ),
    .LOC ( "SLICE_X0Y13" ))
  flag_1_mux0000625 (
    .ADR0(flag_1_mux0000531_0),
    .ADR1(flag_1_mux0000452_0),
    .ADR2(N102_0),
    .ADR3(flag_1_mux0000465_0),
    .O(flag_1_mux0000625_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h0020 ),
    .LOC ( "SLICE_X0Y31" ))
  flag_1_mux0000356 (
    .ADR0(flag_1_mux0000331_0),
    .ADR1(\Ls<6>_0 ),
    .ADR2(flag_1_mux0000352_1958),
    .ADR3(Ls[5]),
    .O(flag_1_mux0000356_4896)
  );
  X_LUT4 #(
    .INIT ( 16'hFEFF ),
    .LOC ( "SLICE_X0Y50" ))
  flag_1_mux0000402_SW0 (
    .ADR0(\Rs<5>_0 ),
    .ADR1(Rs[4]),
    .ADR2(Rs[3]),
    .ADR3(flag_1_mux0000377_1962),
    .O(N100)
  );
  X_LUT4 #(
    .INIT ( 16'hECDC ),
    .LOC ( "SLICE_X0Y13" ))
  flag_1_mux0000665 (
    .ADR0(A_0_IBUF_1735),
    .ADR1(N116_0),
    .ADR2(flag_1_mux0000625_1960),
    .ADR3(B_0_IBUF_1733),
    .O(flag_ex_1_OBUF_4944)
  );
  X_LUT4 #(
    .INIT ( 16'h1000 ),
    .LOC ( "SLICE_X2Y16" ))
  flag_1_mux0000203 (
    .ADR0(\Or1<1>_0 ),
    .ADR1(\Or1<7>_0 ),
    .ADR2(N3),
    .ADR3(flag_1_mux0000198_1959),
    .O(flag_1_mux0000203_4920)
  );
  X_LUT4 #(
    .INIT ( 16'h0011 ),
    .LOC ( "SLICE_X0Y31" ))
  flag_1_mux0000352 (
    .ADR0(Ls[2]),
    .ADR1(\Ls<3>_0 ),
    .ADR2(VCC),
    .ADR3(\Ls<4>_0 ),
    .O(flag_1_mux0000352_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h8ADF ),
    .LOC ( "SLICE_X1Y35" ))
  \Ls<4>_SW0  (
    .ADR0(B_2_IBUF_1698),
    .ADR1(B_1_IBUF_1731),
    .ADR2(A_0_IBUF_1735),
    .ADR3(N31_0),
    .O(N59_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'hEAC8 ),
    .LOC ( "SLICE_X1Y28" ))
  \ans_temp<3>9  (
    .ADR0(N3),
    .ADR1(B_3_IBUF_1850),
    .ADR2(ans_temp_or0000),
    .ADR3(A_3_IBUF_1767),
    .O(\ans_temp<3>9_5040 )
  );
  X_LUT4 #(
    .INIT ( 16'h1013 ),
    .LOC ( "SLICE_X1Y35" ))
  \Ls<4>  (
    .ADR0(N60_0),
    .ADR1(Ls_or0000),
    .ADR2(B_0_IBUF_1733),
    .ADR3(N59),
    .O(Ls[4])
  );
  X_LUT4 #(
    .INIT ( 16'hA8A0 ),
    .LOC ( "SLICE_X2Y48" ))
  \ans_temp<5>9  (
    .ADR0(A_5_IBUF_1749),
    .ADR1(B_5_IBUF_1750),
    .ADR2(ans_temp_or0002),
    .ADR3(N01),
    .O(\ans_temp<5>9_5064 )
  );
  X_LUT4 #(
    .INIT ( 16'h0040 ),
    .LOC ( "SLICE_X2Y37" ))
  ans_temp_or00021 (
    .ADR0(op_dec_1_IBUF_1706),
    .ADR1(op_dec_4_IBUF_1704),
    .ADR2(op_dec_2_IBUF_1707),
    .ADR3(op_dec_3_IBUF_1756),
    .O(ans_temp_or0002_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'hCC80 ),
    .LOC ( "SLICE_X2Y32" ))
  \ans_temp<3>4  (
    .ADR0(B_3_IBUF_1850),
    .ADR1(A_3_IBUF_1767),
    .ADR2(N01),
    .ADR3(ans_temp_or0002),
    .O(\ans_temp<3>4_5196 )
  );
  X_LUT4 #(
    .INIT ( 16'hF500 ),
    .LOC ( "SLICE_X2Y37" ))
  \ans_temp<7>42  (
    .ADR0(ans_temp_or0004),
    .ADR1(VCC),
    .ADR2(ans_temp_or0002),
    .ADR3(A_7_IBUF_1715),
    .O(\ans_temp<7>42_5112 )
  );
  X_LUT4 #(
    .INIT ( 16'hAE0C ),
    .LOC ( "SLICE_X1Y49" ))
  \ans_temp<1>66  (
    .ADR0(data_in_1_IBUF_1937),
    .ADR1(ans_temp_or0001),
    .ADR2(B_1_IBUF_1731),
    .ADR3(ans_temp_or0003_0),
    .O(\ans_temp<1>66_5160 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFF8 ),
    .LOC ( "SLICE_X0Y49" ))
  \ans_temp<1>20  (
    .ADR0(Madd_AUX_2_addsub0000_lut[0]),
    .ADR1(N6),
    .ADR2(\ans_temp<1>9_0 ),
    .ADR3(\ans_temp<1>4_0 ),
    .O(\ans_temp<1>20_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h8F88 ),
    .LOC ( "SLICE_X0Y36" ))
  \ans_temp<3>34  (
    .ADR0(ans_temp_or0003_0),
    .ADR1(data_in_3_IBUF_1938),
    .ADR2(B_3_IBUF_1850),
    .ADR3(ans_temp_or0001),
    .O(\ans_temp<3>34_5088 )
  );
  X_LUT4 #(
    .INIT ( 16'hE0A0 ),
    .LOC ( "SLICE_X3Y30" ))
  \ans_temp<2>4  (
    .ADR0(ans_temp_or0002),
    .ADR1(N01),
    .ADR2(A_2_IBUF_1697),
    .ADR3(B_2_IBUF_1698),
    .O(\ans_temp<2>4_5129 )
  );
  X_LUT4 #(
    .INIT ( 16'hECE0 ),
    .LOC ( "SLICE_X1Y49" ))
  \ans_temp<1>9  (
    .ADR0(ans_temp_or0000),
    .ADR1(N3),
    .ADR2(B_1_IBUF_1731),
    .ADR3(A_1_IBUF_1734),
    .O(\ans_temp<1>9_5153 )
  );
  X_LUT4 #(
    .INIT ( 16'hEA00 ),
    .LOC ( "SLICE_X3Y30" ))
  \ans_temp<4>4  (
    .ADR0(ans_temp_or0002),
    .ADR1(N01),
    .ADR2(B_4_IBUF_1806),
    .ADR3(A_4_IBUF_1792),
    .O(\ans_temp<4>4_5136 )
  );
  X_LUT4 #(
    .INIT ( 16'h50D8 ),
    .LOC ( "SLICE_X0Y36" ))
  ans_temp_or00012 (
    .ADR0(op_dec_4_IBUF_1704),
    .ADR1(N24),
    .ADR2(N22),
    .ADR3(op_dec_3_IBUF_1756),
    .O(ans_temp_or0001_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'hC8C0 ),
    .LOC ( "SLICE_X2Y48" ))
  \ans_temp<1>4  (
    .ADR0(B_1_IBUF_1731),
    .ADR1(A_1_IBUF_1734),
    .ADR2(ans_temp_or0002),
    .ADR3(N01),
    .O(\ans_temp<1>4_5057 )
  );
  X_LUT4 #(
    .INIT ( 16'hFCF0 ),
    .LOC ( "SLICE_X0Y49" ))
  \ans_temp<1>29  (
    .ADR0(VCC),
    .ADR1(ans_temp_cmp_eq0022),
    .ADR2(\ans_temp<1>20_1971 ),
    .ADR3(Rs[1]),
    .O(\ans_temp<1>29_5184 )
  );
  X_LUT4 #(
    .INIT ( 16'h9966 ),
    .LOC ( "SLICE_X1Y31" ))
  flag_3_mux0000216 (
    .ADR0(\Ls<1>_0 ),
    .ADR1(\Ls<0>_0 ),
    .ADR2(VCC),
    .ADR3(Ls[2]),
    .O(flag_3_mux0000216_5376)
  );
  X_BUF #(
    .LOC ( "IPAD174" ))
  \A<0>/IFF/IMUX  (
    .I(\A<0>/INBUF ),
    .O(A_0_IBUF_1735)
  );
  X_BUF #(
    .LOC ( "IPAD184" ))
  \op_dec<3>/IFF/IMUX  (
    .I(\op_dec<3>/INBUF ),
    .O(op_dec_3_IBUF_1756)
  );
  X_LUT4 #(
    .INIT ( 16'hDC50 ),
    .LOC ( "SLICE_X1Y43" ))
  \ans_temp<1>46  (
    .ADR0(ans_temp_or0004),
    .ADR1(Madd__AUX_18_lut[0]),
    .ADR2(\Rsa[1] ),
    .ADR3(N4),
    .O(\ans_temp<1>46_5340 )
  );
  X_LUT4 #(
    .INIT ( 16'hB3A0 ),
    .LOC ( "SLICE_X0Y39" ))
  \ans_temp<0>49  (
    .ADR0(ans_temp_or0003_0),
    .ADR1(B_0_IBUF_1733),
    .ADR2(data_in_0_IBUF_1936),
    .ADR3(ans_temp_or0001),
    .O(\ans_temp<0>49_5308 )
  );
  X_LUT4 #(
    .INIT ( 16'h6969 ),
    .LOC ( "SLICE_X1Y9" ))
  \Madd_AUX_14_addsub0001_lut<0>1  (
    .ADR0(A_5_IBUF_1749),
    .ADR1(B_5_IBUF_1750),
    .ADR2(\Madd_D2_cy[4] ),
    .ADR3(VCC),
    .O(\Madd_AUX_14_addsub0001_lut<0>_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'h0500 ),
    .LOC ( "SLICE_X1Y31" ))
  \Ls<2>1  (
    .ADR0(Ls_or0000),
    .ADR1(VCC),
    .ADR2(B_2_IBUF_1698),
    .ADR3(Sh2),
    .O(\Ls<2>_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h3C5A ),
    .LOC ( "SLICE_X1Y9" ))
  \sub1<6>1  (
    .ADR0(A_5_IBUF_1749),
    .ADR1(Madd_AUX_13_addsub0001_cy[0]),
    .ADR2(\Madd_AUX_15_addsub0001_lut<0>_0 ),
    .ADR3(Madd_AUX_14_addsub0001_lut[0]),
    .O(\sub1[6] )
  );
  X_LUT4 #(
    .INIT ( 16'h0808 ),
    .LOC ( "SLICE_X1Y17" ))
  ans_temp_or000111 (
    .ADR0(op_dec_1_IBUF_1706),
    .ADR1(op_dec_2_IBUF_1707),
    .ADR2(op_dec_4_IBUF_1704),
    .ADR3(VCC),
    .O(N8_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h6996 ),
    .LOC ( "SLICE_X1Y50" ))
  flag_3_mux0000255 (
    .ADR0(\Rs<7>_0 ),
    .ADR1(Rs[2]),
    .ADR2(Rs[4]),
    .ADR3(\Rs<6>_0 ),
    .O(flag_3_mux0000255_5268)
  );
  X_BUF #(
    .LOC ( "PAD178" ))
  \op_dec<4>/IFF/IMUX  (
    .I(\op_dec<4>/INBUF ),
    .O(op_dec_4_IBUF_1704)
  );
  X_LUT4 #(
    .INIT ( 16'hD0C0 ),
    .LOC ( "SLICE_X1Y17" ))
  \ans_temp<0>59  (
    .ADR0(op_dec_0_IBUF_1705),
    .ADR1(flag_0_and0000_0),
    .ADR2(\Madd_AUX_17_addsub0000_lut<0>_0 ),
    .ADR3(N8),
    .O(\ans_temp<0>59_5292 )
  );
  X_LUT4 #(
    .INIT ( 16'hDD88 ),
    .LOC ( "SLICE_X0Y39" ))
  \B<0>1  (
    .ADR0(B_0_IBUF_1733),
    .ADR1(A_5_IBUF_1749),
    .ADR2(VCC),
    .ADR3(A_4_IBUF_1792),
    .O(\B<0>_mmx_out )
  );
  X_LUT4 #(
    .INIT ( 16'h0404 ),
    .LOC ( "SLICE_X1Y50" ))
  \Rs<4>1  (
    .ADR0(Ls_or0000),
    .ADR1(\B<1>_mmx_out ),
    .ADR2(B_2_IBUF_1698),
    .ADR3(VCC),
    .O(\Rs<4>_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hCE0A ),
    .LOC ( "SLICE_X1Y43" ))
  \ans_temp<2>84_SW0  (
    .ADR0(\Rsa[2] ),
    .ADR1(Rs[2]),
    .ADR2(ans_temp_or0004),
    .ADR3(ans_temp_cmp_eq0022),
    .O(N88)
  );
  X_LUT4 #(
    .INIT ( 16'hA080 ),
    .LOC ( "SLICE_X13Y3" ))
  \data_out_buff<7>1  (
    .ADR0(A_7_IBUF_1715),
    .ADR1(op_dec_3_IBUF_1756),
    .ADR2(op_dec_4_IBUF_1704),
    .ADR3(N22),
    .O(data_out_buff[7])
  );
  X_BUF #(
    .LOC ( "IPAD171" ))
  \A<3>/IFF/IMUX  (
    .I(\A<3>/INBUF ),
    .O(A_3_IBUF_1767)
  );
  X_LUT4 #(
    .INIT ( 16'hFAA0 ),
    .LOC ( "SLICE_X3Y7" ))
  c_out_add11 (
    .ADR0(A_7_IBUF_1715),
    .ADR1(VCC),
    .ADR2(B_7_IBUF_1716),
    .ADR3(cin_add1[6]),
    .O(c_out_add1)
  );
  X_BUF #(
    .LOC ( "IPAD194" ))
  \B<0>/IFF/IDDRIN_MUX  (
    .I(\B<0>/INBUF ),
    .O(\B<0>/IFF/IDDRIN_MUX_5477 )
  );
  X_BUF #(
    .LOC ( "IPAD194" ))
  \B<0>/IFF/IMUX  (
    .I(\B<0>/INBUF ),
    .O(B_0_IBUF_1733)
  );
  X_INV #(
    .LOC ( "IPAD194" ))
  \B<0>/IFF/ISR_USED  (
    .I(reset_IBUF_1690),
    .O(\B<0>/IFF/ISR_USED_5481 )
  );
  X_BUF #(
    .LOC ( "IPAD194" ))
  \B<0>/IFF/ICLK1INV  (
    .I(clk_BUFGP),
    .O(\B<0>/IFF/ICLK1INV_5479 )
  );
  X_SFF #(
    .LOC ( "IPAD194" ),
    .INIT ( 1'b0 ))
  B_Bypass_0 (
    .I(\B<0>/IFF/IDDRIN_MUX_5477 ),
    .CE(VCC),
    .CLK(\B<0>/IFF/ICLK1INV_5479 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\B<0>/IFF/ISR_USED_5481 ),
    .O(B_Bypass_0_1978)
  );
  X_BUF #(
    .LOC ( "IPAD170" ))
  \A<4>/IFF/IMUX  (
    .I(\A<4>/INBUF ),
    .O(A_4_IBUF_1792)
  );
  X_LUT4 #(
    .INIT ( 16'h8080 ),
    .LOC ( "SLICE_X13Y3" ))
  ans_temp_or000121 (
    .ADR0(op_dec_2_IBUF_1707),
    .ADR1(op_dec_0_IBUF_1705),
    .ADR2(op_dec_1_IBUF_1706),
    .ADR3(VCC),
    .O(N22_pack_1)
  );
  X_BUF #(
    .LOC ( "PAD172" ))
  \A<2>/IFF/IMUX  (
    .I(\A<2>/INBUF ),
    .O(A_2_IBUF_1697)
  );
  X_BUF #(
    .LOC ( "PAD177" ))
  \A<1>/IFF/IMUX  (
    .I(\A<1>/INBUF ),
    .O(A_1_IBUF_1734)
  );
  X_LUT4 #(
    .INIT ( 16'hF550 ),
    .LOC ( "SLICE_X3Y7" ))
  \cin_add1<6>1  (
    .ADR0(\Madd__AUX_23_lut<0>_0 ),
    .ADR1(VCC),
    .ADR2(B_6_IBUF_1838),
    .ADR3(A_6_IBUF_1791),
    .O(\cin_add1<6>_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFEC ),
    .LOC ( "SLICE_X1Y22" ))
  \ans_temp<2>20  (
    .ADR0(N6),
    .ADR1(\ans_temp<2>4_0 ),
    .ADR2(\Madd_AUX_3_addsub0000_lut<0>_0 ),
    .ADR3(\ans_temp<2>9_0 ),
    .O(\ans_temp<2>20_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h6A56 ),
    .LOC ( "SLICE_X0Y28" ))
  \Madd__AUX_21_lut<0>1  (
    .ADR0(\Madd_AUX_5_addsub0000_lut<0>_0 ),
    .ADR1(A_3_IBUF_1767),
    .ADR2(B_3_IBUF_1850),
    .ADR3(Madd__AUX_20_lut[0]),
    .O(Madd__AUX_21_lut[0])
  );
  X_BUF #(
    .LOC ( "PAD169" ))
  \A<5>/IFF/IMUX  (
    .I(\A<5>/INBUF ),
    .O(A_5_IBUF_1749)
  );
  X_BUF #(
    .LOC ( "IPAD180" ))
  \B<2>/IFF/IDDRIN_MUX  (
    .I(\B<2>/INBUF ),
    .O(\B<2>/IFF/IDDRIN_MUX_5585 )
  );
  X_BUF #(
    .LOC ( "IPAD180" ))
  \B<2>/IFF/IMUX  (
    .I(\B<2>/INBUF ),
    .O(B_2_IBUF_1698)
  );
  X_INV #(
    .LOC ( "IPAD180" ))
  \B<2>/IFF/ISR_USED  (
    .I(reset_IBUF_1690),
    .O(\B<2>/IFF/ISR_USED_5589 )
  );
  X_BUF #(
    .LOC ( "IPAD180" ))
  \B<2>/IFF/ICLK1INV  (
    .I(clk_BUFGP),
    .O(\B<2>/IFF/ICLK1INV_5587 )
  );
  X_BUF #(
    .LOC ( "PAD197" ))
  \B<1>/IFF/IDDRIN_MUX  (
    .I(\B<1>/INBUF ),
    .O(\B<1>/IFF/IDDRIN_MUX_5507 )
  );
  X_BUF #(
    .LOC ( "PAD197" ))
  \B<1>/IFF/IMUX  (
    .I(\B<1>/INBUF ),
    .O(B_1_IBUF_1731)
  );
  X_INV #(
    .LOC ( "PAD197" ))
  \B<1>/IFF/ISR_USED  (
    .I(reset_IBUF_1690),
    .O(\B<1>/IFF/ISR_USED_5511 )
  );
  X_BUF #(
    .LOC ( "PAD197" ))
  \B<1>/IFF/ICLK1INV  (
    .I(clk_BUFGP),
    .O(\B<1>/IFF/ICLK1INV_5509 )
  );
  X_SFF #(
    .LOC ( "IPAD180" ),
    .INIT ( 1'b0 ))
  B_Bypass_2 (
    .I(\B<2>/IFF/IDDRIN_MUX_5585 ),
    .CE(VCC),
    .CLK(\B<2>/IFF/ICLK1INV_5587 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\B<2>/IFF/ISR_USED_5589 ),
    .O(B_Bypass_2_1982)
  );
  X_LUT4 #(
    .INIT ( 16'h000F ),
    .LOC ( "SLICE_X0Y43" ))
  ans_temp_or000131 (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(op_dec_2_IBUF_1707),
    .ADR3(op_dec_1_IBUF_1706),
    .O(N24_pack_1)
  );
  X_BUF #(
    .LOC ( "PAD168" ))
  \A<6>/IFF/IMUX  (
    .I(\A<6>/INBUF ),
    .O(A_6_IBUF_1791)
  );
  X_SFF #(
    .LOC ( "PAD197" ),
    .INIT ( 1'b0 ))
  B_Bypass_1 (
    .I(\B<1>/IFF/IDDRIN_MUX_5507 ),
    .CE(VCC),
    .CLK(\B<1>/IFF/ICLK1INV_5509 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\B<1>/IFF/ISR_USED_5511 ),
    .O(B_Bypass_1_1979)
  );
  X_LUT4 #(
    .INIT ( 16'hFFF8 ),
    .LOC ( "SLICE_X1Y22" ))
  \ans_temp<2>50  (
    .ADR0(\sub1[2] ),
    .ADR1(N7),
    .ADR2(\ans_temp<2>20_1980 ),
    .ADR3(\ans_temp<2>34_0 ),
    .O(\ans_temp<2>50_5540 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X0Y43" ))
  ans_temp_cmp_eq00211 (
    .ADR0(op_dec_4_IBUF_1704),
    .ADR1(op_dec_0_IBUF_1705),
    .ADR2(N24),
    .ADR3(op_dec_3_IBUF_1756),
    .O(ans_temp_cmp_eq0021)
  );
  X_LUT4 #(
    .INIT ( 16'h6C36 ),
    .LOC ( "SLICE_X0Y28" ))
  \Madd__AUX_20_lut<0>1  (
    .ADR0(A_2_IBUF_1697),
    .ADR1(Madd_AUX_4_addsub0000_lut[0]),
    .ADR2(B_2_IBUF_1698),
    .ADR3(\Madd__AUX_19_lut<0>_0 ),
    .O(\Madd__AUX_20_lut<0>_pack_1 )
  );
  X_BUF #(
    .LOC ( "PAD157" ))
  \A<7>/IFF/IMUX  (
    .I(\A<7>/INBUF ),
    .O(A_7_IBUF_1715)
  );
  X_BUF #(
    .LOC ( "PAD191" ))
  \B<3>/IFF/IDDRIN_MUX  (
    .I(\B<3>/INBUF ),
    .O(\B<3>/IFF/IDDRIN_MUX_5639 )
  );
  X_BUF #(
    .LOC ( "PAD191" ))
  \B<3>/IFF/IMUX  (
    .I(\B<3>/INBUF ),
    .O(B_3_IBUF_1850)
  );
  X_INV #(
    .LOC ( "PAD191" ))
  \B<3>/IFF/ISR_USED  (
    .I(reset_IBUF_1690),
    .O(\B<3>/IFF/ISR_USED_5643 )
  );
  X_BUF #(
    .LOC ( "PAD191" ))
  \B<3>/IFF/ICLK1INV  (
    .I(clk_BUFGP),
    .O(\B<3>/IFF/ICLK1INV_5641 )
  );
  X_LUT4 #(
    .INIT ( 16'hD22D ),
    .LOC ( "SLICE_X0Y21" ))
  \Madd_AUX_12_addsub0001_lut<0>1  (
    .ADR0(\Madd_D2_cy[1] ),
    .ADR1(B_2_IBUF_1698),
    .ADR2(B_3_IBUF_1850),
    .ADR3(A_3_IBUF_1767),
    .O(\Madd_AUX_12_addsub0001_lut<0>_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hA55A ),
    .LOC ( "SLICE_X3Y36" ))
  Mxor_parity_6_xor0002_Result_and000011 (
    .ADR0(B_1_IBUF_1731),
    .ADR1(VCC),
    .ADR2(B_2_IBUF_1698),
    .ADR3(B_0_IBUF_1733),
    .O(N02_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h9669 ),
    .LOC ( "SLICE_X3Y36" ))
  Mxor_parity_6_xor0006_Result_and0000111 (
    .ADR0(B_3_IBUF_1850),
    .ADR1(B_4_IBUF_1806),
    .ADR2(N02),
    .ADR3(B_6_IBUF_1838),
    .O(N12)
  );
  X_SFF #(
    .LOC ( "PAD191" ),
    .INIT ( 1'b0 ))
  B_Bypass_3 (
    .I(\B<3>/IFF/IDDRIN_MUX_5639 ),
    .CE(VCC),
    .CLK(\B<3>/IFF/ICLK1INV_5641 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\B<3>/IFF/ISR_USED_5643 ),
    .O(B_Bypass_3_1983)
  );
  X_LUT4 #(
    .INIT ( 16'h3C66 ),
    .LOC ( "SLICE_X0Y21" ))
  \sub1<4>1  (
    .ADR0(A_3_IBUF_1767),
    .ADR1(\Madd_AUX_13_addsub0001_lut<0>_0 ),
    .ADR2(Madd_AUX_11_addsub0001_cy[0]),
    .ADR3(Madd_AUX_12_addsub0001_lut[0]),
    .O(\sub1[4] )
  );
  X_SFF #(
    .LOC ( "PAD179" ),
    .INIT ( 1'b0 ))
  B_Bypass_5 (
    .I(\B<5>/IFF/IDDRIN_MUX_5741 ),
    .CE(VCC),
    .CLK(\B<5>/IFF/ICLK1INV_5743 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\B<5>/IFF/ISR_USED_5745 ),
    .O(B_Bypass_5_1986)
  );
  X_BUF #(
    .LOC ( "PAD179" ))
  \B<5>/IFF/IDDRIN_MUX  (
    .I(\B<5>/INBUF ),
    .O(\B<5>/IFF/IDDRIN_MUX_5741 )
  );
  X_BUF #(
    .LOC ( "PAD179" ))
  \B<5>/IFF/IMUX  (
    .I(\B<5>/INBUF ),
    .O(B_5_IBUF_1750)
  );
  X_INV #(
    .LOC ( "PAD179" ))
  \B<5>/IFF/ISR_USED  (
    .I(reset_IBUF_1690),
    .O(\B<5>/IFF/ISR_USED_5745 )
  );
  X_BUF #(
    .LOC ( "PAD179" ))
  \B<5>/IFF/ICLK1INV  (
    .I(clk_BUFGP),
    .O(\B<5>/IFF/ICLK1INV_5743 )
  );
  X_SFF #(
    .LOC ( "PAD215" ),
    .INIT ( 1'b0 ))
  B_Bypass_4 (
    .I(\B<4>/IFF/IDDRIN_MUX_5717 ),
    .CE(VCC),
    .CLK(\B<4>/IFF/ICLK1INV_5719 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\B<4>/IFF/ISR_USED_5721 ),
    .O(B_Bypass_4_1985)
  );
  X_BUF #(
    .LOC ( "PAD215" ))
  \B<4>/IFF/IDDRIN_MUX  (
    .I(\B<4>/INBUF ),
    .O(\B<4>/IFF/IDDRIN_MUX_5717 )
  );
  X_BUF #(
    .LOC ( "PAD215" ))
  \B<4>/IFF/IMUX  (
    .I(\B<4>/INBUF ),
    .O(B_4_IBUF_1806)
  );
  X_INV #(
    .LOC ( "PAD215" ))
  \B<4>/IFF/ISR_USED  (
    .I(reset_IBUF_1690),
    .O(\B<4>/IFF/ISR_USED_5721 )
  );
  X_BUF #(
    .LOC ( "PAD215" ))
  \B<4>/IFF/ICLK1INV  (
    .I(clk_BUFGP),
    .O(\B<4>/IFF/ICLK1INV_5719 )
  );
  X_BUF #(
    .LOC ( "PAD176" ))
  \B<6>/IFF/IDDRIN_MUX  (
    .I(\B<6>/INBUF ),
    .O(\B<6>/IFF/IDDRIN_MUX_5765 )
  );
  X_BUF #(
    .LOC ( "PAD176" ))
  \B<6>/IFF/IMUX  (
    .I(\B<6>/INBUF ),
    .O(B_6_IBUF_1838)
  );
  X_INV #(
    .LOC ( "PAD176" ))
  \B<6>/IFF/ISR_USED  (
    .I(reset_IBUF_1690),
    .O(\B<6>/IFF/ISR_USED_5769 )
  );
  X_BUF #(
    .LOC ( "PAD176" ))
  \B<6>/IFF/ICLK1INV  (
    .I(clk_BUFGP),
    .O(\B<6>/IFF/ICLK1INV_5767 )
  );
  X_SFF #(
    .LOC ( "PAD176" ),
    .INIT ( 1'b0 ))
  B_Bypass_6 (
    .I(\B<6>/IFF/IDDRIN_MUX_5765 ),
    .CE(VCC),
    .CLK(\B<6>/IFF/ICLK1INV_5767 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\B<6>/IFF/ISR_USED_5769 ),
    .O(B_Bypass_6_1987)
  );
  X_LUT4 #(
    .INIT ( 16'h3369 ),
    .LOC ( "SLICE_X3Y39" ))
  flag_3_mux0000178_SW0 (
    .ADR0(\B<1>_mmx_out ),
    .ADR1(\Rsa[2] ),
    .ADR2(Mmux_Rsa5_0),
    .ADR3(B_2_IBUF_1698),
    .O(N104_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h9669 ),
    .LOC ( "SLICE_X3Y39" ))
  flag_3_mux0000178 (
    .ADR0(A_7_IBUF_1715),
    .ADR1(\Rsa[6] ),
    .ADR2(\Rsa<5>_0 ),
    .ADR3(N104),
    .O(flag_3_mux0000178_5844)
  );
  X_SFF #(
    .LOC ( "IPAD175" ),
    .INIT ( 1'b0 ))
  B_Bypass_7 (
    .I(\B<7>/IFF/IDDRIN_MUX_5789 ),
    .CE(VCC),
    .CLK(\B<7>/IFF/ICLK1INV_5791 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\B<7>/IFF/ISR_USED_5793 ),
    .O(B_Bypass_7_1988)
  );
  X_BUF #(
    .LOC ( "IPAD175" ))
  \B<7>/IFF/IDDRIN_MUX  (
    .I(\B<7>/INBUF ),
    .O(\B<7>/IFF/IDDRIN_MUX_5789 )
  );
  X_BUF #(
    .LOC ( "IPAD175" ))
  \B<7>/IFF/IMUX  (
    .I(\B<7>/INBUF ),
    .O(B_7_IBUF_1716)
  );
  X_INV #(
    .LOC ( "IPAD175" ))
  \B<7>/IFF/ISR_USED  (
    .I(reset_IBUF_1690),
    .O(\B<7>/IFF/ISR_USED_5793 )
  );
  X_BUF #(
    .LOC ( "IPAD175" ))
  \B<7>/IFF/ICLK1INV  (
    .I(clk_BUFGP),
    .O(\B<7>/IFF/ICLK1INV_5791 )
  );
  X_LUT4 #(
    .INIT ( 16'h22E2 ),
    .LOC ( "SLICE_X0Y57" ))
  Sh211 (
    .ADR0(\B<0>_mmx_out4 ),
    .ADR1(B_1_IBUF_1731),
    .ADR2(A_7_IBUF_1715),
    .ADR3(B_0_IBUF_1733),
    .O(Sh21_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h0050 ),
    .LOC ( "SLICE_X0Y57" ))
  \Rs<5>1  (
    .ADR0(B_2_IBUF_1698),
    .ADR1(VCC),
    .ADR2(Sh21_1823),
    .ADR3(Ls_or0000),
    .O(Rs[5])
  );
  X_SFF #(
    .LOC ( "PAD166" ),
    .INIT ( 1'b0 ))
  data_out_0 (
    .I(\data_out<0>/OUTPUT/OFF/ODDRIN1_MUX ),
    .CE(VCC),
    .CLK(\data_out<0>/OUTPUT/OTCLK1INV_5946 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\data_out<0>/OUTPUT/OFF/OSR_USED_5953 ),
    .O(data_out_0_5955)
  );
  X_BUF #(
    .LOC ( "PAD166" ))
  \data_out<0>/OUTPUT/OFF/O1_DDRMUX  (
    .I(data_out_buff[0]),
    .O(\data_out<0>/OUTPUT/OFF/ODDRIN1_MUX )
  );
  X_INV #(
    .LOC ( "PAD166" ))
  \data_out<0>/OUTPUT/OFF/OSR_USED  (
    .I(reset_IBUF_1690),
    .O(\data_out<0>/OUTPUT/OFF/OSR_USED_5953 )
  );
  X_BUF #(
    .LOC ( "PAD166" ))
  \data_out<0>/OUTPUT/OFF/OMUX  (
    .I(data_out_0_5955),
    .O(\data_out<0>/O )
  );
  X_BUF #(
    .LOC ( "PAD166" ))
  \data_out<0>/OUTPUT/OTCLK1INV  (
    .I(clk_BUFGP),
    .O(\data_out<0>/OUTPUT/OTCLK1INV_5946 )
  );
  X_BUF #(
    .LOC ( "PAD167" ))
  \data_out<1>/OUTPUT/OTCLK1INV  (
    .I(clk_BUFGP),
    .O(\data_out<1>/OUTPUT/OTCLK1INV_5977 )
  );
  X_BUF #(
    .LOC ( "PAD167" ))
  \data_out<1>/OUTPUT/OFF/OMUX  (
    .I(data_out_1_5986),
    .O(\data_out<1>/O )
  );
  X_INV #(
    .LOC ( "PAD167" ))
  \data_out<1>/OUTPUT/OFF/OSR_USED  (
    .I(reset_IBUF_1690),
    .O(\data_out<1>/OUTPUT/OFF/OSR_USED_5984 )
  );
  X_BUF #(
    .LOC ( "PAD167" ))
  \data_out<1>/OUTPUT/OFF/O1_DDRMUX  (
    .I(data_out_buff[1]),
    .O(\data_out<1>/OUTPUT/OFF/ODDRIN1_MUX )
  );
  X_LUT4 #(
    .INIT ( 16'hFFF8 ),
    .LOC ( "SLICE_X1Y32" ))
  \ans_temp<3>50  (
    .ADR0(Rs[3]),
    .ADR1(ans_temp_cmp_eq0022),
    .ADR2(\ans_temp<3>20_1990 ),
    .ADR3(\ans_temp<3>34_0 ),
    .O(\ans_temp<3>50_6026 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFEC ),
    .LOC ( "SLICE_X3Y49" ))
  \ans_temp<1>77  (
    .ADR0(\Ls<1>_0 ),
    .ADR1(N112_0),
    .ADR2(ans_temp_cmp_eq0021_0),
    .ADR3(\ans_temp<1>66_0 ),
    .O(\ans_temp<1>77_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFEC ),
    .LOC ( "SLICE_X1Y32" ))
  \ans_temp<3>20  (
    .ADR0(N6),
    .ADR1(\ans_temp<3>4_0 ),
    .ADR2(Madd_AUX_4_addsub0000_lut[0]),
    .ADR3(\ans_temp<3>9_0 ),
    .O(\ans_temp<3>20_pack_1 )
  );
  X_SFF #(
    .LOC ( "PAD167" ),
    .INIT ( 1'b0 ))
  data_out_1 (
    .I(\data_out<1>/OUTPUT/OFF/ODDRIN1_MUX ),
    .CE(VCC),
    .CLK(\data_out<1>/OUTPUT/OTCLK1INV_5977 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\data_out<1>/OUTPUT/OFF/OSR_USED_5984 ),
    .O(data_out_1_5986)
  );
  X_LUT4 #(
    .INIT ( 16'hFFF0 ),
    .LOC ( "SLICE_X3Y49" ))
  \ans_temp<1>841  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\ans_temp<1>46_0 ),
    .ADR3(\ans_temp<1>77_1991 ),
    .O(\ans_temp<1>84 )
  );
  X_SFF #(
    .LOC ( "PAD165" ),
    .INIT ( 1'b0 ))
  data_out_2 (
    .I(\data_out<2>/OUTPUT/OFF/ODDRIN1_MUX ),
    .CE(VCC),
    .CLK(\data_out<2>/OUTPUT/OTCLK1INV_6040 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\data_out<2>/OUTPUT/OFF/OSR_USED_6047 ),
    .O(data_out_2_6049)
  );
  X_BUF #(
    .LOC ( "PAD165" ))
  \data_out<2>/OUTPUT/OFF/O1_DDRMUX  (
    .I(data_out_buff[2]),
    .O(\data_out<2>/OUTPUT/OFF/ODDRIN1_MUX )
  );
  X_INV #(
    .LOC ( "PAD165" ))
  \data_out<2>/OUTPUT/OFF/OSR_USED  (
    .I(reset_IBUF_1690),
    .O(\data_out<2>/OUTPUT/OFF/OSR_USED_6047 )
  );
  X_BUF #(
    .LOC ( "PAD165" ))
  \data_out<2>/OUTPUT/OFF/OMUX  (
    .I(data_out_2_6049),
    .O(\data_out<2>/O )
  );
  X_BUF #(
    .LOC ( "PAD165" ))
  \data_out<2>/OUTPUT/OTCLK1INV  (
    .I(clk_BUFGP),
    .O(\data_out<2>/OUTPUT/OTCLK1INV_6040 )
  );
  X_LUT4 #(
    .INIT ( 16'hF2F0 ),
    .LOC ( "SLICE_X0Y25" ))
  \ans_temp<7>14_SW0  (
    .ADR0(op_dec_4_IBUF_1704),
    .ADR1(N311),
    .ADR2(\ans_temp<7>4_1993 ),
    .ADR3(data_in_7_IBUF_1743),
    .O(N132)
  );
  X_BUF #(
    .LOC ( "PAD163" ))
  \data_out<3>/OUTPUT/OTCLK1INV  (
    .I(clk_BUFGP),
    .O(\data_out<3>/OUTPUT/OTCLK1INV_6127 )
  );
  X_LUT4 #(
    .INIT ( 16'h6C36 ),
    .LOC ( "SLICE_X1Y14" ))
  \Madd__AUX_23_lut<0>1  (
    .ADR0(B_5_IBUF_1750),
    .ADR1(\Madd_AUX_7_addsub0000_lut<0>_0 ),
    .ADR2(A_5_IBUF_1749),
    .ADR3(Madd__AUX_22_lut[0]),
    .O(Madd__AUX_23_lut[0])
  );
  X_LUT4 #(
    .INIT ( 16'hECA8 ),
    .LOC ( "SLICE_X0Y25" ))
  \ans_temp<7>4  (
    .ADR0(N3),
    .ADR1(B_7_IBUF_1716),
    .ADR2(A_7_IBUF_1715),
    .ADR3(ans_temp_or0000),
    .O(\ans_temp<7>4_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h6A56 ),
    .LOC ( "SLICE_X1Y14" ))
  \Madd__AUX_22_lut<0>1  (
    .ADR0(\Madd_AUX_6_addsub0000_lut<0>_0 ),
    .ADR1(B_4_IBUF_1806),
    .ADR2(A_4_IBUF_1792),
    .ADR3(\Madd__AUX_21_lut<0>_0 ),
    .O(\Madd__AUX_22_lut<0>_pack_1 )
  );
  X_BUF #(
    .LOC ( "PAD163" ))
  \data_out<3>/OUTPUT/OFF/OMUX  (
    .I(data_out_3_6136),
    .O(\data_out<3>/O )
  );
  X_INV #(
    .LOC ( "PAD163" ))
  \data_out<3>/OUTPUT/OFF/OSR_USED  (
    .I(reset_IBUF_1690),
    .O(\data_out<3>/OUTPUT/OFF/OSR_USED_6134 )
  );
  X_BUF #(
    .LOC ( "PAD163" ))
  \data_out<3>/OUTPUT/OFF/O1_DDRMUX  (
    .I(data_out_buff[3]),
    .O(\data_out<3>/OUTPUT/OFF/ODDRIN1_MUX )
  );
  X_BUF #(
    .LOC ( "IPAD204" ))
  \data_in<0>/IFF/IMUX  (
    .I(\data_in<0>/INBUF ),
    .O(data_in_0_IBUF_1936)
  );
  X_BUF #(
    .LOC ( "PAD164" ))
  \data_out<4>/OUTPUT/OFF/O1_DDRMUX  (
    .I(data_out_buff[4]),
    .O(\data_out<4>/OUTPUT/OFF/ODDRIN1_MUX )
  );
  X_INV #(
    .LOC ( "PAD164" ))
  \data_out<4>/OUTPUT/OFF/OSR_USED  (
    .I(reset_IBUF_1690),
    .O(\data_out<4>/OUTPUT/OFF/OSR_USED_6189 )
  );
  X_BUF #(
    .LOC ( "PAD164" ))
  \data_out<4>/OUTPUT/OFF/OMUX  (
    .I(data_out_4_6191),
    .O(\data_out<4>/O )
  );
  X_SFF #(
    .LOC ( "PAD164" ),
    .INIT ( 1'b0 ))
  data_out_4 (
    .I(\data_out<4>/OUTPUT/OFF/ODDRIN1_MUX ),
    .CE(VCC),
    .CLK(\data_out<4>/OUTPUT/OTCLK1INV_6182 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\data_out<4>/OUTPUT/OFF/OSR_USED_6189 ),
    .O(data_out_4_6191)
  );
  X_BUF #(
    .LOC ( "PAD164" ))
  \data_out<4>/OUTPUT/OTCLK1INV  (
    .I(clk_BUFGP),
    .O(\data_out<4>/OUTPUT/OTCLK1INV_6182 )
  );
  X_SFF #(
    .LOC ( "PAD163" ),
    .INIT ( 1'b0 ))
  data_out_3 (
    .I(\data_out<3>/OUTPUT/OFF/ODDRIN1_MUX ),
    .CE(VCC),
    .CLK(\data_out<3>/OUTPUT/OTCLK1INV_6127 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\data_out<3>/OUTPUT/OFF/OSR_USED_6134 ),
    .O(data_out_3_6136)
  );
  X_LUT4 #(
    .INIT ( 16'h5A5A ),
    .LOC ( "SLICE_X0Y14" ))
  \Madd_AUX_4_addsub0000_lut<0>1  (
    .ADR0(B_3_IBUF_1850),
    .ADR1(VCC),
    .ADR2(A_3_IBUF_1767),
    .ADR3(VCC),
    .O(\Madd_AUX_4_addsub0000_lut<0>_pack_1 )
  );
  X_BUF #(
    .LOC ( "IPAD199" ))
  \data_in<1>/IFF/IMUX  (
    .I(\data_in<1>/INBUF ),
    .O(data_in_1_IBUF_1937)
  );
  X_LUT4 #(
    .INIT ( 16'h0AA0 ),
    .LOC ( "SLICE_X2Y15" ))
  flag_3_mux0000115 (
    .ADR0(N3),
    .ADR1(VCC),
    .ADR2(flag_3_mux0000106_1995),
    .ADR3(flag_3_mux0000101_0),
    .O(flag_3_mux0000115_6337)
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ),
    .LOC ( "SLICE_X0Y3" ))
  flag_1_mux00001111 (
    .ADR0(\And1<6>_0 ),
    .ADR1(\And1<5>_0 ),
    .ADR2(\And1[0] ),
    .ADR3(\And1<7>_0 ),
    .O(flag_1_mux0000111)
  );
  X_SFF #(
    .LOC ( "PAD160" ),
    .INIT ( 1'b0 ))
  data_out_5 (
    .I(\data_out<5>/OUTPUT/OFF/ODDRIN1_MUX ),
    .CE(VCC),
    .CLK(\data_out<5>/OUTPUT/OTCLK1INV_6219 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\data_out<5>/OUTPUT/OFF/OSR_USED_6226 ),
    .O(data_out_5_6228)
  );
  X_BUF #(
    .LOC ( "PAD160" ))
  \data_out<5>/OUTPUT/OFF/O1_DDRMUX  (
    .I(data_out_buff[5]),
    .O(\data_out<5>/OUTPUT/OFF/ODDRIN1_MUX )
  );
  X_INV #(
    .LOC ( "PAD160" ))
  \data_out<5>/OUTPUT/OFF/OSR_USED  (
    .I(reset_IBUF_1690),
    .O(\data_out<5>/OUTPUT/OFF/OSR_USED_6226 )
  );
  X_BUF #(
    .LOC ( "PAD160" ))
  \data_out<5>/OUTPUT/OFF/OMUX  (
    .I(data_out_5_6228),
    .O(\data_out<5>/O )
  );
  X_BUF #(
    .LOC ( "PAD160" ))
  \data_out<5>/OUTPUT/OTCLK1INV  (
    .I(clk_BUFGP),
    .O(\data_out<5>/OUTPUT/OTCLK1INV_6219 )
  );
  X_LUT4 #(
    .INIT ( 16'hAA00 ),
    .LOC ( "SLICE_X0Y3" ))
  \And1<0>1  (
    .ADR0(A_0_IBUF_1735),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(B_0_IBUF_1733),
    .O(\And1<0>_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h6996 ),
    .LOC ( "SLICE_X2Y15" ))
  flag_3_mux0000106 (
    .ADR0(\Or1<5>_0 ),
    .ADR1(\Or1<7>_0 ),
    .ADR2(\Or1<6>_0 ),
    .ADR3(\Or1<4>_0 ),
    .O(flag_3_mux0000106_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h6996 ),
    .LOC ( "SLICE_X0Y14" ))
  flag_3_mux0000126 (
    .ADR0(Madd_AUX_2_addsub0000_lut[0]),
    .ADR1(\Madd_AUX_17_addsub0000_lut<0>_0 ),
    .ADR2(\Madd_AUX_3_addsub0000_lut<0>_0 ),
    .ADR3(Madd_AUX_4_addsub0000_lut[0]),
    .O(flag_3_mux0000126_6252)
  );
  X_BUF #(
    .LOC ( "PAD161" ))
  \data_out<6>/OUTPUT/OFF/O1_DDRMUX  (
    .I(data_out_buff[6]),
    .O(\data_out<6>/OUTPUT/OFF/ODDRIN1_MUX )
  );
  X_INV #(
    .LOC ( "PAD161" ))
  \data_out<6>/OUTPUT/OFF/OSR_USED  (
    .I(reset_IBUF_1690),
    .O(\data_out<6>/OUTPUT/OFF/OSR_USED_6311 )
  );
  X_BUF #(
    .LOC ( "PAD161" ))
  \data_out<6>/OUTPUT/OFF/OMUX  (
    .I(data_out_6_6313),
    .O(\data_out<6>/O )
  );
  X_SFF #(
    .LOC ( "PAD161" ),
    .INIT ( 1'b0 ))
  data_out_6 (
    .I(\data_out<6>/OUTPUT/OFF/ODDRIN1_MUX ),
    .CE(VCC),
    .CLK(\data_out<6>/OUTPUT/OTCLK1INV_6304 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\data_out<6>/OUTPUT/OFF/OSR_USED_6311 ),
    .O(data_out_6_6313)
  );
  X_BUF #(
    .LOC ( "PAD161" ))
  \data_out<6>/OUTPUT/OTCLK1INV  (
    .I(clk_BUFGP),
    .O(\data_out<6>/OUTPUT/OTCLK1INV_6304 )
  );
  X_LUT4 #(
    .INIT ( 16'h0303 ),
    .LOC ( "SLICE_X0Y29" ))
  Sh331 (
    .ADR0(VCC),
    .ADR1(B_1_IBUF_1731),
    .ADR2(B_0_IBUF_1733),
    .ADR3(VCC),
    .O(\Madd_D2_cy<1>_pack_1 )
  );
  X_BUF #(
    .LOC ( "PAD198" ))
  \data_in<3>/IFF/IMUX  (
    .I(\data_in<3>/INBUF ),
    .O(data_in_3_IBUF_1938)
  );
  X_LUT4 #(
    .INIT ( 16'h6996 ),
    .LOC ( "SLICE_X1Y15" ))
  flag_3_mux0000131 (
    .ADR0(\Madd_AUX_7_addsub0000_lut<0>_0 ),
    .ADR1(\Madd_AUX_5_addsub0000_lut<0>_0 ),
    .ADR2(\Madd_AUX_6_addsub0000_lut<0>_0 ),
    .ADR3(\Madd_AUX_8_addsub0000_lut<0>_0 ),
    .O(flag_3_mux0000131_pack_1)
  );
  X_BUF #(
    .LOC ( "PAD201" ))
  \ans_ex<1>/OUTPUT/OFF/O1_DDRMUX  (
    .I(\ans_temp<1>84 ),
    .O(\ans_ex<1>/OUTPUT/OFF/ODDRIN1_MUX )
  );
  X_INV #(
    .LOC ( "PAD201" ))
  \ans_ex<1>/OUTPUT/OFF/OSR_USED  (
    .I(reset_IBUF_1690),
    .O(\ans_ex<1>/OUTPUT/OFF/OSR_USED_6444 )
  );
  X_BUF #(
    .LOC ( "PAD201" ))
  \ans_ex<1>/OUTPUT/OFF/OREV_USED  (
    .I(\ans_temp<1>29_5184 ),
    .O(\ans_ex<1>/OUTPUT/OFF/OREV_USED_6446 )
  );
  X_BUF #(
    .LOC ( "PAD201" ))
  \ans_ex<1>/OUTPUT/OFF/OMUX  (
    .I(ans_ex_1_6448),
    .O(\ans_ex<1>/O )
  );
  X_SFF #(
    .LOC ( "PAD201" ),
    .INIT ( 1'b0 ))
  ans_ex_1 (
    .I(\ans_ex<1>/OUTPUT/OFF/ODDRIN1_MUX ),
    .CE(VCC),
    .CLK(\ans_ex<1>/OUTPUT/OTCLK1INV_6436 ),
    .SET(GND),
    .RST(GND),
    .SSET(\ans_ex<1>/OUTPUT/OFF/OREV_USED_6446 ),
    .SRST(\ans_ex<1>/OUTPUT/OFF/OSR_USED_6444 ),
    .O(ans_ex_1_6448)
  );
  X_BUF #(
    .LOC ( "PAD201" ))
  \ans_ex<1>/OUTPUT/OTCLK1INV  (
    .I(clk_BUFGP),
    .O(\ans_ex<1>/OUTPUT/OTCLK1INV_6436 )
  );
  X_LUT4 #(
    .INIT ( 16'h4488 ),
    .LOC ( "SLICE_X1Y15" ))
  flag_3_mux0000140 (
    .ADR0(flag_3_mux0000126_0),
    .ADR1(N6),
    .ADR2(VCC),
    .ADR3(flag_3_mux0000131_1996),
    .O(flag_3_mux0000140_6396)
  );
  X_BUF #(
    .LOC ( "PAD218" ))
  \data_in<2>/IFF/IMUX  (
    .I(\data_in<2>/INBUF ),
    .O(data_in_2_IBUF_1804)
  );
  X_SFF #(
    .LOC ( "PAD156" ),
    .INIT ( 1'b0 ))
  data_out_7 (
    .I(\data_out<7>/OUTPUT/OFF/ODDRIN1_MUX ),
    .CE(VCC),
    .CLK(\data_out<7>/OUTPUT/OTCLK1INV_6410 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\data_out<7>/OUTPUT/OFF/OSR_USED_6417 ),
    .O(data_out_7_6419)
  );
  X_BUF #(
    .LOC ( "PAD156" ))
  \data_out<7>/OUTPUT/OFF/O1_DDRMUX  (
    .I(data_out_buff[7]),
    .O(\data_out<7>/OUTPUT/OFF/ODDRIN1_MUX )
  );
  X_INV #(
    .LOC ( "PAD156" ))
  \data_out<7>/OUTPUT/OFF/OSR_USED  (
    .I(reset_IBUF_1690),
    .O(\data_out<7>/OUTPUT/OFF/OSR_USED_6417 )
  );
  X_BUF #(
    .LOC ( "PAD156" ))
  \data_out<7>/OUTPUT/OFF/OMUX  (
    .I(data_out_7_6419),
    .O(\data_out<7>/O )
  );
  X_BUF #(
    .LOC ( "PAD156" ))
  \data_out<7>/OUTPUT/OTCLK1INV  (
    .I(clk_BUFGP),
    .O(\data_out<7>/OUTPUT/OTCLK1INV_6410 )
  );
  X_LUT4 #(
    .INIT ( 16'h0020 ),
    .LOC ( "SLICE_X0Y29" ))
  \Rs<7>1  (
    .ADR0(A_7_IBUF_1715),
    .ADR1(B_2_IBUF_1698),
    .ADR2(\Madd_D2_cy[1] ),
    .ADR3(Ls_or0000),
    .O(Rs[7])
  );
  X_SFF #(
    .LOC ( "PAD200" ),
    .INIT ( 1'b0 ))
  ans_ex_0 (
    .I(\ans_ex<0>/OUTPUT/OFF/ODDRIN1_MUX ),
    .CE(VCC),
    .CLK(\ans_ex<0>/OUTPUT/OTCLK1INV_6354 ),
    .SET(GND),
    .RST(GND),
    .SSET(\ans_ex<0>/OUTPUT/OFF/OREV_USED_6364 ),
    .SRST(\ans_ex<0>/OUTPUT/OFF/OSR_USED_6362 ),
    .O(ans_ex_0_6366)
  );
  X_BUF #(
    .LOC ( "PAD200" ))
  \ans_ex<0>/OUTPUT/OFF/O1_DDRMUX  (
    .I(\ans_temp<0>85 ),
    .O(\ans_ex<0>/OUTPUT/OFF/ODDRIN1_MUX )
  );
  X_INV #(
    .LOC ( "PAD200" ))
  \ans_ex<0>/OUTPUT/OFF/OSR_USED  (
    .I(reset_IBUF_1690),
    .O(\ans_ex<0>/OUTPUT/OFF/OSR_USED_6362 )
  );
  X_BUF #(
    .LOC ( "PAD200" ))
  \ans_ex<0>/OUTPUT/OFF/OREV_USED  (
    .I(\ans_temp<0>30_4992 ),
    .O(\ans_ex<0>/OUTPUT/OFF/OREV_USED_6364 )
  );
  X_BUF #(
    .LOC ( "PAD200" ))
  \ans_ex<0>/OUTPUT/OFF/OMUX  (
    .I(ans_ex_0_6366),
    .O(\ans_ex<0>/O )
  );
  X_BUF #(
    .LOC ( "PAD200" ))
  \ans_ex<0>/OUTPUT/OTCLK1INV  (
    .I(clk_BUFGP),
    .O(\ans_ex<0>/OUTPUT/OTCLK1INV_6354 )
  );
  X_BUF #(
    .LOC ( "PAD182" ))
  \ans_ex<2>/OUTPUT/OTCLK1INV  (
    .I(clk_BUFGP),
    .O(\ans_ex<2>/OUTPUT/OTCLK1INV_6495 )
  );
  X_BUF #(
    .LOC ( "PAD182" ))
  \ans_ex<2>/OUTPUT/OFF/OMUX  (
    .I(ans_ex_2_6507),
    .O(\ans_ex<2>/O )
  );
  X_BUF #(
    .LOC ( "PAD182" ))
  \ans_ex<2>/OUTPUT/OFF/OREV_USED  (
    .I(\ans_temp<2>50_5540 ),
    .O(\ans_ex<2>/OUTPUT/OFF/OREV_USED_6505 )
  );
  X_INV #(
    .LOC ( "PAD182" ))
  \ans_ex<2>/OUTPUT/OFF/OSR_USED  (
    .I(reset_IBUF_1690),
    .O(\ans_ex<2>/OUTPUT/OFF/OSR_USED_6503 )
  );
  X_BUF #(
    .LOC ( "PAD182" ))
  \ans_ex<2>/OUTPUT/OFF/O1_DDRMUX  (
    .I(\ans_temp<2>90 ),
    .O(\ans_ex<2>/OUTPUT/OFF/ODDRIN1_MUX )
  );
  X_SFF #(
    .LOC ( "PAD182" ),
    .INIT ( 1'b0 ))
  ans_ex_2 (
    .I(\ans_ex<2>/OUTPUT/OFF/ODDRIN1_MUX ),
    .CE(VCC),
    .CLK(\ans_ex<2>/OUTPUT/OTCLK1INV_6495 ),
    .SET(GND),
    .RST(GND),
    .SSET(\ans_ex<2>/OUTPUT/OFF/OREV_USED_6505 ),
    .SRST(\ans_ex<2>/OUTPUT/OFF/OSR_USED_6503 ),
    .O(ans_ex_2_6507)
  );
  X_BUF #(
    .LOC ( "PAD231" ))
  \mem_mux_sel_ex/OUTPUT/OFF/OMUX  (
    .I(mem_mux_sel_ex_OBUF_1692),
    .O(\mem_mux_sel_ex/O )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFF ),
    .LOC ( "SLICE_X2Y50" ))
  \ans_temp<5>27/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\ans_temp<5>27/F )
  );
  X_LUT4 #(
    .INIT ( 16'h0000 ),
    .LOC ( "SLICE_X3Y55" ))
  \ans_temp_cmp_eq0022/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\ans_temp_cmp_eq0022/G )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFF ),
    .LOC ( "SLICE_X0Y23" ))
  \Ls_or0000/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\Ls_or0000/F )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFF ),
    .LOC ( "SLICE_X2Y38" ))
  \ans_temp<6>27/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\ans_temp<6>27/F )
  );
  X_BUF #(
    .LOC ( "PAD213" ))
  \B_Bypass<1>/OUTPUT/OFF/OMUX  (
    .I(B_Bypass_1_1979),
    .O(\B_Bypass<1>/O )
  );
  X_BUF #(
    .LOC ( "PAD205" ))
  \B_Bypass<0>/OUTPUT/OFF/OMUX  (
    .I(B_Bypass_0_1978),
    .O(\B_Bypass<0>/O )
  );
  X_BUF #(
    .LOC ( "PAD210" ))
  \B_Bypass<2>/OUTPUT/OFF/OMUX  (
    .I(B_Bypass_2_1982),
    .O(\B_Bypass<2>/O )
  );
  X_BUF #(
    .LOC ( "PAD225" ))
  \RW_ex<0>/OUTPUT/OFF/OMUX  (
    .I(RW_ex_0_1719),
    .O(\RW_ex<0>/O )
  );
  X_BUF #(
    .LOC ( "PAD216" ))
  \B_Bypass<4>/OUTPUT/OFF/OMUX  (
    .I(B_Bypass_4_1985),
    .O(\B_Bypass<4>/O )
  );
  X_BUF #(
    .LOC ( "PAD195" ))
  \B_Bypass<5>/OUTPUT/OFF/OMUX  (
    .I(B_Bypass_5_1986),
    .O(\B_Bypass<5>/O )
  );
  X_BUF #(
    .LOC ( "PAD185" ))
  \flag_ex<3>/OUTPUT/OFF/OMUX  (
    .I(flag_ex_3_OBUF_2604),
    .O(\flag_ex<3>/O )
  );
  X_BUF #(
    .LOC ( "PAD222" ))
  \RW_ex<1>/OUTPUT/OFF/OMUX  (
    .I(RW_ex_1_1746),
    .O(\RW_ex<1>/O )
  );
  X_BUF #(
    .LOC ( "PAD212" ))
  \B_Bypass<3>/OUTPUT/OFF/OMUX  (
    .I(B_Bypass_3_1983),
    .O(\B_Bypass<3>/O )
  );
  X_BUF #(
    .LOC ( "PAD173" ))
  \flag_ex<2>/OUTPUT/OFF/OMUX  (
    .I(flag_ex_2_OBUF_4044),
    .O(\flag_ex<2>/O )
  );
  X_BUF #(
    .LOC ( "PAD208" ))
  \B_Bypass<6>/OUTPUT/OFF/OMUX  (
    .I(B_Bypass_6_1987),
    .O(\B_Bypass<6>/O )
  );
  X_BUF #(
    .LOC ( "PAD181" ))
  \flag_ex<0>/OUTPUT/OFF/OMUX  (
    .I(\flag_ex_0_OBUF/F5MUX_2896 ),
    .O(\flag_ex<0>/O )
  );
  X_BUF #(
    .LOC ( "PAD190" ))
  \B_Bypass<7>/OUTPUT/OFF/OMUX  (
    .I(B_Bypass_7_1988),
    .O(\B_Bypass<7>/O )
  );
  X_BUF #(
    .LOC ( "PAD223" ))
  \mem_en_ex/OUTPUT/OFF/OMUX  (
    .I(mem_en_ex_OBUF_1737),
    .O(\mem_en_ex/O )
  );
  X_BUF #(
    .LOC ( "PAD183" ))
  \flag_ex<1>/OUTPUT/OFF/OMUX  (
    .I(flag_ex_1_OBUF_4944),
    .O(\flag_ex<1>/O )
  );
  X_BUF #(
    .LOC ( "PAD221" ))
  \RW_ex<2>/OUTPUT/OFF/OMUX  (
    .I(RW_ex_2_1759),
    .O(\RW_ex<2>/O )
  );
  X_BUF #(
    .LOC ( "PAD211" ))
  \RW_ex<3>/OUTPUT/OFF/OMUX  (
    .I(RW_ex_3_1766),
    .O(\RW_ex<3>/O )
  );
  X_BUF #(
    .LOC ( "PAD226" ))
  \RW_ex<4>/OUTPUT/OFF/OMUX  (
    .I(RW_ex_4_1770),
    .O(\RW_ex<4>/O )
  );
  X_ZERO   NlwBlock_microprocessor_GND (
    .O(GND)
  );
  X_ONE   NlwBlock_microprocessor_VCC (
    .O(VCC)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

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

endmodule

`endif

