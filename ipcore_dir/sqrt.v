////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: sqrt.v
// /___/   /\     Timestamp: Sat Mar 09 22:10:31 2019
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog C:/Users/JohnAlex/Documents/mojo/mojo-base-project-master/ipcore_dir/tmp/_cg/sqrt.ngc C:/Users/JohnAlex/Documents/mojo/mojo-base-project-master/ipcore_dir/tmp/_cg/sqrt.v 
// Device	: 6slx9tqg144-2
// Input file	: C:/Users/JohnAlex/Documents/mojo/mojo-base-project-master/ipcore_dir/tmp/_cg/sqrt.ngc
// Output file	: C:/Users/JohnAlex/Documents/mojo/mojo-base-project-master/ipcore_dir/tmp/_cg/sqrt.v
// # of Modules	: 1
// Design Name	: sqrt
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

module sqrt (
  aclk, s_axis_cartesian_tvalid, m_axis_dout_tvalid, s_axis_cartesian_tdata, m_axis_dout_tdata
)/* synthesis syn_black_box syn_noprune=1 */;
  input aclk;
  input s_axis_cartesian_tvalid;
  output m_axis_dout_tvalid;
  input [15 : 0] s_axis_cartesian_tdata;
  output [15 : 0] m_axis_dout_tdata;
  
  // synthesis translate_off
  
  wire \blk00000001/sig000000bd ;
  wire \blk00000001/sig000000bc ;
  wire \blk00000001/sig000000bb ;
  wire \blk00000001/sig000000ba ;
  wire \blk00000001/sig000000b9 ;
  wire \blk00000001/sig000000b8 ;
  wire \blk00000001/sig000000b7 ;
  wire \blk00000001/sig000000b6 ;
  wire \blk00000001/sig000000b5 ;
  wire \blk00000001/sig000000b4 ;
  wire \blk00000001/sig000000b3 ;
  wire \blk00000001/sig000000b2 ;
  wire \blk00000001/sig000000b1 ;
  wire \blk00000001/sig000000b0 ;
  wire \blk00000001/sig000000af ;
  wire \blk00000001/sig000000ae ;
  wire \blk00000001/sig000000ad ;
  wire \blk00000001/sig000000ac ;
  wire \blk00000001/sig000000ab ;
  wire \blk00000001/sig000000aa ;
  wire \blk00000001/sig000000a9 ;
  wire \blk00000001/sig000000a8 ;
  wire \blk00000001/sig000000a7 ;
  wire \blk00000001/sig000000a6 ;
  wire \blk00000001/sig000000a5 ;
  wire \blk00000001/sig000000a4 ;
  wire \blk00000001/sig000000a3 ;
  wire \blk00000001/sig000000a2 ;
  wire \blk00000001/sig000000a1 ;
  wire \blk00000001/sig000000a0 ;
  wire \blk00000001/sig0000009f ;
  wire \blk00000001/sig0000009e ;
  wire \blk00000001/sig0000009d ;
  wire \blk00000001/sig0000009c ;
  wire \blk00000001/sig00000099 ;
  wire \blk00000001/sig00000098 ;
  wire \blk00000001/sig00000097 ;
  wire \blk00000001/sig00000096 ;
  wire \blk00000001/sig00000095 ;
  wire \blk00000001/sig00000094 ;
  wire \blk00000001/sig00000093 ;
  wire \blk00000001/sig00000092 ;
  wire \blk00000001/sig00000091 ;
  wire \blk00000001/sig00000090 ;
  wire \blk00000001/sig0000008f ;
  wire \blk00000001/sig0000008e ;
  wire \blk00000001/sig0000008d ;
  wire \blk00000001/sig0000008c ;
  wire \blk00000001/sig0000008b ;
  wire \blk00000001/sig0000008a ;
  wire \blk00000001/sig00000089 ;
  wire \blk00000001/sig00000088 ;
  wire \blk00000001/sig00000087 ;
  wire \blk00000001/sig00000086 ;
  wire \blk00000001/sig00000085 ;
  wire \blk00000001/sig00000084 ;
  wire \blk00000001/sig00000083 ;
  wire \blk00000001/sig00000082 ;
  wire \blk00000001/sig00000081 ;
  wire \blk00000001/sig00000080 ;
  wire \blk00000001/sig0000007f ;
  wire \blk00000001/sig0000007e ;
  wire \blk00000001/sig0000007d ;
  wire \blk00000001/sig0000007c ;
  wire \blk00000001/sig0000007b ;
  wire \blk00000001/sig0000007a ;
  wire \blk00000001/sig00000079 ;
  wire \blk00000001/sig00000078 ;
  wire \blk00000001/sig00000077 ;
  wire \blk00000001/sig00000076 ;
  wire \blk00000001/sig00000075 ;
  wire \blk00000001/sig00000074 ;
  wire \blk00000001/sig00000073 ;
  wire \blk00000001/sig00000072 ;
  wire \blk00000001/sig00000071 ;
  wire \blk00000001/sig00000070 ;
  wire \blk00000001/sig0000006f ;
  wire \blk00000001/sig0000006e ;
  wire \blk00000001/sig0000006d ;
  wire \blk00000001/sig0000006c ;
  wire \blk00000001/sig0000006b ;
  wire \blk00000001/sig0000006a ;
  wire \blk00000001/sig00000069 ;
  wire \blk00000001/sig00000068 ;
  wire \blk00000001/sig00000067 ;
  wire \blk00000001/sig00000066 ;
  wire \blk00000001/sig00000065 ;
  wire \blk00000001/sig00000064 ;
  wire \blk00000001/sig00000063 ;
  wire \blk00000001/sig00000062 ;
  wire \blk00000001/sig00000061 ;
  wire \blk00000001/sig00000060 ;
  wire \blk00000001/sig0000005f ;
  wire \blk00000001/sig0000005e ;
  wire \blk00000001/sig0000005d ;
  wire \blk00000001/sig0000005c ;
  wire \blk00000001/sig0000005b ;
  wire \blk00000001/sig0000005a ;
  wire \blk00000001/sig00000059 ;
  wire \blk00000001/sig00000058 ;
  wire \blk00000001/sig00000057 ;
  wire \blk00000001/sig00000056 ;
  wire \blk00000001/sig00000055 ;
  wire \blk00000001/sig00000054 ;
  wire \blk00000001/sig00000053 ;
  wire \blk00000001/sig00000052 ;
  wire \blk00000001/sig00000051 ;
  wire \blk00000001/sig00000050 ;
  wire \blk00000001/sig0000004f ;
  wire \blk00000001/sig0000004e ;
  wire \blk00000001/sig0000003f ;
  wire \blk00000001/sig0000003e ;
  wire \blk00000001/sig0000003d ;
  wire \blk00000001/sig0000003c ;
  wire \blk00000001/sig0000003b ;
  wire \blk00000001/sig0000003a ;
  wire \blk00000001/sig00000039 ;
  wire \blk00000001/sig00000038 ;
  wire \blk00000001/sig00000037 ;
  wire \blk00000001/sig00000036 ;
  wire \blk00000001/sig00000035 ;
  wire \blk00000001/sig00000034 ;
  wire \blk00000001/sig00000033 ;
  wire \blk00000001/sig00000032 ;
  wire \blk00000001/sig00000031 ;
  wire \blk00000001/sig00000030 ;
  wire \blk00000001/sig0000002f ;
  wire \blk00000001/sig0000002e ;
  wire \blk00000001/sig0000002d ;
  wire \blk00000001/sig0000002c ;
  wire \blk00000001/sig0000002b ;
  wire \blk00000001/sig0000002a ;
  wire \blk00000001/sig00000029 ;
  wire \blk00000001/sig00000028 ;
  wire \blk00000001/sig00000027 ;
  wire \blk00000001/sig00000026 ;
  wire \blk00000001/sig00000025 ;
  wire \blk00000001/sig00000024 ;
  wire \blk00000001/sig00000023 ;
  wire \blk00000001/sig00000022 ;
  wire \blk00000001/sig00000021 ;
  wire \blk00000001/sig00000020 ;
  wire \blk00000001/sig0000001f ;
  wire \blk00000001/sig0000001e ;
  wire \blk00000001/sig0000001d ;
  wire \blk00000001/sig0000001c ;
  wire \blk00000001/sig0000001b ;
  wire \blk00000001/sig0000001a ;
  wire \blk00000001/sig00000019 ;
  wire \blk00000001/sig00000018 ;
  wire \blk00000001/sig00000017 ;
  wire \blk00000001/sig00000016 ;
  wire \blk00000001/sig00000015 ;
  wire \blk00000001/sig00000014 ;
  wire \blk00000001/sig00000013 ;
  wire \blk00000001/sig00000012 ;
  wire \blk00000001/sig00000011 ;
  wire \blk00000001/sig00000010 ;
  wire \blk00000001/sig0000000f ;
  wire \blk00000001/sig0000000e ;
  wire \blk00000001/sig0000000c ;
  wire \blk00000001/blk0000000a/sig000000e3 ;
  wire \blk00000001/blk0000000a/sig000000e2 ;
  wire \blk00000001/blk0000000a/sig000000e1 ;
  wire \blk00000001/blk0000000a/sig000000e0 ;
  wire \blk00000001/blk0000000a/sig000000df ;
  wire \blk00000001/blk0000000a/sig000000de ;
  wire \blk00000001/blk0000000a/sig000000dd ;
  wire \blk00000001/blk0000000a/sig000000dc ;
  wire \blk00000001/blk0000000a/sig000000db ;
  wire \blk00000001/blk0000000a/sig000000da ;
  wire \blk00000001/blk0000000a/sig000000d9 ;
  wire \blk00000001/blk0000000a/sig000000d8 ;
  wire \blk00000001/blk0000000a/sig000000d7 ;
  wire \blk00000001/blk0000000a/sig000000d6 ;
  wire \blk00000001/blk0000000a/sig000000d5 ;
  wire \blk00000001/blk0000000a/sig000000d4 ;
  wire \blk00000001/blk0000000a/sig000000d3 ;
  wire \blk00000001/blk0000000a/sig000000cc ;
  wire \blk00000001/blk0000000a/sig000000ca ;
  wire \blk00000001/blk0000002f/sig0000010e ;
  wire \blk00000001/blk0000002f/sig0000010d ;
  wire \blk00000001/blk0000002f/sig0000010c ;
  wire \blk00000001/blk0000002f/sig0000010b ;
  wire \blk00000001/blk0000002f/sig0000010a ;
  wire \blk00000001/blk0000002f/sig00000109 ;
  wire \blk00000001/blk0000002f/sig00000108 ;
  wire \blk00000001/blk0000002f/sig00000107 ;
  wire \blk00000001/blk0000002f/sig00000106 ;
  wire \blk00000001/blk0000002f/sig00000105 ;
  wire \blk00000001/blk0000002f/sig00000104 ;
  wire \blk00000001/blk0000002f/sig00000103 ;
  wire \blk00000001/blk0000002f/sig00000102 ;
  wire \blk00000001/blk0000002f/sig00000101 ;
  wire \blk00000001/blk0000002f/sig00000100 ;
  wire \blk00000001/blk0000002f/sig000000ff ;
  wire \blk00000001/blk0000002f/sig000000fe ;
  wire \blk00000001/blk0000002f/sig000000fd ;
  wire \blk00000001/blk0000002f/sig000000fc ;
  wire \blk00000001/blk0000002f/sig000000f4 ;
  wire \blk00000001/blk0000002f/sig000000f2 ;
  wire \blk00000001/blk0000004f/sig0000012f ;
  wire \blk00000001/blk0000004f/sig0000012e ;
  wire \blk00000001/blk0000004f/sig0000012d ;
  wire \blk00000001/blk0000004f/sig0000012c ;
  wire \blk00000001/blk0000004f/sig0000012b ;
  wire \blk00000001/blk0000004f/sig0000012a ;
  wire \blk00000001/blk0000004f/sig00000129 ;
  wire \blk00000001/blk0000004f/sig00000128 ;
  wire \blk00000001/blk0000004f/sig00000127 ;
  wire \blk00000001/blk0000004f/sig00000126 ;
  wire \blk00000001/blk0000004f/sig00000125 ;
  wire \blk00000001/blk0000004f/sig00000124 ;
  wire \blk00000001/blk0000004f/sig00000123 ;
  wire \blk00000001/blk0000004f/sig00000122 ;
  wire \blk00000001/blk0000004f/sig00000121 ;
  wire \blk00000001/blk0000004f/sig0000011b ;
  wire \blk00000001/blk0000004f/sig00000119 ;
  wire \blk00000001/blk00000067/sig0000015f ;
  wire \blk00000001/blk00000067/sig0000015e ;
  wire \blk00000001/blk00000067/sig0000015d ;
  wire \blk00000001/blk00000067/sig0000015c ;
  wire \blk00000001/blk00000067/sig0000015b ;
  wire \blk00000001/blk00000067/sig0000015a ;
  wire \blk00000001/blk00000067/sig00000159 ;
  wire \blk00000001/blk00000067/sig00000158 ;
  wire \blk00000001/blk00000067/sig00000157 ;
  wire \blk00000001/blk00000067/sig00000156 ;
  wire \blk00000001/blk00000067/sig00000155 ;
  wire \blk00000001/blk00000067/sig00000154 ;
  wire \blk00000001/blk00000067/sig00000153 ;
  wire \blk00000001/blk00000067/sig00000152 ;
  wire \blk00000001/blk00000067/sig00000151 ;
  wire \blk00000001/blk00000067/sig00000150 ;
  wire \blk00000001/blk00000067/sig0000014f ;
  wire \blk00000001/blk00000067/sig0000014e ;
  wire \blk00000001/blk00000067/sig0000014d ;
  wire \blk00000001/blk00000067/sig0000014c ;
  wire \blk00000001/blk00000067/sig0000014b ;
  wire \blk00000001/blk00000067/sig00000142 ;
  wire \blk00000001/blk00000067/sig00000140 ;
  wire \blk00000001/blk00000096/sig00000179 ;
  wire \blk00000001/blk00000096/sig00000178 ;
  wire \blk00000001/blk00000096/sig00000177 ;
  wire \blk00000001/blk00000096/sig00000176 ;
  wire \blk00000001/blk00000096/sig00000175 ;
  wire \blk00000001/blk00000096/sig00000174 ;
  wire \blk00000001/blk00000096/sig00000173 ;
  wire \blk00000001/blk00000096/sig00000172 ;
  wire \blk00000001/blk00000096/sig00000171 ;
  wire \blk00000001/blk00000096/sig00000170 ;
  wire \blk00000001/blk00000096/sig0000016f ;
  wire \blk00000001/blk00000096/sig0000016e ;
  wire \blk00000001/blk00000096/sig00000169 ;
  wire \blk00000001/blk00000096/sig00000167 ;
  wire \blk00000001/blk000000b0/sig000001ae ;
  wire \blk00000001/blk000000b0/sig000001ad ;
  wire \blk00000001/blk000000b0/sig000001ac ;
  wire \blk00000001/blk000000b0/sig000001ab ;
  wire \blk00000001/blk000000b0/sig000001aa ;
  wire \blk00000001/blk000000b0/sig000001a9 ;
  wire \blk00000001/blk000000b0/sig000001a8 ;
  wire \blk00000001/blk000000b0/sig000001a7 ;
  wire \blk00000001/blk000000b0/sig000001a6 ;
  wire \blk00000001/blk000000b0/sig000001a5 ;
  wire \blk00000001/blk000000b0/sig000001a4 ;
  wire \blk00000001/blk000000b0/sig000001a3 ;
  wire \blk00000001/blk000000b0/sig000001a2 ;
  wire \blk00000001/blk000000b0/sig000001a1 ;
  wire \blk00000001/blk000000b0/sig000001a0 ;
  wire \blk00000001/blk000000b0/sig0000019f ;
  wire \blk00000001/blk000000b0/sig0000019e ;
  wire \blk00000001/blk000000b0/sig0000019d ;
  wire \blk00000001/blk000000b0/sig0000019c ;
  wire \blk00000001/blk000000b0/sig0000019b ;
  wire \blk00000001/blk000000b0/sig0000019a ;
  wire \blk00000001/blk000000b0/sig00000199 ;
  wire \blk00000001/blk000000b0/sig00000198 ;
  wire \blk00000001/blk000000b0/sig0000018e ;
  wire \blk00000001/blk000000b0/sig0000018c ;
  wire \blk00000001/blk000000d4/sig000001e8 ;
  wire \blk00000001/blk000000d4/sig000001e7 ;
  wire \blk00000001/blk000000d4/sig000001e6 ;
  wire \blk00000001/blk000000d4/sig000001e5 ;
  wire \blk00000001/blk000000d4/sig000001e4 ;
  wire \blk00000001/blk000000d4/sig000001e3 ;
  wire \blk00000001/blk000000d4/sig000001e2 ;
  wire \blk00000001/blk000000d4/sig000001e1 ;
  wire \blk00000001/blk000000d4/sig000001e0 ;
  wire \blk00000001/blk000000d4/sig000001df ;
  wire \blk00000001/blk000000d4/sig000001de ;
  wire \blk00000001/blk000000d4/sig000001dd ;
  wire \blk00000001/blk000000d4/sig000001dc ;
  wire \blk00000001/blk000000d4/sig000001db ;
  wire \blk00000001/blk000000d4/sig000001da ;
  wire \blk00000001/blk000000d4/sig000001d9 ;
  wire \blk00000001/blk000000d4/sig000001d8 ;
  wire \blk00000001/blk000000d4/sig000001d7 ;
  wire \blk00000001/blk000000d4/sig000001d6 ;
  wire \blk00000001/blk000000d4/sig000001d5 ;
  wire \blk00000001/blk000000d4/sig000001d4 ;
  wire \blk00000001/blk000000d4/sig000001d3 ;
  wire \blk00000001/blk000000d4/sig000001d2 ;
  wire \blk00000001/blk000000d4/sig000001d1 ;
  wire \blk00000001/blk000000d4/sig000001d0 ;
  wire \blk00000001/blk000000d4/sig000001cf ;
  wire \blk00000001/blk000000d4/sig000001ce ;
  wire \blk00000001/blk000000d4/sig000001cd ;
  wire \blk00000001/blk000000d4/sig000001cc ;
  wire \blk00000001/blk000000d4/sig000001cb ;
  wire \blk00000001/blk000000d4/sig000001ca ;
  wire \blk00000001/blk000000d4/sig000001c9 ;
  wire \blk00000001/blk000000d4/sig000001c8 ;
  wire \blk00000001/blk000000d4/sig000001c7 ;
  wire \blk00000001/blk000000d4/sig000001c6 ;
  wire \blk00000001/blk000000d4/sig000001c5 ;
  wire \blk00000001/blk000000d4/sig000001c3 ;
  wire \NLW_blk00000001/blk0000014e_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000014c_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000014a_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000148_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000146_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000144_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000142_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000140_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000013e_Q15_UNCONNECTED ;
  wire [10 : 10] NlwRenamedSig_OI_m_axis_dout_tdata;
  assign
    m_axis_dout_tdata[15] = NlwRenamedSig_OI_m_axis_dout_tdata[10],
    m_axis_dout_tdata[14] = NlwRenamedSig_OI_m_axis_dout_tdata[10],
    m_axis_dout_tdata[13] = NlwRenamedSig_OI_m_axis_dout_tdata[10],
    m_axis_dout_tdata[12] = NlwRenamedSig_OI_m_axis_dout_tdata[10],
    m_axis_dout_tdata[11] = NlwRenamedSig_OI_m_axis_dout_tdata[10],
    m_axis_dout_tdata[10] = NlwRenamedSig_OI_m_axis_dout_tdata[10],
    m_axis_dout_tdata[9] = NlwRenamedSig_OI_m_axis_dout_tdata[10],
    m_axis_dout_tdata[8] = NlwRenamedSig_OI_m_axis_dout_tdata[10];
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000014f  (
    .C(aclk),
    .CE(\blk00000001/sig0000000c ),
    .D(\blk00000001/sig000000bd ),
    .Q(m_axis_dout_tvalid)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000014e  (
    .A0(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .A1(\blk00000001/sig0000000c ),
    .A2(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .A3(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .CE(\blk00000001/sig0000000c ),
    .CLK(aclk),
    .D(\blk00000001/sig000000b4 ),
    .Q(\blk00000001/sig000000bd ),
    .Q15(\NLW_blk00000001/blk0000014e_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000014d  (
    .C(aclk),
    .CE(\blk00000001/sig0000000c ),
    .D(\blk00000001/sig000000bc ),
    .Q(\blk00000001/sig000000b3 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000014c  (
    .A0(\blk00000001/sig0000000c ),
    .A1(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .A2(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .A3(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .CE(\blk00000001/sig0000000c ),
    .CLK(aclk),
    .D(s_axis_cartesian_tdata[1]),
    .Q(\blk00000001/sig000000bc ),
    .Q15(\NLW_blk00000001/blk0000014c_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000014b  (
    .C(aclk),
    .CE(\blk00000001/sig0000000c ),
    .D(\blk00000001/sig000000bb ),
    .Q(\blk00000001/sig000000b2 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000014a  (
    .A0(\blk00000001/sig0000000c ),
    .A1(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .A2(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .A3(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .CE(\blk00000001/sig0000000c ),
    .CLK(aclk),
    .D(s_axis_cartesian_tdata[0]),
    .Q(\blk00000001/sig000000bb ),
    .Q15(\NLW_blk00000001/blk0000014a_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000149  (
    .C(aclk),
    .CE(\blk00000001/sig0000000c ),
    .D(\blk00000001/sig000000ba ),
    .Q(\blk00000001/sig000000af )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000148  (
    .A0(\blk00000001/sig0000000c ),
    .A1(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .A2(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .A3(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .CE(\blk00000001/sig0000000c ),
    .CLK(aclk),
    .D(s_axis_cartesian_tdata[2]),
    .Q(\blk00000001/sig000000ba ),
    .Q15(\NLW_blk00000001/blk00000148_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000147  (
    .C(aclk),
    .CE(\blk00000001/sig0000000c ),
    .D(\blk00000001/sig000000b9 ),
    .Q(\blk00000001/sig000000b0 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000146  (
    .A0(\blk00000001/sig0000000c ),
    .A1(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .A2(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .A3(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .CE(\blk00000001/sig0000000c ),
    .CLK(aclk),
    .D(s_axis_cartesian_tdata[3]),
    .Q(\blk00000001/sig000000b9 ),
    .Q15(\NLW_blk00000001/blk00000146_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000145  (
    .C(aclk),
    .CE(\blk00000001/sig0000000c ),
    .D(\blk00000001/sig000000b8 ),
    .Q(\blk00000001/sig00000090 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000144  (
    .A0(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .A1(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .A2(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .A3(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .CE(\blk00000001/sig0000000c ),
    .CLK(aclk),
    .D(s_axis_cartesian_tdata[5]),
    .Q(\blk00000001/sig000000b8 ),
    .Q15(\NLW_blk00000001/blk00000144_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000143  (
    .C(aclk),
    .CE(\blk00000001/sig0000000c ),
    .D(\blk00000001/sig000000b7 ),
    .Q(\blk00000001/sig0000006f )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000142  (
    .A0(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .A1(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .A2(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .A3(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .CE(\blk00000001/sig0000000c ),
    .CLK(aclk),
    .D(s_axis_cartesian_tdata[6]),
    .Q(\blk00000001/sig000000b7 ),
    .Q15(\NLW_blk00000001/blk00000142_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000141  (
    .C(aclk),
    .CE(\blk00000001/sig0000000c ),
    .D(\blk00000001/sig000000b6 ),
    .Q(\blk00000001/sig00000070 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000140  (
    .A0(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .A1(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .A2(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .A3(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .CE(\blk00000001/sig0000000c ),
    .CLK(aclk),
    .D(s_axis_cartesian_tdata[7]),
    .Q(\blk00000001/sig000000b6 ),
    .Q15(\NLW_blk00000001/blk00000140_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000013f  (
    .C(aclk),
    .CE(\blk00000001/sig0000000c ),
    .D(\blk00000001/sig000000b5 ),
    .Q(\blk00000001/sig0000008f )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000013e  (
    .A0(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .A1(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .A2(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .A3(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .CE(\blk00000001/sig0000000c ),
    .CLK(aclk),
    .D(s_axis_cartesian_tdata[4]),
    .Q(\blk00000001/sig000000b5 ),
    .Q15(\NLW_blk00000001/blk0000013e_Q15_UNCONNECTED )
  );
  INV   \blk00000001/blk0000013d  (
    .I(\blk00000001/sig00000020 ),
    .O(\blk00000001/sig00000018 )
  );
  INV   \blk00000001/blk0000013c  (
    .I(\blk00000001/sig0000001f ),
    .O(\blk00000001/sig00000017 )
  );
  INV   \blk00000001/blk0000013b  (
    .I(\blk00000001/sig0000001e ),
    .O(\blk00000001/sig00000016 )
  );
  INV   \blk00000001/blk0000013a  (
    .I(\blk00000001/sig0000001d ),
    .O(\blk00000001/sig00000015 )
  );
  INV   \blk00000001/blk00000139  (
    .I(\blk00000001/sig0000001c ),
    .O(\blk00000001/sig00000014 )
  );
  INV   \blk00000001/blk00000138  (
    .I(\blk00000001/sig0000001b ),
    .O(\blk00000001/sig00000013 )
  );
  INV   \blk00000001/blk00000137  (
    .I(\blk00000001/sig0000001a ),
    .O(\blk00000001/sig00000012 )
  );
  INV   \blk00000001/blk00000136  (
    .I(\blk00000001/sig00000019 ),
    .O(\blk00000001/sig00000011 )
  );
  LUT4 #(
    .INIT ( 16'hD580 ))
  \blk00000001/blk00000135  (
    .I0(\blk00000001/sig00000099 ),
    .I1(s_axis_cartesian_tdata[14]),
    .I2(s_axis_cartesian_tdata[15]),
    .I3(\blk00000001/sig00000098 ),
    .O(\blk00000001/sig00000094 )
  );
  LUT4 #(
    .INIT ( 16'h7520 ))
  \blk00000001/blk00000134  (
    .I0(\blk00000001/sig00000099 ),
    .I1(s_axis_cartesian_tdata[14]),
    .I2(s_axis_cartesian_tdata[15]),
    .I3(\blk00000001/sig00000097 ),
    .O(\blk00000001/sig00000093 )
  );
  LUT5 #(
    .INIT ( 32'hACACFF00 ))
  \blk00000001/blk00000133  (
    .I0(\blk00000001/sig00000024 ),
    .I1(\blk00000001/sig00000079 ),
    .I2(\blk00000001/sig0000007b ),
    .I3(\blk00000001/sig0000005c ),
    .I4(\blk00000001/sig0000005d ),
    .O(\blk00000001/sig00000056 )
  );
  LUT5 #(
    .INIT ( 32'hACACFF00 ))
  \blk00000001/blk00000132  (
    .I0(\blk00000001/sig00000023 ),
    .I1(\blk00000001/sig00000078 ),
    .I2(\blk00000001/sig0000007b ),
    .I3(\blk00000001/sig0000005b ),
    .I4(\blk00000001/sig0000005d ),
    .O(\blk00000001/sig00000055 )
  );
  LUT5 #(
    .INIT ( 32'hACACFF00 ))
  \blk00000001/blk00000131  (
    .I0(\blk00000001/sig0000007d ),
    .I1(\blk00000001/sig00000077 ),
    .I2(\blk00000001/sig0000007b ),
    .I3(\blk00000001/sig0000005a ),
    .I4(\blk00000001/sig0000005d ),
    .O(\blk00000001/sig00000054 )
  );
  LUT5 #(
    .INIT ( 32'hACACFF00 ))
  \blk00000001/blk00000130  (
    .I0(\blk00000001/sig0000007c ),
    .I1(\blk00000001/sig00000076 ),
    .I2(\blk00000001/sig0000007b ),
    .I3(\blk00000001/sig00000059 ),
    .I4(\blk00000001/sig0000005d ),
    .O(\blk00000001/sig00000053 )
  );
  LUT5 #(
    .INIT ( 32'hACACFF00 ))
  \blk00000001/blk0000012f  (
    .I0(\blk00000001/sig0000003c ),
    .I1(\blk00000001/sig0000006c ),
    .I2(\blk00000001/sig0000006e ),
    .I3(\blk00000001/sig0000008d ),
    .I4(\blk00000001/sig0000008e ),
    .O(\blk00000001/sig00000085 )
  );
  LUT5 #(
    .INIT ( 32'hACACFF00 ))
  \blk00000001/blk0000012e  (
    .I0(\blk00000001/sig0000003b ),
    .I1(\blk00000001/sig0000006b ),
    .I2(\blk00000001/sig0000006e ),
    .I3(\blk00000001/sig0000008c ),
    .I4(\blk00000001/sig0000008e ),
    .O(\blk00000001/sig00000084 )
  );
  LUT5 #(
    .INIT ( 32'hACACFF00 ))
  \blk00000001/blk0000012d  (
    .I0(\blk00000001/sig0000003a ),
    .I1(\blk00000001/sig0000006a ),
    .I2(\blk00000001/sig0000006e ),
    .I3(\blk00000001/sig0000008b ),
    .I4(\blk00000001/sig0000008e ),
    .O(\blk00000001/sig00000083 )
  );
  LUT5 #(
    .INIT ( 32'hACACFF00 ))
  \blk00000001/blk0000012c  (
    .I0(\blk00000001/sig00000039 ),
    .I1(\blk00000001/sig00000069 ),
    .I2(\blk00000001/sig0000006e ),
    .I3(\blk00000001/sig0000008a ),
    .I4(\blk00000001/sig0000008e ),
    .O(\blk00000001/sig00000082 )
  );
  LUT5 #(
    .INIT ( 32'hACACFF00 ))
  \blk00000001/blk0000012b  (
    .I0(\blk00000001/sig00000070 ),
    .I1(\blk00000001/sig00000068 ),
    .I2(\blk00000001/sig0000006e ),
    .I3(\blk00000001/sig00000089 ),
    .I4(\blk00000001/sig0000008e ),
    .O(\blk00000001/sig00000081 )
  );
  LUT5 #(
    .INIT ( 32'hACACFF00 ))
  \blk00000001/blk0000012a  (
    .I0(\blk00000001/sig0000006f ),
    .I1(\blk00000001/sig00000067 ),
    .I2(\blk00000001/sig0000006e ),
    .I3(\blk00000001/sig00000088 ),
    .I4(\blk00000001/sig0000008e ),
    .O(\blk00000001/sig00000080 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000129  (
    .I0(\blk00000001/sig00000033 ),
    .I1(\blk00000001/sig000000ad ),
    .I2(\blk00000001/sig000000ae ),
    .O(\blk00000001/sig000000a4 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000128  (
    .I0(\blk00000001/sig00000032 ),
    .I1(\blk00000001/sig000000ac ),
    .I2(\blk00000001/sig000000ae ),
    .O(\blk00000001/sig000000a3 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000127  (
    .I0(\blk00000001/sig00000031 ),
    .I1(\blk00000001/sig000000ab ),
    .I2(\blk00000001/sig000000ae ),
    .O(\blk00000001/sig000000a2 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000126  (
    .I0(\blk00000001/sig00000030 ),
    .I1(\blk00000001/sig000000aa ),
    .I2(\blk00000001/sig000000ae ),
    .O(\blk00000001/sig000000a1 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000125  (
    .I0(\blk00000001/sig0000002f ),
    .I1(\blk00000001/sig000000a9 ),
    .I2(\blk00000001/sig000000ae ),
    .O(\blk00000001/sig000000a0 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000124  (
    .I0(\blk00000001/sig0000002e ),
    .I1(\blk00000001/sig000000a8 ),
    .I2(\blk00000001/sig000000ae ),
    .O(\blk00000001/sig0000009f )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000123  (
    .I0(\blk00000001/sig0000002d ),
    .I1(\blk00000001/sig000000a7 ),
    .I2(\blk00000001/sig000000ae ),
    .O(\blk00000001/sig0000009e )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000122  (
    .I0(\blk00000001/sig000000b0 ),
    .I1(\blk00000001/sig000000a6 ),
    .I2(\blk00000001/sig000000ae ),
    .O(\blk00000001/sig0000009d )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000121  (
    .I0(\blk00000001/sig000000af ),
    .I1(\blk00000001/sig000000a5 ),
    .I2(\blk00000001/sig000000ae ),
    .O(\blk00000001/sig0000009c )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000001/blk00000120  (
    .I0(\blk00000001/sig00000099 ),
    .I1(\blk00000001/sig00000096 ),
    .I2(s_axis_cartesian_tdata[13]),
    .O(\blk00000001/sig00000092 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000001/blk0000011f  (
    .I0(\blk00000001/sig00000099 ),
    .I1(\blk00000001/sig00000095 ),
    .I2(s_axis_cartesian_tdata[12]),
    .O(\blk00000001/sig00000091 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk0000011e  (
    .I0(\blk00000001/sig00000090 ),
    .I1(\blk00000001/sig00000087 ),
    .I2(\blk00000001/sig0000008e ),
    .O(\blk00000001/sig0000007f )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk0000011d  (
    .I0(\blk00000001/sig0000008f ),
    .I1(\blk00000001/sig00000086 ),
    .I2(\blk00000001/sig0000008e ),
    .O(\blk00000001/sig0000007e )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk0000011c  (
    .I0(\blk00000001/sig00000025 ),
    .I1(\blk00000001/sig0000007a ),
    .I2(\blk00000001/sig0000007b ),
    .O(\blk00000001/sig00000075 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk0000011b  (
    .I0(\blk00000001/sig00000024 ),
    .I1(\blk00000001/sig00000079 ),
    .I2(\blk00000001/sig0000007b ),
    .O(\blk00000001/sig00000074 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk0000011a  (
    .I0(\blk00000001/sig00000023 ),
    .I1(\blk00000001/sig00000078 ),
    .I2(\blk00000001/sig0000007b ),
    .O(\blk00000001/sig00000073 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000119  (
    .I0(\blk00000001/sig0000007d ),
    .I1(\blk00000001/sig00000077 ),
    .I2(\blk00000001/sig0000007b ),
    .O(\blk00000001/sig00000072 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000118  (
    .I0(\blk00000001/sig0000007c ),
    .I1(\blk00000001/sig00000076 ),
    .I2(\blk00000001/sig0000007b ),
    .O(\blk00000001/sig00000071 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000117  (
    .I0(\blk00000001/sig0000003d ),
    .I1(\blk00000001/sig0000006d ),
    .I2(\blk00000001/sig0000006e ),
    .O(\blk00000001/sig00000066 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000116  (
    .I0(\blk00000001/sig0000003c ),
    .I1(\blk00000001/sig0000006c ),
    .I2(\blk00000001/sig0000006e ),
    .O(\blk00000001/sig00000065 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000115  (
    .I0(\blk00000001/sig0000003b ),
    .I1(\blk00000001/sig0000006b ),
    .I2(\blk00000001/sig0000006e ),
    .O(\blk00000001/sig00000064 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000114  (
    .I0(\blk00000001/sig0000003a ),
    .I1(\blk00000001/sig0000006a ),
    .I2(\blk00000001/sig0000006e ),
    .O(\blk00000001/sig00000063 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000113  (
    .I0(\blk00000001/sig00000039 ),
    .I1(\blk00000001/sig00000069 ),
    .I2(\blk00000001/sig0000006e ),
    .O(\blk00000001/sig00000062 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000112  (
    .I0(\blk00000001/sig00000070 ),
    .I1(\blk00000001/sig00000068 ),
    .I2(\blk00000001/sig0000006e ),
    .O(\blk00000001/sig00000061 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000111  (
    .I0(\blk00000001/sig0000006f ),
    .I1(\blk00000001/sig00000067 ),
    .I2(\blk00000001/sig0000006e ),
    .O(\blk00000001/sig00000060 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000110  (
    .I0(\blk00000001/sig0000005f ),
    .I1(\blk00000001/sig00000058 ),
    .I2(\blk00000001/sig0000005d ),
    .O(\blk00000001/sig00000052 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk0000010f  (
    .I0(\blk00000001/sig0000005e ),
    .I1(\blk00000001/sig00000057 ),
    .I2(\blk00000001/sig0000005d ),
    .O(\blk00000001/sig00000051 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \blk00000001/blk0000010e  (
    .I0(s_axis_cartesian_tdata[14]),
    .I1(s_axis_cartesian_tdata[15]),
    .O(\blk00000001/sig00000010 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \blk00000001/blk0000010d  (
    .I0(s_axis_cartesian_tdata[14]),
    .I1(s_axis_cartesian_tdata[15]),
    .O(\blk00000001/sig0000000f )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \blk00000001/blk0000010c  (
    .I0(s_axis_cartesian_tdata[14]),
    .I1(s_axis_cartesian_tdata[15]),
    .O(\blk00000001/sig0000000e )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000010b  (
    .C(aclk),
    .D(s_axis_cartesian_tvalid),
    .Q(\blk00000001/sig000000b4 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000010a  (
    .C(aclk),
    .CE(\blk00000001/sig0000003f ),
    .D(\blk00000001/sig00000011 ),
    .R(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .Q(m_axis_dout_tdata[0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000109  (
    .C(aclk),
    .CE(\blk00000001/sig0000003f ),
    .D(\blk00000001/sig00000012 ),
    .R(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .Q(m_axis_dout_tdata[1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000108  (
    .C(aclk),
    .CE(\blk00000001/sig0000003f ),
    .D(\blk00000001/sig00000013 ),
    .R(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .Q(m_axis_dout_tdata[2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000107  (
    .C(aclk),
    .CE(\blk00000001/sig0000003f ),
    .D(\blk00000001/sig00000014 ),
    .R(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .Q(m_axis_dout_tdata[3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000106  (
    .C(aclk),
    .CE(\blk00000001/sig0000003f ),
    .D(\blk00000001/sig00000015 ),
    .R(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .Q(m_axis_dout_tdata[4])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000105  (
    .C(aclk),
    .CE(\blk00000001/sig0000003f ),
    .D(\blk00000001/sig00000016 ),
    .R(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .Q(m_axis_dout_tdata[5])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000104  (
    .C(aclk),
    .CE(\blk00000001/sig0000003f ),
    .D(\blk00000001/sig00000017 ),
    .R(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .Q(m_axis_dout_tdata[6])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000103  (
    .C(aclk),
    .CE(\blk00000001/sig0000003f ),
    .D(\blk00000001/sig00000018 ),
    .R(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .Q(m_axis_dout_tdata[7])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000102  (
    .C(aclk),
    .CE(\blk00000001/sig0000000c ),
    .D(\blk00000001/sig000000b1 ),
    .R(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .Q(\blk00000001/sig00000019 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000101  (
    .C(aclk),
    .CE(\blk00000001/sig0000000c ),
    .D(\blk00000001/sig000000ae ),
    .R(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .Q(\blk00000001/sig0000001a )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000100  (
    .C(aclk),
    .CE(\blk00000001/sig0000000c ),
    .D(\blk00000001/sig00000027 ),
    .R(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .Q(\blk00000001/sig0000001b )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000ff  (
    .C(aclk),
    .CE(\blk00000001/sig0000000c ),
    .D(\blk00000001/sig00000028 ),
    .R(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .Q(\blk00000001/sig0000001c )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000fe  (
    .C(aclk),
    .CE(\blk00000001/sig0000000c ),
    .D(\blk00000001/sig00000029 ),
    .R(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .Q(\blk00000001/sig0000001d )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000fd  (
    .C(aclk),
    .CE(\blk00000001/sig0000000c ),
    .D(\blk00000001/sig0000002a ),
    .R(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .Q(\blk00000001/sig0000001e )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000fc  (
    .C(aclk),
    .CE(\blk00000001/sig0000000c ),
    .D(\blk00000001/sig0000002b ),
    .R(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .Q(\blk00000001/sig0000001f )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000fb  (
    .C(aclk),
    .CE(\blk00000001/sig0000000c ),
    .D(\blk00000001/sig0000002c ),
    .R(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .Q(\blk00000001/sig00000020 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000af  (
    .C(aclk),
    .D(\blk00000001/sig00000091 ),
    .Q(\blk00000001/sig00000023 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000ae  (
    .C(aclk),
    .D(\blk00000001/sig00000092 ),
    .Q(\blk00000001/sig00000024 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000ad  (
    .C(aclk),
    .D(\blk00000001/sig00000093 ),
    .Q(\blk00000001/sig00000025 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000ac  (
    .C(aclk),
    .D(\blk00000001/sig00000094 ),
    .Q(\blk00000001/sig00000026 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000ab  (
    .C(aclk),
    .D(\blk00000001/sig00000099 ),
    .Q(\blk00000001/sig00000021 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000aa  (
    .C(aclk),
    .D(\blk00000001/sig0000000e ),
    .Q(\blk00000001/sig00000022 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000095  (
    .C(aclk),
    .D(\blk00000001/sig0000007e ),
    .Q(\blk00000001/sig0000002d )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000094  (
    .C(aclk),
    .D(\blk00000001/sig0000007f ),
    .Q(\blk00000001/sig0000002e )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000093  (
    .C(aclk),
    .D(\blk00000001/sig00000080 ),
    .Q(\blk00000001/sig0000002f )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000092  (
    .C(aclk),
    .D(\blk00000001/sig00000081 ),
    .Q(\blk00000001/sig00000030 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000091  (
    .C(aclk),
    .D(\blk00000001/sig00000082 ),
    .Q(\blk00000001/sig00000031 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000090  (
    .C(aclk),
    .D(\blk00000001/sig00000083 ),
    .Q(\blk00000001/sig00000032 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000008f  (
    .C(aclk),
    .D(\blk00000001/sig00000084 ),
    .Q(\blk00000001/sig00000033 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000008e  (
    .C(aclk),
    .D(\blk00000001/sig00000085 ),
    .Q(\blk00000001/sig00000034 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000008d  (
    .C(aclk),
    .D(\blk00000001/sig0000008e ),
    .Q(\blk00000001/sig00000027 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000008c  (
    .C(aclk),
    .D(\blk00000001/sig0000006e ),
    .Q(\blk00000001/sig00000028 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000008b  (
    .C(aclk),
    .D(\blk00000001/sig00000035 ),
    .Q(\blk00000001/sig00000029 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000008a  (
    .C(aclk),
    .D(\blk00000001/sig00000036 ),
    .Q(\blk00000001/sig0000002a )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000089  (
    .C(aclk),
    .D(\blk00000001/sig00000037 ),
    .Q(\blk00000001/sig0000002b )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000088  (
    .C(aclk),
    .D(\blk00000001/sig00000038 ),
    .Q(\blk00000001/sig0000002c )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004e  (
    .C(aclk),
    .CE(\blk00000001/sig0000000c ),
    .D(s_axis_cartesian_tdata[11]),
    .R(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .Q(\blk00000001/sig0000007d )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004d  (
    .C(aclk),
    .CE(\blk00000001/sig0000000c ),
    .D(s_axis_cartesian_tdata[10]),
    .R(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .Q(\blk00000001/sig0000007c )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002e  (
    .C(aclk),
    .D(\blk00000001/sig00000051 ),
    .Q(\blk00000001/sig00000039 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002d  (
    .C(aclk),
    .D(\blk00000001/sig00000052 ),
    .Q(\blk00000001/sig0000003a )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002c  (
    .C(aclk),
    .D(\blk00000001/sig00000053 ),
    .Q(\blk00000001/sig0000003b )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002b  (
    .C(aclk),
    .D(\blk00000001/sig00000054 ),
    .Q(\blk00000001/sig0000003c )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002a  (
    .C(aclk),
    .D(\blk00000001/sig00000055 ),
    .Q(\blk00000001/sig0000003d )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000029  (
    .C(aclk),
    .D(\blk00000001/sig00000056 ),
    .Q(\blk00000001/sig0000003e )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000028  (
    .C(aclk),
    .D(\blk00000001/sig0000005d ),
    .Q(\blk00000001/sig00000035 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000027  (
    .C(aclk),
    .D(\blk00000001/sig0000007b ),
    .Q(\blk00000001/sig00000036 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000026  (
    .C(aclk),
    .D(\blk00000001/sig00000021 ),
    .Q(\blk00000001/sig00000037 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000025  (
    .C(aclk),
    .D(\blk00000001/sig00000022 ),
    .Q(\blk00000001/sig00000038 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000009  (
    .C(aclk),
    .CE(\blk00000001/sig0000000c ),
    .D(s_axis_cartesian_tdata[8]),
    .R(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .Q(\blk00000001/sig0000005e )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000008  (
    .C(aclk),
    .CE(\blk00000001/sig0000000c ),
    .D(s_axis_cartesian_tdata[9]),
    .R(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .Q(\blk00000001/sig0000005f )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000007  (
    .C(aclk),
    .D(\blk00000001/sig0000000c ),
    .R(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .Q(\blk00000001/sig0000004e )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000006  (
    .C(aclk),
    .D(\blk00000001/sig0000004e ),
    .R(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .Q(\blk00000001/sig0000004f )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000005  (
    .C(aclk),
    .D(\blk00000001/sig0000004f ),
    .R(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .Q(\blk00000001/sig00000050 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000004  (
    .C(aclk),
    .D(\blk00000001/sig00000050 ),
    .R(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .Q(\blk00000001/sig0000003f )
  );
  GND   \blk00000001/blk00000003  (
    .G(NlwRenamedSig_OI_m_axis_dout_tdata[10])
  );
  VCC   \blk00000001/blk00000002  (
    .P(\blk00000001/sig0000000c )
  );
  INV   \blk00000001/blk0000000a/blk00000024  (
    .I(\blk00000001/sig00000075 ),
    .O(\blk00000001/blk0000000a/sig000000d5 )
  );
  INV   \blk00000001/blk0000000a/blk00000023  (
    .I(\blk00000001/sig0000005f ),
    .O(\blk00000001/blk0000000a/sig000000da )
  );
  INV   \blk00000001/blk0000000a/blk00000022  (
    .I(\blk00000001/sig0000005e ),
    .O(\blk00000001/blk0000000a/sig000000db )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000000a/blk00000021  (
    .I0(\blk00000001/sig0000004e ),
    .I1(\blk00000001/sig00000074 ),
    .O(\blk00000001/blk0000000a/sig000000d6 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000000a/blk00000020  (
    .I0(\blk00000001/sig00000022 ),
    .I1(\blk00000001/sig00000073 ),
    .O(\blk00000001/blk0000000a/sig000000d7 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000000a/blk0000001f  (
    .I0(\blk00000001/sig00000021 ),
    .I1(\blk00000001/sig00000072 ),
    .O(\blk00000001/blk0000000a/sig000000d8 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000000a/blk0000001e  (
    .I0(\blk00000001/sig0000007b ),
    .I1(\blk00000001/sig00000071 ),
    .O(\blk00000001/blk0000000a/sig000000d9 )
  );
  MUXCY   \blk00000001/blk0000000a/blk0000001d  (
    .CI(\blk00000001/blk0000000a/sig000000d4 ),
    .DI(\blk00000001/sig0000005e ),
    .S(\blk00000001/blk0000000a/sig000000db ),
    .O(\blk00000001/blk0000000a/sig000000e3 )
  );
  MUXCY   \blk00000001/blk0000000a/blk0000001c  (
    .CI(\blk00000001/blk0000000a/sig000000e3 ),
    .DI(\blk00000001/sig0000005f ),
    .S(\blk00000001/blk0000000a/sig000000da ),
    .O(\blk00000001/blk0000000a/sig000000e2 )
  );
  MUXCY   \blk00000001/blk0000000a/blk0000001b  (
    .CI(\blk00000001/blk0000000a/sig000000e2 ),
    .DI(\blk00000001/sig00000071 ),
    .S(\blk00000001/blk0000000a/sig000000d9 ),
    .O(\blk00000001/blk0000000a/sig000000e1 )
  );
  MUXCY   \blk00000001/blk0000000a/blk0000001a  (
    .CI(\blk00000001/blk0000000a/sig000000e1 ),
    .DI(\blk00000001/sig00000072 ),
    .S(\blk00000001/blk0000000a/sig000000d8 ),
    .O(\blk00000001/blk0000000a/sig000000e0 )
  );
  MUXCY   \blk00000001/blk0000000a/blk00000019  (
    .CI(\blk00000001/blk0000000a/sig000000e0 ),
    .DI(\blk00000001/sig00000073 ),
    .S(\blk00000001/blk0000000a/sig000000d7 ),
    .O(\blk00000001/blk0000000a/sig000000df )
  );
  MUXCY   \blk00000001/blk0000000a/blk00000018  (
    .CI(\blk00000001/blk0000000a/sig000000df ),
    .DI(\blk00000001/sig00000074 ),
    .S(\blk00000001/blk0000000a/sig000000d6 ),
    .O(\blk00000001/blk0000000a/sig000000de )
  );
  MUXCY   \blk00000001/blk0000000a/blk00000017  (
    .CI(\blk00000001/blk0000000a/sig000000de ),
    .DI(\blk00000001/sig00000075 ),
    .S(\blk00000001/blk0000000a/sig000000d5 ),
    .O(\blk00000001/blk0000000a/sig000000dd )
  );
  MUXCY   \blk00000001/blk0000000a/blk00000016  (
    .CI(\blk00000001/blk0000000a/sig000000dd ),
    .DI(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .S(\blk00000001/blk0000000a/sig000000d3 ),
    .O(\blk00000001/blk0000000a/sig000000dc )
  );
  XORCY   \blk00000001/blk0000000a/blk00000015  (
    .CI(\blk00000001/blk0000000a/sig000000e3 ),
    .LI(\blk00000001/blk0000000a/sig000000da ),
    .O(\blk00000001/sig00000058 )
  );
  XORCY   \blk00000001/blk0000000a/blk00000014  (
    .CI(\blk00000001/blk0000000a/sig000000e2 ),
    .LI(\blk00000001/blk0000000a/sig000000d9 ),
    .O(\blk00000001/sig00000059 )
  );
  XORCY   \blk00000001/blk0000000a/blk00000013  (
    .CI(\blk00000001/blk0000000a/sig000000e1 ),
    .LI(\blk00000001/blk0000000a/sig000000d8 ),
    .O(\blk00000001/sig0000005a )
  );
  XORCY   \blk00000001/blk0000000a/blk00000012  (
    .CI(\blk00000001/blk0000000a/sig000000e0 ),
    .LI(\blk00000001/blk0000000a/sig000000d7 ),
    .O(\blk00000001/sig0000005b )
  );
  XORCY   \blk00000001/blk0000000a/blk00000011  (
    .CI(\blk00000001/blk0000000a/sig000000df ),
    .LI(\blk00000001/blk0000000a/sig000000d6 ),
    .O(\blk00000001/sig0000005c )
  );
  XORCY   \blk00000001/blk0000000a/blk00000010  (
    .CI(\blk00000001/blk0000000a/sig000000de ),
    .LI(\blk00000001/blk0000000a/sig000000d5 ),
    .O(\blk00000001/blk0000000a/sig000000cc )
  );
  XORCY   \blk00000001/blk0000000a/blk0000000f  (
    .CI(\blk00000001/blk0000000a/sig000000dd ),
    .LI(\blk00000001/blk0000000a/sig000000d3 ),
    .O(\blk00000001/sig0000005d )
  );
  XORCY   \blk00000001/blk0000000a/blk0000000e  (
    .CI(\blk00000001/blk0000000a/sig000000dc ),
    .LI(\blk00000001/blk0000000a/sig000000d3 ),
    .O(\blk00000001/blk0000000a/sig000000ca )
  );
  XORCY   \blk00000001/blk0000000a/blk0000000d  (
    .CI(\blk00000001/blk0000000a/sig000000d4 ),
    .LI(\blk00000001/blk0000000a/sig000000db ),
    .O(\blk00000001/sig00000057 )
  );
  GND   \blk00000001/blk0000000a/blk0000000c  (
    .G(\blk00000001/blk0000000a/sig000000d4 )
  );
  VCC   \blk00000001/blk0000000a/blk0000000b  (
    .P(\blk00000001/blk0000000a/sig000000d3 )
  );
  INV   \blk00000001/blk0000002f/blk0000004c  (
    .I(\blk00000001/sig0000003e ),
    .O(\blk00000001/blk0000002f/sig000000fe )
  );
  INV   \blk00000001/blk0000002f/blk0000004b  (
    .I(\blk00000001/sig00000070 ),
    .O(\blk00000001/blk0000002f/sig00000104 )
  );
  INV   \blk00000001/blk0000002f/blk0000004a  (
    .I(\blk00000001/sig0000006f ),
    .O(\blk00000001/blk0000002f/sig00000105 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000002f/blk00000049  (
    .I0(\blk00000001/sig0000003d ),
    .I1(\blk00000001/sig0000004f ),
    .O(\blk00000001/blk0000002f/sig000000ff )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000002f/blk00000048  (
    .I0(\blk00000001/sig0000003c ),
    .I1(\blk00000001/sig00000038 ),
    .O(\blk00000001/blk0000002f/sig00000100 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000002f/blk00000047  (
    .I0(\blk00000001/sig0000003b ),
    .I1(\blk00000001/sig00000037 ),
    .O(\blk00000001/blk0000002f/sig00000101 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000002f/blk00000046  (
    .I0(\blk00000001/sig0000003a ),
    .I1(\blk00000001/sig00000036 ),
    .O(\blk00000001/blk0000002f/sig00000102 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000002f/blk00000045  (
    .I0(\blk00000001/sig00000039 ),
    .I1(\blk00000001/sig00000035 ),
    .O(\blk00000001/blk0000002f/sig00000103 )
  );
  MUXCY   \blk00000001/blk0000002f/blk00000044  (
    .CI(\blk00000001/blk0000002f/sig000000fd ),
    .DI(\blk00000001/sig0000006f ),
    .S(\blk00000001/blk0000002f/sig00000105 ),
    .O(\blk00000001/blk0000002f/sig0000010e )
  );
  MUXCY   \blk00000001/blk0000002f/blk00000043  (
    .CI(\blk00000001/blk0000002f/sig0000010e ),
    .DI(\blk00000001/sig00000070 ),
    .S(\blk00000001/blk0000002f/sig00000104 ),
    .O(\blk00000001/blk0000002f/sig0000010d )
  );
  MUXCY   \blk00000001/blk0000002f/blk00000042  (
    .CI(\blk00000001/blk0000002f/sig0000010d ),
    .DI(\blk00000001/sig00000039 ),
    .S(\blk00000001/blk0000002f/sig00000103 ),
    .O(\blk00000001/blk0000002f/sig0000010c )
  );
  MUXCY   \blk00000001/blk0000002f/blk00000041  (
    .CI(\blk00000001/blk0000002f/sig0000010c ),
    .DI(\blk00000001/sig0000003a ),
    .S(\blk00000001/blk0000002f/sig00000102 ),
    .O(\blk00000001/blk0000002f/sig0000010b )
  );
  MUXCY   \blk00000001/blk0000002f/blk00000040  (
    .CI(\blk00000001/blk0000002f/sig0000010b ),
    .DI(\blk00000001/sig0000003b ),
    .S(\blk00000001/blk0000002f/sig00000101 ),
    .O(\blk00000001/blk0000002f/sig0000010a )
  );
  MUXCY   \blk00000001/blk0000002f/blk0000003f  (
    .CI(\blk00000001/blk0000002f/sig0000010a ),
    .DI(\blk00000001/sig0000003c ),
    .S(\blk00000001/blk0000002f/sig00000100 ),
    .O(\blk00000001/blk0000002f/sig00000109 )
  );
  MUXCY   \blk00000001/blk0000002f/blk0000003e  (
    .CI(\blk00000001/blk0000002f/sig00000109 ),
    .DI(\blk00000001/sig0000003d ),
    .S(\blk00000001/blk0000002f/sig000000ff ),
    .O(\blk00000001/blk0000002f/sig00000108 )
  );
  MUXCY   \blk00000001/blk0000002f/blk0000003d  (
    .CI(\blk00000001/blk0000002f/sig00000108 ),
    .DI(\blk00000001/sig0000003e ),
    .S(\blk00000001/blk0000002f/sig000000fe ),
    .O(\blk00000001/blk0000002f/sig00000107 )
  );
  MUXCY   \blk00000001/blk0000002f/blk0000003c  (
    .CI(\blk00000001/blk0000002f/sig00000107 ),
    .DI(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .S(\blk00000001/blk0000002f/sig000000fc ),
    .O(\blk00000001/blk0000002f/sig00000106 )
  );
  XORCY   \blk00000001/blk0000002f/blk0000003b  (
    .CI(\blk00000001/blk0000002f/sig0000010e ),
    .LI(\blk00000001/blk0000002f/sig00000104 ),
    .O(\blk00000001/sig00000068 )
  );
  XORCY   \blk00000001/blk0000002f/blk0000003a  (
    .CI(\blk00000001/blk0000002f/sig0000010d ),
    .LI(\blk00000001/blk0000002f/sig00000103 ),
    .O(\blk00000001/sig00000069 )
  );
  XORCY   \blk00000001/blk0000002f/blk00000039  (
    .CI(\blk00000001/blk0000002f/sig0000010c ),
    .LI(\blk00000001/blk0000002f/sig00000102 ),
    .O(\blk00000001/sig0000006a )
  );
  XORCY   \blk00000001/blk0000002f/blk00000038  (
    .CI(\blk00000001/blk0000002f/sig0000010b ),
    .LI(\blk00000001/blk0000002f/sig00000101 ),
    .O(\blk00000001/sig0000006b )
  );
  XORCY   \blk00000001/blk0000002f/blk00000037  (
    .CI(\blk00000001/blk0000002f/sig0000010a ),
    .LI(\blk00000001/blk0000002f/sig00000100 ),
    .O(\blk00000001/sig0000006c )
  );
  XORCY   \blk00000001/blk0000002f/blk00000036  (
    .CI(\blk00000001/blk0000002f/sig00000109 ),
    .LI(\blk00000001/blk0000002f/sig000000ff ),
    .O(\blk00000001/sig0000006d )
  );
  XORCY   \blk00000001/blk0000002f/blk00000035  (
    .CI(\blk00000001/blk0000002f/sig00000108 ),
    .LI(\blk00000001/blk0000002f/sig000000fe ),
    .O(\blk00000001/blk0000002f/sig000000f4 )
  );
  XORCY   \blk00000001/blk0000002f/blk00000034  (
    .CI(\blk00000001/blk0000002f/sig00000107 ),
    .LI(\blk00000001/blk0000002f/sig000000fc ),
    .O(\blk00000001/sig0000006e )
  );
  XORCY   \blk00000001/blk0000002f/blk00000033  (
    .CI(\blk00000001/blk0000002f/sig00000106 ),
    .LI(\blk00000001/blk0000002f/sig000000fc ),
    .O(\blk00000001/blk0000002f/sig000000f2 )
  );
  XORCY   \blk00000001/blk0000002f/blk00000032  (
    .CI(\blk00000001/blk0000002f/sig000000fd ),
    .LI(\blk00000001/blk0000002f/sig00000105 ),
    .O(\blk00000001/sig00000067 )
  );
  GND   \blk00000001/blk0000002f/blk00000031  (
    .G(\blk00000001/blk0000002f/sig000000fd )
  );
  VCC   \blk00000001/blk0000002f/blk00000030  (
    .P(\blk00000001/blk0000002f/sig000000fc )
  );
  INV   \blk00000001/blk0000004f/blk00000066  (
    .I(\blk00000001/sig00000026 ),
    .O(\blk00000001/blk0000004f/sig00000123 )
  );
  INV   \blk00000001/blk0000004f/blk00000065  (
    .I(\blk00000001/sig0000007d ),
    .O(\blk00000001/blk0000004f/sig00000127 )
  );
  INV   \blk00000001/blk0000004f/blk00000064  (
    .I(\blk00000001/sig0000007c ),
    .O(\blk00000001/blk0000004f/sig00000128 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000004f/blk00000063  (
    .I0(\blk00000001/sig00000025 ),
    .I1(\blk00000001/sig0000004e ),
    .O(\blk00000001/blk0000004f/sig00000124 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000004f/blk00000062  (
    .I0(\blk00000001/sig00000024 ),
    .I1(\blk00000001/sig00000022 ),
    .O(\blk00000001/blk0000004f/sig00000125 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000004f/blk00000061  (
    .I0(\blk00000001/sig00000023 ),
    .I1(\blk00000001/sig00000021 ),
    .O(\blk00000001/blk0000004f/sig00000126 )
  );
  MUXCY   \blk00000001/blk0000004f/blk00000060  (
    .CI(\blk00000001/blk0000004f/sig00000122 ),
    .DI(\blk00000001/sig0000007c ),
    .S(\blk00000001/blk0000004f/sig00000128 ),
    .O(\blk00000001/blk0000004f/sig0000012f )
  );
  MUXCY   \blk00000001/blk0000004f/blk0000005f  (
    .CI(\blk00000001/blk0000004f/sig0000012f ),
    .DI(\blk00000001/sig0000007d ),
    .S(\blk00000001/blk0000004f/sig00000127 ),
    .O(\blk00000001/blk0000004f/sig0000012e )
  );
  MUXCY   \blk00000001/blk0000004f/blk0000005e  (
    .CI(\blk00000001/blk0000004f/sig0000012e ),
    .DI(\blk00000001/sig00000023 ),
    .S(\blk00000001/blk0000004f/sig00000126 ),
    .O(\blk00000001/blk0000004f/sig0000012d )
  );
  MUXCY   \blk00000001/blk0000004f/blk0000005d  (
    .CI(\blk00000001/blk0000004f/sig0000012d ),
    .DI(\blk00000001/sig00000024 ),
    .S(\blk00000001/blk0000004f/sig00000125 ),
    .O(\blk00000001/blk0000004f/sig0000012c )
  );
  MUXCY   \blk00000001/blk0000004f/blk0000005c  (
    .CI(\blk00000001/blk0000004f/sig0000012c ),
    .DI(\blk00000001/sig00000025 ),
    .S(\blk00000001/blk0000004f/sig00000124 ),
    .O(\blk00000001/blk0000004f/sig0000012b )
  );
  MUXCY   \blk00000001/blk0000004f/blk0000005b  (
    .CI(\blk00000001/blk0000004f/sig0000012b ),
    .DI(\blk00000001/sig00000026 ),
    .S(\blk00000001/blk0000004f/sig00000123 ),
    .O(\blk00000001/blk0000004f/sig0000012a )
  );
  MUXCY   \blk00000001/blk0000004f/blk0000005a  (
    .CI(\blk00000001/blk0000004f/sig0000012a ),
    .DI(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .S(\blk00000001/blk0000004f/sig00000121 ),
    .O(\blk00000001/blk0000004f/sig00000129 )
  );
  XORCY   \blk00000001/blk0000004f/blk00000059  (
    .CI(\blk00000001/blk0000004f/sig0000012f ),
    .LI(\blk00000001/blk0000004f/sig00000127 ),
    .O(\blk00000001/sig00000077 )
  );
  XORCY   \blk00000001/blk0000004f/blk00000058  (
    .CI(\blk00000001/blk0000004f/sig0000012e ),
    .LI(\blk00000001/blk0000004f/sig00000126 ),
    .O(\blk00000001/sig00000078 )
  );
  XORCY   \blk00000001/blk0000004f/blk00000057  (
    .CI(\blk00000001/blk0000004f/sig0000012d ),
    .LI(\blk00000001/blk0000004f/sig00000125 ),
    .O(\blk00000001/sig00000079 )
  );
  XORCY   \blk00000001/blk0000004f/blk00000056  (
    .CI(\blk00000001/blk0000004f/sig0000012c ),
    .LI(\blk00000001/blk0000004f/sig00000124 ),
    .O(\blk00000001/sig0000007a )
  );
  XORCY   \blk00000001/blk0000004f/blk00000055  (
    .CI(\blk00000001/blk0000004f/sig0000012b ),
    .LI(\blk00000001/blk0000004f/sig00000123 ),
    .O(\blk00000001/blk0000004f/sig0000011b )
  );
  XORCY   \blk00000001/blk0000004f/blk00000054  (
    .CI(\blk00000001/blk0000004f/sig0000012a ),
    .LI(\blk00000001/blk0000004f/sig00000121 ),
    .O(\blk00000001/sig0000007b )
  );
  XORCY   \blk00000001/blk0000004f/blk00000053  (
    .CI(\blk00000001/blk0000004f/sig00000129 ),
    .LI(\blk00000001/blk0000004f/sig00000121 ),
    .O(\blk00000001/blk0000004f/sig00000119 )
  );
  XORCY   \blk00000001/blk0000004f/blk00000052  (
    .CI(\blk00000001/blk0000004f/sig00000122 ),
    .LI(\blk00000001/blk0000004f/sig00000128 ),
    .O(\blk00000001/sig00000076 )
  );
  GND   \blk00000001/blk0000004f/blk00000051  (
    .G(\blk00000001/blk0000004f/sig00000122 )
  );
  VCC   \blk00000001/blk0000004f/blk00000050  (
    .P(\blk00000001/blk0000004f/sig00000121 )
  );
  INV   \blk00000001/blk00000067/blk00000087  (
    .I(\blk00000001/sig00000066 ),
    .O(\blk00000001/blk00000067/sig0000014d )
  );
  INV   \blk00000001/blk00000067/blk00000086  (
    .I(\blk00000001/sig00000090 ),
    .O(\blk00000001/blk00000067/sig00000154 )
  );
  INV   \blk00000001/blk00000067/blk00000085  (
    .I(\blk00000001/sig0000008f ),
    .O(\blk00000001/blk00000067/sig00000155 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000067/blk00000084  (
    .I0(\blk00000001/sig0000004f ),
    .I1(\blk00000001/sig00000065 ),
    .O(\blk00000001/blk00000067/sig0000014e )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000067/blk00000083  (
    .I0(\blk00000001/sig00000038 ),
    .I1(\blk00000001/sig00000064 ),
    .O(\blk00000001/blk00000067/sig0000014f )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000067/blk00000082  (
    .I0(\blk00000001/sig00000037 ),
    .I1(\blk00000001/sig00000063 ),
    .O(\blk00000001/blk00000067/sig00000150 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000067/blk00000081  (
    .I0(\blk00000001/sig00000036 ),
    .I1(\blk00000001/sig00000062 ),
    .O(\blk00000001/blk00000067/sig00000151 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000067/blk00000080  (
    .I0(\blk00000001/sig00000035 ),
    .I1(\blk00000001/sig00000061 ),
    .O(\blk00000001/blk00000067/sig00000152 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000067/blk0000007f  (
    .I0(\blk00000001/sig0000006e ),
    .I1(\blk00000001/sig00000060 ),
    .O(\blk00000001/blk00000067/sig00000153 )
  );
  MUXCY   \blk00000001/blk00000067/blk0000007e  (
    .CI(\blk00000001/blk00000067/sig0000014c ),
    .DI(\blk00000001/sig0000008f ),
    .S(\blk00000001/blk00000067/sig00000155 ),
    .O(\blk00000001/blk00000067/sig0000015f )
  );
  MUXCY   \blk00000001/blk00000067/blk0000007d  (
    .CI(\blk00000001/blk00000067/sig0000015f ),
    .DI(\blk00000001/sig00000090 ),
    .S(\blk00000001/blk00000067/sig00000154 ),
    .O(\blk00000001/blk00000067/sig0000015e )
  );
  MUXCY   \blk00000001/blk00000067/blk0000007c  (
    .CI(\blk00000001/blk00000067/sig0000015e ),
    .DI(\blk00000001/sig00000060 ),
    .S(\blk00000001/blk00000067/sig00000153 ),
    .O(\blk00000001/blk00000067/sig0000015d )
  );
  MUXCY   \blk00000001/blk00000067/blk0000007b  (
    .CI(\blk00000001/blk00000067/sig0000015d ),
    .DI(\blk00000001/sig00000061 ),
    .S(\blk00000001/blk00000067/sig00000152 ),
    .O(\blk00000001/blk00000067/sig0000015c )
  );
  MUXCY   \blk00000001/blk00000067/blk0000007a  (
    .CI(\blk00000001/blk00000067/sig0000015c ),
    .DI(\blk00000001/sig00000062 ),
    .S(\blk00000001/blk00000067/sig00000151 ),
    .O(\blk00000001/blk00000067/sig0000015b )
  );
  MUXCY   \blk00000001/blk00000067/blk00000079  (
    .CI(\blk00000001/blk00000067/sig0000015b ),
    .DI(\blk00000001/sig00000063 ),
    .S(\blk00000001/blk00000067/sig00000150 ),
    .O(\blk00000001/blk00000067/sig0000015a )
  );
  MUXCY   \blk00000001/blk00000067/blk00000078  (
    .CI(\blk00000001/blk00000067/sig0000015a ),
    .DI(\blk00000001/sig00000064 ),
    .S(\blk00000001/blk00000067/sig0000014f ),
    .O(\blk00000001/blk00000067/sig00000159 )
  );
  MUXCY   \blk00000001/blk00000067/blk00000077  (
    .CI(\blk00000001/blk00000067/sig00000159 ),
    .DI(\blk00000001/sig00000065 ),
    .S(\blk00000001/blk00000067/sig0000014e ),
    .O(\blk00000001/blk00000067/sig00000158 )
  );
  MUXCY   \blk00000001/blk00000067/blk00000076  (
    .CI(\blk00000001/blk00000067/sig00000158 ),
    .DI(\blk00000001/sig00000066 ),
    .S(\blk00000001/blk00000067/sig0000014d ),
    .O(\blk00000001/blk00000067/sig00000157 )
  );
  MUXCY   \blk00000001/blk00000067/blk00000075  (
    .CI(\blk00000001/blk00000067/sig00000157 ),
    .DI(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .S(\blk00000001/blk00000067/sig0000014b ),
    .O(\blk00000001/blk00000067/sig00000156 )
  );
  XORCY   \blk00000001/blk00000067/blk00000074  (
    .CI(\blk00000001/blk00000067/sig0000015f ),
    .LI(\blk00000001/blk00000067/sig00000154 ),
    .O(\blk00000001/sig00000087 )
  );
  XORCY   \blk00000001/blk00000067/blk00000073  (
    .CI(\blk00000001/blk00000067/sig0000015e ),
    .LI(\blk00000001/blk00000067/sig00000153 ),
    .O(\blk00000001/sig00000088 )
  );
  XORCY   \blk00000001/blk00000067/blk00000072  (
    .CI(\blk00000001/blk00000067/sig0000015d ),
    .LI(\blk00000001/blk00000067/sig00000152 ),
    .O(\blk00000001/sig00000089 )
  );
  XORCY   \blk00000001/blk00000067/blk00000071  (
    .CI(\blk00000001/blk00000067/sig0000015c ),
    .LI(\blk00000001/blk00000067/sig00000151 ),
    .O(\blk00000001/sig0000008a )
  );
  XORCY   \blk00000001/blk00000067/blk00000070  (
    .CI(\blk00000001/blk00000067/sig0000015b ),
    .LI(\blk00000001/blk00000067/sig00000150 ),
    .O(\blk00000001/sig0000008b )
  );
  XORCY   \blk00000001/blk00000067/blk0000006f  (
    .CI(\blk00000001/blk00000067/sig0000015a ),
    .LI(\blk00000001/blk00000067/sig0000014f ),
    .O(\blk00000001/sig0000008c )
  );
  XORCY   \blk00000001/blk00000067/blk0000006e  (
    .CI(\blk00000001/blk00000067/sig00000159 ),
    .LI(\blk00000001/blk00000067/sig0000014e ),
    .O(\blk00000001/sig0000008d )
  );
  XORCY   \blk00000001/blk00000067/blk0000006d  (
    .CI(\blk00000001/blk00000067/sig00000158 ),
    .LI(\blk00000001/blk00000067/sig0000014d ),
    .O(\blk00000001/blk00000067/sig00000142 )
  );
  XORCY   \blk00000001/blk00000067/blk0000006c  (
    .CI(\blk00000001/blk00000067/sig00000157 ),
    .LI(\blk00000001/blk00000067/sig0000014b ),
    .O(\blk00000001/sig0000008e )
  );
  XORCY   \blk00000001/blk00000067/blk0000006b  (
    .CI(\blk00000001/blk00000067/sig00000156 ),
    .LI(\blk00000001/blk00000067/sig0000014b ),
    .O(\blk00000001/blk00000067/sig00000140 )
  );
  XORCY   \blk00000001/blk00000067/blk0000006a  (
    .CI(\blk00000001/blk00000067/sig0000014c ),
    .LI(\blk00000001/blk00000067/sig00000155 ),
    .O(\blk00000001/sig00000086 )
  );
  GND   \blk00000001/blk00000067/blk00000069  (
    .G(\blk00000001/blk00000067/sig0000014c )
  );
  VCC   \blk00000001/blk00000067/blk00000068  (
    .P(\blk00000001/blk00000067/sig0000014b )
  );
  INV   \blk00000001/blk00000096/blk000000a9  (
    .I(\blk00000001/sig00000010 ),
    .O(\blk00000001/blk00000096/sig00000170 )
  );
  INV   \blk00000001/blk00000096/blk000000a8  (
    .I(s_axis_cartesian_tdata[13]),
    .O(\blk00000001/blk00000096/sig00000172 )
  );
  INV   \blk00000001/blk00000096/blk000000a7  (
    .I(s_axis_cartesian_tdata[12]),
    .O(\blk00000001/blk00000096/sig00000173 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000096/blk000000a6  (
    .I0(\blk00000001/sig0000000f ),
    .I1(\blk00000001/sig0000000e ),
    .O(\blk00000001/blk00000096/sig00000171 )
  );
  MUXCY   \blk00000001/blk00000096/blk000000a5  (
    .CI(\blk00000001/blk00000096/sig0000016f ),
    .DI(s_axis_cartesian_tdata[12]),
    .S(\blk00000001/blk00000096/sig00000173 ),
    .O(\blk00000001/blk00000096/sig00000179 )
  );
  MUXCY   \blk00000001/blk00000096/blk000000a4  (
    .CI(\blk00000001/blk00000096/sig00000179 ),
    .DI(s_axis_cartesian_tdata[13]),
    .S(\blk00000001/blk00000096/sig00000172 ),
    .O(\blk00000001/blk00000096/sig00000178 )
  );
  MUXCY   \blk00000001/blk00000096/blk000000a3  (
    .CI(\blk00000001/blk00000096/sig00000178 ),
    .DI(\blk00000001/sig0000000f ),
    .S(\blk00000001/blk00000096/sig00000171 ),
    .O(\blk00000001/blk00000096/sig00000177 )
  );
  MUXCY   \blk00000001/blk00000096/blk000000a2  (
    .CI(\blk00000001/blk00000096/sig00000177 ),
    .DI(\blk00000001/sig00000010 ),
    .S(\blk00000001/blk00000096/sig00000170 ),
    .O(\blk00000001/blk00000096/sig00000176 )
  );
  MUXCY   \blk00000001/blk00000096/blk000000a1  (
    .CI(\blk00000001/blk00000096/sig00000176 ),
    .DI(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .S(\blk00000001/blk00000096/sig0000016e ),
    .O(\blk00000001/blk00000096/sig00000175 )
  );
  MUXCY   \blk00000001/blk00000096/blk000000a0  (
    .CI(\blk00000001/blk00000096/sig00000175 ),
    .DI(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .S(\blk00000001/blk00000096/sig0000016e ),
    .O(\blk00000001/blk00000096/sig00000174 )
  );
  XORCY   \blk00000001/blk00000096/blk0000009f  (
    .CI(\blk00000001/blk00000096/sig00000179 ),
    .LI(\blk00000001/blk00000096/sig00000172 ),
    .O(\blk00000001/sig00000096 )
  );
  XORCY   \blk00000001/blk00000096/blk0000009e  (
    .CI(\blk00000001/blk00000096/sig00000178 ),
    .LI(\blk00000001/blk00000096/sig00000171 ),
    .O(\blk00000001/sig00000097 )
  );
  XORCY   \blk00000001/blk00000096/blk0000009d  (
    .CI(\blk00000001/blk00000096/sig00000177 ),
    .LI(\blk00000001/blk00000096/sig00000170 ),
    .O(\blk00000001/sig00000098 )
  );
  XORCY   \blk00000001/blk00000096/blk0000009c  (
    .CI(\blk00000001/blk00000096/sig00000176 ),
    .LI(\blk00000001/blk00000096/sig0000016e ),
    .O(\blk00000001/blk00000096/sig00000169 )
  );
  XORCY   \blk00000001/blk00000096/blk0000009b  (
    .CI(\blk00000001/blk00000096/sig00000175 ),
    .LI(\blk00000001/blk00000096/sig0000016e ),
    .O(\blk00000001/sig00000099 )
  );
  XORCY   \blk00000001/blk00000096/blk0000009a  (
    .CI(\blk00000001/blk00000096/sig00000174 ),
    .LI(\blk00000001/blk00000096/sig0000016e ),
    .O(\blk00000001/blk00000096/sig00000167 )
  );
  XORCY   \blk00000001/blk00000096/blk00000099  (
    .CI(\blk00000001/blk00000096/sig0000016f ),
    .LI(\blk00000001/blk00000096/sig00000173 ),
    .O(\blk00000001/sig00000095 )
  );
  GND   \blk00000001/blk00000096/blk00000098  (
    .G(\blk00000001/blk00000096/sig0000016f )
  );
  VCC   \blk00000001/blk00000096/blk00000097  (
    .P(\blk00000001/blk00000096/sig0000016e )
  );
  INV   \blk00000001/blk000000b0/blk000000d3  (
    .I(\blk00000001/sig00000034 ),
    .O(\blk00000001/blk000000b0/sig0000019a )
  );
  INV   \blk00000001/blk000000b0/blk000000d2  (
    .I(\blk00000001/sig000000b0 ),
    .O(\blk00000001/blk000000b0/sig000001a2 )
  );
  INV   \blk00000001/blk000000b0/blk000000d1  (
    .I(\blk00000001/sig000000af ),
    .O(\blk00000001/blk000000b0/sig000001a3 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000b0/blk000000d0  (
    .I0(\blk00000001/sig00000033 ),
    .I1(\blk00000001/sig00000050 ),
    .O(\blk00000001/blk000000b0/sig0000019b )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000b0/blk000000cf  (
    .I0(\blk00000001/sig00000032 ),
    .I1(\blk00000001/sig0000002c ),
    .O(\blk00000001/blk000000b0/sig0000019c )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000b0/blk000000ce  (
    .I0(\blk00000001/sig00000031 ),
    .I1(\blk00000001/sig0000002b ),
    .O(\blk00000001/blk000000b0/sig0000019d )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000b0/blk000000cd  (
    .I0(\blk00000001/sig00000030 ),
    .I1(\blk00000001/sig0000002a ),
    .O(\blk00000001/blk000000b0/sig0000019e )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000b0/blk000000cc  (
    .I0(\blk00000001/sig0000002f ),
    .I1(\blk00000001/sig00000029 ),
    .O(\blk00000001/blk000000b0/sig0000019f )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000b0/blk000000cb  (
    .I0(\blk00000001/sig0000002e ),
    .I1(\blk00000001/sig00000028 ),
    .O(\blk00000001/blk000000b0/sig000001a0 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000b0/blk000000ca  (
    .I0(\blk00000001/sig0000002d ),
    .I1(\blk00000001/sig00000027 ),
    .O(\blk00000001/blk000000b0/sig000001a1 )
  );
  MUXCY   \blk00000001/blk000000b0/blk000000c9  (
    .CI(\blk00000001/blk000000b0/sig00000199 ),
    .DI(\blk00000001/sig000000af ),
    .S(\blk00000001/blk000000b0/sig000001a3 ),
    .O(\blk00000001/blk000000b0/sig000001ae )
  );
  MUXCY   \blk00000001/blk000000b0/blk000000c8  (
    .CI(\blk00000001/blk000000b0/sig000001ae ),
    .DI(\blk00000001/sig000000b0 ),
    .S(\blk00000001/blk000000b0/sig000001a2 ),
    .O(\blk00000001/blk000000b0/sig000001ad )
  );
  MUXCY   \blk00000001/blk000000b0/blk000000c7  (
    .CI(\blk00000001/blk000000b0/sig000001ad ),
    .DI(\blk00000001/sig0000002d ),
    .S(\blk00000001/blk000000b0/sig000001a1 ),
    .O(\blk00000001/blk000000b0/sig000001ac )
  );
  MUXCY   \blk00000001/blk000000b0/blk000000c6  (
    .CI(\blk00000001/blk000000b0/sig000001ac ),
    .DI(\blk00000001/sig0000002e ),
    .S(\blk00000001/blk000000b0/sig000001a0 ),
    .O(\blk00000001/blk000000b0/sig000001ab )
  );
  MUXCY   \blk00000001/blk000000b0/blk000000c5  (
    .CI(\blk00000001/blk000000b0/sig000001ab ),
    .DI(\blk00000001/sig0000002f ),
    .S(\blk00000001/blk000000b0/sig0000019f ),
    .O(\blk00000001/blk000000b0/sig000001aa )
  );
  MUXCY   \blk00000001/blk000000b0/blk000000c4  (
    .CI(\blk00000001/blk000000b0/sig000001aa ),
    .DI(\blk00000001/sig00000030 ),
    .S(\blk00000001/blk000000b0/sig0000019e ),
    .O(\blk00000001/blk000000b0/sig000001a9 )
  );
  MUXCY   \blk00000001/blk000000b0/blk000000c3  (
    .CI(\blk00000001/blk000000b0/sig000001a9 ),
    .DI(\blk00000001/sig00000031 ),
    .S(\blk00000001/blk000000b0/sig0000019d ),
    .O(\blk00000001/blk000000b0/sig000001a8 )
  );
  MUXCY   \blk00000001/blk000000b0/blk000000c2  (
    .CI(\blk00000001/blk000000b0/sig000001a8 ),
    .DI(\blk00000001/sig00000032 ),
    .S(\blk00000001/blk000000b0/sig0000019c ),
    .O(\blk00000001/blk000000b0/sig000001a7 )
  );
  MUXCY   \blk00000001/blk000000b0/blk000000c1  (
    .CI(\blk00000001/blk000000b0/sig000001a7 ),
    .DI(\blk00000001/sig00000033 ),
    .S(\blk00000001/blk000000b0/sig0000019b ),
    .O(\blk00000001/blk000000b0/sig000001a6 )
  );
  MUXCY   \blk00000001/blk000000b0/blk000000c0  (
    .CI(\blk00000001/blk000000b0/sig000001a6 ),
    .DI(\blk00000001/sig00000034 ),
    .S(\blk00000001/blk000000b0/sig0000019a ),
    .O(\blk00000001/blk000000b0/sig000001a5 )
  );
  MUXCY   \blk00000001/blk000000b0/blk000000bf  (
    .CI(\blk00000001/blk000000b0/sig000001a5 ),
    .DI(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .S(\blk00000001/blk000000b0/sig00000198 ),
    .O(\blk00000001/blk000000b0/sig000001a4 )
  );
  XORCY   \blk00000001/blk000000b0/blk000000be  (
    .CI(\blk00000001/blk000000b0/sig000001ae ),
    .LI(\blk00000001/blk000000b0/sig000001a2 ),
    .O(\blk00000001/sig000000a6 )
  );
  XORCY   \blk00000001/blk000000b0/blk000000bd  (
    .CI(\blk00000001/blk000000b0/sig000001ad ),
    .LI(\blk00000001/blk000000b0/sig000001a1 ),
    .O(\blk00000001/sig000000a7 )
  );
  XORCY   \blk00000001/blk000000b0/blk000000bc  (
    .CI(\blk00000001/blk000000b0/sig000001ac ),
    .LI(\blk00000001/blk000000b0/sig000001a0 ),
    .O(\blk00000001/sig000000a8 )
  );
  XORCY   \blk00000001/blk000000b0/blk000000bb  (
    .CI(\blk00000001/blk000000b0/sig000001ab ),
    .LI(\blk00000001/blk000000b0/sig0000019f ),
    .O(\blk00000001/sig000000a9 )
  );
  XORCY   \blk00000001/blk000000b0/blk000000ba  (
    .CI(\blk00000001/blk000000b0/sig000001aa ),
    .LI(\blk00000001/blk000000b0/sig0000019e ),
    .O(\blk00000001/sig000000aa )
  );
  XORCY   \blk00000001/blk000000b0/blk000000b9  (
    .CI(\blk00000001/blk000000b0/sig000001a9 ),
    .LI(\blk00000001/blk000000b0/sig0000019d ),
    .O(\blk00000001/sig000000ab )
  );
  XORCY   \blk00000001/blk000000b0/blk000000b8  (
    .CI(\blk00000001/blk000000b0/sig000001a8 ),
    .LI(\blk00000001/blk000000b0/sig0000019c ),
    .O(\blk00000001/sig000000ac )
  );
  XORCY   \blk00000001/blk000000b0/blk000000b7  (
    .CI(\blk00000001/blk000000b0/sig000001a7 ),
    .LI(\blk00000001/blk000000b0/sig0000019b ),
    .O(\blk00000001/sig000000ad )
  );
  XORCY   \blk00000001/blk000000b0/blk000000b6  (
    .CI(\blk00000001/blk000000b0/sig000001a6 ),
    .LI(\blk00000001/blk000000b0/sig0000019a ),
    .O(\blk00000001/blk000000b0/sig0000018e )
  );
  XORCY   \blk00000001/blk000000b0/blk000000b5  (
    .CI(\blk00000001/blk000000b0/sig000001a5 ),
    .LI(\blk00000001/blk000000b0/sig00000198 ),
    .O(\blk00000001/sig000000ae )
  );
  XORCY   \blk00000001/blk000000b0/blk000000b4  (
    .CI(\blk00000001/blk000000b0/sig000001a4 ),
    .LI(\blk00000001/blk000000b0/sig00000198 ),
    .O(\blk00000001/blk000000b0/sig0000018c )
  );
  XORCY   \blk00000001/blk000000b0/blk000000b3  (
    .CI(\blk00000001/blk000000b0/sig00000199 ),
    .LI(\blk00000001/blk000000b0/sig000001a3 ),
    .O(\blk00000001/sig000000a5 )
  );
  GND   \blk00000001/blk000000b0/blk000000b2  (
    .G(\blk00000001/blk000000b0/sig00000199 )
  );
  VCC   \blk00000001/blk000000b0/blk000000b1  (
    .P(\blk00000001/blk000000b0/sig00000198 )
  );
  INV   \blk00000001/blk000000d4/blk000000fa  (
    .I(\blk00000001/sig000000a4 ),
    .O(\blk00000001/blk000000d4/sig000001d2 )
  );
  INV   \blk00000001/blk000000d4/blk000000f9  (
    .I(\blk00000001/sig000000b3 ),
    .O(\blk00000001/blk000000d4/sig000001db )
  );
  INV   \blk00000001/blk000000d4/blk000000f8  (
    .I(\blk00000001/sig000000b2 ),
    .O(\blk00000001/blk000000d4/sig000001dc )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000d4/blk000000f7  (
    .I0(\blk00000001/sig00000050 ),
    .I1(\blk00000001/sig000000a3 ),
    .O(\blk00000001/blk000000d4/sig000001d3 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000d4/blk000000f6  (
    .I0(\blk00000001/sig0000002c ),
    .I1(\blk00000001/sig000000a2 ),
    .O(\blk00000001/blk000000d4/sig000001d4 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000d4/blk000000f5  (
    .I0(\blk00000001/sig0000002b ),
    .I1(\blk00000001/sig000000a1 ),
    .O(\blk00000001/blk000000d4/sig000001d5 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000d4/blk000000f4  (
    .I0(\blk00000001/sig0000002a ),
    .I1(\blk00000001/sig000000a0 ),
    .O(\blk00000001/blk000000d4/sig000001d6 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000d4/blk000000f3  (
    .I0(\blk00000001/sig00000029 ),
    .I1(\blk00000001/sig0000009f ),
    .O(\blk00000001/blk000000d4/sig000001d7 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000d4/blk000000f2  (
    .I0(\blk00000001/sig00000028 ),
    .I1(\blk00000001/sig0000009e ),
    .O(\blk00000001/blk000000d4/sig000001d8 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000d4/blk000000f1  (
    .I0(\blk00000001/sig00000027 ),
    .I1(\blk00000001/sig0000009d ),
    .O(\blk00000001/blk000000d4/sig000001d9 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000d4/blk000000f0  (
    .I0(\blk00000001/sig000000ae ),
    .I1(\blk00000001/sig0000009c ),
    .O(\blk00000001/blk000000d4/sig000001da )
  );
  MUXCY   \blk00000001/blk000000d4/blk000000ef  (
    .CI(\blk00000001/blk000000d4/sig000001d1 ),
    .DI(\blk00000001/sig000000b2 ),
    .S(\blk00000001/blk000000d4/sig000001dc ),
    .O(\blk00000001/blk000000d4/sig000001e8 )
  );
  MUXCY   \blk00000001/blk000000d4/blk000000ee  (
    .CI(\blk00000001/blk000000d4/sig000001e8 ),
    .DI(\blk00000001/sig000000b3 ),
    .S(\blk00000001/blk000000d4/sig000001db ),
    .O(\blk00000001/blk000000d4/sig000001e7 )
  );
  MUXCY   \blk00000001/blk000000d4/blk000000ed  (
    .CI(\blk00000001/blk000000d4/sig000001e7 ),
    .DI(\blk00000001/sig0000009c ),
    .S(\blk00000001/blk000000d4/sig000001da ),
    .O(\blk00000001/blk000000d4/sig000001e6 )
  );
  MUXCY   \blk00000001/blk000000d4/blk000000ec  (
    .CI(\blk00000001/blk000000d4/sig000001e6 ),
    .DI(\blk00000001/sig0000009d ),
    .S(\blk00000001/blk000000d4/sig000001d9 ),
    .O(\blk00000001/blk000000d4/sig000001e5 )
  );
  MUXCY   \blk00000001/blk000000d4/blk000000eb  (
    .CI(\blk00000001/blk000000d4/sig000001e5 ),
    .DI(\blk00000001/sig0000009e ),
    .S(\blk00000001/blk000000d4/sig000001d8 ),
    .O(\blk00000001/blk000000d4/sig000001e4 )
  );
  MUXCY   \blk00000001/blk000000d4/blk000000ea  (
    .CI(\blk00000001/blk000000d4/sig000001e4 ),
    .DI(\blk00000001/sig0000009f ),
    .S(\blk00000001/blk000000d4/sig000001d7 ),
    .O(\blk00000001/blk000000d4/sig000001e3 )
  );
  MUXCY   \blk00000001/blk000000d4/blk000000e9  (
    .CI(\blk00000001/blk000000d4/sig000001e3 ),
    .DI(\blk00000001/sig000000a0 ),
    .S(\blk00000001/blk000000d4/sig000001d6 ),
    .O(\blk00000001/blk000000d4/sig000001e2 )
  );
  MUXCY   \blk00000001/blk000000d4/blk000000e8  (
    .CI(\blk00000001/blk000000d4/sig000001e2 ),
    .DI(\blk00000001/sig000000a1 ),
    .S(\blk00000001/blk000000d4/sig000001d5 ),
    .O(\blk00000001/blk000000d4/sig000001e1 )
  );
  MUXCY   \blk00000001/blk000000d4/blk000000e7  (
    .CI(\blk00000001/blk000000d4/sig000001e1 ),
    .DI(\blk00000001/sig000000a2 ),
    .S(\blk00000001/blk000000d4/sig000001d4 ),
    .O(\blk00000001/blk000000d4/sig000001e0 )
  );
  MUXCY   \blk00000001/blk000000d4/blk000000e6  (
    .CI(\blk00000001/blk000000d4/sig000001e0 ),
    .DI(\blk00000001/sig000000a3 ),
    .S(\blk00000001/blk000000d4/sig000001d3 ),
    .O(\blk00000001/blk000000d4/sig000001df )
  );
  MUXCY   \blk00000001/blk000000d4/blk000000e5  (
    .CI(\blk00000001/blk000000d4/sig000001df ),
    .DI(\blk00000001/sig000000a4 ),
    .S(\blk00000001/blk000000d4/sig000001d2 ),
    .O(\blk00000001/blk000000d4/sig000001de )
  );
  MUXCY   \blk00000001/blk000000d4/blk000000e4  (
    .CI(\blk00000001/blk000000d4/sig000001de ),
    .DI(NlwRenamedSig_OI_m_axis_dout_tdata[10]),
    .S(\blk00000001/blk000000d4/sig000001d0 ),
    .O(\blk00000001/blk000000d4/sig000001dd )
  );
  XORCY   \blk00000001/blk000000d4/blk000000e3  (
    .CI(\blk00000001/blk000000d4/sig000001e8 ),
    .LI(\blk00000001/blk000000d4/sig000001db ),
    .O(\blk00000001/blk000000d4/sig000001ce )
  );
  XORCY   \blk00000001/blk000000d4/blk000000e2  (
    .CI(\blk00000001/blk000000d4/sig000001e7 ),
    .LI(\blk00000001/blk000000d4/sig000001da ),
    .O(\blk00000001/blk000000d4/sig000001cd )
  );
  XORCY   \blk00000001/blk000000d4/blk000000e1  (
    .CI(\blk00000001/blk000000d4/sig000001e6 ),
    .LI(\blk00000001/blk000000d4/sig000001d9 ),
    .O(\blk00000001/blk000000d4/sig000001cc )
  );
  XORCY   \blk00000001/blk000000d4/blk000000e0  (
    .CI(\blk00000001/blk000000d4/sig000001e5 ),
    .LI(\blk00000001/blk000000d4/sig000001d8 ),
    .O(\blk00000001/blk000000d4/sig000001cb )
  );
  XORCY   \blk00000001/blk000000d4/blk000000df  (
    .CI(\blk00000001/blk000000d4/sig000001e4 ),
    .LI(\blk00000001/blk000000d4/sig000001d7 ),
    .O(\blk00000001/blk000000d4/sig000001ca )
  );
  XORCY   \blk00000001/blk000000d4/blk000000de  (
    .CI(\blk00000001/blk000000d4/sig000001e3 ),
    .LI(\blk00000001/blk000000d4/sig000001d6 ),
    .O(\blk00000001/blk000000d4/sig000001c9 )
  );
  XORCY   \blk00000001/blk000000d4/blk000000dd  (
    .CI(\blk00000001/blk000000d4/sig000001e2 ),
    .LI(\blk00000001/blk000000d4/sig000001d5 ),
    .O(\blk00000001/blk000000d4/sig000001c8 )
  );
  XORCY   \blk00000001/blk000000d4/blk000000dc  (
    .CI(\blk00000001/blk000000d4/sig000001e1 ),
    .LI(\blk00000001/blk000000d4/sig000001d4 ),
    .O(\blk00000001/blk000000d4/sig000001c7 )
  );
  XORCY   \blk00000001/blk000000d4/blk000000db  (
    .CI(\blk00000001/blk000000d4/sig000001e0 ),
    .LI(\blk00000001/blk000000d4/sig000001d3 ),
    .O(\blk00000001/blk000000d4/sig000001c6 )
  );
  XORCY   \blk00000001/blk000000d4/blk000000da  (
    .CI(\blk00000001/blk000000d4/sig000001df ),
    .LI(\blk00000001/blk000000d4/sig000001d2 ),
    .O(\blk00000001/blk000000d4/sig000001c5 )
  );
  XORCY   \blk00000001/blk000000d4/blk000000d9  (
    .CI(\blk00000001/blk000000d4/sig000001de ),
    .LI(\blk00000001/blk000000d4/sig000001d0 ),
    .O(\blk00000001/sig000000b1 )
  );
  XORCY   \blk00000001/blk000000d4/blk000000d8  (
    .CI(\blk00000001/blk000000d4/sig000001dd ),
    .LI(\blk00000001/blk000000d4/sig000001d0 ),
    .O(\blk00000001/blk000000d4/sig000001c3 )
  );
  XORCY   \blk00000001/blk000000d4/blk000000d7  (
    .CI(\blk00000001/blk000000d4/sig000001d1 ),
    .LI(\blk00000001/blk000000d4/sig000001dc ),
    .O(\blk00000001/blk000000d4/sig000001cf )
  );
  GND   \blk00000001/blk000000d4/blk000000d6  (
    .G(\blk00000001/blk000000d4/sig000001d1 )
  );
  VCC   \blk00000001/blk000000d4/blk000000d5  (
    .P(\blk00000001/blk000000d4/sig000001d0 )
  );

// synthesis translate_on

endmodule

// synthesis translate_off

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

// synthesis translate_on
