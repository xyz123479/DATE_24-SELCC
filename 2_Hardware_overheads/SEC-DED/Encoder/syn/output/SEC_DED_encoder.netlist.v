/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : Q-2019.12-SP5-5
// Date      : Sun Sep 17 23:43:48 2023
/////////////////////////////////////////////////////////////


module SEC_DED_encoder ( message, codeword );
  input [63:0] message;
  output [71:0] codeword;
  wire   n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180;
  assign codeword[71] = message[63];
  assign codeword[70] = message[62];
  assign codeword[69] = message[61];
  assign codeword[68] = message[60];
  assign codeword[67] = message[59];
  assign codeword[66] = message[58];
  assign codeword[65] = message[57];
  assign codeword[64] = message[56];
  assign codeword[63] = message[55];
  assign codeword[62] = message[54];
  assign codeword[61] = message[53];
  assign codeword[60] = message[52];
  assign codeword[59] = message[51];
  assign codeword[58] = message[50];
  assign codeword[57] = message[49];
  assign codeword[56] = message[48];
  assign codeword[55] = message[47];
  assign codeword[54] = message[46];
  assign codeword[53] = message[45];
  assign codeword[52] = message[44];
  assign codeword[51] = message[43];
  assign codeword[50] = message[42];
  assign codeword[49] = message[41];
  assign codeword[48] = message[40];
  assign codeword[47] = message[39];
  assign codeword[46] = message[38];
  assign codeword[45] = message[37];
  assign codeword[44] = message[36];
  assign codeword[43] = message[35];
  assign codeword[42] = message[34];
  assign codeword[41] = message[33];
  assign codeword[40] = message[32];
  assign codeword[39] = message[31];
  assign codeword[38] = message[30];
  assign codeword[37] = message[29];
  assign codeword[36] = message[28];
  assign codeword[35] = message[27];
  assign codeword[34] = message[26];
  assign codeword[33] = message[25];
  assign codeword[32] = message[24];
  assign codeword[31] = message[23];
  assign codeword[30] = message[22];
  assign codeword[29] = message[21];
  assign codeword[28] = message[20];
  assign codeword[27] = message[19];
  assign codeword[26] = message[18];
  assign codeword[25] = message[17];
  assign codeword[24] = message[16];
  assign codeword[23] = message[15];
  assign codeword[22] = message[14];
  assign codeword[21] = message[13];
  assign codeword[20] = message[12];
  assign codeword[19] = message[11];
  assign codeword[18] = message[10];
  assign codeword[17] = message[9];
  assign codeword[16] = message[8];
  assign codeword[15] = message[7];
  assign codeword[14] = message[6];
  assign codeword[13] = message[5];
  assign codeword[12] = message[4];
  assign codeword[11] = message[3];
  assign codeword[10] = message[2];
  assign codeword[9] = message[1];
  assign codeword[8] = message[0];

  STP_INV_S_0P65 U114 ( .A(codeword[14]), .X(n135) );
  STP_EO2_S_0P5 U115 ( .A1(n123), .A2(codeword[24]), .X(n130) );
  STP_OA2BB2_0P5 U116 ( .A1(codeword[32]), .A2(n163), .B1(n163), .B2(
        codeword[32]), .X(n164) );
  STP_EO2_S_0P5 U117 ( .A1(n124), .A2(codeword[12]), .X(n167) );
  STP_EO2_S_0P5 U118 ( .A1(n107), .A2(codeword[9]), .X(n123) );
  STP_AO2BB2_V3_1 U119 ( .A1(codeword[40]), .A2(codeword[48]), .B1(
        codeword[40]), .B2(codeword[48]), .X(n174) );
  STP_INV_S_1 U120 ( .A(codeword[21]), .X(n107) );
  STP_INV_S_1 U121 ( .A(codeword[8]), .X(n124) );
  STP_INV_S_1 U122 ( .A(codeword[11]), .X(n156) );
  STP_EO2_S_0P5 U123 ( .A1(codeword[38]), .A2(codeword[48]), .X(n110) );
  STP_EO2_S_0P5 U124 ( .A1(codeword[34]), .A2(codeword[40]), .X(n115) );
  STP_EO2_S_0P5 U125 ( .A1(codeword[47]), .A2(codeword[68]), .X(n116) );
  STP_INV_S_1 U126 ( .A(codeword[67]), .X(n109) );
  STP_EO3_1 U127 ( .A1(n139), .A2(n138), .A3(n137), .X(n141) );
  STP_EO2_1 U128 ( .A1(codeword[13]), .A2(codeword[10]), .X(n120) );
  STP_INV_S_0P65 U129 ( .A(codeword[9]), .X(n163) );
  STP_EO3_0P5 U130 ( .A1(n150), .A2(n149), .A3(n174), .X(n151) );
  STP_EO3_0P5 U131 ( .A1(codeword[29]), .A2(codeword[32]), .A3(codeword[55]), 
        .X(n106) );
  STP_EO3_0P5 U132 ( .A1(n106), .A2(codeword[26]), .A3(codeword[45]), .X(n119)
         );
  STP_EO3_0P5 U133 ( .A1(codeword[8]), .A2(codeword[23]), .A3(codeword[42]), 
        .X(n143) );
  STP_EO3_0P5 U134 ( .A1(n123), .A2(codeword[15]), .A3(codeword[59]), .X(n108)
         );
  STP_EO3_0P5 U135 ( .A1(n119), .A2(n143), .A3(n108), .X(n114) );
  STP_EO3_0P5 U136 ( .A1(n120), .A2(codeword[70]), .A3(n109), .X(n169) );
  STP_EO3_0P5 U137 ( .A1(codeword[14]), .A2(codeword[63]), .A3(codeword[18]), 
        .X(n112) );
  STP_EO3_0P5 U138 ( .A1(n110), .A2(codeword[51]), .A3(codeword[35]), .X(n111)
         );
  STP_EO3_0P5 U139 ( .A1(n169), .A2(n112), .A3(n111), .X(n113) );
  STP_EO2_S_0P5 U140 ( .A1(n114), .A2(n113), .X(codeword[0]) );
  STP_EO3_0P5 U141 ( .A1(n115), .A2(codeword[14]), .A3(codeword[11]), .X(n118)
         );
  STP_EO3_0P5 U142 ( .A1(n116), .A2(codeword[16]), .A3(codeword[50]), .X(n117)
         );
  STP_EO3_0P5 U143 ( .A1(n119), .A2(n118), .A3(n117), .X(n122) );
  STP_EO3_0P5 U144 ( .A1(codeword[58]), .A2(codeword[37]), .A3(codeword[17]), 
        .X(n144) );
  STP_EO3_0P5 U145 ( .A1(n120), .A2(codeword[61]), .A3(codeword[65]), .X(n121)
         );
  STP_EO3_0P5 U146 ( .A1(n122), .A2(n144), .A3(n121), .X(n126) );
  STP_EO3_0P5 U147 ( .A1(codeword[52]), .A2(codeword[43]), .A3(codeword[15]), 
        .X(n125) );
  STP_EO3_0P5 U148 ( .A1(n130), .A2(n167), .A3(n125), .X(n161) );
  STP_EO2_S_0P5 U149 ( .A1(n126), .A2(n161), .X(codeword[5]) );
  STP_EO3_0P5 U150 ( .A1(codeword[62]), .A2(codeword[19]), .A3(codeword[53]), 
        .X(n127) );
  STP_EO3_0P5 U151 ( .A1(codeword[65]), .A2(codeword[59]), .A3(n127), .X(n152)
         );
  STP_EO3_0P5 U152 ( .A1(codeword[41]), .A2(codeword[36]), .A3(codeword[51]), 
        .X(n128) );
  STP_AO2BB2_0P5 U153 ( .A1(codeword[16]), .A2(n128), .B1(codeword[16]), .B2(
        n128), .X(n177) );
  STP_EO3_0P5 U154 ( .A1(codeword[29]), .A2(codeword[56]), .A3(n177), .X(n133)
         );
  STP_EO3_0P5 U155 ( .A1(codeword[47]), .A2(codeword[44]), .A3(codeword[38]), 
        .X(n162) );
  STP_EO3_0P5 U156 ( .A1(codeword[13]), .A2(codeword[71]), .A3(codeword[67]), 
        .X(n129) );
  STP_AO2BB2_0P5 U157 ( .A1(codeword[27]), .A2(codeword[49]), .B1(codeword[27]), .B2(codeword[49]), .X(n153) );
  STP_AO2BB2_0P5 U158 ( .A1(codeword[34]), .A2(codeword[31]), .B1(codeword[34]), .B2(codeword[31]), .X(n138) );
  STP_EO3_0P5 U159 ( .A1(n129), .A2(n153), .A3(n138), .X(n131) );
  STP_EO3_0P5 U160 ( .A1(n162), .A2(n131), .A3(n130), .X(n132) );
  STP_EO3_0P5 U161 ( .A1(n152), .A2(n133), .A3(n132), .X(codeword[7]) );
  STP_EO3_0P5 U162 ( .A1(codeword[66]), .A2(codeword[70]), .A3(codeword[39]), 
        .X(n134) );
  STP_EO3_0P5 U163 ( .A1(codeword[25]), .A2(codeword[28]), .A3(n134), .X(n139)
         );
  STP_MUXI2_MG_0P75 U164 ( .D0(codeword[11]), .D1(n156), .S(n135), .X(n136) );
  STP_EN2_S_2 U165 ( .A1(n136), .A2(codeword[20]), .X(n145) );
  STP_EO3_0P5 U166 ( .A1(codeword[55]), .A2(codeword[62]), .A3(n145), .X(n137)
         );
  STP_EO3_0P5 U167 ( .A1(codeword[44]), .A2(codeword[49]), .A3(codeword[46]), 
        .X(n140) );
  STP_EO3_0P5 U168 ( .A1(n141), .A2(n140), .A3(codeword[52]), .X(n142) );
  STP_EO3_0P5 U169 ( .A1(n144), .A2(n143), .A3(n142), .X(codeword[4]) );
  STP_EO3_0P5 U170 ( .A1(codeword[50]), .A2(codeword[35]), .A3(codeword[22]), 
        .X(n146) );
  STP_EO3_0P5 U171 ( .A1(codeword[30]), .A2(n146), .A3(n145), .X(n170) );
  STP_EO3_0P5 U172 ( .A1(codeword[56]), .A2(codeword[46]), .A3(codeword[18]), 
        .X(n155) );
  STP_EO3_0P5 U173 ( .A1(codeword[37]), .A2(n155), .A3(codeword[69]), .X(n150)
         );
  STP_OA2BB2_1 U174 ( .A1(codeword[21]), .A2(codeword[43]), .B1(codeword[43]), 
        .B2(codeword[21]), .X(n147) );
  STP_EO3_1 U175 ( .A1(codeword[26]), .A2(codeword[23]), .A3(n147), .X(n148)
         );
  STP_EO3_0P5 U176 ( .A1(codeword[28]), .A2(codeword[33]), .A3(n148), .X(n149)
         );
  STP_EO3_0P5 U177 ( .A1(n152), .A2(n170), .A3(n151), .X(codeword[6]) );
  STP_EO3_0P5 U178 ( .A1(codeword[10]), .A2(codeword[64]), .A3(n153), .X(n160)
         );
  STP_EO3_0P5 U179 ( .A1(codeword[36]), .A2(codeword[30]), .A3(codeword[60]), 
        .X(n158) );
  STP_AO2BB2_0P5 U180 ( .A1(codeword[67]), .A2(codeword[70]), .B1(codeword[67]), .B2(codeword[70]), .X(n154) );
  STP_AO2BB2_0P5 U181 ( .A1(codeword[39]), .A2(codeword[33]), .B1(codeword[39]), .B2(codeword[33]), .X(n172) );
  STP_EO3_0P5 U182 ( .A1(n155), .A2(n154), .A3(n172), .X(n157) );
  STP_EO3_0P5 U183 ( .A1(n158), .A2(n157), .A3(n156), .X(n159) );
  STP_EO3_0P5 U184 ( .A1(n161), .A2(n160), .A3(n159), .X(codeword[1]) );
  STP_EO3_0P5 U185 ( .A1(codeword[17]), .A2(codeword[53]), .A3(n162), .X(n168)
         );
  STP_EO3_0P5 U186 ( .A1(codeword[27]), .A2(codeword[57]), .A3(n164), .X(n165)
         );
  STP_EO3_0P5 U187 ( .A1(codeword[41]), .A2(codeword[25]), .A3(n165), .X(n166)
         );
  STP_EO3_0P5 U188 ( .A1(n168), .A2(n167), .A3(n166), .X(n171) );
  STP_EO3_0P5 U189 ( .A1(codeword[61]), .A2(codeword[64]), .A3(n169), .X(n179)
         );
  STP_EO3_0P5 U190 ( .A1(n171), .A2(n170), .A3(n179), .X(codeword[2]) );
  STP_EO3_0P5 U191 ( .A1(codeword[31]), .A2(codeword[42]), .A3(codeword[54]), 
        .X(n176) );
  STP_EO3_0P5 U192 ( .A1(codeword[25]), .A2(codeword[28]), .A3(n172), .X(n173)
         );
  STP_EO3_0P5 U193 ( .A1(codeword[45]), .A2(n174), .A3(n173), .X(n175) );
  STP_EO3_0P5 U194 ( .A1(codeword[19]), .A2(n176), .A3(n175), .X(n180) );
  STP_EO3_0P5 U195 ( .A1(codeword[58]), .A2(codeword[22]), .A3(n177), .X(n178)
         );
  STP_EO3_0P5 U196 ( .A1(n180), .A2(n179), .A3(n178), .X(codeword[3]) );
endmodule

