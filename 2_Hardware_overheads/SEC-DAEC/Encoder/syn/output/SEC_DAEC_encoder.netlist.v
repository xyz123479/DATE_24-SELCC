/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : Q-2019.12-SP5-5
// Date      : Mon Sep 11 18:05:05 2023
/////////////////////////////////////////////////////////////


module SEC_DAEC_encoder ( message, codeword );
  input [63:0] message;
  output [71:0] codeword;
  wire   n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189;
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

  STP_AO2BB2_0P5 U121 ( .A1(codeword[51]), .A2(n121), .B1(codeword[51]), .B2(
        n121), .X(n153) );
  STP_OA2BB2_1 U122 ( .A1(n131), .A2(n138), .B1(n131), .B2(n138), .X(n126) );
  STP_OA2BB2_1 U123 ( .A1(codeword[67]), .A2(codeword[63]), .B1(codeword[63]), 
        .B2(codeword[67]), .X(n152) );
  STP_INV_S_0P65 U124 ( .A(codeword[61]), .X(n128) );
  STP_OA2BB2_0P5 U125 ( .A1(codeword[16]), .A2(n128), .B1(n128), .B2(
        codeword[16]), .X(n119) );
  STP_EO3_1 U126 ( .A1(n139), .A2(n124), .A3(n123), .X(n125) );
  STP_OA2BB2_0P5 U127 ( .A1(codeword[63]), .A2(codeword[54]), .B1(codeword[54]), .B2(codeword[63]), .X(n185) );
  STP_EO3_0P5 U128 ( .A1(codeword[36]), .A2(codeword[24]), .A3(codeword[43]), 
        .X(n120) );
  STP_AO2BB2_0P5 U129 ( .A1(codeword[55]), .A2(codeword[42]), .B1(codeword[55]), .B2(codeword[42]), .X(n174) );
  STP_EO3_0P5 U130 ( .A1(codeword[53]), .A2(codeword[16]), .A3(n174), .X(n169)
         );
  STP_EO3_0P5 U131 ( .A1(codeword[68]), .A2(codeword[8]), .A3(codeword[23]), 
        .X(n113) );
  STP_AO2BB2_0P5 U132 ( .A1(codeword[47]), .A2(n113), .B1(codeword[47]), .B2(
        n113), .X(n170) );
  STP_EO3_0P5 U133 ( .A1(codeword[64]), .A2(codeword[15]), .A3(codeword[31]), 
        .X(n186) );
  STP_EO3_0P5 U134 ( .A1(codeword[24]), .A2(codeword[35]), .A3(n186), .X(n116)
         );
  STP_AO2BB2_0P5 U135 ( .A1(codeword[50]), .A2(codeword[28]), .B1(codeword[50]), .B2(codeword[28]), .X(n129) );
  STP_EO3_0P5 U136 ( .A1(codeword[69]), .A2(codeword[39]), .A3(n129), .X(n114)
         );
  STP_EO3_0P5 U137 ( .A1(codeword[14]), .A2(codeword[71]), .A3(n114), .X(n115)
         );
  STP_EO3_0P5 U138 ( .A1(codeword[21]), .A2(n116), .A3(n115), .X(n117) );
  STP_EO3_0P5 U139 ( .A1(n169), .A2(n170), .A3(n117), .X(n118) );
  STP_AO2BB2_0P5 U140 ( .A1(codeword[57]), .A2(codeword[32]), .B1(codeword[57]), .B2(codeword[32]), .X(n131) );
  STP_AO2BB2_0P5 U141 ( .A1(n152), .A2(codeword[40]), .B1(n152), .B2(
        codeword[40]), .X(n138) );
  STP_AO2BB2_0P5 U142 ( .A1(n118), .A2(n126), .B1(n118), .B2(n126), .X(
        codeword[6]) );
  STP_AO2BB2_0P5 U143 ( .A1(codeword[59]), .A2(codeword[69]), .B1(codeword[59]), .B2(codeword[69]), .X(n151) );
  STP_AO2BB2_0P5 U144 ( .A1(codeword[65]), .A2(codeword[70]), .B1(codeword[65]), .B2(codeword[70]), .X(n144) );
  STP_EO3_0P5 U145 ( .A1(codeword[25]), .A2(n151), .A3(n144), .X(n133) );
  STP_EO3_0P5 U146 ( .A1(n133), .A2(codeword[41]), .A3(codeword[17]), .X(n180)
         );
  STP_AO2BB2_0P5 U147 ( .A1(codeword[29]), .A2(codeword[33]), .B1(codeword[29]), .B2(codeword[33]), .X(n139) );
  STP_EO3_0P5 U148 ( .A1(codeword[60]), .A2(codeword[15]), .A3(n119), .X(n124)
         );
  STP_EO3_0P5 U149 ( .A1(codeword[54]), .A2(codeword[55]), .A3(n120), .X(n121)
         );
  STP_EO3_2 U150 ( .A1(codeword[22]), .A2(codeword[8]), .A3(n153), .X(n122) );
  STP_EO3_0P5 U151 ( .A1(codeword[48]), .A2(codeword[9]), .A3(n122), .X(n123)
         );
  STP_EO3_0P5 U152 ( .A1(n180), .A2(n126), .A3(n125), .X(n127) );
  STP_INV_S_0P65 U153 ( .A(n127), .X(codeword[5]) );
  STP_EO3_0P5 U154 ( .A1(codeword[58]), .A2(codeword[56]), .A3(n128), .X(n168)
         );
  STP_AO2BB2_0P5 U155 ( .A1(codeword[12]), .A2(n168), .B1(codeword[12]), .B2(
        n168), .X(n155) );
  STP_EO3_0P5 U156 ( .A1(codeword[13]), .A2(n155), .A3(codeword[21]), .X(n147)
         );
  STP_AO2BB2_0P5 U157 ( .A1(codeword[18]), .A2(codeword[37]), .B1(codeword[18]), .B2(codeword[37]), .X(n172) );
  STP_EO3_0P5 U158 ( .A1(codeword[64]), .A2(codeword[62]), .A3(n129), .X(n130)
         );
  STP_EO3_0P5 U159 ( .A1(n172), .A2(n131), .A3(n130), .X(n137) );
  STP_EO3_0P5 U160 ( .A1(codeword[36]), .A2(codeword[67]), .A3(codeword[29]), 
        .X(n135) );
  STP_EO3_0P5 U161 ( .A1(codeword[45]), .A2(codeword[47]), .A3(codeword[44]), 
        .X(n132) );
  STP_EO3_0P5 U162 ( .A1(n133), .A2(codeword[11]), .A3(n132), .X(n134) );
  STP_AO2BB2_0P5 U163 ( .A1(codeword[52]), .A2(codeword[20]), .B1(codeword[52]), .B2(codeword[20]), .X(n181) );
  STP_EO3_0P5 U164 ( .A1(n135), .A2(n134), .A3(n181), .X(n136) );
  STP_EO3_0P5 U165 ( .A1(n147), .A2(n137), .A3(n136), .X(codeword[1]) );
  STP_EO3_0P5 U166 ( .A1(codeword[19]), .A2(codeword[51]), .A3(n138), .X(n146)
         );
  STP_AO2BB2_0P5 U167 ( .A1(codeword[62]), .A2(codeword[66]), .B1(codeword[62]), .B2(codeword[66]), .X(n148) );
  STP_AO2BB2_0P5 U168 ( .A1(codeword[45]), .A2(codeword[48]), .B1(codeword[45]), .B2(codeword[48]), .X(n158) );
  STP_EO3_0P5 U169 ( .A1(n148), .A2(n158), .A3(n139), .X(n143) );
  STP_EO3_0P5 U170 ( .A1(codeword[53]), .A2(codeword[46]), .A3(codeword[26]), 
        .X(n141) );
  STP_AO2BB2_0P5 U171 ( .A1(codeword[38]), .A2(codeword[68]), .B1(codeword[38]), .B2(codeword[68]), .X(n163) );
  STP_EO3_0P5 U172 ( .A1(codeword[14]), .A2(codeword[30]), .A3(n163), .X(n140)
         );
  STP_EO3_0P5 U173 ( .A1(codeword[57]), .A2(codeword[22]), .A3(n140), .X(n188)
         );
  STP_EO3_0P5 U174 ( .A1(codeword[37]), .A2(n141), .A3(n188), .X(n142) );
  STP_EO3_0P5 U175 ( .A1(n144), .A2(n143), .A3(n142), .X(n145) );
  STP_EO3_0P5 U176 ( .A1(n147), .A2(n146), .A3(n145), .X(codeword[0]) );
  STP_AO2BB2_0P5 U177 ( .A1(codeword[60]), .A2(codeword[71]), .B1(codeword[60]), .B2(codeword[71]), .X(n162) );
  STP_EO3_0P5 U178 ( .A1(codeword[49]), .A2(n148), .A3(n162), .X(n175) );
  STP_EO3_0P5 U179 ( .A1(codeword[46]), .A2(n175), .A3(codeword[39]), .X(n189)
         );
  STP_EO3_0P5 U180 ( .A1(codeword[19]), .A2(codeword[27]), .A3(codeword[35]), 
        .X(n149) );
  STP_AO2BB2_0P5 U181 ( .A1(codeword[11]), .A2(n149), .B1(codeword[11]), .B2(
        n149), .X(n161) );
  STP_EO3_0P5 U182 ( .A1(codeword[28]), .A2(codeword[17]), .A3(n161), .X(n157)
         );
  STP_AO2BB2_0P5 U183 ( .A1(codeword[44]), .A2(codeword[10]), .B1(codeword[44]), .B2(codeword[10]), .X(n171) );
  STP_EO3_0P5 U184 ( .A1(codeword[20]), .A2(codeword[70]), .A3(n171), .X(n150)
         );
  STP_EO3_0P5 U185 ( .A1(n152), .A2(n151), .A3(n150), .X(n154) );
  STP_EO3_0P5 U186 ( .A1(n155), .A2(n154), .A3(n153), .X(n156) );
  STP_EO3_0P5 U187 ( .A1(n189), .A2(n157), .A3(n156), .X(codeword[2]) );
  STP_EO3_0P5 U188 ( .A1(codeword[26]), .A2(codeword[9]), .A3(codeword[34]), 
        .X(n173) );
  STP_EO3_0P5 U189 ( .A1(codeword[50]), .A2(codeword[43]), .A3(n173), .X(n166)
         );
  STP_EO3_0P5 U190 ( .A1(codeword[59]), .A2(codeword[65]), .A3(n158), .X(n159)
         );
  STP_EO3_0P5 U191 ( .A1(codeword[18]), .A2(codeword[10]), .A3(n159), .X(n160)
         );
  STP_EO3_0P5 U192 ( .A1(codeword[66]), .A2(codeword[31]), .A3(n160), .X(n165)
         );
  STP_EO3_0P5 U193 ( .A1(n163), .A2(n162), .A3(n161), .X(n164) );
  STP_EO3_0P5 U194 ( .A1(n166), .A2(n165), .A3(n164), .X(n167) );
  STP_EO3_0P5 U195 ( .A1(n169), .A2(n168), .A3(n167), .X(codeword[3]) );
  STP_EO3_0P5 U196 ( .A1(codeword[56]), .A2(codeword[33]), .A3(n170), .X(n179)
         );
  STP_EO3_0P5 U197 ( .A1(n173), .A2(n172), .A3(n171), .X(n177) );
  STP_EO3_0P5 U198 ( .A1(codeword[30]), .A2(n175), .A3(n174), .X(n176) );
  STP_EO3_0P5 U199 ( .A1(codeword[52]), .A2(n177), .A3(n176), .X(n178) );
  STP_EO3_0P5 U200 ( .A1(n180), .A2(n179), .A3(n178), .X(codeword[4]) );
  STP_EO3_0P5 U201 ( .A1(codeword[58]), .A2(codeword[27]), .A3(n181), .X(n182)
         );
  STP_EO3_0P5 U202 ( .A1(codeword[23]), .A2(codeword[34]), .A3(n182), .X(n183)
         );
  STP_EO3_0P5 U203 ( .A1(codeword[13]), .A2(codeword[41]), .A3(n183), .X(n184)
         );
  STP_EO3_0P5 U204 ( .A1(n186), .A2(n185), .A3(n184), .X(n187) );
  STP_EO3_0P5 U205 ( .A1(n189), .A2(n188), .A3(n187), .X(codeword[7]) );
endmodule

