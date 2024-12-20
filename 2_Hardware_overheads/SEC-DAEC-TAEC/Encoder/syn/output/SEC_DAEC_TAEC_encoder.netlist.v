/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : Q-2019.12-SP5-5
// Date      : Sun Sep 17 23:43:10 2023
/////////////////////////////////////////////////////////////


module SEC_DAEC_TAEC_encoder ( message, codeword );
  input [63:0] message;
  output [71:0] codeword;
  wire   n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152;
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

  STP_EO2_1 U92 ( .A1(n101), .A2(n100), .X(n105) );
  STP_EO2_1 U93 ( .A1(n109), .A2(codeword[55]), .X(n151) );
  STP_EO2_1 U94 ( .A1(n108), .A2(codeword[60]), .X(n120) );
  STP_OA2BB2_0P5 U95 ( .A1(codeword[52]), .A2(n127), .B1(n127), .B2(
        codeword[52]), .X(n88) );
  STP_INV_S_1 U96 ( .A(codeword[9]), .X(n127) );
  STP_EO2_1 U97 ( .A1(codeword[56]), .A2(codeword[24]), .X(n103) );
  STP_EO2_S_0P5 U98 ( .A1(codeword[49]), .A2(codeword[70]), .X(n99) );
  STP_EO2_1 U99 ( .A1(codeword[30]), .A2(codeword[62]), .X(n107) );
  STP_EO3_1 U100 ( .A1(codeword[16]), .A2(codeword[42]), .A3(n91), .X(n92) );
  STP_AO2BB2_V3_1 U101 ( .A1(codeword[20]), .A2(codeword[63]), .B1(
        codeword[20]), .B2(codeword[63]), .X(n91) );
  STP_INV_S_0P65 U102 ( .A(codeword[44]), .X(n85) );
  STP_INV_S_0P65 U103 ( .A(codeword[27]), .X(n115) );
  STP_EO3_0P5 U104 ( .A1(codeword[14]), .A2(n93), .A3(n92), .X(n94) );
  STP_EO2_S_0P5 U105 ( .A1(codeword[32]), .A2(codeword[35]), .X(n98) );
  STP_INV_S_0P65 U106 ( .A(codeword[39]), .X(n102) );
  STP_INV_S_0P65 U107 ( .A(codeword[22]), .X(n106) );
  STP_INV_S_0P65 U108 ( .A(codeword[31]), .X(n108) );
  STP_INV_S_0P65 U109 ( .A(codeword[40]), .X(n109) );
  STP_EO3_1 U110 ( .A1(codeword[16]), .A2(codeword[61]), .A3(codeword[42]), 
        .X(n144) );
  STP_EO3_0P5 U111 ( .A1(n149), .A2(n148), .A3(n147), .X(n150) );
  STP_EO3_0P5 U112 ( .A1(n133), .A2(n149), .A3(n97), .X(codeword[5]) );
  STP_EO3_0P5 U113 ( .A1(codeword[35]), .A2(codeword[57]), .A3(codeword[25]), 
        .X(n84) );
  STP_EO3_0P5 U114 ( .A1(codeword[28]), .A2(codeword[18]), .A3(n84), .X(n126)
         );
  STP_AO2BB2_0P5 U115 ( .A1(n85), .A2(codeword[13]), .B1(n85), .B2(
        codeword[13]), .X(n93) );
  STP_EO3_0P5 U116 ( .A1(codeword[34]), .A2(codeword[59]), .A3(n93), .X(n86)
         );
  STP_AO2BB2_0P5 U117 ( .A1(codeword[46]), .A2(n86), .B1(codeword[46]), .B2(
        n86), .X(n142) );
  STP_AO2BB2_0P5 U118 ( .A1(codeword[50]), .A2(codeword[11]), .B1(codeword[50]), .B2(codeword[11]), .X(n117) );
  STP_EO3_0P5 U119 ( .A1(codeword[39]), .A2(codeword[71]), .A3(n91), .X(n87)
         );
  STP_EO3_1 U120 ( .A1(codeword[21]), .A2(n117), .A3(n87), .X(n89) );
  STP_EO3_0P5 U121 ( .A1(n144), .A2(n89), .A3(n88), .X(n90) );
  STP_EO3_0P5 U122 ( .A1(n126), .A2(n142), .A3(n90), .X(codeword[7]) );
  STP_EO3_0P5 U123 ( .A1(codeword[26]), .A2(codeword[17]), .A3(codeword[43]), 
        .X(n133) );
  STP_AO2BB2_0P5 U124 ( .A1(codeword[10]), .A2(codeword[23]), .B1(codeword[10]), .B2(codeword[23]), .X(n128) );
  STP_AO2BB2_0P5 U125 ( .A1(codeword[58]), .A2(n128), .B1(codeword[58]), .B2(
        n128), .X(n149) );
  STP_EO3_0P5 U126 ( .A1(codeword[33]), .A2(codeword[12]), .A3(codeword[36]), 
        .X(n104) );
  STP_EO3_0P5 U127 ( .A1(n104), .A2(codeword[48]), .A3(codeword[69]), .X(n96)
         );
  STP_AO2BB2_0P5 U128 ( .A1(codeword[54]), .A2(codeword[37]), .B1(codeword[54]), .B2(codeword[37]), .X(n121) );
  STP_EO3_0P5 U129 ( .A1(codeword[28]), .A2(codeword[40]), .A3(n121), .X(n95)
         );
  STP_EO3_0P5 U130 ( .A1(n96), .A2(n95), .A3(n94), .X(n97) );
  STP_EO3_0P5 U131 ( .A1(n98), .A2(codeword[16]), .A3(codeword[29]), .X(n101)
         );
  STP_EO3_0P5 U132 ( .A1(n99), .A2(codeword[46]), .A3(codeword[26]), .X(n100)
         );
  STP_EO3_0P5 U133 ( .A1(n103), .A2(codeword[8]), .A3(n102), .X(n116) );
  STP_EO3_0P5 U134 ( .A1(n105), .A2(n104), .A3(n116), .X(n111) );
  STP_EO3_0P5 U135 ( .A1(n107), .A2(codeword[38]), .A3(n106), .X(n138) );
  STP_EO3_0P5 U136 ( .A1(n138), .A2(n120), .A3(n151), .X(n110) );
  STP_EO2_S_0P5 U137 ( .A1(n111), .A2(n110), .X(codeword[6]) );
  STP_EO3_0P5 U138 ( .A1(codeword[30]), .A2(codeword[17]), .A3(codeword[48]), 
        .X(n114) );
  STP_AO2BB2_0P5 U139 ( .A1(codeword[12]), .A2(codeword[36]), .B1(codeword[12]), .B2(codeword[36]), .X(n112) );
  STP_EO3_0P5 U140 ( .A1(codeword[20]), .A2(codeword[34]), .A3(n112), .X(n113)
         );
  STP_EO3_0P5 U141 ( .A1(codeword[18]), .A2(n114), .A3(n113), .X(n119) );
  STP_AO2BB2_0P5 U142 ( .A1(n115), .A2(codeword[14]), .B1(n115), .B2(
        codeword[14]), .X(n152) );
  STP_AO2BB2_0P5 U143 ( .A1(n152), .A2(codeword[53]), .B1(n152), .B2(
        codeword[53]), .X(n137) );
  STP_EO3_0P5 U144 ( .A1(n117), .A2(codeword[65]), .A3(n116), .X(n118) );
  STP_EO3_0P5 U145 ( .A1(n119), .A2(n137), .A3(n118), .X(codeword[1]) );
  STP_EO3_0P5 U146 ( .A1(codeword[51]), .A2(codeword[15]), .A3(n120), .X(n125)
         );
  STP_EO3_0P5 U147 ( .A1(codeword[10]), .A2(codeword[22]), .A3(codeword[24]), 
        .X(n123) );
  STP_EO3_0P5 U148 ( .A1(codeword[21]), .A2(codeword[12]), .A3(codeword[41]), 
        .X(n129) );
  STP_EO3_0P5 U149 ( .A1(n129), .A2(codeword[66]), .A3(n121), .X(n122) );
  STP_EO3_0P5 U150 ( .A1(codeword[33]), .A2(n123), .A3(n122), .X(n124) );
  STP_EO3_0P5 U151 ( .A1(n126), .A2(n125), .A3(n124), .X(codeword[2]) );
  STP_AO2BB2_0P5 U152 ( .A1(codeword[19]), .A2(n127), .B1(codeword[19]), .B2(
        n127), .X(n136) );
  STP_AO2BB2_0P5 U153 ( .A1(codeword[45]), .A2(n136), .B1(codeword[45]), .B2(
        n136), .X(n147) );
  STP_EO3_0P5 U154 ( .A1(codeword[11]), .A2(codeword[13]), .A3(codeword[52]), 
        .X(n131) );
  STP_EO3_0P5 U155 ( .A1(n129), .A2(codeword[64]), .A3(n128), .X(n130) );
  STP_EO3_0P5 U156 ( .A1(codeword[15]), .A2(n131), .A3(n130), .X(n132) );
  STP_EO3_0P5 U157 ( .A1(n133), .A2(n147), .A3(n132), .X(n135) );
  STP_AO2BB2_0P5 U158 ( .A1(codeword[29]), .A2(codeword[49]), .B1(codeword[29]), .B2(codeword[49]), .X(n134) );
  STP_AO2BB2_0P5 U159 ( .A1(codeword[32]), .A2(codeword[47]), .B1(codeword[32]), .B2(codeword[47]), .X(n140) );
  STP_EO3_0P5 U160 ( .A1(n135), .A2(n134), .A3(n140), .X(codeword[0]) );
  STP_EO3_0P5 U161 ( .A1(codeword[51]), .A2(codeword[15]), .A3(n136), .X(n139)
         );
  STP_EO3_0P5 U162 ( .A1(n139), .A2(n138), .A3(n137), .X(n143) );
  STP_EO3_0P5 U163 ( .A1(codeword[25]), .A2(codeword[68]), .A3(n140), .X(n141)
         );
  STP_EO3_0P5 U164 ( .A1(n143), .A2(n142), .A3(n141), .X(codeword[4]) );
  STP_EO3_0P5 U165 ( .A1(codeword[31]), .A2(codeword[29]), .A3(n144), .X(n146)
         );
  STP_EO3_0P5 U166 ( .A1(codeword[38]), .A2(codeword[8]), .A3(codeword[67]), 
        .X(n145) );
  STP_EO3_0P5 U167 ( .A1(n146), .A2(n145), .A3(codeword[37]), .X(n148) );
  STP_EO3_0P5 U168 ( .A1(n152), .A2(n151), .A3(n150), .X(codeword[3]) );
endmodule

