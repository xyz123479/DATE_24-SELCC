/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : Q-2019.12-SP5-5
// Date      : Mon Sep 11 18:03:43 2023
/////////////////////////////////////////////////////////////


module SCC_4LC_syndrome_gen ( codeword, syndrome );
  input [70:0] codeword;
  output [6:0] syndrome;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77;
  tri   [6:0] syndrome;

  STP_AO2BB2_0P5 U1 ( .A1(codeword[57]), .A2(codeword[12]), .B1(codeword[57]), 
        .B2(codeword[12]), .X(n68) );
  STP_ADDH_0P5 U2 ( .A(codeword[8]), .B(codeword[34]), .S(n51) );
  STP_EO3_0P5 U3 ( .A1(codeword[46]), .A2(codeword[21]), .A3(n51), .X(n21) );
  STP_AO2BB2_0P5 U4 ( .A1(codeword[9]), .A2(codeword[53]), .B1(codeword[9]), 
        .B2(codeword[53]), .X(n12) );
  STP_EO3_0P5 U5 ( .A1(n21), .A2(codeword[66]), .A3(n12), .X(n32) );
  STP_EO3_0P5 U6 ( .A1(codeword[16]), .A2(n68), .A3(n32), .X(n48) );
  STP_EO3_0P5 U7 ( .A1(codeword[40]), .A2(codeword[35]), .A3(codeword[29]), 
        .X(n74) );
  STP_EO3_0P5 U8 ( .A1(n74), .A2(codeword[22]), .A3(codeword[52]), .X(n38) );
  STP_AO2BB2_0P5 U9 ( .A1(codeword[59]), .A2(codeword[48]), .B1(codeword[59]), 
        .B2(codeword[48]), .X(n15) );
  STP_EO3_0P5 U10 ( .A1(n38), .A2(codeword[25]), .A3(n15), .X(n14) );
  STP_AO2BB2_0P5 U11 ( .A1(codeword[13]), .A2(codeword[47]), .B1(codeword[13]), 
        .B2(codeword[47]), .X(n55) );
  STP_AO2BB2_0P5 U12 ( .A1(codeword[31]), .A2(codeword[37]), .B1(codeword[31]), 
        .B2(codeword[37]), .X(n52) );
  STP_EO3_0P5 U13 ( .A1(codeword[14]), .A2(codeword[1]), .A3(n52), .X(n3) );
  STP_EO3_0P5 U14 ( .A1(codeword[61]), .A2(codeword[42]), .A3(codeword[11]), 
        .X(n65) );
  STP_AO2BB2_0P5 U15 ( .A1(n65), .A2(codeword[49]), .B1(n65), .B2(codeword[49]), .X(n31) );
  STP_EO3_0P5 U16 ( .A1(codeword[56]), .A2(codeword[64]), .A3(n31), .X(n1) );
  STP_EO3_0P5 U17 ( .A1(codeword[23]), .A2(codeword[60]), .A3(n1), .X(n2) );
  STP_EO3_0P5 U18 ( .A1(n55), .A2(n3), .A3(n2), .X(n4) );
  STP_EO3_0P5 U19 ( .A1(n48), .A2(n14), .A3(n4), .X(syndrome[1]) );
  STP_ADDH_0P5 U20 ( .A(codeword[58]), .B(codeword[10]), .S(n37) );
  STP_EO3_0P5 U21 ( .A1(codeword[41]), .A2(codeword[45]), .A3(n37), .X(n5) );
  STP_EO3_0P5 U22 ( .A1(codeword[67]), .A2(n5), .A3(n55), .X(n18) );
  STP_AO2BB2_0P5 U23 ( .A1(codeword[19]), .A2(n18), .B1(codeword[19]), .B2(n18), .X(n77) );
  STP_AO2BB2_0P5 U24 ( .A1(codeword[56]), .A2(codeword[17]), .B1(codeword[56]), 
        .B2(codeword[17]), .X(n6) );
  STP_EO3_0P5 U25 ( .A1(codeword[34]), .A2(codeword[37]), .A3(n6), .X(n7) );
  STP_EO3_0P5 U26 ( .A1(codeword[11]), .A2(codeword[68]), .A3(n7), .X(n8) );
  STP_EO3_0P5 U27 ( .A1(codeword[44]), .A2(codeword[51]), .A3(n8), .X(n11) );
  STP_EO3_0P5 U28 ( .A1(codeword[23]), .A2(codeword[54]), .A3(codeword[28]), 
        .X(n70) );
  STP_AO2BB2_0P5 U29 ( .A1(n70), .A2(codeword[62]), .B1(n70), .B2(codeword[62]), .X(n25) );
  STP_EO3_0P5 U30 ( .A1(codeword[30]), .A2(codeword[4]), .A3(n25), .X(n9) );
  STP_EO3_0P5 U31 ( .A1(codeword[55]), .A2(codeword[36]), .A3(n9), .X(n10) );
  STP_EO3_0P5 U32 ( .A1(n12), .A2(n11), .A3(n10), .X(n13) );
  STP_EO3_0P5 U33 ( .A1(n77), .A2(n14), .A3(n13), .X(syndrome[4]) );
  STP_EO3_0P5 U34 ( .A1(codeword[65]), .A2(codeword[63]), .A3(n15), .X(n16) );
  STP_EO3_0P5 U35 ( .A1(codeword[12]), .A2(codeword[28]), .A3(n16), .X(n17) );
  STP_EO3_0P5 U36 ( .A1(codeword[22]), .A2(codeword[52]), .A3(n17), .X(n20) );
  STP_EO3_0P5 U37 ( .A1(codeword[14]), .A2(codeword[30]), .A3(n18), .X(n19) );
  STP_EO3_0P5 U38 ( .A1(n21), .A2(n20), .A3(n19), .X(n24) );
  STP_ADDH_0P5 U39 ( .A(codeword[51]), .B(codeword[33]), .S(n69) );
  STP_AO2BB2_0P5 U40 ( .A1(n69), .A2(codeword[39]), .B1(n69), .B2(codeword[39]), .X(n41) );
  STP_EO3_0P5 U41 ( .A1(codeword[7]), .A2(codeword[69]), .A3(n41), .X(n56) );
  STP_EO3_0P5 U42 ( .A1(codeword[20]), .A2(codeword[15]), .A3(n56), .X(n34) );
  STP_EO3_0P5 U43 ( .A1(codeword[55]), .A2(codeword[36]), .A3(codeword[24]), 
        .X(n42) );
  STP_AO2BB2_0P5 U44 ( .A1(codeword[42]), .A2(codeword[11]), .B1(codeword[42]), 
        .B2(codeword[11]), .X(n22) );
  STP_EO3_0P5 U45 ( .A1(n42), .A2(codeword[0]), .A3(n22), .X(n23) );
  STP_EO3_0P5 U46 ( .A1(n24), .A2(n34), .A3(n23), .X(syndrome[0]) );
  STP_ADDH_0P5 U47 ( .A(codeword[60]), .B(codeword[43]), .S(n36) );
  STP_EO3_0P5 U48 ( .A1(codeword[38]), .A2(codeword[26]), .A3(n36), .X(n26) );
  STP_AO2BB2_0P5 U49 ( .A1(n26), .A2(n25), .B1(n26), .B2(n25), .X(n62) );
  STP_EO3_0P5 U50 ( .A1(codeword[65]), .A2(codeword[50]), .A3(codeword[70]), 
        .X(n45) );
  STP_EO3_0P5 U51 ( .A1(codeword[57]), .A2(codeword[45]), .A3(codeword[17]), 
        .X(n28) );
  STP_EO3_0P5 U52 ( .A1(codeword[52]), .A2(codeword[55]), .A3(codeword[32]), 
        .X(n27) );
  STP_EO3_0P5 U53 ( .A1(codeword[35]), .A2(n28), .A3(n27), .X(n29) );
  STP_EO3_0P5 U54 ( .A1(codeword[59]), .A2(codeword[2]), .A3(n29), .X(n30) );
  STP_EO3_0P5 U55 ( .A1(n62), .A2(n45), .A3(n30), .X(n33) );
  STP_EO3_0P5 U56 ( .A1(n33), .A2(n32), .A3(n31), .X(n35) );
  STP_AO2BB2_0P5 U57 ( .A1(n35), .A2(n34), .B1(n35), .B2(n34), .X(syndrome[2])
         );
  STP_EO3_0P5 U58 ( .A1(n38), .A2(n37), .A3(n36), .X(n47) );
  STP_EO3_0P5 U59 ( .A1(codeword[44]), .A2(codeword[27]), .A3(codeword[3]), 
        .X(n44) );
  STP_ADDH_0P5 U60 ( .A(codeword[56]), .B(codeword[64]), .S(n39) );
  STP_AO2BB2_0P5 U61 ( .A1(n39), .A2(codeword[18]), .B1(n39), .B2(codeword[18]), .X(n49) );
  STP_EO3_0P5 U62 ( .A1(codeword[47]), .A2(codeword[54]), .A3(n49), .X(n40) );
  STP_EO3_0P5 U63 ( .A1(n42), .A2(n41), .A3(n40), .X(n43) );
  STP_EO3_0P5 U64 ( .A1(n45), .A2(n44), .A3(n43), .X(n46) );
  STP_EO3_0P5 U65 ( .A1(n48), .A2(n47), .A3(n46), .X(syndrome[3]) );
  STP_AO2BB2_0P5 U66 ( .A1(codeword[35]), .A2(codeword[29]), .B1(codeword[35]), 
        .B2(codeword[29]), .X(n50) );
  STP_EO3_0P5 U67 ( .A1(n51), .A2(n50), .A3(n49), .X(n61) );
  STP_EO3_0P5 U68 ( .A1(codeword[53]), .A2(codeword[22]), .A3(n52), .X(n53) );
  STP_EO3_0P5 U69 ( .A1(codeword[68]), .A2(codeword[5]), .A3(n53), .X(n54) );
  STP_EO3_0P5 U70 ( .A1(codeword[21]), .A2(codeword[58]), .A3(n54), .X(n59) );
  STP_AO2BB2_0P5 U71 ( .A1(codeword[67]), .A2(n55), .B1(codeword[67]), .B2(n55), .X(n57) );
  STP_EO3_0P5 U72 ( .A1(n57), .A2(codeword[63]), .A3(n56), .X(n58) );
  STP_EO3_0P5 U73 ( .A1(codeword[49]), .A2(n59), .A3(n58), .X(n60) );
  STP_EO3_0P5 U74 ( .A1(n62), .A2(n61), .A3(n60), .X(syndrome[5]) );
  STP_AO2BB2_0P5 U75 ( .A1(codeword[46]), .A2(codeword[21]), .B1(codeword[46]), 
        .B2(codeword[21]), .X(n64) );
  STP_AO2BB2_0P5 U76 ( .A1(codeword[44]), .A2(codeword[27]), .B1(codeword[44]), 
        .B2(codeword[27]), .X(n63) );
  STP_EO3_0P5 U77 ( .A1(n65), .A2(n64), .A3(n63), .X(n76) );
  STP_AO2BB2_0P5 U78 ( .A1(codeword[65]), .A2(codeword[50]), .B1(codeword[65]), 
        .B2(codeword[50]), .X(n66) );
  STP_EO3_0P5 U79 ( .A1(codeword[9]), .A2(codeword[38]), .A3(n66), .X(n67) );
  STP_EO3_0P5 U80 ( .A1(n69), .A2(n68), .A3(n67), .X(n73) );
  STP_EO3_0P5 U81 ( .A1(n70), .A2(codeword[20]), .A3(codeword[32]), .X(n71) );
  STP_EO3_0P5 U82 ( .A1(codeword[7]), .A2(codeword[6]), .A3(n71), .X(n72) );
  STP_EO3_0P5 U83 ( .A1(n74), .A2(n73), .A3(n72), .X(n75) );
  STP_EO3_0P5 U84 ( .A1(n77), .A2(n76), .A3(n75), .X(syndrome[6]) );
endmodule


module SCC_4LC_decoder ( codeword, message, error_type );
  input [70:0] codeword;
  output [63:0] message;
  output [1:0] error_type;
  wire   n1, n5, n6, n21, n24, n30, n31, n33, n37, n38, n39, n40, n42, n43,
         n51, n66, n67, n99, n102, n117, n124, n128, n131, n134, n137, n140,
         n143, n144, n147, n151, n161, n169, n170, n171, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275,
         n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369;
  tri   [1:0] error_type;
  tri   [6:0] syndrome;
  tri   [7:0] error_addr;

  SCC_4LC_syndrome_gen syndrome_gen ( .codeword(codeword), .syndrome(syndrome)
         );
  SCC_4LC_errorinfo_gen errorinfo_gen ( .syndrome(syndrome), .error_addr(
        error_addr), .error_type(error_type) );
  STP_INV_S_0P65 U3 ( .A(error_type[0]), .X(n1) );
  STP_NR3_G_0P65 U7 ( .A1(error_addr[1]), .A2(error_addr[2]), .A3(n42), .X(n5)
         );
  STP_NR3_G_0P65 U10 ( .A1(error_addr[7]), .A2(error_addr[4]), .A3(
        error_addr[5]), .X(n147) );
  STP_NR2B_V1DG_1 U11 ( .A(n147), .B(error_addr[6]), .X(n6) );
  STP_NR3_G_0P65 U55 ( .A1(error_addr[7]), .A2(error_addr[6]), .A3(n66), .X(
        n102) );
  STP_ND2_S_0P8 U72 ( .A1(error_addr[1]), .A2(n30), .X(n31) );
  STP_ND2_S_0P8 U82 ( .A1(error_addr[2]), .A2(n38), .X(n39) );
  STP_ND2_S_0P8 U22 ( .A1(error_addr[0]), .A2(n5), .X(n124) );
  STP_ND2_S_0P8 U218 ( .A1(n147), .A2(error_addr[6]), .X(n169) );
  STP_NR2B_V1DG_1 U56 ( .A(n102), .B(error_addr[5]), .X(n51) );
  STP_NR2_G_0P5 U117 ( .A1(error_addr[7]), .A2(error_addr[6]), .X(n67) );
  STP_INV_S_0P65 U54 ( .A(error_addr[4]), .X(n66) );
  STP_INV_S_0P65 U8 ( .A(error_addr[0]), .X(n33) );
  STP_INV_S_0P65 U14 ( .A(error_addr[2]), .X(n21) );
  STP_INV_S_0P65 U6 ( .A(error_addr[3]), .X(n42) );
  STP_ND3_0P5 U16 ( .A1(error_addr[1]), .A2(n37), .A3(n42), .X(n117) );
  STP_ND4_MM_1 U30 ( .A1(error_addr[1]), .A2(error_addr[0]), .A3(error_addr[3]), .A4(n21), .X(n131) );
  STP_INV_S_0P65 U34 ( .A(error_addr[1]), .X(n24) );
  STP_ND4_MM_1 U35 ( .A1(error_addr[3]), .A2(error_addr[2]), .A3(n33), .A4(n24), .X(n134) );
  STP_ND3_0P5 U39 ( .A1(error_addr[3]), .A2(n37), .A3(n24), .X(n137) );
  STP_NR2_G_0P5 U43 ( .A1(error_addr[0]), .A2(n24), .X(n43) );
  STP_ND3_0P5 U44 ( .A1(error_addr[3]), .A2(error_addr[2]), .A3(n43), .X(n140)
         );
  STP_ND3_0P5 U48 ( .A1(error_addr[1]), .A2(error_addr[3]), .A3(n37), .X(n144)
         );
  STP_NR2_G_0P5 U52 ( .A1(error_addr[1]), .A2(error_addr[3]), .X(n38) );
  STP_ND4_MM_1 U26 ( .A1(error_addr[1]), .A2(error_addr[3]), .A3(n33), .A4(n21), .X(n128) );
  STP_NR2_G_0P5 U61 ( .A1(error_addr[3]), .A2(error_addr[2]), .X(n30) );
  STP_ND3_0P5 U62 ( .A1(error_addr[0]), .A2(n30), .A3(n24), .X(n151) );
  STP_ND3_0P5 U76 ( .A1(error_addr[2]), .A2(n38), .A3(n33), .X(n161) );
  STP_ND3_0P5 U86 ( .A1(error_addr[2]), .A2(n43), .A3(n42), .X(n170) );
  STP_OAI21_0P75 U242 ( .A1(n364), .A2(n368), .B(codeword[24]), .X(n363) );
  STP_OAI21_0P75 U243 ( .A1(n143), .A2(n368), .B(codeword[56]), .X(n362) );
  STP_OAI21_0P75 U244 ( .A1(n99), .A2(n368), .B(codeword[40]), .X(n367) );
  STP_OAI21_0P75 U245 ( .A1(n366), .A2(n368), .B(codeword[8]), .X(n365) );
  STP_ND2_S_1 U246 ( .A1(error_addr[5]), .A2(n102), .X(n143) );
  STP_INV_S_0P65 U247 ( .A(n6), .X(n366) );
  STP_INV_S_0P65 U248 ( .A(n51), .X(n364) );
  STP_ND2_S_0P8 U249 ( .A1(n1), .A2(error_type[1]), .X(n40) );
  STP_ND2_G_1 U250 ( .A1(n40), .A2(n244), .X(n361) );
  STP_INV_S_0P65 U251 ( .A(n40), .X(n357) );
  STP_TIE0_1 U252 ( .X(message[63]) );
  STP_NR2_G_0P5 U253 ( .A1(n33), .A2(n21), .X(n37) );
  STP_ND2_S_0P8 U254 ( .A1(n38), .A2(n37), .X(n331) );
  STP_INV_S_0P65 U255 ( .A(n331), .X(n335) );
  STP_NR2_G_0P5 U256 ( .A1(n40), .A2(n39), .X(n334) );
  STP_INV_S_0P65 U257 ( .A(n169), .X(n242) );
  STP_AOAI211_0P5 U258 ( .A1(n171), .A2(n335), .B(n334), .C(n242), .X(n240) );
  STP_AO2BB2_0P5 U259 ( .A1(codeword[69]), .A2(n240), .B1(codeword[69]), .B2(
        n240), .X(message[61]) );
  STP_INV_S_0P65 U260 ( .A(n161), .X(n338) );
  STP_INV_S_0P65 U261 ( .A(n171), .X(n244) );
  STP_OAI21_0P5 U262 ( .A1(n161), .A2(n244), .B(n40), .X(n337) );
  STP_OAI211_0P5 U263 ( .A1(n338), .A2(n369), .B1(n337), .B2(n242), .X(n241)
         );
  STP_AO2BB2_0P5 U264 ( .A1(codeword[68]), .A2(n241), .B1(codeword[68]), .B2(
        n241), .X(message[60]) );
  STP_NR2_G_0P5 U265 ( .A1(n40), .A2(n31), .X(n340) );
  STP_AOAI211_0P5 U266 ( .A1(n171), .A2(n369), .B(n340), .C(n242), .X(n243) );
  STP_AO2BB2_0P5 U267 ( .A1(codeword[67]), .A2(n243), .B1(codeword[67]), .B2(
        n243), .X(message[59]) );
  STP_OAOI211_0P5 U268 ( .A1(n40), .A2(n331), .B(n170), .C(n169), .X(n245) );
  STP_ND2_S_0P8 U269 ( .A1(n361), .A2(n245), .X(n246) );
  STP_AO2BB2_0P5 U270 ( .A1(codeword[70]), .A2(n246), .B1(codeword[70]), .B2(
        n246), .X(message[62]) );
  STP_ND3_0P5 U271 ( .A1(n38), .A2(n33), .A3(n21), .X(n347) );
  STP_NR2_G_0P5 U272 ( .A1(n169), .A2(n347), .X(n249) );
  STP_NR2_G_0P5 U273 ( .A1(n169), .A2(n151), .X(n247) );
  STP_AOAI211_0P5 U274 ( .A1(n249), .A2(n357), .B(n247), .C(n361), .X(n248) );
  STP_AO2BB2_0P5 U275 ( .A1(codeword[65]), .A2(n248), .B1(codeword[65]), .B2(
        n248), .X(message[57]) );
  STP_NR2_G_0P5 U276 ( .A1(n143), .A2(n144), .X(n251) );
  STP_AOAI211_0P5 U277 ( .A1(n251), .A2(n357), .B(n249), .C(n361), .X(n250) );
  STP_AO2BB2_0P5 U278 ( .A1(codeword[64]), .A2(n250), .B1(codeword[64]), .B2(
        n250), .X(message[56]) );
  STP_NR2_G_0P5 U279 ( .A1(n143), .A2(n140), .X(n270) );
  STP_AOAI211_0P5 U280 ( .A1(n270), .A2(n357), .B(n251), .C(n361), .X(n252) );
  STP_AO2BB2_0P5 U281 ( .A1(codeword[63]), .A2(n252), .B1(codeword[63]), .B2(
        n252), .X(message[55]) );
  STP_ND2_S_0P8 U282 ( .A1(n30), .A2(n43), .X(n342) );
  STP_OAOI211_0P5 U283 ( .A1(n40), .A2(n151), .B(n342), .C(n169), .X(n253) );
  STP_ND2_S_0P8 U284 ( .A1(n361), .A2(n253), .X(n254) );
  STP_AO2BB2_0P5 U285 ( .A1(codeword[66]), .A2(n254), .B1(codeword[66]), .B2(
        n254), .X(message[58]) );
  STP_NR2_G_0P5 U286 ( .A1(n143), .A2(n134), .X(n256) );
  STP_NR2_G_0P5 U287 ( .A1(n143), .A2(n137), .X(n271) );
  STP_AOAI211_0P5 U288 ( .A1(n256), .A2(n357), .B(n271), .C(n361), .X(n255) );
  STP_AO2BB2_0P5 U289 ( .A1(codeword[61]), .A2(n255), .B1(codeword[61]), .B2(
        n255), .X(message[53]) );
  STP_NR2_G_0P5 U290 ( .A1(n143), .A2(n131), .X(n258) );
  STP_AOAI211_0P5 U291 ( .A1(n258), .A2(n357), .B(n256), .C(n361), .X(n257) );
  STP_AO2BB2_0P5 U292 ( .A1(codeword[60]), .A2(n257), .B1(codeword[60]), .B2(
        n257), .X(message[52]) );
  STP_NR2_G_0P5 U293 ( .A1(n143), .A2(n128), .X(n260) );
  STP_AOAI211_0P5 U294 ( .A1(n260), .A2(n357), .B(n258), .C(n361), .X(n259) );
  STP_AO2BB2_0P5 U295 ( .A1(codeword[59]), .A2(n259), .B1(codeword[59]), .B2(
        n259), .X(message[51]) );
  STP_NR2_G_0P5 U296 ( .A1(n143), .A2(n124), .X(n262) );
  STP_AOAI211_0P5 U297 ( .A1(n262), .A2(n357), .B(n260), .C(n361), .X(n261) );
  STP_AO2BB2_0P5 U298 ( .A1(codeword[58]), .A2(n261), .B1(codeword[58]), .B2(
        n261), .X(message[50]) );
  STP_AN2_S_0P5 U299 ( .A1(n5), .A2(n357), .X(n326) );
  STP_INV_S_0P65 U300 ( .A(n143), .X(n297) );
  STP_AOI22_0P5 U301 ( .A1(n171), .A2(n262), .B1(n326), .B2(n297), .X(n263) );
  STP_AO2BB2_0P5 U302 ( .A1(codeword[57]), .A2(n263), .B1(codeword[57]), .B2(
        n263), .X(message[49]) );
  STP_OAOI211_0P5 U303 ( .A1(n40), .A2(n170), .B(n117), .C(n143), .X(n264) );
  STP_ND2_S_0P8 U304 ( .A1(n361), .A2(n264), .X(n265) );
  STP_AO2BB2_0P5 U305 ( .A1(codeword[55]), .A2(n265), .B1(codeword[55]), .B2(
        n265), .X(message[47]) );
  STP_OAOI211_0P5 U306 ( .A1(n40), .A2(n331), .B(n170), .C(n143), .X(n266) );
  STP_ND2_S_0P8 U307 ( .A1(n361), .A2(n266), .X(n267) );
  STP_AO2BB2_0P5 U308 ( .A1(codeword[54]), .A2(n267), .B1(codeword[54]), .B2(
        n267), .X(message[46]) );
  STP_AOAI211_0P5 U309 ( .A1(n335), .A2(n171), .B(n334), .C(n297), .X(n268) );
  STP_AO2BB2_0P5 U310 ( .A1(codeword[53]), .A2(n268), .B1(codeword[53]), .B2(
        n268), .X(message[45]) );
  STP_OAI211_0P5 U311 ( .A1(n338), .A2(n369), .B1(n337), .B2(n297), .X(n269)
         );
  STP_AO2BB2_0P5 U312 ( .A1(codeword[52]), .A2(n269), .B1(codeword[52]), .B2(
        n269), .X(message[44]) );
  STP_AOAI211_0P5 U313 ( .A1(n271), .A2(n357), .B(n270), .C(n361), .X(n272) );
  STP_AO2BB2_0P5 U314 ( .A1(codeword[62]), .A2(n272), .B1(codeword[62]), .B2(
        n272), .X(message[54]) );
  STP_OAOI211_0P5 U315 ( .A1(n40), .A2(n151), .B(n342), .C(n143), .X(n273) );
  STP_ND2_S_0P8 U316 ( .A1(n361), .A2(n273), .X(n274) );
  STP_AO2BB2_0P5 U317 ( .A1(codeword[50]), .A2(n274), .B1(codeword[50]), .B2(
        n274), .X(message[42]) );
  STP_OAOI211_0P5 U318 ( .A1(n40), .A2(n347), .B(n151), .C(n143), .X(n275) );
  STP_ND2_S_0P8 U319 ( .A1(n361), .A2(n275), .X(n276) );
  STP_AO2BB2_0P5 U320 ( .A1(codeword[49]), .A2(n276), .B1(codeword[49]), .B2(
        n276), .X(message[41]) );
  STP_NR2_G_0P5 U321 ( .A1(n99), .A2(n144), .X(n279) );
  STP_NR2_G_0P5 U322 ( .A1(n143), .A2(n347), .X(n277) );
  STP_AOAI211_0P5 U323 ( .A1(n279), .A2(n357), .B(n277), .C(n361), .X(n278) );
  STP_AO2BB2_0P5 U324 ( .A1(codeword[48]), .A2(n278), .B1(codeword[48]), .B2(
        n278), .X(message[40]) );
  STP_NR2_G_0P5 U325 ( .A1(n99), .A2(n140), .X(n281) );
  STP_AOAI211_0P5 U326 ( .A1(n281), .A2(n357), .B(n279), .C(n361), .X(n280) );
  STP_AO2BB2_0P5 U327 ( .A1(codeword[47]), .A2(n280), .B1(codeword[47]), .B2(
        n280), .X(message[39]) );
  STP_NR2_G_0P5 U328 ( .A1(n99), .A2(n137), .X(n283) );
  STP_AOAI211_0P5 U329 ( .A1(n283), .A2(n357), .B(n281), .C(n361), .X(n282) );
  STP_AO2BB2_0P5 U330 ( .A1(codeword[46]), .A2(n282), .B1(codeword[46]), .B2(
        n282), .X(message[38]) );
  STP_NR2_G_0P5 U331 ( .A1(n99), .A2(n134), .X(n285) );
  STP_AOAI211_0P5 U332 ( .A1(n285), .A2(n357), .B(n283), .C(n361), .X(n284) );
  STP_AO2BB2_0P5 U333 ( .A1(codeword[45]), .A2(n284), .B1(codeword[45]), .B2(
        n284), .X(message[37]) );
  STP_NR2_G_0P5 U334 ( .A1(n99), .A2(n131), .X(n287) );
  STP_AOAI211_0P5 U335 ( .A1(n287), .A2(n357), .B(n285), .C(n361), .X(n286) );
  STP_AO2BB2_0P5 U336 ( .A1(codeword[44]), .A2(n286), .B1(codeword[44]), .B2(
        n286), .X(message[36]) );
  STP_NR2_G_0P5 U337 ( .A1(n99), .A2(n128), .X(n289) );
  STP_AOAI211_0P5 U338 ( .A1(n289), .A2(n357), .B(n287), .C(n361), .X(n288) );
  STP_AO2BB2_0P5 U339 ( .A1(codeword[43]), .A2(n288), .B1(codeword[43]), .B2(
        n288), .X(message[35]) );
  STP_NR2_G_0P5 U340 ( .A1(n99), .A2(n124), .X(n291) );
  STP_AOAI211_0P5 U341 ( .A1(n291), .A2(n357), .B(n289), .C(n361), .X(n290) );
  STP_AO2BB2_0P5 U342 ( .A1(codeword[42]), .A2(n290), .B1(codeword[42]), .B2(
        n290), .X(message[34]) );
  STP_INV_S_0P65 U343 ( .A(n99), .X(n303) );
  STP_AOI22_0P5 U344 ( .A1(n171), .A2(n291), .B1(n326), .B2(n303), .X(n292) );
  STP_AO2BB2_0P5 U345 ( .A1(codeword[41]), .A2(n292), .B1(codeword[41]), .B2(
        n292), .X(message[33]) );
  STP_OAOI211_0P5 U346 ( .A1(n40), .A2(n170), .B(n117), .C(n99), .X(n293) );
  STP_ND2_S_0P8 U347 ( .A1(n361), .A2(n293), .X(n294) );
  STP_AO2BB2_0P5 U348 ( .A1(codeword[39]), .A2(n294), .B1(codeword[39]), .B2(
        n294), .X(message[31]) );
  STP_OAOI211_0P5 U349 ( .A1(n40), .A2(n331), .B(n170), .C(n99), .X(n295) );
  STP_ND2_S_0P8 U350 ( .A1(n361), .A2(n295), .X(n296) );
  STP_AO2BB2_0P5 U351 ( .A1(codeword[38]), .A2(n296), .B1(codeword[38]), .B2(
        n296), .X(message[30]) );
  STP_AOAI211_0P5 U352 ( .A1(n171), .A2(n369), .B(n340), .C(n297), .X(n298) );
  STP_AO2BB2_0P5 U353 ( .A1(codeword[51]), .A2(n298), .B1(codeword[51]), .B2(
        n298), .X(message[43]) );
  STP_OAOI211_0P5 U354 ( .A1(n40), .A2(n170), .B(n117), .C(n364), .X(n299) );
  STP_ND2_S_0P8 U355 ( .A1(n361), .A2(n299), .X(n300) );
  STP_AO2BB2_0P5 U356 ( .A1(codeword[23]), .A2(n300), .B1(codeword[23]), .B2(
        n300), .X(message[15]) );
  STP_AOAI211_0P5 U357 ( .A1(n335), .A2(n171), .B(n334), .C(n303), .X(n301) );
  STP_AO2BB2_0P5 U358 ( .A1(codeword[37]), .A2(n301), .B1(codeword[37]), .B2(
        n301), .X(message[29]) );
  STP_OAI211_0P5 U359 ( .A1(n338), .A2(n369), .B1(n337), .B2(n303), .X(n302)
         );
  STP_AO2BB2_0P5 U360 ( .A1(codeword[36]), .A2(n302), .B1(codeword[36]), .B2(
        n302), .X(message[28]) );
  STP_AOAI211_0P5 U361 ( .A1(n171), .A2(n369), .B(n340), .C(n303), .X(n304) );
  STP_AO2BB2_0P5 U362 ( .A1(codeword[35]), .A2(n304), .B1(codeword[35]), .B2(
        n304), .X(message[27]) );
  STP_OAOI211_0P5 U363 ( .A1(n40), .A2(n151), .B(n342), .C(n99), .X(n305) );
  STP_ND2_S_0P8 U364 ( .A1(n361), .A2(n305), .X(n306) );
  STP_AO2BB2_0P5 U365 ( .A1(codeword[34]), .A2(n306), .B1(codeword[34]), .B2(
        n306), .X(message[26]) );
  STP_OAOI211_0P5 U366 ( .A1(n40), .A2(n347), .B(n151), .C(n99), .X(n307) );
  STP_ND2_S_0P8 U367 ( .A1(n361), .A2(n307), .X(n308) );
  STP_AO2BB2_0P5 U368 ( .A1(codeword[33]), .A2(n308), .B1(codeword[33]), .B2(
        n308), .X(message[25]) );
  STP_NR2_G_0P5 U369 ( .A1(n144), .A2(n364), .X(n311) );
  STP_NR2_G_0P5 U370 ( .A1(n99), .A2(n347), .X(n309) );
  STP_AOAI211_0P5 U371 ( .A1(n311), .A2(n357), .B(n309), .C(n361), .X(n310) );
  STP_AO2BB2_0P5 U372 ( .A1(codeword[32]), .A2(n310), .B1(codeword[32]), .B2(
        n310), .X(message[24]) );
  STP_NR2_G_0P5 U373 ( .A1(n140), .A2(n364), .X(n313) );
  STP_AOAI211_0P5 U374 ( .A1(n313), .A2(n357), .B(n311), .C(n361), .X(n312) );
  STP_AO2BB2_0P5 U375 ( .A1(codeword[31]), .A2(n312), .B1(codeword[31]), .B2(
        n312), .X(message[23]) );
  STP_NR2_G_0P5 U376 ( .A1(n137), .A2(n364), .X(n315) );
  STP_AOAI211_0P5 U377 ( .A1(n315), .A2(n357), .B(n313), .C(n361), .X(n314) );
  STP_AO2BB2_0P5 U378 ( .A1(codeword[30]), .A2(n314), .B1(codeword[30]), .B2(
        n314), .X(message[22]) );
  STP_NR2_G_0P5 U379 ( .A1(n134), .A2(n364), .X(n317) );
  STP_AOAI211_0P5 U380 ( .A1(n317), .A2(n357), .B(n315), .C(n361), .X(n316) );
  STP_AO2BB2_0P5 U381 ( .A1(codeword[29]), .A2(n316), .B1(codeword[29]), .B2(
        n316), .X(message[21]) );
  STP_NR2_G_0P5 U382 ( .A1(n131), .A2(n364), .X(n319) );
  STP_AOAI211_0P5 U383 ( .A1(n319), .A2(n357), .B(n317), .C(n361), .X(n318) );
  STP_AO2BB2_0P5 U384 ( .A1(codeword[28]), .A2(n318), .B1(codeword[28]), .B2(
        n318), .X(message[20]) );
  STP_NR2_G_0P5 U385 ( .A1(n128), .A2(n364), .X(n321) );
  STP_AOAI211_0P5 U386 ( .A1(n321), .A2(n357), .B(n319), .C(n361), .X(n320) );
  STP_AO2BB2_0P5 U387 ( .A1(codeword[27]), .A2(n320), .B1(codeword[27]), .B2(
        n320), .X(message[19]) );
  STP_NR2_G_0P5 U388 ( .A1(n124), .A2(n364), .X(n323) );
  STP_AOAI211_0P5 U389 ( .A1(n323), .A2(n357), .B(n321), .C(n361), .X(n322) );
  STP_AO2BB2_0P5 U390 ( .A1(codeword[26]), .A2(n322), .B1(codeword[26]), .B2(
        n322), .X(message[18]) );
  STP_AOI22_0P5 U391 ( .A1(n171), .A2(n323), .B1(n51), .B2(n326), .X(n324) );
  STP_AO2BB2_0P5 U392 ( .A1(codeword[25]), .A2(n324), .B1(codeword[25]), .B2(
        n324), .X(message[17]) );
  STP_NR2_G_0P5 U393 ( .A1(n124), .A2(n366), .X(n327) );
  STP_NR2_G_0P5 U394 ( .A1(n128), .A2(n366), .X(n345) );
  STP_AOAI211_0P5 U395 ( .A1(n327), .A2(n357), .B(n345), .C(n361), .X(n325) );
  STP_AO2BB2_0P5 U396 ( .A1(codeword[10]), .A2(n325), .B1(codeword[10]), .B2(
        n325), .X(message[2]) );
  STP_AOI22_0P5 U397 ( .A1(n171), .A2(n327), .B1(n6), .B2(n326), .X(n328) );
  STP_AO2BB2_0P5 U398 ( .A1(codeword[9]), .A2(n328), .B1(codeword[9]), .B2(
        n328), .X(message[1]) );
  STP_OAOI211_0P5 U399 ( .A1(n40), .A2(n347), .B(n151), .C(n364), .X(n329) );
  STP_ND2_S_0P8 U400 ( .A1(n361), .A2(n329), .X(n330) );
  STP_AO2BB2_0P5 U401 ( .A1(codeword[17]), .A2(n330), .B1(codeword[17]), .B2(
        n330), .X(message[9]) );
  STP_OAOI211_0P5 U402 ( .A1(n40), .A2(n331), .B(n170), .C(n364), .X(n332) );
  STP_ND2_S_0P8 U403 ( .A1(n361), .A2(n332), .X(n333) );
  STP_AO2BB2_0P5 U404 ( .A1(codeword[22]), .A2(n333), .B1(codeword[22]), .B2(
        n333), .X(message[14]) );
  STP_AOAI211_0P5 U405 ( .A1(n335), .A2(n171), .B(n334), .C(n51), .X(n336) );
  STP_AO2BB2_0P5 U406 ( .A1(codeword[21]), .A2(n336), .B1(codeword[21]), .B2(
        n336), .X(message[13]) );
  STP_OAI211_0P5 U407 ( .A1(n338), .A2(n369), .B1(n51), .B2(n337), .X(n339) );
  STP_AO2BB2_0P5 U408 ( .A1(codeword[20]), .A2(n339), .B1(codeword[20]), .B2(
        n339), .X(message[12]) );
  STP_AOAI211_0P5 U409 ( .A1(n171), .A2(n369), .B(n340), .C(n51), .X(n341) );
  STP_AO2BB2_0P5 U410 ( .A1(codeword[19]), .A2(n341), .B1(codeword[19]), .B2(
        n341), .X(message[11]) );
  STP_OAOI211_0P5 U411 ( .A1(n40), .A2(n151), .B(n342), .C(n364), .X(n343) );
  STP_ND2_S_0P8 U412 ( .A1(n361), .A2(n343), .X(n344) );
  STP_AO2BB2_0P5 U413 ( .A1(codeword[18]), .A2(n344), .B1(codeword[18]), .B2(
        n344), .X(message[10]) );
  STP_NR2_G_0P5 U414 ( .A1(n131), .A2(n366), .X(n358) );
  STP_AOAI211_0P5 U415 ( .A1(n345), .A2(n357), .B(n358), .C(n361), .X(n346) );
  STP_AO2BB2_0P5 U416 ( .A1(codeword[11]), .A2(n346), .B1(codeword[11]), .B2(
        n346), .X(message[3]) );
  STP_NR2_G_0P5 U417 ( .A1(n144), .A2(n366), .X(n350) );
  STP_NR2_G_0P5 U418 ( .A1(n347), .A2(n364), .X(n348) );
  STP_AOAI211_0P5 U419 ( .A1(n350), .A2(n357), .B(n348), .C(n361), .X(n349) );
  STP_AO2BB2_0P5 U420 ( .A1(codeword[16]), .A2(n349), .B1(codeword[16]), .B2(
        n349), .X(message[8]) );
  STP_NR2_G_0P5 U421 ( .A1(n140), .A2(n366), .X(n352) );
  STP_AOAI211_0P5 U422 ( .A1(n352), .A2(n357), .B(n350), .C(n361), .X(n351) );
  STP_AO2BB2_0P5 U423 ( .A1(codeword[15]), .A2(n351), .B1(codeword[15]), .B2(
        n351), .X(message[7]) );
  STP_NR2_G_0P5 U424 ( .A1(n137), .A2(n366), .X(n354) );
  STP_AOAI211_0P5 U425 ( .A1(n354), .A2(n357), .B(n352), .C(n361), .X(n353) );
  STP_AO2BB2_0P5 U426 ( .A1(codeword[14]), .A2(n353), .B1(codeword[14]), .B2(
        n353), .X(message[6]) );
  STP_NR2_G_0P5 U427 ( .A1(n134), .A2(n366), .X(n356) );
  STP_AOAI211_0P5 U428 ( .A1(n356), .A2(n357), .B(n354), .C(n361), .X(n355) );
  STP_AO2BB2_0P5 U429 ( .A1(codeword[13]), .A2(n355), .B1(codeword[13]), .B2(
        n355), .X(message[5]) );
  STP_AOAI211_0P5 U430 ( .A1(n358), .A2(n357), .B(n356), .C(n361), .X(n359) );
  STP_AO2BB2_0P5 U431 ( .A1(codeword[12]), .A2(n359), .B1(codeword[12]), .B2(
        n359), .X(message[4]) );
  STP_AO2BB2_0P5 U432 ( .A1(n40), .A2(n117), .B1(n5), .B2(n33), .X(n360) );
  STP_ND2_G_1 U433 ( .A1(n361), .A2(n360), .X(n368) );
  STP_OAI31_G_0P5 U434 ( .A1(n143), .A2(codeword[56]), .A3(n368), .B(n362), 
        .X(message[48]) );
  STP_OAI31_G_0P5 U435 ( .A1(n364), .A2(codeword[24]), .A3(n368), .B(n363), 
        .X(message[16]) );
  STP_OAI31_G_0P5 U436 ( .A1(n366), .A2(codeword[8]), .A3(n368), .B(n365), .X(
        message[0]) );
  STP_OAI31_G_0P5 U437 ( .A1(n99), .A2(codeword[40]), .A3(n368), .B(n367), .X(
        message[32]) );
  STP_AN3_0P5 U438 ( .A1(error_addr[0]), .A2(error_addr[1]), .A3(n30), .X(n369) );
  STP_NR2_G_0P5 U439 ( .A1(error_type[1]), .A2(n1), .X(n171) );
  STP_ND3_0P5 U440 ( .A1(error_addr[5]), .A2(n67), .A3(n66), .X(n99) );
endmodule

