/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : Q-2019.12-SP5-5
// Date      : Mon Sep 11 21:13:47 2023
/////////////////////////////////////////////////////////////


module SCC_4LC_decoder ( codeword, message, error_type_result );
  input [70:0] codeword;
  output [63:0] message;
  output [1:0] error_type_result;
  wire   n577, n578, n579, n580, n581, n582, n583, n584, n585, n586, n587,
         n588, n589, n590, n591, n592, n593, n594, n595, n596, n597, n598,
         n599, n600, n601, n602, n603, n604, n605, n606, n607, n608, n609,
         n610, n611, n612, n613, n614, n615, n616, n617, n618, n619, n620,
         n621, n622, n623, n624, n625, n626, n627, n628, n629, n630, n631,
         n632, n633, n634, n635, n636, n637, n638, n639, n640, n641, n642,
         n643, n644, n645, n646, n647, n648, n649, n650, n651, n652, n653,
         n654, n655, n656, n657, n658, n659, n660, n661, n662, n663, n664,
         n665, n666, n667, n668, n669, n670, n671, n672, n673, n674, n675,
         n676, n677, n678, n679, n680, n681, n682, n683, n684, n685, n686,
         n687, n688, n689, n690, n691, n692, n693, n694, n695, n696, n697,
         n698, n699, n700, n701, n702, n703, n704, n705, n706, n707, n708,
         n709, n710, n711, n712, n713, n714, n715, n716, n717, n718, n719,
         n720, n721, n722, n723, n724, n725, n726, n727, n728, n729, n730,
         n731, n732, n733, n734, n735, n736, n737, n738, n739, n740, n741,
         n742, n743, n744, n745, n746, n747, n748, n749, n750, n751, n752,
         n753, n754, n755, n756, n757, n758, n759, n760, n761, n762, n763,
         n764, n765, n766, n767, n768, n769, n770, n771, n772, n773, n774,
         n775, n776, n777, n778, n779, n780, n781, n782, n783, n784, n785,
         n786, n787, n788, n789, n790, n791, n792, n793, n794, n795, n796,
         n797, n798, n799, n800, n801, n802, n803, n804, n805, n806, n807,
         n808, n809, n810, n811, n812, n813, n814, n815, n816, n817, n818,
         n819, n820, n821, n822, n823, n824, n825, n826, n827, n828, n829,
         n830, n831, n832, n833, n834, n835, n836, n837, n838, n839, n840,
         n841, n842, n843, n844, n845, n846, n847, n848, n849, n850, n851,
         n852, n853, n854, n855, n856, n857, n858, n859, n860, n861, n862,
         n863, n864, n865, n866, n867, n868, n869, n870, n871, n872, n873,
         n874, n875, n876, n877, n878, n879, n880, n881, n882, n883, n884,
         n885, n886, n887, n888, n889, n890, n891, n892, n893, n894, n895,
         n896, n897, n898, n899, n900, n901, n902, n903, n904, n905, n906,
         n907, n908, n909, n910, n911, n912, n913, n914, n915, n916, n917,
         n918, n919, n920, n921, n922, n923, n924, n925, n926, n927, n928,
         n929, n930, n931, n932, n933, n934, n935, n936, n937, n938, n939,
         n940, n941, n942, n943, n944, n945, n946, n947, n948, n949, n950,
         n951, n952, n953, n954, n955, n956, n957, n958, n959, n960, n961,
         n962, n963, n964, n965, n966, n967, n968, n969, n970, n971, n972,
         n973, n974, n975, n976, n977, n978, n979, n980, n981, n982, n983,
         n984, n985, n986, n987, n988, n989, n990, n991, n992, n993, n994,
         n995, n996, n997, n998, n999, n1000, n1001, n1002, n1003, n1004,
         n1005, n1006, n1007, n1008, n1009, n1010, n1011, n1012, n1013, n1014,
         n1015, n1016, n1017, n1018, n1019, n1020, n1021, n1022, n1023, n1024,
         n1025, n1026, n1027, n1028, n1029, n1030, n1031, n1032, n1033, n1034,
         n1035, n1036, n1037, n1038, n1039, n1040, n1041, n1042, n1043, n1044,
         n1045, n1046, n1047, n1048, n1049, n1050, n1051, n1052, n1053, n1054,
         n1055, n1056, n1057, n1058, n1059, n1060, n1061, n1062, n1063, n1064,
         n1065, n1066, n1067, n1068, n1069, n1070, n1071, n1072, n1073, n1074,
         n1075, n1076, n1077, n1078, n1079, n1080, n1081, n1082, n1083, n1084,
         n1085, n1086, n1087, n1088, n1089, n1090, n1091, n1092, n1093, n1094,
         n1095, n1096, n1097, n1098, n1099, n1100, n1101, n1102, n1103, n1104;

  STP_NR2_1 U579 ( .A1(n1100), .A2(n1068), .X(n1064) );
  STP_ND2_S_2 U580 ( .A1(n959), .A2(n992), .X(n1091) );
  STP_INV_S_1 U581 ( .A(n1023), .X(n1102) );
  STP_ND2_S_2 U582 ( .A1(n987), .A2(n980), .X(n1077) );
  STP_INV_S_1 U583 ( .A(n1049), .X(n1094) );
  STP_INV_1P5 U584 ( .A(n999), .X(n1014) );
  STP_NR2_1 U585 ( .A1(n985), .A2(n1013), .X(n1049) );
  STP_INV_2 U586 ( .A(n1039), .X(n1103) );
  STP_INV_1P5 U587 ( .A(n990), .X(n987) );
  STP_NR2_1 U588 ( .A1(n997), .A2(n986), .X(n1033) );
  STP_ND2_G_1 U589 ( .A1(n722), .A2(n721), .X(error_type_result[1]) );
  STP_NR2_3 U590 ( .A1(n862), .A2(n861), .X(n991) );
  STP_ND2_S_2 U591 ( .A1(n823), .A2(n822), .X(n990) );
  STP_BUF_S_3 U592 ( .A(n1004), .X(n578) );
  STP_ND2_S_1 U593 ( .A1(n860), .A2(n859), .X(n861) );
  STP_ND2_G_1 U594 ( .A1(n955), .A2(n954), .X(n956) );
  STP_NR4_1 U595 ( .A1(n821), .A2(n820), .A3(n893), .A4(n819), .X(n822) );
  STP_MUXI2_MG_0P75 U596 ( .D0(n802), .D1(n801), .S(n927), .X(n823) );
  STP_NR3_G_1 U597 ( .A1(n848), .A2(n847), .A3(n846), .X(n849) );
  STP_INV_S_1 U598 ( .A(n749), .X(n935) );
  STP_INV_S_1 U599 ( .A(n962), .X(n927) );
  STP_INV_S_1 U600 ( .A(n968), .X(n851) );
  STP_INV_S_1 U601 ( .A(n965), .X(n918) );
  STP_ND2_S_1 U602 ( .A1(n971), .A2(n943), .X(n850) );
  STP_INV_S_1 U603 ( .A(n886), .X(n943) );
  STP_BUF_S_5 U604 ( .A(n644), .X(n962) );
  STP_BUF_S_6 U605 ( .A(n629), .X(n950) );
  STP_EO3_1 U606 ( .A1(n595), .A2(n594), .A3(n593), .X(n601) );
  STP_EO3_0P5 U607 ( .A1(n632), .A2(n622), .A3(n611), .X(n680) );
  STP_INV_S_0P65 U608 ( .A(n625), .X(n626) );
  STP_INV_S_0P65 U609 ( .A(n654), .X(n615) );
  STP_EN2_0P5 U610 ( .A1(n660), .A2(codeword[22]), .X(n696) );
  STP_EO3_0P5 U611 ( .A1(n592), .A2(codeword[29]), .A3(codeword[68]), .X(n593)
         );
  STP_EO3_0P5 U612 ( .A1(n663), .A2(codeword[33]), .A3(codeword[27]), .X(n664)
         );
  STP_EN2_S_1 U613 ( .A1(n631), .A2(n670), .X(n654) );
  STP_EO3_1 U614 ( .A1(n621), .A2(n652), .A3(n692), .X(n659) );
  STP_EN2_0P5 U615 ( .A1(codeword[63]), .A2(codeword[15]), .X(n705) );
  STP_EO3_1 U616 ( .A1(n605), .A2(codeword[56]), .A3(codeword[25]), .X(n608)
         );
  STP_EO3_2 U617 ( .A1(n674), .A2(n596), .A3(n647), .X(n625) );
  STP_EO2_S_0P5 U618 ( .A1(codeword[53]), .A2(codeword[45]), .X(n606) );
  STP_EO3_1 U619 ( .A1(n579), .A2(codeword[3]), .A3(codeword[50]), .X(n580) );
  STP_EO3_0P5 U620 ( .A1(n603), .A2(codeword[41]), .A3(codeword[30]), .X(n670)
         );
  STP_EO2_1 U621 ( .A1(codeword[37]), .A2(codeword[62]), .X(n605) );
  STP_EN2_S_1 U622 ( .A1(codeword[51]), .A2(codeword[9]), .X(n618) );
  STP_EN2_S_1 U623 ( .A1(codeword[66]), .A2(codeword[57]), .X(n691) );
  STP_EN2_0P5 U624 ( .A1(codeword[54]), .A2(codeword[43]), .X(n617) );
  STP_EO2_S_2 U625 ( .A1(codeword[23]), .A2(codeword[35]), .X(n622) );
  STP_EN2_S_2 U626 ( .A1(codeword[53]), .A2(codeword[60]), .X(n597) );
  STP_EN2_S_2 U627 ( .A1(codeword[39]), .A2(codeword[33]), .X(n591) );
  STP_INV_S_0P65 U628 ( .A(codeword[67]), .X(n589) );
  STP_INV_S_1 U629 ( .A(n622), .X(n639) );
  STP_EO2_S_2 U630 ( .A1(codeword[11]), .A2(codeword[42]), .X(n637) );
  STP_EO3_0P5 U631 ( .A1(n679), .A2(n678), .A3(n708), .X(n684) );
  STP_EN3_1 U632 ( .A1(n637), .A2(codeword[12]), .A3(n636), .X(n657) );
  STP_EO2_S_2 U633 ( .A1(codeword[34]), .A2(codeword[8]), .X(n647) );
  STP_AOI22_0P5 U634 ( .A1(n858), .A2(n918), .B1(n857), .B2(n887), .X(n859) );
  STP_NR2_G_0P5 U635 ( .A1(n817), .A2(n887), .X(n824) );
  STP_MUXI2_MG_0P75 U636 ( .D0(n761), .D1(n760), .S(n962), .X(n762) );
  STP_INV_S_1 U637 ( .A(n1013), .X(n1034) );
  STP_NR2_G_0P5 U638 ( .A1(n1098), .A2(n1044), .X(n996) );
  STP_AOI22_0P5 U639 ( .A1(n1069), .A2(n1084), .B1(n1067), .B2(n1077), .X(n981) );
  STP_ND4_MM_1P5 U640 ( .A1(n737), .A2(n736), .A3(n735), .A4(n734), .X(
        error_type_result[0]) );
  STP_NR2_G_0P8 U641 ( .A1(n1024), .A2(n1077), .X(n1017) );
  STP_NR2_G_0P8 U642 ( .A1(n1024), .A2(n1054), .X(n1021) );
  STP_NR2_G_0P8 U643 ( .A1(n1024), .A2(n1068), .X(n1022) );
  STP_NR2_G_0P8 U644 ( .A1(n1024), .A2(n1059), .X(n1016) );
  STP_NR2_G_0P8 U645 ( .A1(n1024), .A2(n1084), .X(n1018) );
  STP_AOI22_0P75 U646 ( .A1(n1069), .A2(n1091), .B1(n1084), .B2(n1067), .X(
        n958) );
  STP_NR2_G_0P8 U647 ( .A1(n1092), .A2(n1084), .X(n1085) );
  STP_NR2_1 U648 ( .A1(n1092), .A2(n1091), .X(n1093) );
  STP_NR2_G_0P5 U649 ( .A1(n1103), .A2(n1059), .X(n1060) );
  STP_ND2_G_2 U650 ( .A1(n959), .A2(n578), .X(n1059) );
  STP_AOI22_0P75 U651 ( .A1(n1049), .A2(n1048), .B1(n1047), .B2(n1046), .X(
        n1071) );
  STP_NR2_G_0P5 U652 ( .A1(n1081), .A2(n1084), .X(n1082) );
  STP_OR3B_2 U653 ( .B1(n987), .B2(n578), .A(n991), .X(n1084) );
  STP_NR2B_2 U654 ( .A(n990), .B(n991), .X(n959) );
  STP_INV_3 U655 ( .A(n578), .X(n992) );
  STP_NR2_G_2 U656 ( .A1(n763), .A2(n762), .X(n997) );
  STP_NR2B_3 U657 ( .A(error_type_result[1]), .B(error_type_result[0]), .X(
        n1047) );
  STP_NR2_3 U658 ( .A1(n957), .A2(n956), .X(n1013) );
  STP_AO21B_1 U659 ( .A1(n747), .A2(n577), .B(n746), .X(n763) );
  STP_NR2_1 U660 ( .A1(n978), .A2(n977), .X(n982) );
  STP_NR2_G_0P8 U661 ( .A1(n966), .A2(n965), .X(n978) );
  STP_OAOI211_0P5 U662 ( .A1(n964), .A2(n963), .B(n962), .C(n961), .X(n966) );
  STP_NR2_G_0P5 U663 ( .A1(n889), .A2(n947), .X(n890) );
  STP_OAI22_0P5 U664 ( .A1(n866), .A2(n616), .B1(n938), .B2(n828), .X(n829) );
  STP_INV_S_0P65 U665 ( .A(n915), .X(n835) );
  STP_OAOI211_1 U666 ( .A1(n714), .A2(n817), .B(n685), .C(n875), .X(n687) );
  STP_AOI21_1 U667 ( .A1(n938), .A2(n775), .B(n774), .X(n776) );
  STP_ND2_S_1 U668 ( .A1(n896), .A2(n946), .X(n913) );
  STP_OAOI211_1 U669 ( .A1(n931), .A2(n753), .B(n843), .C(n715), .X(n716) );
  STP_ND2_S_2 U670 ( .A1(n883), .A2(n851), .X(n914) );
  STP_NR2_G_0P8 U671 ( .A1(n817), .A2(n946), .X(n930) );
  STP_ND2_S_1 U672 ( .A1(n756), .A2(n616), .X(n789) );
  STP_NR2_1 U673 ( .A1(n772), .A2(n828), .X(n863) );
  STP_INV_4 U674 ( .A(n922), .X(n828) );
  STP_INV_S_5 U675 ( .A(n950), .X(n875) );
  STP_NR2_1 U676 ( .A1(n943), .A2(n950), .X(n931) );
  STP_NR2_G_2 U677 ( .A1(n946), .A2(n942), .X(n971) );
  STP_INV_3 U678 ( .A(n616), .X(n577) );
  STP_EO3_2 U679 ( .A1(n666), .A2(n665), .A3(n664), .X(n668) );
  STP_EO3_2 U680 ( .A1(n609), .A2(n608), .A3(n607), .X(n614) );
  STP_EO3_1 U681 ( .A1(n606), .A2(codeword[34]), .A3(codeword[4]), .X(n607) );
  STP_NR2_1 U682 ( .A1(n1024), .A2(n1102), .X(n1025) );
  STP_NR2_1 U683 ( .A1(n1024), .A2(n1044), .X(n1020) );
  STP_NR2_1 U684 ( .A1(n1024), .A2(n1091), .X(n1019) );
  STP_ND3_0P5 U685 ( .A1(n1061), .A2(n1047), .A3(codeword[32]), .X(n1029) );
  STP_NR2_G_0P8 U686 ( .A1(n1081), .A2(n1068), .X(n1063) );
  STP_ND2_S_5 U687 ( .A1(n988), .A2(n987), .X(n1044) );
  STP_ND2_S_2 U688 ( .A1(n1046), .A2(n1013), .X(n1067) );
  STP_INV_S_1 U689 ( .A(n1081), .X(n995) );
  STP_NR2_G_2 U690 ( .A1(n992), .A2(n991), .X(n988) );
  STP_NR2_1 U691 ( .A1(n991), .A2(n578), .X(n980) );
  STP_OAOI211_1 U692 ( .A1(n892), .A2(n891), .B(n577), .C(n890), .X(n900) );
  STP_OAOI211_1 U693 ( .A1(n836), .A2(n875), .B(n835), .C(n944), .X(n847) );
  STP_AOI21_0P75 U694 ( .A1(n921), .A2(n920), .B(n577), .X(n926) );
  STP_OAOI211_1 U695 ( .A1(n894), .A2(n784), .B(n878), .C(n783), .X(n785) );
  STP_AOI211_G_1 U696 ( .A1(n809), .A2(n804), .B1(n777), .B2(n776), .X(n778)
         );
  STP_NR2_G_0P8 U697 ( .A1(n838), .A2(n927), .X(n852) );
  STP_INV_S_0P65 U698 ( .A(n930), .X(n880) );
  STP_OAI21_1 U699 ( .A1(n765), .A2(n729), .B(n942), .X(n736) );
  STP_AOI211_0P75 U700 ( .A1(n896), .A2(n887), .B1(n961), .B2(n834), .X(n836)
         );
  STP_NR2_G_0P8 U701 ( .A1(n934), .A2(n947), .X(n831) );
  STP_OAI21_0P75 U702 ( .A1(n951), .A2(n919), .B(n918), .X(n908) );
  STP_NR2_1 U703 ( .A1(n924), .A2(n935), .X(n915) );
  STP_ND2_G_1 U704 ( .A1(n938), .A2(n869), .X(n809) );
  STP_INV_S_0P65 U705 ( .A(n789), .X(n842) );
  STP_ND2_1P5 U706 ( .A1(n895), .A2(n896), .X(n949) );
  STP_NR2_1 U707 ( .A1(n947), .A2(n922), .X(n870) );
  STP_ND2_S_2 U708 ( .A1(n896), .A2(n878), .X(n934) );
  STP_NR2_G_0P8 U709 ( .A1(n817), .A2(n878), .X(n919) );
  STP_ND2_G_1 U710 ( .A1(n895), .A2(n854), .X(n865) );
  STP_ND2_G_1P5 U711 ( .A1(n794), .A2(n828), .X(n933) );
  STP_INV_2 U712 ( .A(n924), .X(n895) );
  STP_INV_1P5 U713 ( .A(n946), .X(n887) );
  STP_INV_4 U714 ( .A(n942), .X(n878) );
  STP_INV_S_1 U715 ( .A(n649), .X(n650) );
  STP_EO2_S_2 U716 ( .A1(codeword[36]), .A2(codeword[10]), .X(n603) );
  STP_ND2_S_5 U717 ( .A1(n1015), .A2(n1014), .X(n1024) );
  STP_AOI22_0P75 U718 ( .A1(n1069), .A2(n1059), .B1(n1067), .B2(n1054), .X(
        n979) );
  STP_OAI22_0P75 U719 ( .A1(n1069), .A2(n1068), .B1(n1067), .B2(n1077), .X(
        n1070) );
  STP_NR2_G_0P8 U720 ( .A1(n1096), .A2(n1068), .X(n993) );
  STP_NR2_G_0P8 U721 ( .A1(n1094), .A2(n1068), .X(n1062) );
  STP_NR2_1 U722 ( .A1(n1092), .A2(n1068), .X(n1066) );
  STP_NR2_G_0P8 U723 ( .A1(n1103), .A2(n1068), .X(n1065) );
  STP_ND2_G_3 U724 ( .A1(n1000), .A2(n1014), .X(n1100) );
  STP_ND2_S_1 U725 ( .A1(n1005), .A2(n578), .X(n1035) );
  STP_ND2_S_5 U726 ( .A1(n1005), .A2(n992), .X(n1068) );
  STP_AOI22_2 U727 ( .A1(n1049), .A2(n1047), .B1(n1013), .B2(n994), .X(n1096)
         );
  STP_ND2_G_3 U728 ( .A1(n994), .A2(n1034), .X(n1081) );
  STP_NR2B_2 U729 ( .A(n991), .B(n990), .X(n1005) );
  STP_ND4_MM_4 U730 ( .A1(n990), .A2(n578), .A3(n991), .A4(n982), .X(n1054) );
  STP_INV_S_1 U731 ( .A(n985), .X(n1046) );
  STP_ND2_1P5 U732 ( .A1(n986), .A2(n997), .X(n985) );
  STP_NR2_G_2P5 U733 ( .A1(n998), .A2(n997), .X(n994) );
  STP_INV_1P5 U734 ( .A(n986), .X(n998) );
  STP_INV_2 U735 ( .A(n849), .X(n862) );
  STP_INV_2 U736 ( .A(n1047), .X(n1041) );
  STP_OAOI211_1 U737 ( .A1(n852), .A2(n830), .B(n942), .C(n829), .X(n833) );
  STP_OAI21_0P5 U738 ( .A1(n938), .A2(n943), .B(n937), .X(n939) );
  STP_ND2_S_0P8 U739 ( .A1(n897), .A2(n749), .X(n742) );
  STP_OAI22_0P5 U740 ( .A1(n772), .A2(n879), .B1(n937), .B2(n814), .X(n745) );
  STP_AO222_1 U741 ( .A1(n792), .A2(n851), .B1(n791), .B2(n842), .C1(n790), 
        .C2(n918), .X(n802) );
  STP_NR2_G_0P8 U742 ( .A1(n826), .A2(n942), .X(n888) );
  STP_ND2_G_1 U743 ( .A1(n843), .A2(n896), .X(n936) );
  STP_NR2_1 U744 ( .A1(n924), .A2(n886), .X(n901) );
  STP_INV_S_0P65 U745 ( .A(n814), .X(n756) );
  STP_INV_1P5 U746 ( .A(n971), .X(n772) );
  STP_ND2_G_2 U747 ( .A1(n946), .A2(n942), .X(n814) );
  STP_ND2_S_0P8 U748 ( .A1(n943), .A2(n942), .X(n945) );
  STP_EN2_S_2 U749 ( .A1(codeword[21]), .A2(codeword[46]), .X(n636) );
  STP_OAI31_G_0P5 U750 ( .A1(codeword[32]), .A2(n1030), .A3(n1061), .B(n1029), 
        .X(n1031) );
  STP_NR2_G_0P8 U751 ( .A1(n1094), .A2(n1091), .X(n1086) );
  STP_NR2_G_0P8 U752 ( .A1(n1103), .A2(n1084), .X(n1083) );
  STP_AO2BB2_DG_2 U753 ( .A1(n1103), .A2(n1041), .B1(n1013), .B2(n1033), .X(
        n1015) );
  STP_INV_S_0P65 U754 ( .A(n1044), .X(n1007) );
  STP_OAI22_2 U755 ( .A1(n1081), .A2(n1041), .B1(n1034), .B2(n1042), .X(n1000)
         );
  STP_NR2_G_2 U756 ( .A1(n1042), .A2(n1013), .X(n1039) );
  STP_ND2_S_3 U757 ( .A1(n998), .A2(n997), .X(n1042) );
  STP_ND4_1 U758 ( .A1(n800), .A2(n799), .A3(n798), .A4(n797), .X(n801) );
  STP_OAOI211_1 U759 ( .A1(n813), .A2(n886), .B(n812), .C(n875), .X(n820) );
  STP_INV_S_1 U760 ( .A(n870), .X(n948) );
  STP_ND2_G_3 U761 ( .A1(n946), .A2(n878), .X(n924) );
  STP_EO3_2 U762 ( .A1(n651), .A2(n674), .A3(n650), .X(n653) );
  STP_EO2_S_0P5 U763 ( .A1(codeword[18]), .A2(codeword[5]), .X(n703) );
  STP_NR2_1 U764 ( .A1(n1100), .A2(n1102), .X(n1101) );
  STP_NR2_1 U765 ( .A1(n1100), .A2(n1077), .X(n1075) );
  STP_NR2_1 U766 ( .A1(n1100), .A2(n1091), .X(n1089) );
  STP_NR2_1 U767 ( .A1(n1100), .A2(n1084), .X(n1001) );
  STP_NR2_1 U768 ( .A1(n1100), .A2(n1044), .X(n1038) );
  STP_NR2_1 U769 ( .A1(n1100), .A2(n1059), .X(n1002) );
  STP_NR2_1 U770 ( .A1(n1100), .A2(n1054), .X(n1012) );
  STP_NR2_G_0P8 U771 ( .A1(n1096), .A2(n1054), .X(n1051) );
  STP_NR2_G_0P8 U772 ( .A1(n1103), .A2(n1077), .X(n1076) );
  STP_NR2_G_0P8 U773 ( .A1(n1103), .A2(n1054), .X(n1053) );
  STP_NR2_G_0P8 U774 ( .A1(n1096), .A2(n1084), .X(n1080) );
  STP_OAOI211_1 U775 ( .A1(n1042), .A2(n1041), .B(n1040), .C(n1044), .X(n1043)
         );
  STP_NR2_G_0P8 U776 ( .A1(n1103), .A2(n1102), .X(n1104) );
  STP_NR2_G_0P8 U777 ( .A1(n1094), .A2(n1044), .X(n1037) );
  STP_NR2_G_0P8 U778 ( .A1(n1103), .A2(n1091), .X(n1090) );
  STP_ND2_S_0P8 U779 ( .A1(n1039), .A2(n1048), .X(n1040) );
  STP_NR2_G_0P5 U780 ( .A1(n1006), .A2(n1023), .X(n983) );
  STP_NR2_1 U781 ( .A1(n990), .A2(n982), .X(n1023) );
  STP_ND2_G_1 U782 ( .A1(n908), .A2(n907), .X(n909) );
  STP_AOI211_0P75 U783 ( .A1(n874), .A2(n577), .B1(n873), .B2(n872), .X(n876)
         );
  STP_NR2_G_0P8 U784 ( .A1(n948), .A2(n871), .X(n872) );
  STP_NR2_G_0P8 U785 ( .A1(n781), .A2(n780), .X(n786) );
  STP_INV_S_1 U786 ( .A(n938), .X(n897) );
  STP_NR2_1 U787 ( .A1(n871), .A2(n935), .X(n904) );
  STP_ND2_S_0P8 U788 ( .A1(n971), .A2(n749), .X(n960) );
  STP_ND2_G_2 U789 ( .A1(n843), .A2(n972), .X(n938) );
  STP_NR3_G_0P65 U790 ( .A1(n772), .A2(n854), .A3(n577), .X(n715) );
  STP_NR2_1P5 U791 ( .A1(n828), .A2(n886), .X(n749) );
  STP_ND2_G_2 U792 ( .A1(n922), .A2(n886), .X(n825) );
  STP_EO3_1 U793 ( .A1(n620), .A2(n637), .A3(n619), .X(n624) );
  STP_EO3_1 U794 ( .A1(n618), .A2(codeword[49]), .A3(codeword[15]), .X(n619)
         );
  STP_ND2_S_0P8 U795 ( .A1(n1033), .A2(n1034), .X(n1028) );
  STP_NR2_G_2 U796 ( .A1(n1048), .A2(n1047), .X(n999) );
  STP_AOI21_1 U797 ( .A1(n877), .A2(n876), .B(n875), .X(n912) );
  STP_OAI211_1P5 U798 ( .A1(n900), .A2(n950), .B1(n899), .B2(n898), .X(n910)
         );
  STP_MUXI2_MG_0P75 U799 ( .D0(n786), .D1(n785), .S(n962), .X(n787) );
  STP_OAI31_G_0P75 U800 ( .A1(n772), .A2(n965), .A3(n973), .B(n771), .X(n777)
         );
  STP_INV_S_1 U801 ( .A(n933), .X(n961) );
  STP_EO3_1 U802 ( .A1(n581), .A2(codeword[47]), .A3(codeword[52]), .X(n582)
         );
  STP_EN2_S_2 U803 ( .A1(codeword[65]), .A2(codeword[45]), .X(n652) );
  STP_EO2_1 U804 ( .A1(codeword[68]), .A2(codeword[55]), .X(n688) );
  STP_NR2_G_0P8 U805 ( .A1(n1092), .A2(n1077), .X(n1078) );
  STP_NR2_G_0P8 U806 ( .A1(n1094), .A2(n1084), .X(n1079) );
  STP_NR2_G_0P8 U807 ( .A1(n1081), .A2(n1077), .X(n1074) );
  STP_NR2_G_0P8 U808 ( .A1(n1092), .A2(n1054), .X(n1055) );
  STP_AOI22_2 U809 ( .A1(n995), .A2(n1048), .B1(n1047), .B2(n994), .X(n1098)
         );
  STP_NR2_G_2 U810 ( .A1(n788), .A2(n787), .X(n986) );
  STP_NR4_2 U811 ( .A1(n912), .A2(n911), .A3(n910), .A4(n909), .X(n1004) );
  STP_ND2_G_1 U812 ( .A1(n779), .A2(n778), .X(n788) );
  STP_OAI22_0P5 U813 ( .A1(n921), .A2(n965), .B1(n713), .B2(n944), .X(n719) );
  STP_AOI22_1 U814 ( .A1(n807), .A2(n806), .B1(n904), .B2(n577), .X(n808) );
  STP_NR2_G_0P5 U815 ( .A1(n947), .A2(n805), .X(n806) );
  STP_INV_2 U816 ( .A(n903), .X(n947) );
  STP_NR2_1P5 U817 ( .A1(n922), .A2(n886), .X(n854) );
  STP_NR2_G_2 U818 ( .A1(n962), .A2(n616), .X(n903) );
  STP_OAI21_0P5 U819 ( .A1(n971), .A2(n630), .B(n950), .X(n646) );
  STP_OAI21_0P75 U820 ( .A1(n1007), .A2(n1006), .B(n1014), .X(n1008) );
  STP_NR2_1 U821 ( .A1(n1092), .A2(n1044), .X(n1045) );
  STP_INV_2 U822 ( .A(n1006), .X(n1069) );
  STP_ND2_G_1 U823 ( .A1(n976), .A2(n975), .X(n977) );
  STP_NR2_G_0P8 U824 ( .A1(n714), .A2(n795), .X(n718) );
  STP_OAOI211_0P5 U825 ( .A1(n887), .A2(n935), .B(n880), .C(n965), .X(n840) );
  STP_OAI21_0P5 U826 ( .A1(n968), .A2(n816), .B(n712), .X(n720) );
  STP_NR3_G_0P65 U827 ( .A1(n869), .A2(n950), .A3(n616), .X(n768) );
  STP_ND2_S_0P8 U828 ( .A1(n826), .A2(n825), .X(n973) );
  STP_NR2_1 U829 ( .A1(n969), .A2(n927), .X(n951) );
  STP_INV_S_1 U830 ( .A(n921), .X(n874) );
  STP_ND2_G_2 U831 ( .A1(n794), .A2(n922), .X(n921) );
  STP_ND2_G_3 U832 ( .A1(n828), .A2(n886), .X(n817) );
  STP_EO3_2 U833 ( .A1(n702), .A2(n639), .A3(n690), .X(n623) );
  STP_EO2_1 U834 ( .A1(n617), .A2(n636), .X(n620) );
  STP_INV_S_0P65 U835 ( .A(codeword[32]), .X(n1027) );
  STP_OA21B_1 U836 ( .A1(n1010), .A2(n1009), .B(n1008), .X(n1011) );
  STP_NR2_G_0P8 U837 ( .A1(n1096), .A2(n1077), .X(n1073) );
  STP_NR2_G_0P8 U838 ( .A1(n1071), .A2(n1054), .X(n1050) );
  STP_NR2_G_0P8 U839 ( .A1(n1096), .A2(n1059), .X(n1057) );
  STP_NR2_1 U840 ( .A1(n1092), .A2(n1035), .X(n1036) );
  STP_NR2_S_3 U841 ( .A1(n1067), .A2(n1068), .X(n1030) );
  STP_INV_S_0P65 U842 ( .A(n1067), .X(n1010) );
  STP_NR2B_V1DG_2 U843 ( .A(n1033), .B(n1041), .X(n1006) );
  STP_NR4_1 U844 ( .A1(n720), .A2(n719), .A3(n718), .A4(n717), .X(n721) );
  STP_NR2_G_0P8 U845 ( .A1(n897), .A2(n815), .X(n818) );
  STP_INV_S_0P65 U846 ( .A(n809), .X(n813) );
  STP_AOI21_0P75 U847 ( .A1(n921), .A2(n767), .B(n944), .X(n769) );
  STP_NR2_G_0P8 U848 ( .A1(n936), .A2(n968), .X(n974) );
  STP_INV_S_0P65 U849 ( .A(n827), .X(n866) );
  STP_NR2_G_0P5 U850 ( .A1(n814), .A2(n965), .X(n815) );
  STP_ND2_G_3 U851 ( .A1(n962), .A2(n577), .X(n944) );
  STP_NR2_G_0P8 U852 ( .A1(n967), .A2(n946), .X(n773) );
  STP_INV_S_0P65 U853 ( .A(n676), .X(n677) );
  STP_INV_S_0P65 U854 ( .A(n631), .X(n634) );
  STP_NR2_1 U855 ( .A1(n1098), .A2(n1091), .X(n1088) );
  STP_NR2_1 U856 ( .A1(n1098), .A2(n1059), .X(n1058) );
  STP_NR2_G_0P8 U857 ( .A1(n1096), .A2(n1091), .X(n1087) );
  STP_AOI22_1 U858 ( .A1(n1069), .A2(n1054), .B1(n1067), .B2(n1044), .X(n1003)
         );
  STP_NR2_G_0P8 U859 ( .A1(n1071), .A2(n1059), .X(n1056) );
  STP_NR2_G_0P8 U860 ( .A1(n1096), .A2(n1044), .X(n989) );
  STP_AOI211_0P75 U861 ( .A1(n1091), .A2(n1067), .B1(n999), .B2(n983), .X(n984) );
  STP_INV_S_0P65 U862 ( .A(n1035), .X(n1009) );
  STP_NR2B_3 U863 ( .A(error_type_result[0]), .B(error_type_result[1]), .X(
        n1048) );
  STP_NR2_1 U864 ( .A1(n926), .A2(n925), .X(n928) );
  STP_NR4_1 U865 ( .A1(n941), .A2(n940), .A3(n974), .A4(n939), .X(n955) );
  STP_AOI22_1 U866 ( .A1(n906), .A2(n905), .B1(n904), .B2(n903), .X(n907) );
  STP_ND2_G_1 U867 ( .A1(n885), .A2(n808), .X(n821) );
  STP_NR2_G_0P8 U868 ( .A1(n827), .A2(n796), .X(n797) );
  STP_NR4B_1 U869 ( .A(n770), .B1(n769), .B2(n831), .B3(n768), .X(n779) );
  STP_AOI211_0P75 U870 ( .A1(n841), .A2(n616), .B1(n840), .B2(n839), .X(n845)
         );
  STP_AOI211_0P75 U871 ( .A1(n904), .A2(n950), .B1(n739), .B2(n738), .X(n740)
         );
  STP_AOI211_G_1 U872 ( .A1(n918), .A2(n917), .B1(n916), .B2(n915), .X(n929)
         );
  STP_MUXI2_MG_0P75 U873 ( .D0(n901), .D1(n733), .S(n962), .X(n734) );
  STP_INV_S_0P65 U874 ( .A(n824), .X(n838) );
  STP_ND2_G_1 U875 ( .A1(n933), .A2(n960), .X(n686) );
  STP_NR2_1 U876 ( .A1(n817), .A2(n968), .X(n894) );
  STP_OAI22_0P5 U877 ( .A1(n947), .A2(n946), .B1(n945), .B2(n944), .X(n953) );
  STP_ND2_G_1 U878 ( .A1(n646), .A2(n645), .X(n714) );
  STP_NR2_1 U879 ( .A1(n772), .A2(n817), .X(n827) );
  STP_OAI21_0P5 U880 ( .A1(n825), .A2(n616), .B(n879), .X(n729) );
  STP_ND2_S_1 U881 ( .A1(n918), .A2(n886), .X(n879) );
  STP_INV_S_1 U882 ( .A(n850), .X(n883) );
  STP_ND2_S_0P8 U883 ( .A1(n886), .A2(n950), .X(n774) );
  STP_EO3_2 U884 ( .A1(n635), .A2(n634), .A3(n633), .X(n643) );
  STP_EN2_S_2 U885 ( .A1(n695), .A2(codeword[49]), .X(n632) );
  STP_EN2_S_2 U886 ( .A1(n612), .A2(codeword[16]), .X(n678) );
  STP_EO3_2 U887 ( .A1(n588), .A2(codeword[37]), .A3(codeword[31]), .X(n695)
         );
  STP_EN2_3 U888 ( .A1(codeword[56]), .A2(codeword[64]), .X(n588) );
  STP_EN2_3 U889 ( .A1(codeword[52]), .A2(codeword[59]), .X(n690) );
  STP_EN2_3 U890 ( .A1(codeword[51]), .A2(codeword[58]), .X(n590) );
  STP_EN2_3 U891 ( .A1(codeword[29]), .A2(codeword[9]), .X(n700) );
  STP_NR2_G_0P8 U892 ( .A1(n1071), .A2(n1077), .X(n1072) );
  STP_NR2_G_0P8 U893 ( .A1(n1096), .A2(n1102), .X(n1097) );
  STP_NR2_G_0P8 U894 ( .A1(n1094), .A2(n1102), .X(n1095) );
  STP_AOAI211_2 U895 ( .A1(n1048), .A2(n1034), .B(n1047), .C(n1033), .X(n1092)
         );
  STP_OAI22_V3S_1 U896 ( .A1(n818), .A2(n817), .B1(n944), .B2(n816), .X(n819)
         );
  STP_INV_S_0P65 U897 ( .A(n902), .X(n905) );
  STP_NR3_G_1 U898 ( .A1(n752), .A2(n751), .A3(n750), .X(n761) );
  STP_OAI31_G_0P75 U899 ( .A1(n892), .A2(n883), .A3(n888), .B(n950), .X(n800)
         );
  STP_NR2_G_0P8 U900 ( .A1(n795), .A2(n875), .X(n738) );
  STP_INV_S_0P65 U901 ( .A(n904), .X(n855) );
  STP_INV_S_0P65 U902 ( .A(n974), .X(n975) );
  STP_OAOI211_1 U903 ( .A1(n921), .A2(n950), .B(n716), .C(n962), .X(n717) );
  STP_AOI22_0P75 U904 ( .A1(n765), .A2(n764), .B1(n794), .B2(n870), .X(n770)
         );
  STP_INV_S_0P65 U905 ( .A(n934), .X(n811) );
  STP_AOI211_0P75 U906 ( .A1(n919), .A2(n962), .B1(n888), .B2(n723), .X(n726)
         );
  STP_INV_S_0P65 U907 ( .A(n914), .X(n916) );
  STP_AOI22_0P75 U908 ( .A1(n711), .A2(n903), .B1(n793), .B2(n710), .X(n712)
         );
  STP_INV_S_1 U909 ( .A(n817), .X(n791) );
  STP_INV_S_0P65 U910 ( .A(n793), .X(n755) );
  STP_NR2_G_0P8 U911 ( .A1(n968), .A2(n943), .X(n793) );
  STP_INV_2 U912 ( .A(n944), .X(n972) );
  STP_NR3_G_0P65 U913 ( .A1(n825), .A2(n946), .A3(n875), .X(n751) );
  STP_NR2B_1 U914 ( .A(n903), .B(n828), .X(n765) );
  STP_ND2_G_3 U915 ( .A1(n616), .A2(n875), .X(n968) );
  STP_INV_S_0P65 U916 ( .A(n967), .X(n710) );
  STP_EN3_3 U917 ( .A1(n587), .A2(n635), .A3(n681), .X(n946) );
  STP_INV_S_0P65 U918 ( .A(n680), .X(n683) );
  STP_EN3_3 U919 ( .A1(n669), .A2(n668), .A3(n667), .X(n886) );
  STP_INV_S_0P65 U920 ( .A(n681), .X(n682) );
  STP_EO3_2 U921 ( .A1(n584), .A2(n583), .A3(n582), .X(n586) );
  STP_EO2_S_0P5 U922 ( .A1(n672), .A2(n671), .X(n675) );
  STP_INV_S_1 U923 ( .A(n632), .X(n633) );
  STP_EN2_S_2 U924 ( .A1(n627), .A2(codeword[24]), .X(n681) );
  STP_EO2_S_0P5 U925 ( .A1(n690), .A2(n689), .X(n694) );
  STP_EO3_2 U926 ( .A1(n580), .A2(n590), .A3(n603), .X(n584) );
  STP_EN2_S_2 U927 ( .A1(n657), .A2(codeword[14]), .X(n655) );
  STP_INV_S_1 U928 ( .A(n657), .X(n658) );
  STP_INV_S_1 U929 ( .A(n638), .X(n641) );
  STP_INV_S_1 U930 ( .A(n591), .X(n594) );
  STP_INV_S_1 U931 ( .A(n662), .X(n665) );
  STP_INV_S_0P65 U932 ( .A(n597), .X(n598) );
  STP_EN2_S_2 U933 ( .A1(n590), .A2(n589), .X(n611) );
  STP_EO2_1 U934 ( .A1(n588), .A2(n636), .X(n585) );
  STP_EN2_3 U935 ( .A1(codeword[13]), .A2(codeword[47]), .X(n660) );
  STP_INV_2 U936 ( .A(n611), .X(n648) );
  STP_MUXI2_MG_0P75 U937 ( .D0(n868), .D1(n867), .S(n962), .X(n877) );
  STP_OAI31_G_1 U938 ( .A1(n874), .A2(n853), .A3(n852), .B(n851), .X(n860) );
  STP_AOI31_0P5 U939 ( .A1(n1048), .A2(n1030), .A3(n1027), .B(n1026), .X(n1032) );
  STP_AOAI211_2 U940 ( .A1(n1030), .A2(n1048), .B(n1027), .C(n1041), .X(n1026)
         );
  STP_NR2_1 U941 ( .A1(n1098), .A2(n1102), .X(n1099) );
  STP_NR2_1 U942 ( .A1(n1098), .A2(n1054), .X(n1052) );
  STP_AOI21_1 U943 ( .A1(n845), .A2(n844), .B(n962), .X(n846) );
  STP_INV_2 U944 ( .A(n825), .X(n896) );
  STP_ND2_G_3 U945 ( .A1(n616), .A2(n950), .X(n965) );
  STP_EN3_3 U946 ( .A1(n680), .A2(n601), .A3(n600), .X(n942) );
  STP_INV_S_0P65 U947 ( .A(n773), .X(n775) );
  STP_INV_S_0P65 U948 ( .A(n753), .X(n754) );
  STP_ND2_G_1 U949 ( .A1(n971), .A2(n828), .X(n869) );
  STP_INV_S_0P65 U950 ( .A(n804), .X(n805) );
  STP_INV_S_0P65 U951 ( .A(n901), .X(n969) );
  STP_INV_S_0P65 U952 ( .A(n919), .X(n920) );
  STP_INV_S_0P65 U953 ( .A(n691), .X(n693) );
  STP_INV_S_0P65 U954 ( .A(n688), .X(n689) );
  STP_EO3_1 U955 ( .A1(n622), .A2(codeword[44]), .A3(n610), .X(n613) );
  STP_INV_S_0P65 U956 ( .A(n960), .X(n963) );
  STP_AOI31_0P5 U957 ( .A1(n973), .A2(n972), .A3(n971), .B(n970), .X(n976) );
  STP_NR3_G_0P65 U958 ( .A1(n969), .A2(n968), .A3(n967), .X(n970) );
  STP_NR3_G_0P65 U959 ( .A1(n887), .A2(n943), .A3(n616), .X(n723) );
  STP_AOI211_G_1 U960 ( .A1(n903), .A2(n738), .B1(n728), .B2(n727), .X(n737)
         );
  STP_OAI21_1 U961 ( .A1(n687), .A2(n686), .B(n577), .X(n722) );
  STP_INV_S_0P65 U962 ( .A(n869), .X(n834) );
  STP_NR2_G_0P5 U963 ( .A1(n924), .A2(n950), .X(n764) );
  STP_AOI22_1 U964 ( .A1(n824), .A2(n906), .B1(n971), .B2(n854), .X(n767) );
  STP_OAI21_0P5 U965 ( .A1(n843), .A2(n825), .B(n875), .X(n741) );
  STP_AOI211_0P5 U966 ( .A1(n870), .A2(n946), .B1(n831), .B2(n892), .X(n832)
         );
  STP_NR3_G_0P65 U967 ( .A1(n838), .A2(n878), .A3(n875), .X(n839) );
  STP_INV_S_0P65 U968 ( .A(n837), .X(n841) );
  STP_AOAI211_0P5 U969 ( .A1(n843), .A2(n950), .B(n842), .C(n922), .X(n844) );
  STP_NR2_G_0P5 U970 ( .A1(n837), .A2(n616), .X(n810) );
  STP_NR2_G_0P5 U971 ( .A1(n795), .A2(n950), .X(n796) );
  STP_INV_S_1 U972 ( .A(n949), .X(n892) );
  STP_OAI21_0P5 U973 ( .A1(n834), .A2(n930), .B(n616), .X(n798) );
  STP_OAI31_G_0P5 U974 ( .A1(n878), .A2(n968), .A3(n973), .B(n913), .X(n780)
         );
  STP_INV_S_1 U975 ( .A(n894), .X(n937) );
  STP_EN3_1 U976 ( .A1(n602), .A2(n660), .A3(n690), .X(n631) );
  STP_EO3_2 U977 ( .A1(n648), .A2(codeword[24]), .A3(n647), .X(n651) );
  STP_INV_S_0P65 U978 ( .A(n660), .X(n661) );
  STP_EO3_0P5 U979 ( .A1(n598), .A2(codeword[63]), .A3(codeword[38]), .X(n599)
         );
  STP_INV_S_0P65 U980 ( .A(n670), .X(n672) );
  STP_NR2_G_0P5 U981 ( .A1(n748), .A2(n965), .X(n752) );
  STP_AOI211_0P5 U982 ( .A1(n896), .A2(n942), .B1(n863), .B2(n794), .X(n748)
         );
  STP_NR3_G_1 U983 ( .A1(n745), .A2(n893), .A3(n744), .X(n746) );
  STP_ND2_G_1 U984 ( .A1(n743), .A2(n742), .X(n744) );
  STP_OAI211_0P5 U985 ( .A1(n794), .A2(n875), .B1(n741), .B2(n972), .X(n743)
         );
  STP_INV_S_0P65 U986 ( .A(n740), .X(n747) );
  STP_INV_S_0P65 U987 ( .A(n816), .X(n739) );
  STP_NR4_1 U988 ( .A1(n759), .A2(n961), .A3(n758), .A4(n757), .X(n760) );
  STP_OAOI211_0P5 U989 ( .A1(n887), .A2(n968), .B(n789), .C(n922), .X(n757) );
  STP_OAOI211_0P5 U990 ( .A1(n950), .A2(n817), .B(n755), .C(n871), .X(n758) );
  STP_INV_S_0P65 U991 ( .A(n863), .X(n864) );
  STP_NR3_G_0P65 U992 ( .A1(n967), .A2(n887), .A3(n886), .X(n891) );
  STP_INV_S_0P65 U993 ( .A(n888), .X(n889) );
  STP_AOI22_1 U994 ( .A1(n897), .A2(n896), .B1(n895), .B2(n894), .X(n898) );
  STP_INV_S_1 U995 ( .A(n893), .X(n899) );
  STP_AOI21_1 U996 ( .A1(n885), .A2(n884), .B(n962), .X(n911) );
  STP_NR2_G_0P5 U997 ( .A1(n880), .A2(n950), .X(n881) );
  STP_NR2_G_0P5 U998 ( .A1(n879), .A2(n878), .X(n882) );
  STP_ND2_G_1 U999 ( .A1(n856), .A2(n855), .X(n858) );
  STP_AOAI211_0P5 U1000 ( .A1(n878), .A2(n962), .B(n895), .C(n854), .X(n856)
         );
  STP_NR2_G_0P5 U1001 ( .A1(n850), .A2(n967), .X(n853) );
  STP_INV_S_0P65 U1002 ( .A(n865), .X(n792) );
  STP_INV_S_0P65 U1003 ( .A(n936), .X(n790) );
  STP_INV_S_0P65 U1004 ( .A(n803), .X(n807) );
  STP_NR3_G_2 U1005 ( .A1(n914), .A2(n927), .A3(n828), .X(n893) );
  STP_AOI22_0P5 U1006 ( .A1(n794), .A2(n851), .B1(n895), .B2(n793), .X(n799)
         );
  STP_INV_S_0P65 U1007 ( .A(n913), .X(n917) );
  STP_OAI31_G_1 U1008 ( .A1(n953), .A2(n952), .A3(n951), .B(n950), .X(n954) );
  STP_ND2_G_1 U1009 ( .A1(n949), .A2(n948), .X(n952) );
  STP_OAI22_0P5 U1010 ( .A1(n924), .A2(n923), .B1(n946), .B2(n922), .X(n925)
         );
  STP_INV_S_0P65 U1011 ( .A(n931), .X(n923) );
  STP_EN2_S_2 U1012 ( .A1(n678), .A2(n647), .X(n635) );
  STP_ND2_G_1 U1013 ( .A1(n824), .A2(n577), .X(n902) );
  STP_NR3_G_1 U1014 ( .A1(n947), .A2(n886), .A3(n875), .X(n857) );
  STP_NR2_G_2 U1015 ( .A1(n814), .A2(n886), .X(n794) );
  STP_NR2_G_0P5 U1016 ( .A1(n965), .A2(n886), .X(n753) );
  STP_NR2_G_2 U1017 ( .A1(n946), .A2(n878), .X(n843) );
  STP_ND2_G_1 U1018 ( .A1(n895), .A2(n922), .X(n816) );
  STP_INV_S_0P65 U1019 ( .A(n695), .X(n697) );
  STP_ND2_G_1 U1020 ( .A1(n791), .A2(n878), .X(n795) );
  STP_AOI21_0P75 U1021 ( .A1(n726), .A2(n725), .B(n950), .X(n728) );
  STP_OAOI211_0P5 U1022 ( .A1(n749), .A2(n724), .B(n887), .C(n863), .X(n725)
         );
  STP_AO21B_1 U1023 ( .A1(n857), .A2(n946), .B(n902), .X(n727) );
  STP_NR2_G_0P5 U1024 ( .A1(n924), .A2(n965), .X(n730) );
  STP_NR2_G_0P5 U1025 ( .A1(n827), .A2(n901), .X(n713) );
  STP_NR2_G_0P5 U1026 ( .A1(n825), .A2(n766), .X(n711) );
  STP_NR2_1 U1027 ( .A1(n1059), .A2(n1028), .X(n1061) );
  STP_EO2_S_2 U1028 ( .A1(codeword[27]), .A2(codeword[12]), .X(n579) );
  STP_EO2_S_2 U1029 ( .A1(codeword[22]), .A2(codeword[70]), .X(n581) );
  STP_EO2_S_2 U1030 ( .A1(codeword[11]), .A2(codeword[17]), .X(n604) );
  STP_EO2_S_0P5 U1031 ( .A1(n1057), .A2(codeword[26]), .X(message[19]) );
  STP_EO2_S_0P5 U1032 ( .A1(n1072), .A2(codeword[41]), .X(message[34]) );
  STP_EO3_1 U1033 ( .A1(codeword[35]), .A2(codeword[65]), .A3(codeword[44]), 
        .X(n583) );
  STP_EO2_S_2 U1034 ( .A1(n617), .A2(codeword[18]), .X(n595) );
  STP_EO3_2 U1035 ( .A1(n586), .A2(n585), .A3(n595), .X(n587) );
  STP_EN2_S_2 U1036 ( .A1(n700), .A2(codeword[40]), .X(n612) );
  STP_EN2_S_2 U1037 ( .A1(n597), .A2(n691), .X(n638) );
  STP_EN2_S_2 U1038 ( .A1(n591), .A2(codeword[55]), .X(n649) );
  STP_EN2_S_2 U1039 ( .A1(n638), .A2(n649), .X(n627) );
  STP_EO2_S_2 U1040 ( .A1(codeword[5]), .A2(codeword[21]), .X(n592) );
  STP_EN2_S_2 U1041 ( .A1(codeword[28]), .A2(codeword[7]), .X(n662) );
  STP_EN2_S_2 U1042 ( .A1(n662), .A2(codeword[69]), .X(n674) );
  STP_EO2_S_2 U1043 ( .A1(codeword[62]), .A2(codeword[26]), .X(n596) );
  STP_EO3_2 U1044 ( .A1(n625), .A2(n599), .A3(n696), .X(n600) );
  STP_EO2_S_2 U1045 ( .A1(codeword[22]), .A2(codeword[48]), .X(n602) );
  STP_EO3_1 U1046 ( .A1(n688), .A2(codeword[28]), .A3(n604), .X(n609) );
  STP_EO2_S_2 U1047 ( .A1(codeword[54]), .A2(codeword[19]), .X(n610) );
  STP_EN3_3 U1048 ( .A1(n613), .A2(n648), .A3(n612), .X(n667) );
  STP_EN3_3 U1049 ( .A1(n615), .A2(n614), .A3(n667), .X(n616) );
  STP_NR2_G_0P5 U1050 ( .A1(n942), .A2(n616), .X(n630) );
  STP_EO3_1 U1051 ( .A1(codeword[38]), .A2(codeword[20]), .A3(codeword[61]), 
        .X(n621) );
  STP_EO2_S_2 U1052 ( .A1(codeword[50]), .A2(codeword[32]), .X(n692) );
  STP_EO3_1 U1053 ( .A1(codeword[70]), .A2(codeword[17]), .A3(codeword[2]), 
        .X(n702) );
  STP_EN3_3 U1054 ( .A1(n624), .A2(n659), .A3(n623), .X(n628) );
  STP_EO3_3 U1055 ( .A1(n628), .A2(n627), .A3(n626), .X(n629) );
  STP_EO2_S_2 U1056 ( .A1(codeword[25]), .A2(codeword[1]), .X(n671) );
  STP_EO2_S_2 U1057 ( .A1(n639), .A2(codeword[61]), .X(n640) );
  STP_EO3_2 U1058 ( .A1(n641), .A2(n671), .A3(n640), .X(n642) );
  STP_EO3_3 U1059 ( .A1(n643), .A2(n655), .A3(n642), .X(n644) );
  STP_ND2_S_0P8 U1060 ( .A1(n903), .A2(n946), .X(n645) );
  STP_EO2_S_2 U1061 ( .A1(n652), .A2(codeword[20]), .X(n676) );
  STP_EO2_S_2 U1062 ( .A1(n705), .A2(codeword[0]), .X(n673) );
  STP_EO3_3 U1063 ( .A1(n653), .A2(n676), .A3(n673), .X(n656) );
  STP_EO3_3 U1064 ( .A1(n656), .A2(n655), .A3(n654), .X(n922) );
  STP_EO2_S_2 U1065 ( .A1(n659), .A2(n658), .X(n669) );
  STP_EO3_0P5 U1066 ( .A1(n661), .A2(codeword[57]), .A3(codeword[6]), .X(n666)
         );
  STP_EO2_S_2 U1067 ( .A1(codeword[10]), .A2(codeword[41]), .X(n663) );
  STP_EO3_0P5 U1068 ( .A1(n675), .A2(n674), .A3(n673), .X(n679) );
  STP_EN2_0P5 U1069 ( .A1(n677), .A2(codeword[61]), .X(n708) );
  STP_EN3_1 U1070 ( .A1(n684), .A2(n683), .A3(n682), .X(n967) );
  STP_NR2_1 U1071 ( .A1(n814), .A2(n825), .X(n964) );
  STP_AOI21_0P75 U1072 ( .A1(n773), .A2(n943), .B(n964), .X(n685) );
  STP_EO3_0P5 U1073 ( .A1(n694), .A2(n693), .A3(n692), .X(n698) );
  STP_EO3_0P5 U1074 ( .A1(n698), .A2(n697), .A3(n696), .X(n709) );
  STP_AO2BB2_0P5 U1075 ( .A1(codeword[11]), .A2(codeword[42]), .B1(
        codeword[11]), .B2(codeword[42]), .X(n699) );
  STP_EN2_0P5 U1076 ( .A1(codeword[46]), .A2(n699), .X(n701) );
  STP_EO3_0P5 U1077 ( .A1(n702), .A2(n701), .A3(n700), .X(n706) );
  STP_EO3_0P5 U1078 ( .A1(n703), .A2(codeword[67]), .A3(codeword[58]), .X(n704) );
  STP_EO3_0P5 U1079 ( .A1(n706), .A2(n705), .A3(n704), .X(n707) );
  STP_EN3_1 U1080 ( .A1(n709), .A2(n708), .A3(n707), .X(n766) );
  STP_INV_S_1 U1081 ( .A(n854), .X(n826) );
  STP_NR2_G_0P5 U1082 ( .A1(n962), .A2(n886), .X(n724) );
  STP_OAI22_0P5 U1083 ( .A1(n944), .A2(n946), .B1(n843), .B2(n577), .X(n731)
         );
  STP_AOI211_G_1 U1084 ( .A1(n731), .A2(n854), .B1(n964), .B2(n730), .X(n735)
         );
  STP_ND2_S_0P8 U1085 ( .A1(n756), .A2(n922), .X(n732) );
  STP_ND4_MM_1 U1086 ( .A1(n732), .A2(n850), .A3(n965), .A4(n934), .X(n733) );
  STP_INV_S_1 U1087 ( .A(n843), .X(n871) );
  STP_ND2_S_0P8 U1088 ( .A1(n749), .A2(n942), .X(n837) );
  STP_AOI21_0P75 U1089 ( .A1(n869), .A2(n837), .B(n968), .X(n750) );
  STP_NR2_G_0P8 U1090 ( .A1(n895), .A2(n843), .X(n803) );
  STP_OAI22_0P5 U1091 ( .A1(n869), .A2(n875), .B1(n803), .B2(n754), .X(n759)
         );
  STP_INV_S_1 U1092 ( .A(n766), .X(n906) );
  STP_NR2_G_0P5 U1093 ( .A1(n886), .A2(n950), .X(n804) );
  STP_ND3_0P5 U1094 ( .A1(n903), .A2(n878), .A3(n931), .X(n771) );
  STP_AOI21_0P75 U1095 ( .A1(n921), .A2(n865), .B(n875), .X(n781) );
  STP_NR2_G_0P5 U1096 ( .A1(n935), .A2(n577), .X(n784) );
  STP_ND2_S_0P8 U1097 ( .A1(n887), .A2(n922), .X(n782) );
  STP_AOI21_0P75 U1098 ( .A1(n933), .A2(n782), .B(n965), .X(n783) );
  STP_ND2_G_1 U1099 ( .A1(n874), .A2(n851), .X(n885) );
  STP_OAOI211_1 U1100 ( .A1(n895), .A2(n811), .B(n972), .C(n810), .X(n812) );
  STP_OAI22_0P5 U1101 ( .A1(n826), .A2(n947), .B1(n944), .B2(n825), .X(n830)
         );
  STP_AOI21_1 U1102 ( .A1(n833), .A2(n832), .B(n950), .X(n848) );
  STP_ND2_S_0P8 U1103 ( .A1(n865), .A2(n864), .X(n868) );
  STP_ND2_S_0P8 U1104 ( .A1(n866), .A2(n949), .X(n867) );
  STP_OAI22_0P5 U1105 ( .A1(n869), .A2(n944), .B1(n935), .B2(n947), .X(n873)
         );
  STP_AOI211_0P75 U1106 ( .A1(n883), .A2(n918), .B1(n882), .B2(n881), .X(n884)
         );
  STP_MUXI2_MG_1P5 U1107 ( .D0(n929), .D1(n928), .S(n927), .X(n957) );
  STP_AOI21_0P75 U1108 ( .A1(n971), .A2(n931), .B(n930), .X(n932) );
  STP_AOI21_0P75 U1109 ( .A1(n933), .A2(n932), .B(n616), .X(n941) );
  STP_OAOI211_0P5 U1110 ( .A1(n946), .A2(n935), .B(n934), .C(n965), .X(n940)
         );
  STP_EO2_S_0P5 U1111 ( .A1(n958), .A2(codeword[56]), .X(message[49]) );
  STP_EO2_S_0P5 U1112 ( .A1(n979), .A2(codeword[24]), .X(message[17]) );
  STP_EO2_S_0P5 U1113 ( .A1(n981), .A2(codeword[48]), .X(message[41]) );
  STP_EO2_S_0P5 U1114 ( .A1(n984), .A2(codeword[64]), .X(message[57]) );
  STP_EO2_S_0P5 U1115 ( .A1(n989), .A2(codeword[10]), .X(message[3]) );
  STP_EO2_S_0P5 U1116 ( .A1(n993), .A2(codeword[34]), .X(message[27]) );
  STP_EO2_S_0P5 U1117 ( .A1(n996), .A2(codeword[11]), .X(message[4]) );
  STP_EO2_S_0P5 U1118 ( .A1(n1001), .A2(codeword[52]), .X(message[45]) );
  STP_EO2_S_0P5 U1119 ( .A1(n1002), .A2(codeword[28]), .X(message[21]) );
  STP_EO2_S_0P5 U1120 ( .A1(n1003), .A2(codeword[16]), .X(message[9]) );
  STP_EO2_S_0P5 U1121 ( .A1(n1011), .A2(codeword[8]), .X(message[1]) );
  STP_EO2_S_0P5 U1122 ( .A1(n1012), .A2(codeword[20]), .X(message[13]) );
  STP_EO2_S_0P5 U1123 ( .A1(n1016), .A2(codeword[30]), .X(message[23]) );
  STP_EO2_S_0P5 U1124 ( .A1(n1017), .A2(codeword[46]), .X(message[39]) );
  STP_EO2_S_0P5 U1125 ( .A1(n1018), .A2(codeword[54]), .X(message[47]) );
  STP_EO2_S_0P5 U1126 ( .A1(n1019), .A2(codeword[62]), .X(message[55]) );
  STP_EO2_S_0P5 U1127 ( .A1(n1020), .A2(codeword[14]), .X(message[7]) );
  STP_EO2_S_0P5 U1128 ( .A1(n1021), .A2(codeword[22]), .X(message[15]) );
  STP_EO2_S_0P5 U1129 ( .A1(n1022), .A2(codeword[38]), .X(message[31]) );
  STP_EO2_S_0P5 U1130 ( .A1(n1025), .A2(codeword[70]), .X(message[63]) );
  STP_NR2_G_0P5 U1131 ( .A1(n1032), .A2(n1031), .X(message[25]) );
  STP_EO2_S_0P5 U1132 ( .A1(n1036), .A2(codeword[7]), .X(message[0]) );
  STP_EO2_S_0P5 U1133 ( .A1(n1037), .A2(codeword[9]), .X(message[2]) );
  STP_EO2_S_0P5 U1134 ( .A1(n1038), .A2(codeword[12]), .X(message[5]) );
  STP_EO2_S_0P5 U1135 ( .A1(n1043), .A2(codeword[13]), .X(message[6]) );
  STP_EO2_S_0P5 U1136 ( .A1(n1045), .A2(codeword[15]), .X(message[8]) );
  STP_EO2_S_0P5 U1137 ( .A1(n1050), .A2(codeword[17]), .X(message[10]) );
  STP_EO2_S_0P5 U1138 ( .A1(n1051), .A2(codeword[18]), .X(message[11]) );
  STP_EO2_S_0P5 U1139 ( .A1(n1052), .A2(codeword[19]), .X(message[12]) );
  STP_EO2_S_0P5 U1140 ( .A1(n1053), .A2(codeword[21]), .X(message[14]) );
  STP_EO2_S_0P5 U1141 ( .A1(n1055), .A2(codeword[23]), .X(message[16]) );
  STP_EO2_S_0P5 U1142 ( .A1(n1056), .A2(codeword[25]), .X(message[18]) );
  STP_EO2_S_0P5 U1143 ( .A1(n1058), .A2(codeword[27]), .X(message[20]) );
  STP_EO2_S_0P5 U1144 ( .A1(n1060), .A2(codeword[29]), .X(message[22]) );
  STP_EO2_S_0P5 U1145 ( .A1(n1061), .A2(codeword[31]), .X(message[24]) );
  STP_EO2_S_0P5 U1146 ( .A1(n1062), .A2(codeword[33]), .X(message[26]) );
  STP_EO2_S_0P5 U1147 ( .A1(n1063), .A2(codeword[35]), .X(message[28]) );
  STP_EO2_S_0P5 U1148 ( .A1(n1064), .A2(codeword[36]), .X(message[29]) );
  STP_EO2_S_0P5 U1149 ( .A1(n1065), .A2(codeword[37]), .X(message[30]) );
  STP_EO2_S_0P5 U1150 ( .A1(n1066), .A2(codeword[39]), .X(message[32]) );
  STP_EO2_S_0P5 U1151 ( .A1(n1070), .A2(codeword[40]), .X(message[33]) );
  STP_EO2_S_0P5 U1152 ( .A1(n1073), .A2(codeword[42]), .X(message[35]) );
  STP_EO2_S_0P5 U1153 ( .A1(n1074), .A2(codeword[43]), .X(message[36]) );
  STP_EO2_S_0P5 U1154 ( .A1(n1075), .A2(codeword[44]), .X(message[37]) );
  STP_EO2_S_0P5 U1155 ( .A1(n1076), .A2(codeword[45]), .X(message[38]) );
  STP_EO2_S_0P5 U1156 ( .A1(n1078), .A2(codeword[47]), .X(message[40]) );
  STP_EO2_S_0P5 U1157 ( .A1(n1079), .A2(codeword[49]), .X(message[42]) );
  STP_EO2_S_0P5 U1158 ( .A1(n1080), .A2(codeword[50]), .X(message[43]) );
  STP_EO2_S_0P5 U1159 ( .A1(n1082), .A2(codeword[51]), .X(message[44]) );
  STP_EO2_S_0P5 U1160 ( .A1(n1083), .A2(codeword[53]), .X(message[46]) );
  STP_EO2_S_0P5 U1161 ( .A1(n1085), .A2(codeword[55]), .X(message[48]) );
  STP_EO2_S_0P5 U1162 ( .A1(n1086), .A2(codeword[57]), .X(message[50]) );
  STP_EO2_S_0P5 U1163 ( .A1(n1087), .A2(codeword[58]), .X(message[51]) );
  STP_EO2_S_0P5 U1164 ( .A1(n1088), .A2(codeword[59]), .X(message[52]) );
  STP_EO2_S_0P5 U1165 ( .A1(n1089), .A2(codeword[60]), .X(message[53]) );
  STP_EO2_S_0P5 U1166 ( .A1(n1090), .A2(codeword[61]), .X(message[54]) );
  STP_EO2_S_0P5 U1167 ( .A1(n1093), .A2(codeword[63]), .X(message[56]) );
  STP_EO2_S_0P5 U1168 ( .A1(n1095), .A2(codeword[65]), .X(message[58]) );
  STP_EO2_S_0P5 U1169 ( .A1(n1097), .A2(codeword[66]), .X(message[59]) );
  STP_EO2_S_0P5 U1170 ( .A1(n1099), .A2(codeword[67]), .X(message[60]) );
  STP_EO2_S_0P5 U1171 ( .A1(n1101), .A2(codeword[68]), .X(message[61]) );
  STP_EO2_S_0P5 U1172 ( .A1(n1104), .A2(codeword[69]), .X(message[62]) );
endmodule

