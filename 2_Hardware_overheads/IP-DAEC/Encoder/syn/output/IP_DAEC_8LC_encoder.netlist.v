/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : Q-2019.12-SP5-5
// Date      : Mon Sep 11 18:01:55 2023
/////////////////////////////////////////////////////////////


module IP_DAEC_8LC_encoder ( message, IP_word, IP, codeword );
  input [63:0] message;
  output [21:0] IP_word;
  output [48:0] codeword;
  output IP;
  wire   n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123;
  assign IP_word[21] = message[63];
  assign IP_word[20] = message[60];
  assign IP_word[19] = message[57];
  assign IP_word[18] = message[54];
  assign IP_word[17] = message[51];
  assign IP_word[16] = message[48];
  assign IP_word[15] = message[45];
  assign IP_word[14] = message[42];
  assign IP_word[13] = message[39];
  assign IP_word[12] = message[36];
  assign IP_word[11] = message[33];
  assign IP_word[10] = message[30];
  assign IP_word[9] = message[27];
  assign IP_word[8] = message[24];
  assign IP_word[7] = message[21];
  assign IP_word[6] = message[18];
  assign IP_word[5] = message[15];
  assign IP_word[4] = message[12];
  assign IP_word[3] = message[9];
  assign IP_word[2] = message[6];
  assign IP_word[1] = message[3];
  assign IP_word[0] = message[0];
  assign codeword[48] = message[62];
  assign codeword[47] = message[61];
  assign codeword[46] = message[59];
  assign codeword[45] = message[58];
  assign codeword[44] = message[56];
  assign codeword[43] = message[55];
  assign codeword[42] = message[53];
  assign codeword[41] = message[52];
  assign codeword[40] = message[50];
  assign codeword[39] = message[49];
  assign codeword[38] = message[47];
  assign codeword[37] = message[46];
  assign codeword[36] = message[44];
  assign codeword[35] = message[43];
  assign codeword[34] = message[41];
  assign codeword[33] = message[40];
  assign codeword[32] = message[38];
  assign codeword[31] = message[37];
  assign codeword[30] = message[35];
  assign codeword[29] = message[34];
  assign codeword[28] = message[32];
  assign codeword[27] = message[31];
  assign codeword[26] = message[29];
  assign codeword[25] = message[28];
  assign codeword[24] = message[26];
  assign codeword[23] = message[25];
  assign codeword[22] = message[23];
  assign codeword[21] = message[22];
  assign codeword[20] = message[20];
  assign codeword[19] = message[19];
  assign codeword[18] = message[17];
  assign codeword[17] = message[16];
  assign codeword[16] = message[14];
  assign codeword[15] = message[13];
  assign codeword[14] = message[11];
  assign codeword[13] = message[10];
  assign codeword[12] = message[8];
  assign codeword[11] = message[7];
  assign codeword[10] = message[5];
  assign codeword[9] = message[4];
  assign codeword[8] = message[2];
  assign codeword[7] = message[1];

  STP_ND4_MM_1 U79 ( .A1(IP_word[0]), .A2(IP_word[1]), .A3(IP_word[5]), .A4(
        IP_word[13]), .X(n82) );
  STP_INV_S_0P65 U80 ( .A(codeword[28]), .X(n76) );
  STP_ND4_0P5 U81 ( .A1(IP_word[10]), .A2(IP_word[8]), .A3(IP_word[3]), .A4(
        IP_word[15]), .X(n83) );
  STP_ND4_0P5 U82 ( .A1(IP_word[11]), .A2(IP_word[19]), .A3(IP_word[14]), .A4(
        IP_word[18]), .X(n84) );
  STP_OA2BB2_0P5 U83 ( .A1(codeword[20]), .A2(codeword[47]), .B1(codeword[47]), 
        .B2(codeword[20]), .X(n71) );
  STP_OA2BB2_0P5 U84 ( .A1(codeword[12]), .A2(codeword[32]), .B1(codeword[32]), 
        .B2(codeword[12]), .X(n113) );
  STP_ND4_MM_1 U85 ( .A1(IP_word[9]), .A2(IP_word[2]), .A3(IP_word[6]), .A4(
        IP_word[7]), .X(n86) );
  STP_NR4_0P5 U86 ( .A1(n85), .A2(n84), .A3(n83), .A4(n82), .X(n87) );
  STP_ND4_0P5 U87 ( .A1(IP_word[16]), .A2(IP_word[4]), .A3(IP_word[12]), .A4(
        IP_word[17]), .X(n85) );
  STP_AO2BB2_0P5 U88 ( .A1(codeword[44]), .A2(codeword[18]), .B1(codeword[44]), 
        .B2(codeword[18]), .X(n117) );
  STP_AO2BB2_0P5 U89 ( .A1(codeword[32]), .A2(codeword[8]), .B1(codeword[32]), 
        .B2(codeword[8]), .X(n100) );
  STP_EO3_0P5 U90 ( .A1(codeword[25]), .A2(n117), .A3(n100), .X(n79) );
  STP_EO3_0P5 U91 ( .A1(codeword[37]), .A2(codeword[36]), .A3(codeword[23]), 
        .X(n99) );
  STP_EO3_0P5 U92 ( .A1(codeword[27]), .A2(codeword[43]), .A3(n99), .X(n74) );
  STP_EO3_0P5 U93 ( .A1(n71), .A2(codeword[48]), .A3(codeword[30]), .X(n72) );
  STP_AO2BB2_0P5 U94 ( .A1(codeword[9]), .A2(codeword[33]), .B1(codeword[9]), 
        .B2(codeword[33]), .X(n77) );
  STP_AO2BB2_0P5 U95 ( .A1(codeword[42]), .A2(codeword[26]), .B1(codeword[42]), 
        .B2(codeword[26]), .X(n102) );
  STP_EO3_0P5 U96 ( .A1(n72), .A2(n77), .A3(n102), .X(n73) );
  STP_EO3_0P5 U97 ( .A1(n79), .A2(n74), .A3(n73), .X(n75) );
  STP_EO3_0P5 U98 ( .A1(codeword[17]), .A2(codeword[31]), .A3(codeword[7]), 
        .X(n123) );
  STP_AO2BB2_0P5 U99 ( .A1(n123), .A2(codeword[14]), .B1(n123), .B2(
        codeword[14]), .X(n91) );
  STP_AO2BB2_0P5 U100 ( .A1(n75), .A2(n91), .B1(n75), .B2(n91), .X(codeword[2]) );
  STP_EO3_0P5 U101 ( .A1(codeword[34]), .A2(codeword[27]), .A3(codeword[19]), 
        .X(n111) );
  STP_EO3_0P5 U102 ( .A1(n111), .A2(codeword[21]), .A3(codeword[37]), .X(n92)
         );
  STP_AO2BB2_0P5 U103 ( .A1(n76), .A2(codeword[45]), .B1(n76), .B2(
        codeword[45]), .X(n94) );
  STP_EO3_0P5 U104 ( .A1(codeword[38]), .A2(n94), .A3(n77), .X(n115) );
  STP_AO2BB2_0P5 U105 ( .A1(codeword[11]), .A2(n115), .B1(codeword[11]), .B2(
        n115), .X(n106) );
  STP_EO3_0P5 U106 ( .A1(n106), .A2(codeword[24]), .A3(codeword[48]), .X(n122)
         );
  STP_EO3_0P5 U107 ( .A1(codeword[31]), .A2(codeword[10]), .A3(codeword[15]), 
        .X(n78) );
  STP_EO3_0P5 U108 ( .A1(codeword[39]), .A2(codeword[26]), .A3(n78), .X(n80)
         );
  STP_AO2BB2_0P5 U109 ( .A1(codeword[41]), .A2(n79), .B1(codeword[41]), .B2(
        n79), .X(n88) );
  STP_EO3_0P5 U110 ( .A1(n122), .A2(n80), .A3(n88), .X(n81) );
  STP_AO2BB2_0P5 U111 ( .A1(n92), .A2(n81), .B1(n92), .B2(n81), .X(codeword[3]) );
  STP_AN4B_0P5 U112 ( .B1(IP_word[20]), .B2(IP_word[21]), .B3(n87), .A(n86), 
        .X(IP) );
  STP_AO2BB2_0P5 U113 ( .A1(codeword[10]), .A2(codeword[43]), .B1(codeword[10]), .B2(codeword[43]), .X(n109) );
  STP_AO2BB2_0P5 U114 ( .A1(codeword[46]), .A2(codeword[40]), .B1(codeword[46]), .B2(codeword[40]), .X(n103) );
  STP_EO3_0P5 U115 ( .A1(codeword[45]), .A2(n109), .A3(n103), .X(n89) );
  STP_EO3_0P5 U116 ( .A1(codeword[12]), .A2(codeword[39]), .A3(n88), .X(n108)
         );
  STP_EO3_0P5 U117 ( .A1(codeword[11]), .A2(n89), .A3(n108), .X(n90) );
  STP_EO3_0P5 U118 ( .A1(n92), .A2(n91), .A3(n90), .X(codeword[0]) );
  STP_AO2BB2_0P5 U119 ( .A1(codeword[20]), .A2(codeword[13]), .B1(codeword[20]), .B2(codeword[13]), .X(n110) );
  STP_EO3_0P5 U120 ( .A1(codeword[12]), .A2(codeword[39]), .A3(n110), .X(n119)
         );
  STP_EO3_0P5 U121 ( .A1(codeword[40]), .A2(codeword[33]), .A3(codeword[15]), 
        .X(n97) );
  STP_AO2BB2_0P5 U122 ( .A1(codeword[31]), .A2(codeword[7]), .B1(codeword[31]), 
        .B2(codeword[7]), .X(n93) );
  STP_EO3_0P5 U123 ( .A1(n94), .A2(codeword[47]), .A3(n93), .X(n95) );
  STP_EO3_0P5 U124 ( .A1(codeword[27]), .A2(codeword[19]), .A3(n95), .X(n96)
         );
  STP_EO3_0P5 U125 ( .A1(codeword[18]), .A2(n97), .A3(n96), .X(n98) );
  STP_EO3_0P5 U126 ( .A1(n99), .A2(n119), .A3(n98), .X(n101) );
  STP_AO2BB2_0P5 U127 ( .A1(codeword[35]), .A2(codeword[29]), .B1(codeword[35]), .B2(codeword[29]), .X(n104) );
  STP_EO3_0P5 U128 ( .A1(n101), .A2(n100), .A3(n104), .X(codeword[5]) );
  STP_EO3_0P5 U129 ( .A1(codeword[22]), .A2(n103), .A3(n102), .X(n116) );
  STP_EO3_0P5 U130 ( .A1(codeword[20]), .A2(codeword[47]), .A3(n104), .X(n105)
         );
  STP_EO3_0P5 U131 ( .A1(codeword[19]), .A2(n106), .A3(n105), .X(n107) );
  STP_EO3_0P5 U132 ( .A1(n116), .A2(n108), .A3(n107), .X(codeword[1]) );
  STP_AO2BB2_0P5 U133 ( .A1(codeword[16]), .A2(n109), .B1(codeword[16]), .B2(
        n109), .X(n120) );
  STP_EO3_0P5 U134 ( .A1(n111), .A2(codeword[35]), .A3(n110), .X(n112) );
  STP_EO3_0P5 U135 ( .A1(n120), .A2(n113), .A3(n112), .X(n114) );
  STP_EO3_0P5 U136 ( .A1(n116), .A2(n115), .A3(n114), .X(codeword[4]) );
  STP_EO3_0P5 U137 ( .A1(codeword[30]), .A2(codeword[36]), .A3(n117), .X(n118)
         );
  STP_EO3_0P5 U138 ( .A1(n120), .A2(n119), .A3(n118), .X(n121) );
  STP_EO3_0P5 U139 ( .A1(n123), .A2(n122), .A3(n121), .X(codeword[6]) );
endmodule

