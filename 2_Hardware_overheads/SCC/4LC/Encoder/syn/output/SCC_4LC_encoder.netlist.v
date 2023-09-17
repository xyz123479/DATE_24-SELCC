/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : Q-2019.12-SP5-5
// Date      : Sun Sep 17 23:40:56 2023
/////////////////////////////////////////////////////////////


module SCC_4LC_encoder ( message, codeword );
  input [63:0] message;
  output [70:0] codeword;
  wire   n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162;
  assign codeword[70] = message[63];
  assign codeword[69] = message[62];
  assign codeword[68] = message[61];
  assign codeword[67] = message[60];
  assign codeword[66] = message[59];
  assign codeword[65] = message[58];
  assign codeword[64] = message[57];
  assign codeword[63] = message[56];
  assign codeword[62] = message[55];
  assign codeword[61] = message[54];
  assign codeword[60] = message[53];
  assign codeword[59] = message[52];
  assign codeword[58] = message[51];
  assign codeword[57] = message[50];
  assign codeword[56] = message[49];
  assign codeword[55] = message[48];
  assign codeword[54] = message[47];
  assign codeword[53] = message[46];
  assign codeword[52] = message[45];
  assign codeword[51] = message[44];
  assign codeword[50] = message[43];
  assign codeword[49] = message[42];
  assign codeword[48] = message[41];
  assign codeword[47] = message[40];
  assign codeword[46] = message[39];
  assign codeword[45] = message[38];
  assign codeword[44] = message[37];
  assign codeword[43] = message[36];
  assign codeword[42] = message[35];
  assign codeword[41] = message[34];
  assign codeword[40] = message[33];
  assign codeword[39] = message[32];
  assign codeword[38] = message[31];
  assign codeword[37] = message[30];
  assign codeword[36] = message[29];
  assign codeword[35] = message[28];
  assign codeword[34] = message[27];
  assign codeword[33] = message[26];
  assign codeword[32] = message[25];
  assign codeword[31] = message[24];
  assign codeword[30] = message[23];
  assign codeword[29] = message[22];
  assign codeword[28] = message[21];
  assign codeword[27] = message[20];
  assign codeword[26] = message[19];
  assign codeword[25] = message[18];
  assign codeword[24] = message[17];
  assign codeword[23] = message[16];
  assign codeword[22] = message[15];
  assign codeword[21] = message[14];
  assign codeword[20] = message[13];
  assign codeword[19] = message[12];
  assign codeword[18] = message[11];
  assign codeword[17] = message[10];
  assign codeword[16] = message[9];
  assign codeword[15] = message[8];
  assign codeword[14] = message[7];
  assign codeword[13] = message[6];
  assign codeword[12] = message[5];
  assign codeword[11] = message[4];
  assign codeword[10] = message[3];
  assign codeword[9] = message[2];
  assign codeword[8] = message[1];
  assign codeword[7] = message[0];

  STP_EO3_2 U97 ( .A1(codeword[54]), .A2(codeword[35]), .A3(codeword[51]), .X(
        n128) );
  STP_AO2BB2_0P5 U98 ( .A1(n142), .A2(codeword[37]), .B1(n142), .B2(
        codeword[37]), .X(n145) );
  STP_EO3_2 U99 ( .A1(codeword[44]), .A2(n159), .A3(codeword[40]), .X(n153) );
  STP_EO2_S_0P5 U100 ( .A1(n96), .A2(codeword[63]), .X(n156) );
  STP_EO2_S_0P5 U101 ( .A1(codeword[66]), .A2(codeword[25]), .X(n95) );
  STP_EO2_S_0P5 U102 ( .A1(codeword[47]), .A2(codeword[35]), .X(n93) );
  STP_AO2BB2_V3_1 U103 ( .A1(n108), .A2(n107), .B1(n108), .B2(n107), .X(n144)
         );
  STP_EO3_1 U104 ( .A1(codeword[68]), .A2(n146), .A3(n145), .X(n161) );
  STP_EO2_S_0P5 U105 ( .A1(n110), .A2(codeword[32]), .X(n111) );
  STP_EO2_S_0P5 U106 ( .A1(n124), .A2(n110), .X(n102) );
  STP_INV_S_1 U107 ( .A(codeword[7]), .X(n109) );
  STP_AO2BB2_V3_1 U108 ( .A1(codeword[13]), .A2(codeword[11]), .B1(
        codeword[13]), .B2(codeword[11]), .X(n113) );
  STP_INV_S_1 U109 ( .A(codeword[27]), .X(n108) );
  STP_EO3_3 U110 ( .A1(codeword[22]), .A2(codeword[34]), .A3(codeword[53]), 
        .X(n122) );
  STP_EO2_1 U111 ( .A1(codeword[28]), .A2(codeword[24]), .X(n99) );
  STP_EO2_1 U112 ( .A1(codeword[7]), .A2(codeword[67]), .X(n98) );
  STP_AO2BB2_V3_1 U113 ( .A1(codeword[70]), .A2(codeword[66]), .B1(
        codeword[70]), .B2(codeword[66]), .X(n139) );
  STP_AO2BB2_V3_1 U114 ( .A1(codeword[52]), .A2(codeword[59]), .B1(
        codeword[52]), .B2(codeword[59]), .X(n132) );
  STP_EN2_0P5 U115 ( .A1(codeword[12]), .A2(codeword[46]), .X(n119) );
  STP_EO3_0P5 U116 ( .A1(n93), .A2(codeword[40]), .A3(codeword[42]), .X(n92)
         );
  STP_EO3_0P5 U117 ( .A1(n95), .A2(codeword[64]), .A3(codeword[16]), .X(n94)
         );
  STP_EO3_0P5 U118 ( .A1(n117), .A2(codeword[23]), .A3(codeword[60]), .X(n118)
         );
  STP_EN2_0P5 U119 ( .A1(codeword[21]), .A2(codeword[8]), .X(n117) );
  STP_EO3_0P5 U120 ( .A1(codeword[39]), .A2(codeword[21]), .A3(codeword[8]), 
        .X(n124) );
  STP_INV_S_0P65 U121 ( .A(codeword[69]), .X(n96) );
  STP_OA2BB2_0P5 U122 ( .A1(codeword[28]), .A2(codeword[23]), .B1(codeword[23]), .B2(codeword[28]), .X(n112) );
  STP_EO3_0P5 U123 ( .A1(n145), .A2(n90), .A3(n123), .X(codeword[1]) );
  STP_EN3_1 U124 ( .A1(n91), .A2(n121), .A3(n120), .X(n90) );
  STP_EN3_1 U125 ( .A1(n118), .A2(n94), .A3(n92), .X(n91) );
  STP_EO3_0P5 U126 ( .A1(n131), .A2(n130), .A3(n129), .X(n135) );
  STP_EN3_1 U127 ( .A1(n153), .A2(codeword[50]), .A3(n106), .X(n107) );
  STP_EO3_0P5 U128 ( .A1(codeword[10]), .A2(codeword[36]), .A3(codeword[55]), 
        .X(n138) );
  STP_EN2_0P5 U129 ( .A1(codeword[30]), .A2(n138), .X(n149) );
  STP_EO3_0P5 U130 ( .A1(n119), .A2(codeword[33]), .A3(codeword[65]), .X(n106)
         );
  STP_EO3_0P5 U131 ( .A1(codeword[58]), .A2(codeword[51]), .A3(codeword[34]), 
        .X(n97) );
  STP_EO3_0P5 U132 ( .A1(n106), .A2(n156), .A3(n97), .X(n104) );
  STP_EO3_0P5 U133 ( .A1(codeword[20]), .A2(codeword[45]), .A3(codeword[42]), 
        .X(n110) );
  STP_EO3_0P5 U134 ( .A1(n98), .A2(codeword[15]), .A3(codeword[22]), .X(n101)
         );
  STP_EO3_0P5 U135 ( .A1(n99), .A2(codeword[47]), .A3(codeword[41]), .X(n100)
         );
  STP_EO3_0P5 U136 ( .A1(n102), .A2(n101), .A3(n100), .X(n103) );
  STP_EO3_0P5 U137 ( .A1(n149), .A2(n104), .A3(n103), .X(n105) );
  STP_EO3_0P5 U138 ( .A1(n113), .A2(codeword[48]), .A3(n132), .X(n151) );
  STP_EN2_0P5 U139 ( .A1(n151), .A2(codeword[14]), .X(n123) );
  STP_EO2_S_0P5 U140 ( .A1(n105), .A2(n123), .X(codeword[0]) );
  STP_EO3_0P5 U141 ( .A1(codeword[58]), .A2(codeword[47]), .A3(n128), .X(n159)
         );
  STP_AO2BB2_0P5 U142 ( .A1(codeword[9]), .A2(codeword[57]), .B1(codeword[9]), 
        .B2(codeword[57]), .X(n137) );
  STP_AO2BB2_0P5 U143 ( .A1(codeword[61]), .A2(n137), .B1(codeword[61]), .B2(
        n137), .X(n121) );
  STP_AO2BB2_0P5 U144 ( .A1(codeword[38]), .A2(n109), .B1(codeword[38]), .B2(
        n109), .X(n155) );
  STP_EO3_0P5 U145 ( .A1(n121), .A2(n155), .A3(n111), .X(n131) );
  STP_EO3_0P5 U146 ( .A1(codeword[21]), .A2(codeword[29]), .A3(n112), .X(n115)
         );
  STP_EO3_0P5 U147 ( .A1(codeword[19]), .A2(codeword[41]), .A3(codeword[67]), 
        .X(n148) );
  STP_EO3_0P5 U148 ( .A1(codeword[10]), .A2(n148), .A3(n113), .X(n114) );
  STP_EO3_0P5 U149 ( .A1(n131), .A2(n115), .A3(n114), .X(n116) );
  STP_AO2BB2_0P5 U150 ( .A1(n144), .A2(n116), .B1(n144), .B2(n116), .X(
        codeword[6]) );
  STP_EO3_0P5 U151 ( .A1(codeword[49]), .A2(codeword[31]), .A3(n119), .X(n120)
         );
  STP_EO3_0P5 U152 ( .A1(codeword[29]), .A2(codeword[56]), .A3(n122), .X(n142)
         );
  STP_EO3_0P5 U153 ( .A1(codeword[43]), .A2(n124), .A3(codeword[60]), .X(n136)
         );
  STP_EO3_0P5 U154 ( .A1(codeword[34]), .A2(codeword[53]), .A3(codeword[69]), 
        .X(n125) );
  STP_EO3_0P5 U155 ( .A1(n136), .A2(codeword[26]), .A3(n125), .X(n130) );
  STP_EO3_0P5 U156 ( .A1(codeword[28]), .A2(codeword[23]), .A3(codeword[62]), 
        .X(n146) );
  STP_EO3_2 U157 ( .A1(codeword[65]), .A2(codeword[33]), .A3(codeword[15]), 
        .X(n126) );
  STP_EO3_0P5 U158 ( .A1(codeword[55]), .A2(codeword[17]), .A3(n126), .X(n127)
         );
  STP_EO3_0P5 U159 ( .A1(n128), .A2(n146), .A3(n127), .X(n129) );
  STP_EO3_0P5 U160 ( .A1(codeword[11]), .A2(codeword[49]), .A3(n132), .X(n133)
         );
  STP_EO3_0P5 U161 ( .A1(codeword[50]), .A2(codeword[46]), .A3(n133), .X(n134)
         );
  STP_EO3_0P5 U162 ( .A1(n135), .A2(n139), .A3(n134), .X(codeword[2]) );
  STP_EO3_0P5 U163 ( .A1(codeword[18]), .A2(n136), .A3(codeword[64]), .X(n162)
         );
  STP_EO3_0P5 U164 ( .A1(n138), .A2(codeword[24]), .A3(n137), .X(n141) );
  STP_EO3_0P5 U165 ( .A1(codeword[52]), .A2(codeword[16]), .A3(n139), .X(n140)
         );
  STP_EO3_0P5 U166 ( .A1(n142), .A2(n141), .A3(n140), .X(n143) );
  STP_EO3_0P5 U167 ( .A1(n144), .A2(n162), .A3(n143), .X(codeword[3]) );
  STP_EO3_0P5 U168 ( .A1(codeword[9]), .A2(codeword[17]), .A3(codeword[45]), 
        .X(n147) );
  STP_EO3_0P5 U169 ( .A1(n148), .A2(codeword[25]), .A3(n147), .X(n150) );
  STP_EO3_0P5 U170 ( .A1(n151), .A2(n150), .A3(n149), .X(n152) );
  STP_EO3_0P5 U171 ( .A1(n153), .A2(n161), .A3(n152), .X(codeword[4]) );
  STP_EO3_0P5 U172 ( .A1(codeword[26]), .A2(codeword[49]), .A3(codeword[31]), 
        .X(n154) );
  STP_EO3_0P5 U173 ( .A1(codeword[67]), .A2(n155), .A3(n154), .X(n158) );
  STP_EO3_0P5 U174 ( .A1(codeword[33]), .A2(codeword[13]), .A3(n156), .X(n157)
         );
  STP_EO3_0P5 U175 ( .A1(n159), .A2(n158), .A3(n157), .X(n160) );
  STP_EO3_0P5 U176 ( .A1(n162), .A2(n161), .A3(n160), .X(codeword[5]) );
endmodule

