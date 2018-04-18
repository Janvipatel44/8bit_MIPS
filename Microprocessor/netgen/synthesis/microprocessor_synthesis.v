////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: microprocessor_synthesis.v
// /___/   /\     Timestamp: Mon Aug 15 15:29:46 2016
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim microprocessor.ngc microprocessor_synthesis.v 
// Device	: xc7a100t-3-csg324
// Input file	: microprocessor.ngc
// Output file	: E:\Nishi_3rdsem\Lab1\netgen\synthesis\microprocessor_synthesis.v
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
  clk, mem_en_dec, mem_rw_dec, mem_mux_sel_dec, reset, mem_en_ex, mem_rw_ex, mem_mux_sel_ex, A, B, data_in, op_dec, RW_dec, flag_ex, ans_ex, data_out
, B_Bypass, RW_ex
);
  input clk;
  input mem_en_dec;
  input mem_rw_dec;
  input mem_mux_sel_dec;
  input reset;
  output mem_en_ex;
  output mem_rw_ex;
  output mem_mux_sel_ex;
  input [7 : 0] A;
  input [7 : 0] B;
  input [7 : 0] data_in;
  input [4 : 0] op_dec;
  input [4 : 0] RW_dec;
  output [3 : 0] flag_ex;
  output [7 : 0] ans_ex;
  output [7 : 0] data_out;
  output [7 : 0] B_Bypass;
  output [4 : 0] RW_ex;
  wire A_7_IBUF_0;
  wire A_6_IBUF_1;
  wire A_5_IBUF_2;
  wire A_4_IBUF_3;
  wire A_3_IBUF_4;
  wire A_2_IBUF_5;
  wire A_1_IBUF_6;
  wire A_0_IBUF_7;
  wire B_7_IBUF_8;
  wire B_6_IBUF_9;
  wire B_5_IBUF_10;
  wire B_4_IBUF_11;
  wire B_3_IBUF_12;
  wire B_2_IBUF_13;
  wire B_1_IBUF_14;
  wire B_0_IBUF_15;
  wire data_in_7_IBUF_16;
  wire data_in_6_IBUF_17;
  wire data_in_5_IBUF_18;
  wire data_in_4_IBUF_19;
  wire data_in_3_IBUF_20;
  wire data_in_2_IBUF_21;
  wire data_in_1_IBUF_22;
  wire data_in_0_IBUF_23;
  wire op_dec_4_IBUF_24;
  wire op_dec_3_IBUF_25;
  wire op_dec_2_IBUF_26;
  wire op_dec_1_IBUF_27;
  wire op_dec_0_IBUF_28;
  wire ans_ex_7_OBUF_68;
  wire ans_ex_6_OBUF_69;
  wire ans_ex_5_OBUF_70;
  wire ans_ex_4_OBUF_71;
  wire ans_ex_3_OBUF_72;
  wire ans_ex_2_OBUF_73;
  wire ans_ex_1_OBUF_74;
  wire ans_ex_0_OBUF_75;
  wire flag_ex_0_OBUF_76;
  wire flag_ex_1_OBUF_77;
  wire flag_ex_2_OBUF_78;
  wire flag_ex_3_OBUF_79;
  wire Mmux_n0270;
  wire Mmux_n026911;
  wire Mmux_n026831_96;
  wire Mmux__n0529121;
  wire Mmux__n052961;
  wire \Madd_D_xor<6>11 ;
  wire Mmux_n026912;
  wire Mmux__n052982;
  wire \Madd_n0289_Madd_xor<0>11_102 ;
  wire Mmux__n052941_103;
  wire Mmux__n05291121;
  wire Mmux_n0272164_105;
  wire Mmux__n052919;
  wire Mmux_n026833;
  wire \Madd_D_xor<5>11 ;
  wire Mmux_n026834;
  wire Mmux_n0272123_110;
  wire Mmux_n026835_111;
  wire Mmux_n026836;
  wire Mmux_n02683;
  wire Mmux_n026832_114;
  wire Mmux_n026839_115;
  wire Mmux_n0268311_116;
  wire Mmux_n0268312_117;
  wire Mmux_n0268313_118;
  wire Mmux_n0268314_119;
  wire Mmux_n0268315_120;
  wire Mmux_n0268316_121;
  wire Mmux_n0268317_122;
  wire Mmux_n0268318_123;
  wire Mmux_n0268319_124;
  wire Mmux_n0268320_125;
  wire Mmux_n0268321_126;
  wire Mmux_n0268322_127;
  wire Mmux_n0268323_128;
  wire Mmux_n0268324_129;
  wire Mmux_n0268325_130;
  wire Mmux_n0268326_131;
  wire Mmux_n0268327_132;
  wire Mmux_n0268328_133;
  wire Mmux_n0268329_134;
  wire Mmux_n0268330;
  wire Mmux_n0268331_136;
  wire Mmux_n027011;
  wire Mmux_n027012_138;
  wire Mmux_n027014;
  wire Mmux_n027015_140;
  wire Mmux_n027016_141;
  wire Mmux_n027017_142;
  wire Mmux_n027018_143;
  wire Mmux_n02724;
  wire Mmux_n027243;
  wire Mmux_n027244_146;
  wire Mmux_n02703;
  wire Mmux_n027033;
  wire Mmux_n027034_149;
  wire Mmux_n027035_150;
  wire Mmux_n027036_151;
  wire Mmux_n027037_152;
  wire Mmux_n027038_153;
  wire Mmux_n027039_154;
  wire Mmux_n0270310_155;
  wire Mmux_n0270311_156;
  wire Mmux_n0270312_157;
  wire Mmux_n0270313_158;
  wire Mmux_n027212;
  wire Mmux_n0272121_160;
  wire Mmux_n0272122_161;
  wire Mmux_n0272125_162;
  wire Mmux_n0272162;
  wire Mmux_n0272163_164;
  wire Mmux_n0272166_165;
  wire Mmux_n027220;
  wire Mmux_n0272201_167;
  wire Mmux_n0272202_168;
  wire Mmux_n0272204;
  wire Mmux_n0272241;
  wire Mmux_n0272242_171;
  wire Mmux_n0272243_172;
  wire Mmux_n0272245;
  wire Mmux_n027228;
  wire Mmux_n0272281_175;
  wire Mmux_n0272282_176;
  wire Mmux_n0272284;
  wire Mmux_n0272322;
  wire Mmux_n0272324;
  wire Mmux_n0272326;
  wire Mmux__n052914;
  wire Mmux__n052911;
  wire Mmux__n0529111_183;
  wire N01;
  wire N2;
  wire N4;
  wire N6;
  wire Mmux_n0269111_188;
  wire Mmux_n0269121_189;
  wire N8;
  wire N10;
  wire Mmux_n02728;
  wire Mmux_n027283;
  wire Mmux_n027284_194;
  wire Mmux_n027285_195;
  wire N12;
  wire N14;
  wire N16;
  wire N18;
  wire N20;
  wire N22;
  wire N24;
  wire N26;
  wire N28;
  wire N29;
  wire N30;
  wire N31;
  wire N32;
  wire N33;
  wire [7 : 0] Or;
  wire [7 : 0] _n0529;
  wire [7 : 0] _n0531;
  wire [1 : 1] D;
  wire [0 : 0] n0283;
  wire [0 : 0] n0292;
  wire [0 : 0] n0282;
  wire [0 : 0] n0291;
  wire [0 : 0] n0281;
  wire [0 : 0] n0290;
  wire [0 : 0] n0280;
  wire [0 : 0] n0289;
  wire [0 : 0] n0279;
  wire [0 : 0] n0288;
  wire [0 : 0] n0278;
  wire [0 : 0] n0287;
  wire [0 : 0] n0284;
  wire [0 : 0] n0293;
  wire [0 : 0] Madd_n0428_lut;
  wire [0 : 0] Madd_n0283_Madd_lut;
  wire [0 : 0] Madd_n0282_Madd_lut;
  wire [0 : 0] Madd_n0291_Madd_lut;
  wire [0 : 0] Madd_n0281_Madd_lut;
  wire [0 : 0] Madd_n0290_Madd_lut;
  wire [0 : 0] Madd_n0280_Madd_lut;
  wire [0 : 0] Madd_n0289_Madd_lut;
  wire [0 : 0] Madd_n0279_Madd_lut;
  wire [0 : 0] Madd_n0288_Madd_lut;
  wire [0 : 0] Madd_n0278_Madd_lut;
  wire [0 : 0] Madd_n0287_Madd_lut;
  wire [0 : 0] Madd_n0284_Madd_lut;
  wire [0 : 0] Madd_n0293_Madd_lut;
  LUT4 #(
    .INIT ( 16'hA956 ))
  \Madd_n0291_Madd_lut<0>1  (
    .I0(A_2_IBUF_5),
    .I1(B_0_IBUF_15),
    .I2(B_1_IBUF_14),
    .I3(B_2_IBUF_13),
    .O(Madd_n0291_Madd_lut[0])
  );
  LUT5 #(
    .INIT ( 32'hAA55A956 ))
  \Madd_n0288_Madd_lut<0>1  (
    .I0(A_5_IBUF_2),
    .I1(B_3_IBUF_12),
    .I2(B_4_IBUF_11),
    .I3(B_5_IBUF_10),
    .I4(\Madd_D_xor<5>11 ),
    .O(Madd_n0288_Madd_lut[0])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \Madd_n0287_Madd_lut<0>1  (
    .I0(A_6_IBUF_1),
    .I1(B_6_IBUF_9),
    .I2(\Madd_D_xor<6>11 ),
    .O(Madd_n0287_Madd_lut[0])
  );
  LUT4 #(
    .INIT ( 16'hA956 ))
  \Madd_n0293_Madd_lut<0>1  (
    .I0(A_7_IBUF_0),
    .I1(\Madd_D_xor<6>11 ),
    .I2(B_6_IBUF_9),
    .I3(B_7_IBUF_8),
    .O(Madd_n0293_Madd_lut[0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_n0278_Madd_lut<0>11  (
    .I0(A_6_IBUF_1),
    .I1(B_6_IBUF_9),
    .O(Madd_n0278_Madd_lut[0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_n0279_Madd_lut<0>11  (
    .I0(A_5_IBUF_2),
    .I1(B_5_IBUF_10),
    .O(Madd_n0279_Madd_lut[0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_n0280_Madd_lut<0>11  (
    .I0(A_4_IBUF_3),
    .I1(B_4_IBUF_11),
    .O(Madd_n0280_Madd_lut[0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_n0281_Madd_lut<0>11  (
    .I0(A_3_IBUF_4),
    .I1(B_3_IBUF_12),
    .O(Madd_n0281_Madd_lut[0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_n0282_Madd_lut<0>11  (
    .I0(A_2_IBUF_5),
    .I1(B_2_IBUF_13),
    .O(Madd_n0282_Madd_lut[0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_n0283_Madd_lut<0>11  (
    .I0(A_1_IBUF_6),
    .I1(B_1_IBUF_14),
    .O(Madd_n0283_Madd_lut[0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_n0284_Madd_lut<0>11  (
    .I0(A_7_IBUF_0),
    .I1(B_7_IBUF_8),
    .O(Madd_n0284_Madd_lut[0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_n0428_lut<0>11  (
    .I0(A_0_IBUF_7),
    .I1(B_0_IBUF_15),
    .O(Madd_n0428_lut[0])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \Or<7>1  (
    .I0(A_7_IBUF_0),
    .I1(B_7_IBUF_8),
    .O(Or[7])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \Or<6>1  (
    .I0(A_6_IBUF_1),
    .I1(B_6_IBUF_9),
    .O(Or[6])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \Or<5>1  (
    .I0(A_5_IBUF_2),
    .I1(B_5_IBUF_10),
    .O(Or[5])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \Or<4>1  (
    .I0(A_4_IBUF_3),
    .I1(B_4_IBUF_11),
    .O(Or[4])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \Or<3>1  (
    .I0(A_3_IBUF_4),
    .I1(B_3_IBUF_12),
    .O(Or[3])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \Or<2>1  (
    .I0(A_2_IBUF_5),
    .I1(B_2_IBUF_13),
    .O(Or[2])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \Or<1>1  (
    .I0(A_1_IBUF_6),
    .I1(B_1_IBUF_14),
    .O(Or[1])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \Or<0>1  (
    .I0(A_0_IBUF_7),
    .I1(B_0_IBUF_15),
    .O(Or[0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_D_xor<1>11  (
    .I0(B_1_IBUF_14),
    .I1(B_0_IBUF_15),
    .O(D[1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux__n0529821 (
    .I0(B_1_IBUF_14),
    .I1(A_3_IBUF_4),
    .I2(A_1_IBUF_6),
    .O(Mmux__n052982)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux__n0529411 (
    .I0(B_1_IBUF_14),
    .I1(A_2_IBUF_5),
    .I2(A_0_IBUF_7),
    .O(Mmux__n052941_103)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux__n052911211 (
    .I0(B_1_IBUF_14),
    .I1(A_1_IBUF_6),
    .I2(A_3_IBUF_4),
    .O(Mmux__n05291121)
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  Mmux__n0529191 (
    .I0(B_3_IBUF_12),
    .I1(B_4_IBUF_11),
    .I2(B_5_IBUF_10),
    .I3(B_6_IBUF_9),
    .I4(B_7_IBUF_8),
    .O(Mmux__n052919)
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  Mmux__n0529161 (
    .I0(B_2_IBUF_13),
    .I1(Mmux__n0529121),
    .I2(Mmux__n052919),
    .O(_n0531[5])
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \Madd_D_xor<5>111  (
    .I0(B_2_IBUF_13),
    .I1(B_0_IBUF_15),
    .I2(B_1_IBUF_14),
    .O(\Madd_D_xor<5>11 )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  Mmux_n0268341 (
    .I0(op_dec_3_IBUF_25),
    .I1(op_dec_2_IBUF_26),
    .I2(op_dec_4_IBUF_24),
    .O(Mmux_n026834)
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  Mmux_n02721231 (
    .I0(op_dec_0_IBUF_28),
    .I1(op_dec_2_IBUF_26),
    .I2(op_dec_4_IBUF_24),
    .I3(op_dec_1_IBUF_27),
    .O(Mmux_n0272123_110)
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  Mmux_n0268351 (
    .I0(op_dec_2_IBUF_26),
    .I1(op_dec_4_IBUF_24),
    .I2(op_dec_1_IBUF_27),
    .O(Mmux_n026835_111)
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  Mmux_n0268361 (
    .I0(op_dec_2_IBUF_26),
    .I1(op_dec_4_IBUF_24),
    .I2(op_dec_3_IBUF_25),
    .O(Mmux_n026836)
  );
  LUT6 #(
    .INIT ( 64'h0404440400004000 ))
  Mmux__n052931 (
    .I0(B_2_IBUF_13),
    .I1(Mmux__n052919),
    .I2(B_0_IBUF_15),
    .I3(A_1_IBUF_6),
    .I4(B_1_IBUF_14),
    .I5(Mmux__n052941_103),
    .O(_n0529[2])
  );
  LUT5 #(
    .INIT ( 32'h44400400 ))
  Mmux__n052941 (
    .I0(B_2_IBUF_13),
    .I1(Mmux__n052919),
    .I2(B_0_IBUF_15),
    .I3(Mmux__n052982),
    .I4(Mmux__n052941_103),
    .O(_n0529[3])
  );
  LUT5 #(
    .INIT ( 32'h2A220800 ))
  Mmux__n052951 (
    .I0(Mmux__n052919),
    .I1(B_0_IBUF_15),
    .I2(B_2_IBUF_13),
    .I3(Mmux__n052982),
    .I4(Mmux__n052961),
    .O(_n0529[4])
  );
  LUT5 #(
    .INIT ( 32'h76325410 ))
  Mmux__n05291211 (
    .I0(B_1_IBUF_14),
    .I1(B_0_IBUF_15),
    .I2(A_5_IBUF_2),
    .I3(A_6_IBUF_1),
    .I4(A_7_IBUF_0),
    .O(Mmux__n0529121)
  );
  LUT5 #(
    .INIT ( 32'h76325410 ))
  Mmux__n0529611 (
    .I0(B_2_IBUF_13),
    .I1(B_1_IBUF_14),
    .I2(A_4_IBUF_3),
    .I3(A_2_IBUF_5),
    .I4(A_0_IBUF_7),
    .O(Mmux__n052961)
  );
  LUT6 #(
    .INIT ( 64'h1010100000100000 ))
  Mmux__n052921 (
    .I0(B_1_IBUF_14),
    .I1(B_2_IBUF_13),
    .I2(Mmux__n052919),
    .I3(B_0_IBUF_15),
    .I4(A_1_IBUF_6),
    .I5(A_0_IBUF_7),
    .O(_n0529[1])
  );
  LUT6 #(
    .INIT ( 64'h1010100000100000 ))
  Mmux__n0529171 (
    .I0(B_1_IBUF_14),
    .I1(B_2_IBUF_13),
    .I2(Mmux__n052919),
    .I3(B_0_IBUF_15),
    .I4(A_6_IBUF_1),
    .I5(A_7_IBUF_0),
    .O(_n0531[6])
  );
  LUT6 #(
    .INIT ( 64'h3393399966C66CCC ))
  \Madd_n0287_Madd_xor<0>11  (
    .I0(Madd_n0288_Madd_lut[0]),
    .I1(Madd_n0287_Madd_lut[0]),
    .I2(Madd_n0289_Madd_lut[0]),
    .I3(\Madd_n0289_Madd_xor<0>11_102 ),
    .I4(A_4_IBUF_3),
    .I5(A_5_IBUF_2),
    .O(n0287[0])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  Mmux_n026831 (
    .I0(op_dec_1_IBUF_27),
    .I1(op_dec_0_IBUF_28),
    .O(Mmux_n02683)
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  Mmux_n026832 (
    .I0(data_in_2_IBUF_21),
    .I1(data_in_3_IBUF_20),
    .I2(data_in_0_IBUF_23),
    .I3(data_in_1_IBUF_22),
    .I4(data_in_4_IBUF_19),
    .I5(data_in_5_IBUF_18),
    .O(Mmux_n026832_114)
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  Mmux_n026835 (
    .I0(B_2_IBUF_13),
    .I1(B_3_IBUF_12),
    .I2(B_0_IBUF_15),
    .I3(B_1_IBUF_14),
    .I4(B_4_IBUF_11),
    .I5(B_5_IBUF_10),
    .O(Mmux_n026839_115)
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  Mmux_n026838 (
    .I0(_n0531[5]),
    .I1(_n0531[7]),
    .I2(_n0531[3]),
    .I3(_n0531[4]),
    .I4(_n0531[6]),
    .I5(_n0531[2]),
    .O(Mmux_n0268312_117)
  );
  LUT6 #(
    .INIT ( 64'hEBBEAAAA00000000 ))
  Mmux_n026839 (
    .I0(Mmux_n0268311_116),
    .I1(Mmux_n0268312_117),
    .I2(_n0531[0]),
    .I3(_n0531[1]),
    .I4(Mmux_n026836),
    .I5(Mmux_n02683),
    .O(Mmux_n0268313_118)
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  Mmux_n0268310 (
    .I0(_n0529[3]),
    .I1(_n0529[0]),
    .I2(_n0529[6]),
    .I3(_n0529[7]),
    .I4(_n0529[2]),
    .O(Mmux_n0268314_119)
  );
  LUT5 #(
    .INIT ( 32'h69960000 ))
  Mmux_n0268312 (
    .I0(Mmux_n0268314_119),
    .I1(_n0529[4]),
    .I2(_n0529[1]),
    .I3(_n0529[5]),
    .I4(Mmux_n026833),
    .O(Mmux_n0268315_120)
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  Mmux_n0268313 (
    .I0(A_7_IBUF_0),
    .I1(B_7_IBUF_8),
    .I2(B_6_IBUF_9),
    .I3(A_6_IBUF_1),
    .I4(B_5_IBUF_10),
    .I5(A_5_IBUF_2),
    .O(Mmux_n0268316_121)
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  Mmux_n0268314 (
    .I0(A_4_IBUF_3),
    .I1(B_4_IBUF_11),
    .I2(B_3_IBUF_12),
    .I3(A_3_IBUF_4),
    .I4(B_2_IBUF_13),
    .I5(A_2_IBUF_5),
    .O(Mmux_n0268317_122)
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  Mmux_n0268315 (
    .I0(A_1_IBUF_6),
    .I1(B_1_IBUF_14),
    .I2(B_0_IBUF_15),
    .I3(A_0_IBUF_7),
    .O(Mmux_n0268318_123)
  );
  LUT4 #(
    .INIT ( 16'h9600 ))
  Mmux_n0268316 (
    .I0(Mmux_n0268317_122),
    .I1(Mmux_n0268318_123),
    .I2(Mmux_n0268316_121),
    .I3(op_dec_1_IBUF_27),
    .O(Mmux_n0268319_124)
  );
  LUT6 #(
    .INIT ( 64'h8777788878887888 ))
  Mmux_n0268317 (
    .I0(A_6_IBUF_1),
    .I1(B_6_IBUF_9),
    .I2(A_7_IBUF_0),
    .I3(B_7_IBUF_8),
    .I4(A_5_IBUF_2),
    .I5(B_5_IBUF_10),
    .O(Mmux_n0268320_125)
  );
  LUT6 #(
    .INIT ( 64'h8777788878887888 ))
  Mmux_n0268318 (
    .I0(A_3_IBUF_4),
    .I1(B_3_IBUF_12),
    .I2(A_4_IBUF_3),
    .I3(B_4_IBUF_11),
    .I4(A_2_IBUF_5),
    .I5(B_2_IBUF_13),
    .O(Mmux_n0268321_126)
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  Mmux_n0268319 (
    .I0(A_0_IBUF_7),
    .I1(B_0_IBUF_15),
    .I2(A_1_IBUF_6),
    .I3(B_1_IBUF_14),
    .O(Mmux_n0268322_127)
  );
  LUT4 #(
    .INIT ( 16'h0096 ))
  Mmux_n0268320 (
    .I0(Mmux_n0268321_126),
    .I1(Mmux_n0268322_127),
    .I2(Mmux_n0268320_125),
    .I3(op_dec_1_IBUF_27),
    .O(Mmux_n0268323_128)
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  Mmux_n0268321 (
    .I0(Or[2]),
    .I1(Or[3]),
    .I2(Or[0]),
    .I3(Or[1]),
    .I4(Or[4]),
    .I5(Or[5]),
    .O(Mmux_n0268324_129)
  );
  LUT6 #(
    .INIT ( 64'hFF9600960096FF96 ))
  Mmux_n0268322 (
    .I0(Mmux_n0268324_129),
    .I1(Or[6]),
    .I2(Or[7]),
    .I3(op_dec_1_IBUF_27),
    .I4(B_5_IBUF_10),
    .I5(Mmux_n026831_96),
    .O(Mmux_n0268325_130)
  );
  LUT6 #(
    .INIT ( 64'h2222222002020200 ))
  Mmux_n0268323 (
    .I0(op_dec_2_IBUF_26),
    .I1(op_dec_4_IBUF_24),
    .I2(op_dec_0_IBUF_28),
    .I3(Mmux_n0268323_128),
    .I4(Mmux_n0268319_124),
    .I5(Mmux_n0268325_130),
    .O(Mmux_n0268326_131)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  Mmux_n0268324 (
    .I0(Mmux_n0268315_120),
    .I1(Mmux_n0268326_131),
    .I2(Mmux_n0268313_118),
    .O(Mmux_n0268327_132)
  );
  LUT5 #(
    .INIT ( 32'h00009669 ))
  Mmux_n0268326 (
    .I0(Mmux_n0268328_133),
    .I1(n0279[0]),
    .I2(n0278[0]),
    .I3(n0284[0]),
    .I4(op_dec_0_IBUF_28),
    .O(Mmux_n0268329_134)
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  Mmux_n0268328 (
    .I0(Mmux_n0268330),
    .I1(n0290[0]),
    .I2(n0289[0]),
    .I3(n0288[0]),
    .I4(n0287[0]),
    .O(Mmux_n0268331_136)
  );
  LUT6 #(
    .INIT ( 64'hEEEEEEEEEAAEAAAA ))
  Mmux_n0268329 (
    .I0(Mmux_n0268327_132),
    .I1(Mmux_n026835_111),
    .I2(Mmux_n0268331_136),
    .I3(n0293[0]),
    .I4(op_dec_0_IBUF_28),
    .I5(Mmux_n0268329_134),
    .O(flag_ex_3_OBUF_79)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  Mmux_n027012 (
    .I0(data_in_4_IBUF_19),
    .I1(data_in_5_IBUF_18),
    .I2(data_in_2_IBUF_21),
    .I3(data_in_3_IBUF_20),
    .I4(data_in_0_IBUF_23),
    .I5(data_in_1_IBUF_22),
    .O(Mmux_n027011)
  );
  LUT5 #(
    .INIT ( 32'h22222220 ))
  Mmux_n027013 (
    .I0(op_dec_2_IBUF_26),
    .I1(op_dec_3_IBUF_25),
    .I2(data_in_7_IBUF_16),
    .I3(Mmux_n027011),
    .I4(data_in_6_IBUF_17),
    .O(Mmux_n027012_138)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  Mmux_n027015 (
    .I0(_n0531[3]),
    .I1(_n0531[5]),
    .I2(_n0531[7]),
    .I3(_n0531[2]),
    .I4(_n0531[4]),
    .I5(_n0531[6]),
    .O(Mmux_n027014)
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFFE ))
  Mmux_n027017 (
    .I0(_n0529[7]),
    .I1(_n0529[2]),
    .I2(_n0529[6]),
    .I3(_n0529[3]),
    .I4(_n0529[0]),
    .O(Mmux_n027016_141)
  );
  LUT5 #(
    .INIT ( 32'hAAAAAAA8 ))
  Mmux_n027018 (
    .I0(Mmux_n026833),
    .I1(_n0529[5]),
    .I2(_n0529[4]),
    .I3(_n0529[1]),
    .I4(Mmux_n027016_141),
    .O(Mmux_n027017_142)
  );
  LUT6 #(
    .INIT ( 64'h7FFFFFFFFFFFFFFF ))
  Mmux_n027019 (
    .I0(B_6_IBUF_9),
    .I1(B_7_IBUF_8),
    .I2(B_5_IBUF_10),
    .I3(B_4_IBUF_11),
    .I4(B_3_IBUF_12),
    .I5(B_2_IBUF_13),
    .O(Mmux_n027018_143)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFF8AAA ))
  Mmux_n0270110 (
    .I0(Mmux_n0272123_110),
    .I1(Mmux_n027018_143),
    .I2(B_0_IBUF_15),
    .I3(B_1_IBUF_14),
    .I4(Mmux_n027017_142),
    .I5(Mmux_n027015_140),
    .O(Mmux_n0270)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF22202020 ))
  Mmux_n027246 (
    .I0(op_dec_1_IBUF_27),
    .I1(op_dec_0_IBUF_28),
    .I2(Mmux_n027244_146),
    .I3(Mmux_n026836),
    .I4(_n0531[0]),
    .I5(Mmux_n027243),
    .O(ans_ex_0_OBUF_75)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  Mmux_n027034 (
    .I0(Madd_n0282_Madd_lut[0]),
    .I1(Madd_n0283_Madd_lut[0]),
    .I2(Madd_n0280_Madd_lut[0]),
    .I3(Madd_n0281_Madd_lut[0]),
    .I4(Madd_n0278_Madd_lut[0]),
    .I5(Madd_n0279_Madd_lut[0]),
    .O(Mmux_n027033)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFA80020 ))
  Mmux_n027036 (
    .I0(op_dec_1_IBUF_27),
    .I1(op_dec_0_IBUF_28),
    .I2(Mmux_n027034_149),
    .I3(op_dec_4_IBUF_24),
    .I4(Mmux_n0270),
    .I5(Mmux_n02703),
    .O(Mmux_n027035_150)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  Mmux_n027037 (
    .I0(Or[4]),
    .I1(Or[5]),
    .I2(Or[2]),
    .I3(Or[3]),
    .I4(Or[0]),
    .I5(Or[1]),
    .O(Mmux_n027036_151)
  );
  LUT6 #(
    .INIT ( 64'hFFFFF888F888F888 ))
  Mmux_n027038 (
    .I0(A_6_IBUF_1),
    .I1(B_6_IBUF_9),
    .I2(A_7_IBUF_0),
    .I3(B_7_IBUF_8),
    .I4(A_5_IBUF_2),
    .I5(B_5_IBUF_10),
    .O(Mmux_n027037_152)
  );
  LUT6 #(
    .INIT ( 64'hFFFFF888F888F888 ))
  Mmux_n027039 (
    .I0(A_3_IBUF_4),
    .I1(B_3_IBUF_12),
    .I2(A_4_IBUF_3),
    .I3(B_4_IBUF_11),
    .I4(A_2_IBUF_5),
    .I5(B_2_IBUF_13),
    .O(Mmux_n027038_153)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFEAEAEA ))
  Mmux_n0270310 (
    .I0(Mmux_n027038_153),
    .I1(A_0_IBUF_7),
    .I2(B_0_IBUF_15),
    .I3(A_1_IBUF_6),
    .I4(B_1_IBUF_14),
    .I5(Mmux_n027037_152),
    .O(Mmux_n027039_154)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAA288888880 ))
  Mmux_n0270311 (
    .I0(op_dec_2_IBUF_26),
    .I1(op_dec_0_IBUF_28),
    .I2(Or[6]),
    .I3(Or[7]),
    .I4(Mmux_n027036_151),
    .I5(Mmux_n027039_154),
    .O(Mmux_n0270310_155)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  Mmux_n0270312 (
    .I0(n0288[0]),
    .I1(n0289[0]),
    .I2(n0287[0]),
    .I3(n0290[0]),
    .I4(n0291[0]),
    .I5(n0292[0]),
    .O(Mmux_n0270311_156)
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFFE ))
  Mmux_n0270313 (
    .I0(n0280[0]),
    .I1(n0281[0]),
    .I2(n0279[0]),
    .I3(n0282[0]),
    .I4(n0283[0]),
    .O(Mmux_n0270312_157)
  );
  LUT6 #(
    .INIT ( 64'hFFFEFFFEFFFE5554 ))
  Mmux_n0270314 (
    .I0(op_dec_0_IBUF_28),
    .I1(n0278[0]),
    .I2(n0284[0]),
    .I3(Mmux_n0270312_157),
    .I4(Mmux_n0270311_156),
    .I5(n0293[0]),
    .O(Mmux_n0270313_158)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF10101110 ))
  Mmux_n0270315 (
    .I0(op_dec_1_IBUF_27),
    .I1(op_dec_4_IBUF_24),
    .I2(Mmux_n0270310_155),
    .I3(Mmux_n0270313_158),
    .I4(op_dec_2_IBUF_26),
    .I5(Mmux_n027035_150),
    .O(flag_ex_1_OBUF_77)
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  Mmux_n0272121 (
    .I0(Mmux_n0272123_110),
    .I1(B_2_IBUF_13),
    .I2(Mmux_n026833),
    .I3(_n0529[2]),
    .O(Mmux_n027212)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF22202020 ))
  Mmux_n0272123 (
    .I0(op_dec_1_IBUF_27),
    .I1(op_dec_0_IBUF_28),
    .I2(Mmux_n0272121_160),
    .I3(Mmux_n026836),
    .I4(_n0531[2]),
    .I5(Mmux_n027212),
    .O(Mmux_n0272122_161)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF40405540 ))
  Mmux_n0272126 (
    .I0(op_dec_1_IBUF_27),
    .I1(Mmux_n026834),
    .I2(A_2_IBUF_5),
    .I3(Mmux_n0272125_162),
    .I4(op_dec_4_IBUF_24),
    .I5(Mmux_n0272122_161),
    .O(ans_ex_2_OBUF_73)
  );
  LUT5 #(
    .INIT ( 32'h22222000 ))
  Mmux_n0272164 (
    .I0(op_dec_1_IBUF_27),
    .I1(op_dec_0_IBUF_28),
    .I2(Mmux_n026836),
    .I3(_n0531[3]),
    .I4(Mmux_n0272162),
    .O(Mmux_n0272163_164)
  );
  LUT5 #(
    .INIT ( 32'h22222000 ))
  Mmux_n0272202 (
    .I0(op_dec_1_IBUF_27),
    .I1(op_dec_0_IBUF_28),
    .I2(Mmux_n026836),
    .I3(_n0531[4]),
    .I4(Mmux_n027220),
    .O(Mmux_n0272201_167)
  );
  LUT5 #(
    .INIT ( 32'hFFFF88F8 ))
  Mmux_n0272203 (
    .I0(_n0529[4]),
    .I1(Mmux_n026833),
    .I2(Mmux_n0272123_110),
    .I3(B_4_IBUF_11),
    .I4(Mmux_n0272201_167),
    .O(Mmux_n0272202_168)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF40405540 ))
  Mmux_n0272206 (
    .I0(op_dec_1_IBUF_27),
    .I1(Mmux_n026834),
    .I2(A_4_IBUF_3),
    .I3(Mmux_n0272204),
    .I4(op_dec_4_IBUF_24),
    .I5(Mmux_n0272202_168),
    .O(ans_ex_4_OBUF_71)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAA80AA80AA80 ))
  Mmux_n0272243 (
    .I0(Mmux_n02683),
    .I1(data_in_5_IBUF_18),
    .I2(Mmux_n026834),
    .I3(Mmux_n0272241),
    .I4(_n0531[5]),
    .I5(Mmux_n026836),
    .O(Mmux_n0272242_171)
  );
  LUT5 #(
    .INIT ( 32'hFFFF88F8 ))
  Mmux_n0272244 (
    .I0(Mmux_n026833),
    .I1(_n0529[5]),
    .I2(Mmux_n0272123_110),
    .I3(B_5_IBUF_10),
    .I4(Mmux_n0272242_171),
    .O(Mmux_n0272243_172)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF40405540 ))
  Mmux_n0272247 (
    .I0(op_dec_1_IBUF_27),
    .I1(Mmux_n026834),
    .I2(A_5_IBUF_2),
    .I3(Mmux_n0272245),
    .I4(op_dec_4_IBUF_24),
    .I5(Mmux_n0272243_172),
    .O(ans_ex_5_OBUF_70)
  );
  LUT5 #(
    .INIT ( 32'h22222000 ))
  Mmux_n0272282 (
    .I0(op_dec_1_IBUF_27),
    .I1(op_dec_0_IBUF_28),
    .I2(Mmux_n026836),
    .I3(_n0531[6]),
    .I4(Mmux_n027228),
    .O(Mmux_n0272281_175)
  );
  LUT5 #(
    .INIT ( 32'hFFFF88F8 ))
  Mmux_n0272283 (
    .I0(_n0529[6]),
    .I1(Mmux_n026833),
    .I2(Mmux_n0272123_110),
    .I3(B_6_IBUF_9),
    .I4(Mmux_n0272281_175),
    .O(Mmux_n0272282_176)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF40405540 ))
  Mmux_n0272286 (
    .I0(op_dec_1_IBUF_27),
    .I1(Mmux_n026834),
    .I2(A_6_IBUF_1),
    .I3(Mmux_n0272284),
    .I4(op_dec_4_IBUF_24),
    .I5(Mmux_n0272282_176),
    .O(ans_ex_6_OBUF_69)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF40405540 ))
  Mmux_n0272328 (
    .I0(op_dec_1_IBUF_27),
    .I1(Mmux_n026834),
    .I2(A_7_IBUF_0),
    .I3(Mmux_n0272326),
    .I4(op_dec_4_IBUF_24),
    .I5(Mmux_n0272324),
    .O(ans_ex_7_OBUF_68)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  Mmux__n0529141 (
    .I0(B_0_IBUF_15),
    .I1(B_1_IBUF_14),
    .I2(A_4_IBUF_3),
    .I3(A_6_IBUF_1),
    .I4(A_5_IBUF_2),
    .I5(A_3_IBUF_4),
    .O(Mmux__n052914)
  );
  LUT6 #(
    .INIT ( 64'h222A222200080000 ))
  Mmux__n0529142 (
    .I0(Mmux__n052919),
    .I1(B_2_IBUF_13),
    .I2(B_1_IBUF_14),
    .I3(B_0_IBUF_15),
    .I4(A_7_IBUF_0),
    .I5(Mmux__n052914),
    .O(_n0531[3])
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  Mmux__n0529111 (
    .I0(B_1_IBUF_14),
    .I1(B_2_IBUF_13),
    .I2(A_2_IBUF_5),
    .I3(A_6_IBUF_1),
    .I4(A_4_IBUF_3),
    .I5(A_0_IBUF_7),
    .O(Mmux__n052911)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux__n0529112 (
    .I0(B_1_IBUF_14),
    .I1(A_5_IBUF_2),
    .I2(A_7_IBUF_0),
    .O(Mmux__n0529111_183)
  );
  LUT6 #(
    .INIT ( 64'hAAA22A2288800800 ))
  Mmux__n0529113 (
    .I0(Mmux__n052919),
    .I1(B_0_IBUF_15),
    .I2(B_2_IBUF_13),
    .I3(Mmux__n05291121),
    .I4(Mmux__n0529111_183),
    .I5(Mmux__n052911),
    .O(_n0531[0])
  );
  LUT6 #(
    .INIT ( 64'h028A139B46CE57DF ))
  Mmux__n052915_SW0 (
    .I0(B_1_IBUF_14),
    .I1(B_0_IBUF_15),
    .I2(A_6_IBUF_1),
    .I3(A_7_IBUF_0),
    .I4(A_4_IBUF_3),
    .I5(A_5_IBUF_2),
    .O(N01)
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  Mmux__n052915 (
    .I0(Mmux__n052919),
    .I1(B_2_IBUF_13),
    .I2(N01),
    .O(_n0531[4])
  );
  LUT6 #(
    .INIT ( 64'h028A139B46CE57DF ))
  Mmux__n05298_SW0 (
    .I0(B_1_IBUF_14),
    .I1(B_0_IBUF_15),
    .I2(A_5_IBUF_2),
    .I3(A_4_IBUF_3),
    .I4(A_7_IBUF_0),
    .I5(A_6_IBUF_1),
    .O(N2)
  );
  LUT6 #(
    .INIT ( 64'h80888000A2AAA222 ))
  Mmux__n05298 (
    .I0(Mmux__n052919),
    .I1(B_2_IBUF_13),
    .I2(Mmux__n052941_103),
    .I3(B_0_IBUF_15),
    .I4(Mmux__n052982),
    .I5(N2),
    .O(_n0529[7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux__n052912_SW0 (
    .I0(B_1_IBUF_14),
    .I1(A_2_IBUF_5),
    .I2(A_4_IBUF_3),
    .O(N4)
  );
  LUT6 #(
    .INIT ( 64'hAA8AA88822022000 ))
  Mmux__n052912 (
    .I0(Mmux__n052919),
    .I1(B_2_IBUF_13),
    .I2(B_0_IBUF_15),
    .I3(N4),
    .I4(Mmux__n05291121),
    .I5(Mmux__n0529121),
    .O(_n0531[1])
  );
  LUT5 #(
    .INIT ( 32'hA2A7F2F7 ))
  Mmux__n05296_SW0 (
    .I0(B_1_IBUF_14),
    .I1(A_3_IBUF_4),
    .I2(B_2_IBUF_13),
    .I3(A_5_IBUF_2),
    .I4(A_1_IBUF_6),
    .O(N6)
  );
  LUT4 #(
    .INIT ( 16'h8A02 ))
  Mmux__n05296 (
    .I0(Mmux__n052919),
    .I1(B_0_IBUF_15),
    .I2(N6),
    .I3(Mmux__n052961),
    .O(_n0529[5])
  );
  LUT5 #(
    .INIT ( 32'h028A57DF ))
  Mmux_n0269121 (
    .I0(Madd_n0288_Madd_lut[0]),
    .I1(Madd_n0289_Madd_lut[0]),
    .I2(A_4_IBUF_3),
    .I3(\Madd_n0289_Madd_xor<0>11_102 ),
    .I4(A_5_IBUF_2),
    .O(Mmux_n0269121_189)
  );
  LUT6 #(
    .INIT ( 64'h2A0A0A2A20000020 ))
  Mmux_n02691 (
    .I0(Mmux_n026835_111),
    .I1(Madd_n0293_Madd_lut[0]),
    .I2(op_dec_0_IBUF_28),
    .I3(Mmux_n026912),
    .I4(A_7_IBUF_0),
    .I5(N8),
    .O(flag_ex_2_OBUF_78)
  );
  LUT6 #(
    .INIT ( 64'h2A22AAA208008880 ))
  Mmux_n02711 (
    .I0(Mmux_n026835_111),
    .I1(op_dec_0_IBUF_28),
    .I2(Madd_n0293_Madd_lut[0]),
    .I3(A_7_IBUF_0),
    .I4(Mmux_n026912),
    .I5(N10),
    .O(flag_ex_0_OBUF_76)
  );
  LUT6 #(
    .INIT ( 64'h2F222F22FFF22F22 ))
  Mmux_n027287 (
    .I0(Mmux_n0272123_110),
    .I1(B_1_IBUF_14),
    .I2(op_dec_1_IBUF_27),
    .I3(Mmux_n027283),
    .I4(Mmux_n027285_195),
    .I5(op_dec_0_IBUF_28),
    .O(ans_ex_1_OBUF_74)
  );
  IBUF   A_7_IBUF (
    .I(A[7]),
    .O(A_7_IBUF_0)
  );
  IBUF   A_6_IBUF (
    .I(A[6]),
    .O(A_6_IBUF_1)
  );
  IBUF   A_5_IBUF (
    .I(A[5]),
    .O(A_5_IBUF_2)
  );
  IBUF   A_4_IBUF (
    .I(A[4]),
    .O(A_4_IBUF_3)
  );
  IBUF   A_3_IBUF (
    .I(A[3]),
    .O(A_3_IBUF_4)
  );
  IBUF   A_2_IBUF (
    .I(A[2]),
    .O(A_2_IBUF_5)
  );
  IBUF   A_1_IBUF (
    .I(A[1]),
    .O(A_1_IBUF_6)
  );
  IBUF   A_0_IBUF (
    .I(A[0]),
    .O(A_0_IBUF_7)
  );
  IBUF   B_7_IBUF (
    .I(B[7]),
    .O(B_7_IBUF_8)
  );
  IBUF   B_6_IBUF (
    .I(B[6]),
    .O(B_6_IBUF_9)
  );
  IBUF   B_5_IBUF (
    .I(B[5]),
    .O(B_5_IBUF_10)
  );
  IBUF   B_4_IBUF (
    .I(B[4]),
    .O(B_4_IBUF_11)
  );
  IBUF   B_3_IBUF (
    .I(B[3]),
    .O(B_3_IBUF_12)
  );
  IBUF   B_2_IBUF (
    .I(B[2]),
    .O(B_2_IBUF_13)
  );
  IBUF   B_1_IBUF (
    .I(B[1]),
    .O(B_1_IBUF_14)
  );
  IBUF   B_0_IBUF (
    .I(B[0]),
    .O(B_0_IBUF_15)
  );
  IBUF   data_in_7_IBUF (
    .I(data_in[7]),
    .O(data_in_7_IBUF_16)
  );
  IBUF   data_in_6_IBUF (
    .I(data_in[6]),
    .O(data_in_6_IBUF_17)
  );
  IBUF   data_in_5_IBUF (
    .I(data_in[5]),
    .O(data_in_5_IBUF_18)
  );
  IBUF   data_in_4_IBUF (
    .I(data_in[4]),
    .O(data_in_4_IBUF_19)
  );
  IBUF   data_in_3_IBUF (
    .I(data_in[3]),
    .O(data_in_3_IBUF_20)
  );
  IBUF   data_in_2_IBUF (
    .I(data_in[2]),
    .O(data_in_2_IBUF_21)
  );
  IBUF   data_in_1_IBUF (
    .I(data_in[1]),
    .O(data_in_1_IBUF_22)
  );
  IBUF   data_in_0_IBUF (
    .I(data_in[0]),
    .O(data_in_0_IBUF_23)
  );
  IBUF   op_dec_4_IBUF (
    .I(op_dec[4]),
    .O(op_dec_4_IBUF_24)
  );
  IBUF   op_dec_3_IBUF (
    .I(op_dec[3]),
    .O(op_dec_3_IBUF_25)
  );
  IBUF   op_dec_2_IBUF (
    .I(op_dec[2]),
    .O(op_dec_2_IBUF_26)
  );
  IBUF   op_dec_1_IBUF (
    .I(op_dec[1]),
    .O(op_dec_1_IBUF_27)
  );
  IBUF   op_dec_0_IBUF (
    .I(op_dec[0]),
    .O(op_dec_0_IBUF_28)
  );
  OBUF   flag_ex_3_OBUF (
    .I(flag_ex_3_OBUF_79),
    .O(flag_ex[3])
  );
  OBUF   flag_ex_2_OBUF (
    .I(flag_ex_2_OBUF_78),
    .O(flag_ex[2])
  );
  OBUF   flag_ex_1_OBUF (
    .I(flag_ex_1_OBUF_77),
    .O(flag_ex[1])
  );
  OBUF   flag_ex_0_OBUF (
    .I(flag_ex_0_OBUF_76),
    .O(flag_ex[0])
  );
  OBUF   ans_ex_7_OBUF (
    .I(ans_ex_7_OBUF_68),
    .O(ans_ex[7])
  );
  OBUF   ans_ex_6_OBUF (
    .I(ans_ex_6_OBUF_69),
    .O(ans_ex[6])
  );
  OBUF   ans_ex_5_OBUF (
    .I(ans_ex_5_OBUF_70),
    .O(ans_ex[5])
  );
  OBUF   ans_ex_4_OBUF (
    .I(ans_ex_4_OBUF_71),
    .O(ans_ex[4])
  );
  OBUF   ans_ex_3_OBUF (
    .I(ans_ex_3_OBUF_72),
    .O(ans_ex[3])
  );
  OBUF   ans_ex_2_OBUF (
    .I(ans_ex_2_OBUF_73),
    .O(ans_ex[2])
  );
  OBUF   ans_ex_1_OBUF (
    .I(ans_ex_1_OBUF_74),
    .O(ans_ex[1])
  );
  OBUF   ans_ex_0_OBUF (
    .I(ans_ex_0_OBUF_75),
    .O(ans_ex[0])
  );
  LUT4 #(
    .INIT ( 16'hFF69 ))
  Mmux_n026837_SW0 (
    .I0(Mmux_n026832_114),
    .I1(data_in_6_IBUF_17),
    .I2(data_in_7_IBUF_16),
    .I3(op_dec_3_IBUF_25),
    .O(N16)
  );
  LUT6 #(
    .INIT ( 64'h1908081908191908 ))
  Mmux_n026837 (
    .I0(op_dec_2_IBUF_26),
    .I1(op_dec_4_IBUF_24),
    .I2(N16),
    .I3(B_6_IBUF_9),
    .I4(B_7_IBUF_8),
    .I5(Mmux_n026839_115),
    .O(Mmux_n0268311_116)
  );
  LUT6 #(
    .INIT ( 64'h9669699669969669 ))
  Mmux_n0268311 (
    .I0(B_2_IBUF_13),
    .I1(B_6_IBUF_9),
    .I2(B_7_IBUF_8),
    .I3(D[1]),
    .I4(B_3_IBUF_12),
    .I5(B_4_IBUF_11),
    .O(Mmux_n026831_96)
  );
  LUT6 #(
    .INIT ( 64'hFDD5AD85F8D0A880 ))
  Mmux_n0272125 (
    .I0(op_dec_2_IBUF_26),
    .I1(A_2_IBUF_5),
    .I2(op_dec_0_IBUF_28),
    .I3(B_2_IBUF_13),
    .I4(n0291[0]),
    .I5(n0282[0]),
    .O(Mmux_n0272125_162)
  );
  LUT6 #(
    .INIT ( 64'hFDD5AD85F8D0A880 ))
  Mmux_n0272205 (
    .I0(op_dec_2_IBUF_26),
    .I1(A_4_IBUF_3),
    .I2(op_dec_0_IBUF_28),
    .I3(B_4_IBUF_11),
    .I4(n0289[0]),
    .I5(n0280[0]),
    .O(Mmux_n0272204)
  );
  LUT6 #(
    .INIT ( 64'hFDD5AD85F8D0A880 ))
  Mmux_n0272246 (
    .I0(op_dec_2_IBUF_26),
    .I1(A_5_IBUF_2),
    .I2(op_dec_0_IBUF_28),
    .I3(B_5_IBUF_10),
    .I4(n0288[0]),
    .I5(n0279[0]),
    .O(Mmux_n0272245)
  );
  LUT6 #(
    .INIT ( 64'hFDD5AD85F8D0A880 ))
  Mmux_n0272327 (
    .I0(op_dec_2_IBUF_26),
    .I1(A_7_IBUF_0),
    .I2(op_dec_0_IBUF_28),
    .I3(B_7_IBUF_8),
    .I4(n0293[0]),
    .I5(n0284[0]),
    .O(Mmux_n0272326)
  );
  LUT5 #(
    .INIT ( 32'h15553FFF ))
  Mmux_n027244_SW0 (
    .I0(A_0_IBUF_7),
    .I1(op_dec_0_IBUF_28),
    .I2(Mmux_n026836),
    .I3(_n0529[0]),
    .I4(Mmux_n026834),
    .O(N18)
  );
  LUT6 #(
    .INIT ( 64'h4051404040FF40FF ))
  Mmux_n027244 (
    .I0(op_dec_4_IBUF_24),
    .I1(op_dec_2_IBUF_26),
    .I2(Mmux_n02724),
    .I3(op_dec_1_IBUF_27),
    .I4(Madd_n0428_lut[0]),
    .I5(N18),
    .O(Mmux_n027243)
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  Mmux_n027016_SW0 (
    .I0(op_dec_3_IBUF_25),
    .I1(Mmux_n027014),
    .I2(_n0531[0]),
    .I3(_n0531[1]),
    .O(N20)
  );
  LUT6 #(
    .INIT ( 64'h4000404040004000 ))
  Mmux_n027016 (
    .I0(op_dec_0_IBUF_28),
    .I1(op_dec_4_IBUF_24),
    .I2(op_dec_1_IBUF_27),
    .I3(Mmux_n027012_138),
    .I4(op_dec_2_IBUF_26),
    .I5(N20),
    .O(Mmux_n027015_140)
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFFE ))
  Mmux_n027035_SW0 (
    .I0(B_4_IBUF_11),
    .I1(B_5_IBUF_10),
    .I2(B_6_IBUF_9),
    .I3(B_7_IBUF_8),
    .I4(\Madd_D_xor<5>11 ),
    .O(N22)
  );
  LUT6 #(
    .INIT ( 64'hFFFDFFFDFFFDAAA8 ))
  Mmux_n027035 (
    .I0(op_dec_2_IBUF_26),
    .I1(Madd_n0284_Madd_lut[0]),
    .I2(Madd_n0428_lut[0]),
    .I3(Mmux_n027033),
    .I4(B_3_IBUF_12),
    .I5(N22),
    .O(Mmux_n027034_149)
  );
  LUT5 #(
    .INIT ( 32'hFFFF88F8 ))
  Mmux_n0272167_SW0 (
    .I0(_n0529[3]),
    .I1(Mmux_n026833),
    .I2(Mmux_n0272123_110),
    .I3(B_3_IBUF_12),
    .I4(Mmux_n0272163_164),
    .O(N24)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF40405540 ))
  Mmux_n0272167 (
    .I0(op_dec_1_IBUF_27),
    .I1(Mmux_n026834),
    .I2(A_3_IBUF_4),
    .I3(Mmux_n0272166_165),
    .I4(op_dec_4_IBUF_24),
    .I5(N24),
    .O(ans_ex_3_OBUF_72)
  );
  LUT6 #(
    .INIT ( 64'hFFFF1F111F111F11 ))
  Mmux_n0272325 (
    .I0(op_dec_0_IBUF_28),
    .I1(N26),
    .I2(B_7_IBUF_8),
    .I3(Mmux_n0272123_110),
    .I4(Mmux_n026833),
    .I5(_n0529[7]),
    .O(Mmux_n0272324)
  );
  LUT5 #(
    .INIT ( 32'h11910080 ))
  Mmux_n027245 (
    .I0(op_dec_4_IBUF_24),
    .I1(op_dec_2_IBUF_26),
    .I2(data_in_0_IBUF_23),
    .I3(op_dec_3_IBUF_25),
    .I4(B_0_IBUF_15),
    .O(Mmux_n027244_146)
  );
  LUT6 #(
    .INIT ( 64'h1E1E781E1E787878 ))
  \Madd_n0279_Madd_xor<0>11  (
    .I0(A_4_IBUF_3),
    .I1(B_4_IBUF_11),
    .I2(Madd_n0279_Madd_lut[0]),
    .I3(Madd_n0281_Madd_lut[0]),
    .I4(Mmux_n0272164_105),
    .I5(A_3_IBUF_4),
    .O(n0279[0])
  );
  LUT6 #(
    .INIT ( 64'h65656556A6A6A66A ))
  \Madd_n0288_Madd_xor<0>11  (
    .I0(Madd_n0288_Madd_lut[0]),
    .I1(A_4_IBUF_3),
    .I2(B_4_IBUF_11),
    .I3(B_3_IBUF_12),
    .I4(\Madd_D_xor<5>11 ),
    .I5(\Madd_n0289_Madd_xor<0>11_102 ),
    .O(n0288[0])
  );
  LUT4 #(
    .INIT ( 16'h1450 ))
  Mmux_n0272242 (
    .I0(op_dec_4_IBUF_24),
    .I1(op_dec_2_IBUF_26),
    .I2(B_5_IBUF_10),
    .I3(A_5_IBUF_2),
    .O(Mmux_n0272241)
  );
  LUT3 #(
    .INIT ( 8'h4D ))
  Mmux_n0269112 (
    .I0(A_5_IBUF_2),
    .I1(Mmux_n0269111_188),
    .I2(B_5_IBUF_10),
    .O(Mmux_n026911)
  );
  LUT4 #(
    .INIT ( 16'hD741 ))
  Mmux_n0269122 (
    .I0(A_6_IBUF_1),
    .I1(B_6_IBUF_9),
    .I2(\Madd_D_xor<6>11 ),
    .I3(Mmux_n0269121_189),
    .O(Mmux_n026912)
  );
  LUT6 #(
    .INIT ( 64'h28BE2828BEBEBE28 ))
  \Madd_n0289_Madd_xor<0>11  (
    .I0(A_3_IBUF_4),
    .I1(B_3_IBUF_12),
    .I2(\Madd_D_xor<5>11 ),
    .I3(Madd_n0291_Madd_lut[0]),
    .I4(A_2_IBUF_5),
    .I5(N12),
    .O(\Madd_n0289_Madd_xor<0>11_102 )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \Madd_n0290_Madd_xor<0>1_SW0  (
    .I0(A_0_IBUF_7),
    .I1(B_0_IBUF_15),
    .O(N14)
  );
  LUT6 #(
    .INIT ( 64'h599955596AAA666A ))
  \Madd_n0290_Madd_xor<0>1  (
    .I0(Madd_n0290_Madd_lut[0]),
    .I1(Madd_n0291_Madd_lut[0]),
    .I2(A_1_IBUF_6),
    .I3(D[1]),
    .I4(N14),
    .I5(A_2_IBUF_5),
    .O(n0290[0])
  );
  LUT5 #(
    .INIT ( 32'h56A9A956 ))
  \Madd_n0289_Madd_xor<0>12  (
    .I0(A_4_IBUF_3),
    .I1(\Madd_D_xor<5>11 ),
    .I2(B_3_IBUF_12),
    .I3(B_4_IBUF_11),
    .I4(\Madd_n0289_Madd_xor<0>11_102 ),
    .O(n0289[0])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \Madd_n0281_Madd_xor<0>11  (
    .I0(A_3_IBUF_4),
    .I1(B_3_IBUF_12),
    .I2(Mmux_n0272164_105),
    .O(n0281[0])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \Madd_D_xor<6>111  (
    .I0(B_5_IBUF_10),
    .I1(B_2_IBUF_13),
    .I2(B_0_IBUF_15),
    .I3(B_1_IBUF_14),
    .I4(B_3_IBUF_12),
    .I5(B_4_IBUF_11),
    .O(\Madd_D_xor<6>11 )
  );
  LUT5 #(
    .INIT ( 32'h01000000 ))
  Mmux__n0529181 (
    .I0(B_2_IBUF_13),
    .I1(B_0_IBUF_15),
    .I2(B_1_IBUF_14),
    .I3(Mmux__n052919),
    .I4(A_7_IBUF_0),
    .O(_n0531[7])
  );
  LUT5 #(
    .INIT ( 32'h01000000 ))
  Mmux__n052916 (
    .I0(B_2_IBUF_13),
    .I1(B_0_IBUF_15),
    .I2(B_1_IBUF_14),
    .I3(Mmux__n052919),
    .I4(A_0_IBUF_7),
    .O(_n0529[0])
  );
  LUT5 #(
    .INIT ( 32'h04000000 ))
  Mmux_n0268331 (
    .I0(op_dec_1_IBUF_27),
    .I1(op_dec_0_IBUF_28),
    .I2(op_dec_2_IBUF_26),
    .I3(op_dec_4_IBUF_24),
    .I4(op_dec_3_IBUF_25),
    .O(Mmux_n026833)
  );
  LUT5 #(
    .INIT ( 32'hAEAAAAAA ))
  Mmux_n027286 (
    .I0(Mmux_n027284_194),
    .I1(_n0531[1]),
    .I2(op_dec_2_IBUF_26),
    .I3(op_dec_4_IBUF_24),
    .I4(op_dec_3_IBUF_25),
    .O(Mmux_n027285_195)
  );
  LUT6 #(
    .INIT ( 64'h1EE1E11EE11E1EE1 ))
  Mmux_n0268325 (
    .I0(A_0_IBUF_7),
    .I1(B_0_IBUF_15),
    .I2(Madd_n0283_Madd_lut[0]),
    .I3(n0282[0]),
    .I4(n0281[0]),
    .I5(n0280[0]),
    .O(Mmux_n0268328_133)
  );
  LUT6 #(
    .INIT ( 64'hFCD1AC81F9D4A984 ))
  Mmux_n0272166 (
    .I0(op_dec_2_IBUF_26),
    .I1(A_3_IBUF_4),
    .I2(op_dec_0_IBUF_28),
    .I3(B_3_IBUF_12),
    .I4(n0290[0]),
    .I5(Mmux_n0272164_105),
    .O(Mmux_n0272166_165)
  );
  LUT6 #(
    .INIT ( 64'hF9D4A984FCD1AC81 ))
  Mmux_n0272285 (
    .I0(op_dec_2_IBUF_26),
    .I1(A_6_IBUF_1),
    .I2(op_dec_0_IBUF_28),
    .I3(B_6_IBUF_9),
    .I4(n0287[0]),
    .I5(Mmux_n026911),
    .O(Mmux_n0272284)
  );
  LUT4 #(
    .INIT ( 16'h3E68 ))
  Mmux_n027241 (
    .I0(A_0_IBUF_7),
    .I1(op_dec_1_IBUF_27),
    .I2(B_0_IBUF_15),
    .I3(op_dec_0_IBUF_28),
    .O(Mmux_n02724)
  );
  LUT6 #(
    .INIT ( 64'h956AA95656A9956A ))
  \Madd_n0293_Madd_xor<0>11  (
    .I0(A_7_IBUF_0),
    .I1(\Madd_D_xor<6>11 ),
    .I2(B_6_IBUF_9),
    .I3(B_7_IBUF_8),
    .I4(A_6_IBUF_1),
    .I5(Mmux_n0269121_189),
    .O(n0293[0])
  );
  LUT6 #(
    .INIT ( 64'h14501450BE501450 ))
  Mmux_n0272122 (
    .I0(op_dec_4_IBUF_24),
    .I1(A_2_IBUF_5),
    .I2(B_2_IBUF_13),
    .I3(op_dec_2_IBUF_26),
    .I4(data_in_2_IBUF_21),
    .I5(op_dec_3_IBUF_25),
    .O(Mmux_n0272121_160)
  );
  LUT6 #(
    .INIT ( 64'h14501450BE501450 ))
  Mmux_n0272163 (
    .I0(op_dec_4_IBUF_24),
    .I1(A_3_IBUF_4),
    .I2(B_3_IBUF_12),
    .I3(op_dec_2_IBUF_26),
    .I4(data_in_3_IBUF_20),
    .I5(op_dec_3_IBUF_25),
    .O(Mmux_n0272162)
  );
  LUT6 #(
    .INIT ( 64'h14501450BE501450 ))
  Mmux_n0272201 (
    .I0(op_dec_4_IBUF_24),
    .I1(A_4_IBUF_3),
    .I2(B_4_IBUF_11),
    .I3(op_dec_2_IBUF_26),
    .I4(data_in_4_IBUF_19),
    .I5(op_dec_3_IBUF_25),
    .O(Mmux_n027220)
  );
  LUT6 #(
    .INIT ( 64'h14501450BE501450 ))
  Mmux_n0272281 (
    .I0(op_dec_4_IBUF_24),
    .I1(A_6_IBUF_1),
    .I2(B_6_IBUF_9),
    .I3(op_dec_2_IBUF_26),
    .I4(data_in_6_IBUF_17),
    .I5(op_dec_3_IBUF_25),
    .O(Mmux_n027228)
  );
  LUT6 #(
    .INIT ( 64'h14501450BE501450 ))
  Mmux_n0272323 (
    .I0(op_dec_4_IBUF_24),
    .I1(A_7_IBUF_0),
    .I2(B_7_IBUF_8),
    .I3(op_dec_2_IBUF_26),
    .I4(data_in_7_IBUF_16),
    .I5(op_dec_3_IBUF_25),
    .O(Mmux_n0272322)
  );
  LUT6 #(
    .INIT ( 64'h14501450BE501450 ))
  Mmux_n027285 (
    .I0(op_dec_4_IBUF_24),
    .I1(A_1_IBUF_6),
    .I2(B_1_IBUF_14),
    .I3(op_dec_2_IBUF_26),
    .I4(data_in_1_IBUF_22),
    .I5(op_dec_3_IBUF_25),
    .O(Mmux_n027284_194)
  );
  LUT5 #(
    .INIT ( 32'h11171777 ))
  Mmux_n0269111 (
    .I0(A_4_IBUF_3),
    .I1(B_4_IBUF_11),
    .I2(A_3_IBUF_4),
    .I3(B_3_IBUF_12),
    .I4(Mmux_n0272164_105),
    .O(Mmux_n0269111_188)
  );
  LUT5 #(
    .INIT ( 32'h7008100E ))
  Mmux_n02691_SW0 (
    .I0(A_6_IBUF_1),
    .I1(B_6_IBUF_9),
    .I2(A_7_IBUF_0),
    .I3(B_7_IBUF_8),
    .I4(Mmux_n026911),
    .O(N8)
  );
  LUT5 #(
    .INIT ( 32'hE888EEE8 ))
  Mmux_n02711_SW0 (
    .I0(A_7_IBUF_0),
    .I1(B_7_IBUF_8),
    .I2(A_6_IBUF_1),
    .I3(B_6_IBUF_9),
    .I4(Mmux_n026911),
    .O(N10)
  );
  LUT5 #(
    .INIT ( 32'hAA55A956 ))
  \Madd_n0290_Madd_lut<0>1  (
    .I0(A_3_IBUF_4),
    .I1(B_0_IBUF_15),
    .I2(B_2_IBUF_13),
    .I3(B_3_IBUF_12),
    .I4(B_1_IBUF_14),
    .O(Madd_n0290_Madd_lut[0])
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAA955555556 ))
  \Madd_n0289_Madd_lut<0>1  (
    .I0(A_4_IBUF_3),
    .I1(B_2_IBUF_13),
    .I2(B_0_IBUF_15),
    .I3(B_1_IBUF_14),
    .I4(B_3_IBUF_12),
    .I5(B_4_IBUF_11),
    .O(Madd_n0289_Madd_lut[0])
  );
  LUT6 #(
    .INIT ( 64'h45555555FFFFFFFF ))
  Mmux_n0272325_SW0 (
    .I0(Mmux_n0272322),
    .I1(op_dec_2_IBUF_26),
    .I2(_n0531[7]),
    .I3(op_dec_4_IBUF_24),
    .I4(op_dec_3_IBUF_25),
    .I5(op_dec_1_IBUF_27),
    .O(N26)
  );
  LUT5 #(
    .INIT ( 32'h99969666 ))
  \Madd_n0280_Madd_xor<0>11  (
    .I0(A_4_IBUF_3),
    .I1(B_4_IBUF_11),
    .I2(A_3_IBUF_4),
    .I3(B_3_IBUF_12),
    .I4(Mmux_n0272164_105),
    .O(n0280[0])
  );
  LUT5 #(
    .INIT ( 32'h96669996 ))
  \Madd_n0284_Madd_xor<0>11  (
    .I0(A_7_IBUF_0),
    .I1(B_7_IBUF_8),
    .I2(B_6_IBUF_9),
    .I3(A_6_IBUF_1),
    .I4(Mmux_n026911),
    .O(n0284[0])
  );
  LUT5 #(
    .INIT ( 32'h00000006 ))
  Mmux_n027031 (
    .I0(A_0_IBUF_7),
    .I1(B_0_IBUF_15),
    .I2(op_dec_2_IBUF_26),
    .I3(op_dec_4_IBUF_24),
    .I4(op_dec_1_IBUF_27),
    .O(Mmux_n02703)
  );
  LUT5 #(
    .INIT ( 32'h66969666 ))
  Mmux_n027281 (
    .I0(A_1_IBUF_6),
    .I1(B_1_IBUF_14),
    .I2(B_0_IBUF_15),
    .I3(op_dec_0_IBUF_28),
    .I4(A_0_IBUF_7),
    .O(Mmux_n02728)
  );
  LUT4 #(
    .INIT ( 16'h6966 ))
  \Madd_n0292_Madd_xor<0>11  (
    .I0(A_1_IBUF_6),
    .I1(B_1_IBUF_14),
    .I2(A_0_IBUF_7),
    .I3(B_0_IBUF_15),
    .O(n0292[0])
  );
  LUT6 #(
    .INIT ( 64'hEEE8E888E888E888 ))
  Mmux_n02721641 (
    .I0(A_2_IBUF_5),
    .I1(B_2_IBUF_13),
    .I2(A_1_IBUF_6),
    .I3(B_1_IBUF_14),
    .I4(A_0_IBUF_7),
    .I5(B_0_IBUF_15),
    .O(Mmux_n0272164_105)
  );
  LUT4 #(
    .INIT ( 16'h4D77 ))
  \Madd_n0289_Madd_xor<0>11_SW0  (
    .I0(A_1_IBUF_6),
    .I1(B_1_IBUF_14),
    .I2(A_0_IBUF_7),
    .I3(B_0_IBUF_15),
    .O(N12)
  );
  LUT4 #(
    .INIT ( 16'h9666 ))
  \Madd_n0283_Madd_xor<0>11  (
    .I0(A_1_IBUF_6),
    .I1(B_1_IBUF_14),
    .I2(A_0_IBUF_7),
    .I3(B_0_IBUF_15),
    .O(n0283[0])
  );
  LUT5 #(
    .INIT ( 32'h96669996 ))
  \Madd_n0278_Madd_xor<0>11  (
    .I0(A_6_IBUF_1),
    .I1(B_6_IBUF_9),
    .I2(A_5_IBUF_2),
    .I3(B_5_IBUF_10),
    .I4(Mmux_n0269111_188),
    .O(n0278[0])
  );
  LUT6 #(
    .INIT ( 64'h9996966696669666 ))
  \Madd_n0282_Madd_xor<0>11  (
    .I0(A_2_IBUF_5),
    .I1(B_2_IBUF_13),
    .I2(A_1_IBUF_6),
    .I3(B_1_IBUF_14),
    .I4(B_0_IBUF_15),
    .I5(A_0_IBUF_7),
    .O(n0282[0])
  );
  LUT6 #(
    .INIT ( 64'h55AAA55A956AA956 ))
  \Madd_n0291_Madd_xor<0>11  (
    .I0(A_2_IBUF_5),
    .I1(B_0_IBUF_15),
    .I2(B_1_IBUF_14),
    .I3(B_2_IBUF_13),
    .I4(A_1_IBUF_6),
    .I5(A_0_IBUF_7),
    .O(n0291[0])
  );
  LUT6 #(
    .INIT ( 64'h9669659A9966A659 ))
  Mmux_n0268327 (
    .I0(A_2_IBUF_5),
    .I1(B_0_IBUF_15),
    .I2(B_1_IBUF_14),
    .I3(B_2_IBUF_13),
    .I4(A_0_IBUF_7),
    .I5(A_1_IBUF_6),
    .O(Mmux_n0268330)
  );
  MUXF7   Mmux__n052973 (
    .I0(N28),
    .I1(N29),
    .S(B_0_IBUF_15),
    .O(_n0529[6])
  );
  LUT6 #(
    .INIT ( 64'hAA8AA88822022000 ))
  Mmux__n052973_F (
    .I0(Mmux__n052919),
    .I1(B_2_IBUF_13),
    .I2(B_1_IBUF_14),
    .I3(A_4_IBUF_3),
    .I4(A_6_IBUF_1),
    .I5(Mmux__n052941_103),
    .O(N28)
  );
  LUT6 #(
    .INIT ( 64'h2A0A280822022000 ))
  Mmux__n052973_G (
    .I0(Mmux__n052919),
    .I1(B_2_IBUF_13),
    .I2(B_1_IBUF_14),
    .I3(A_3_IBUF_4),
    .I4(A_5_IBUF_2),
    .I5(A_1_IBUF_6),
    .O(N29)
  );
  MUXF7   Mmux__n0529133 (
    .I0(N30),
    .I1(N31),
    .S(B_0_IBUF_15),
    .O(_n0531[2])
  );
  LUT6 #(
    .INIT ( 64'h2A0A280822022000 ))
  Mmux__n0529133_F (
    .I0(Mmux__n052919),
    .I1(B_1_IBUF_14),
    .I2(B_2_IBUF_13),
    .I3(A_6_IBUF_1),
    .I4(A_2_IBUF_5),
    .I5(A_4_IBUF_3),
    .O(N30)
  );
  LUT6 #(
    .INIT ( 64'h2A0A280822022000 ))
  Mmux__n0529133_G (
    .I0(Mmux__n052919),
    .I1(B_1_IBUF_14),
    .I2(B_2_IBUF_13),
    .I3(A_7_IBUF_0),
    .I4(A_3_IBUF_4),
    .I5(A_5_IBUF_2),
    .O(N31)
  );
  MUXF7   Mmux_n027284 (
    .I0(N32),
    .I1(N33),
    .S(op_dec_2_IBUF_26),
    .O(Mmux_n027283)
  );
  LUT5 #(
    .INIT ( 32'hD5558000 ))
  Mmux_n027284_F (
    .I0(op_dec_4_IBUF_24),
    .I1(_n0529[1]),
    .I2(op_dec_3_IBUF_25),
    .I3(op_dec_0_IBUF_28),
    .I4(Mmux_n02728),
    .O(N32)
  );
  LUT5 #(
    .INIT ( 32'h3220BAA8 ))
  Mmux_n027284_G (
    .I0(A_1_IBUF_6),
    .I1(op_dec_4_IBUF_24),
    .I2(op_dec_0_IBUF_28),
    .I3(B_1_IBUF_14),
    .I4(op_dec_3_IBUF_25),
    .O(N33)
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

