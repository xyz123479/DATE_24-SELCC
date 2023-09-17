/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : Q-2019.12-SP5-5
// Date      : Sun Sep 17 23:45:06 2023
/////////////////////////////////////////////////////////////


module SEC_DED_decoder ( codeword, message, error_type );
  input [71:0] codeword;
  output [63:0] message;
  output [1:0] error_type;
  wire   n410, n411, n412, n413, n414, n415, n416, n417, n418, n419, n420,
         n421, n422, n423, n424, n425, n426, n427, n428, n429, n430, n431,
         n432, n433, n434, n435, n436, n437, n438, n439, n440, n441, n442,
         n443, n444, n445, n446, n447, n448, n449, n450, n451, n452, n453,
         n454, n455, n456, n457, n458, n459, n460, n461, n462, n463, n464,
         n465, n466, n467, n468, n469, n470, n471, n472, n473, n474, n475,
         n476, n477, n478, n479, n480, n481, n482, n483, n484, n485, n486,
         n487, n488, n489, n490, n491, n492, n493, n494, n495, n496, n497,
         n498, n499, n500, n501, n502, n503, n504, n505, n506, n507, n508,
         n509, n510, n511, n512, n513, n514, n515, n516, n517, n518, n519,
         n520, n521, n522, n523, n524, n525, n526, n527, n528, n529, n530,
         n531, n532, n533, n534, n535, n536, n537, n538, n539, n540, n541,
         n542, n543, n544, n545, n546, n547, n548, n549, n550, n551, n552,
         n553, n554, n555, n556, n557, n558, n559, n560, n561, n562, n563,
         n564, n565, n566, n567, n568, n569, n570, n571, n572, n573, n574,
         n575, n576, n577, n578, n579, n580, n581, n582, n583, n584, n585,
         n586, n587, n588, n589, n590, n591, n592, n593, n594, n595, n596,
         n597, n598, n599, n600, n601, n602, n603, n604, n605, n606, n607,
         n608, n609, n610, n611, n612, n613, n614, n615, n616, n617, n618,
         n619, n620, n621, n622, n623, n624, n625, n626, n627, n628, n629,
         n630, n631, n632, n633, n634, n635, n636, n637, n638, n639, n640,
         n641, n642, n643, n644, n645, n646, n647, n648, n649, n650, n651,
         n652, n653, n654, n655, n656, n657, n658, n659, n660, n661, n662,
         n663, n664, n665, n666, n667, n668, n669, n670, n671, n672, n673,
         n674, n675, n676, n677, n678, n679, n680, n681, n682, n683, n684,
         n685, n686, n687, n688, n689, n690, n691, n692, n693, n694, n695,
         n696, n697, n698, n699, n700, n701, n702, n703, n704, n705, n706,
         n707, n708, n709, n710, n711, n712, n713, n714, n715, n716, n717,
         n718, n719, n720, n721, n722, n723, n724, n725, n726, n727, n728,
         n729, n730, n731, n732, n733, n734, n735, n736, n737, n738, n739,
         n740, n741, n742, n743, n744, n745, n746, n747, n748, n749, n750,
         n751, n752, n753, n754, n755, n756, n757, n758, n759, n760, n761,
         n762, n763, n764, n765, n766, n767, n768, n769, n770, n771, n772,
         n773, n774, n775, n776, n777, n778, n779, n780, n781, n782, n783,
         n784, n785, n786, n787, n788, n789, n790, n791, n792, n793, n794,
         n795, n796, n797, n798, n799, n800, n801, n802, n803, n804, n805,
         n806, n807, n808, n809, n810, n811, n812, n813, n814, n815, n816,
         n817, n818, n819, n820, n821, n822, n823, n824, n825, n826, n827,
         n828, n829, n830, n831, n832, n833, n834, n835, n836, n837, n838,
         n839, n840, n841, n842, n843, n844, n845, n846, n847, n848, n849,
         n850, n851, n852, n853, n854, n855, n856, n857, n858, n859, n860,
         n861, n862, n863, n864, n865, n866, n867, n868, n869, n870, n871,
         n872, n873, n874, n875, n876, n877, n878, n879, n880, n881, n882,
         n883, n884, n885, n886, n887, n888, n889, n890, n891, n892, n893,
         n894, n895, n896, n897, n898, n899, n900, n901, n902, n903, n904,
         n905, n906, n907, n908, n909, n910, n911, n912, n913, n914, n915,
         n916, n917, n918, n919, n920, n921, n922, n923, n924, n925, n926,
         n927, n928, n929, n930, n931, n932, n933, n934, n935, n936, n937,
         n938, n939, n940, n941, n942;

  STP_EN2_S_1 U478 ( .A1(n876), .A2(n631), .X(message[3]) );
  STP_NR2_1 U479 ( .A1(n921), .A2(n913), .X(n911) );
  STP_INV_S_0P65 U480 ( .A(codeword[71]), .X(n593) );
  STP_INV_S_0P65 U481 ( .A(n597), .X(n929) );
  STP_INV_S_0P65 U482 ( .A(n596), .X(n933) );
  STP_INV_3 U483 ( .A(n881), .X(n884) );
  STP_INV_2 U484 ( .A(n827), .X(n906) );
  STP_INV_2 U485 ( .A(n822), .X(n878) );
  STP_NR2_S_3 U486 ( .A1(n801), .A2(n940), .X(n891) );
  STP_INV_S_1 U487 ( .A(codeword[8]), .X(n503) );
  STP_BUF_2 U488 ( .A(n479), .X(n596) );
  STP_ND2_G_1 U489 ( .A1(n737), .A2(n736), .X(n827) );
  STP_OR4B_2 U490 ( .B1(n727), .B2(n523), .B3(n595), .A(n729), .X(n881) );
  STP_INV_S_0P65 U491 ( .A(n830), .X(n832) );
  STP_INV_S_0P65 U492 ( .A(n766), .X(n776) );
  STP_ND2_G_1 U493 ( .A1(n608), .A2(n834), .X(n607) );
  STP_OR2_2 U494 ( .A1(n837), .A2(n838), .X(n558) );
  STP_ND2B_V1DG_2 U495 ( .A(n835), .B(n560), .X(n559) );
  STP_INV_S_0P65 U496 ( .A(n836), .X(n562) );
  STP_OR2_3 U497 ( .A1(n529), .A2(n441), .X(n705) );
  STP_INV_S_1 U498 ( .A(n421), .X(n608) );
  STP_INV_S_0P65 U499 ( .A(n788), .X(n867) );
  STP_NR2_1 U500 ( .A1(n541), .A2(n549), .X(n865) );
  STP_NR2B_1 U501 ( .A(n554), .B(n543), .X(n745) );
  STP_NR2_3 U502 ( .A1(n700), .A2(n699), .X(n533) );
  STP_INV_S_1 U503 ( .A(n578), .X(n543) );
  STP_NR2_3 U504 ( .A1(n412), .A2(n784), .X(n862) );
  STP_OAI22_5 U505 ( .A1(n487), .A2(n814), .B1(n726), .B2(n575), .X(n861) );
  STP_ND2_S_3 U506 ( .A1(n730), .A2(n773), .X(n707) );
  STP_NR2_S_3 U507 ( .A1(n845), .A2(n753), .X(n855) );
  STP_NR2_1P5 U508 ( .A1(n474), .A2(n582), .X(n790) );
  STP_INV_3 U509 ( .A(n843), .X(n540) );
  STP_BUF_1 U510 ( .A(n834), .X(n555) );
  STP_ND2_G_2 U511 ( .A1(n718), .A2(n458), .X(n576) );
  STP_NR2_S_3 U512 ( .A1(n746), .A2(n578), .X(n626) );
  STP_NR2_G_2 U513 ( .A1(n578), .A2(n796), .X(n852) );
  STP_ND2B_3 U514 ( .A(n813), .B(n866), .X(n473) );
  STP_INV_S_1 U515 ( .A(n760), .X(n704) );
  STP_INV_2 U516 ( .A(n811), .X(n426) );
  STP_INV_2 U517 ( .A(n578), .X(n546) );
  STP_INV_3 U518 ( .A(n818), .X(n487) );
  STP_BUF_5 U519 ( .A(n809), .X(n421) );
  STP_ND2B_2 U520 ( .A(n541), .B(n481), .X(n786) );
  STP_INV_2P5 U521 ( .A(n803), .X(n627) );
  STP_INV_S_5 U522 ( .A(n617), .X(n592) );
  STP_INV_3 U523 ( .A(n548), .X(n424) );
  STP_INV_3 U524 ( .A(n810), .X(n427) );
  STP_NR2_G_4 U525 ( .A1(n516), .A2(n690), .X(n760) );
  STP_INV_3 U526 ( .A(n846), .X(n818) );
  STP_INV_6 U527 ( .A(n784), .X(n434) );
  STP_ND2_G_1 U528 ( .A1(n804), .A2(n805), .X(n563) );
  STP_NR2_G_4 U529 ( .A1(n637), .A2(n805), .X(n866) );
  STP_INV_2 U530 ( .A(n428), .X(n538) );
  STP_NR4_2 U531 ( .A1(n690), .A2(n430), .A3(n805), .A4(n456), .X(n688) );
  STP_ND2_G_3 U532 ( .A1(n578), .A2(n542), .X(n541) );
  STP_INV_6P5 U533 ( .A(n581), .X(n509) );
  STP_INV_1P5 U534 ( .A(n846), .X(n413) );
  STP_NR2_G_2 U535 ( .A1(n581), .A2(n795), .X(n460) );
  STP_ND2_G_4 U536 ( .A1(n466), .A2(n456), .X(n637) );
  STP_ND2_8 U537 ( .A1(n510), .A2(n628), .X(n581) );
  STP_INV_4 U538 ( .A(n566), .X(n439) );
  STP_ND2_5 U539 ( .A1(n782), .A2(n687), .X(n788) );
  STP_INV_2 U540 ( .A(n475), .X(n438) );
  STP_INV_2 U541 ( .A(n565), .X(n516) );
  STP_OR2_3 U542 ( .A1(n477), .A2(n476), .X(n478) );
  STP_INV_S_0P65 U543 ( .A(n781), .X(n542) );
  STP_INV_3 U544 ( .A(n690), .X(n696) );
  STP_INV_S_9 U545 ( .A(n430), .X(n425) );
  STP_INV_S_5 U546 ( .A(n805), .X(n510) );
  STP_NR2_G_3P5 U547 ( .A1(n522), .A2(n422), .X(n417) );
  STP_INV_1P5 U548 ( .A(n741), .X(n435) );
  STP_NR2_G_6 U549 ( .A1(n698), .A2(n456), .X(n628) );
  STP_BUF_3 U550 ( .A(n698), .X(n452) );
  STP_BUF_2 U551 ( .A(n691), .X(n687) );
  STP_ND2_S_3 U552 ( .A1(n497), .A2(n498), .X(n599) );
  STP_ND2_S_3 U553 ( .A1(n524), .A2(n693), .X(n741) );
  STP_BUF_S_6 U554 ( .A(n498), .X(n456) );
  STP_INV_6P5 U555 ( .A(n695), .X(n430) );
  STP_INV_1P5 U556 ( .A(n601), .X(n422) );
  STP_BUF_2 U557 ( .A(n506), .X(n601) );
  STP_INV_3 U558 ( .A(n498), .X(n742) );
  STP_BUF_2 U559 ( .A(n511), .X(n419) );
  STP_INV_6 U560 ( .A(n574), .X(n511) );
  STP_BUF_1 U561 ( .A(n685), .X(n482) );
  STP_EN2_S_2 U562 ( .A1(n649), .A2(n640), .X(n532) );
  STP_EN2_S_2 U563 ( .A1(n622), .A2(n638), .X(n620) );
  STP_EN3_1 U564 ( .A1(n446), .A2(n602), .A3(n673), .X(n445) );
  STP_INV_2P5 U565 ( .A(n656), .X(n528) );
  STP_INV_S_1P25 U566 ( .A(codeword[46]), .X(n624) );
  STP_EO3_2 U567 ( .A1(n666), .A2(n530), .A3(codeword[20]), .X(n444) );
  STP_EN2_S_2 U568 ( .A1(n489), .A2(n490), .X(n602) );
  STP_EO3_2 U569 ( .A1(n641), .A2(codeword[8]), .A3(codeword[42]), .X(n644) );
  STP_EN2_3 U570 ( .A1(codeword[5]), .A2(codeword[70]), .X(n681) );
  STP_EN2_3 U571 ( .A1(codeword[35]), .A2(codeword[30]), .X(n673) );
  STP_EN2_3 U572 ( .A1(codeword[17]), .A2(codeword[66]), .X(n485) );
  STP_INV_7P5 U573 ( .A(codeword[43]), .X(n903) );
  STP_INV_S_1P25 U574 ( .A(codeword[44]), .X(n531) );
  STP_INV_S_9 U575 ( .A(codeword[25]), .X(n490) );
  STP_EN2_0P5 U576 ( .A1(codeword[32]), .A2(codeword[50]), .X(n604) );
  STP_EN2_S_1 U577 ( .A1(n665), .A2(n658), .X(n515) );
  STP_INV_S_9 U578 ( .A(codeword[22]), .X(n489) );
  STP_EO2_S_2 U579 ( .A1(codeword[14]), .A2(codeword[59]), .X(n642) );
  STP_INV_1P5 U580 ( .A(codeword[55]), .X(n492) );
  STP_EN2_3 U581 ( .A1(codeword[67]), .A2(codeword[33]), .X(n496) );
  STP_INV_2P5 U582 ( .A(codeword[41]), .X(n530) );
  STP_INV_2P5 U583 ( .A(codeword[3]), .X(n645) );
  STP_INV_2 U584 ( .A(codeword[11]), .X(n631) );
  STP_EN2_3 U585 ( .A1(codeword[9]), .A2(codeword[21]), .X(n472) );
  STP_INV_S_0P65 U586 ( .A(codeword[15]), .X(n471) );
  STP_INV_4 U587 ( .A(n839), .X(n913) );
  STP_NR2_G_12 U588 ( .A1(n410), .A2(n452), .X(n578) );
  STP_INV_6P5 U589 ( .A(n565), .X(n410) );
  STP_EO2_S_6 U590 ( .A1(codeword[36]), .A2(codeword[64]), .X(n569) );
  STP_NR2_6 U591 ( .A1(n580), .A2(n605), .X(n414) );
  STP_NR2_G_5 U592 ( .A1(n557), .A2(n766), .X(n431) );
  STP_ND3_6 U593 ( .A1(n812), .A2(n473), .A3(n411), .X(n433) );
  STP_BUF_S_8 U594 ( .A(n616), .X(n571) );
  STP_NR2_G_6 U595 ( .A1(n521), .A2(n522), .X(n455) );
  STP_ND2_5 U596 ( .A1(n857), .A2(n811), .X(n411) );
  STP_NR3_G_8 U597 ( .A1(n414), .A2(n441), .A3(n862), .X(n829) );
  STP_NR2B_4 U598 ( .A(n810), .B(n413), .X(n412) );
  STP_NR2_3 U599 ( .A1(n506), .A2(n574), .X(n691) );
  STP_ND2_S_5 U600 ( .A1(n415), .A2(n760), .X(n730) );
  STP_INV_2 U601 ( .A(n784), .X(n415) );
  STP_BUF_S_8 U602 ( .A(n814), .X(n420) );
  STP_INV_7P5 U603 ( .A(n691), .X(n429) );
  STP_NR2_8 U604 ( .A1(n634), .A2(n573), .X(n520) );
  STP_ND2_S_6 U605 ( .A1(n809), .A2(n788), .X(n537) );
  STP_ND2_9 U606 ( .A1(n782), .A2(n564), .X(n726) );
  STP_ND2_12 U607 ( .A1(n782), .A2(n425), .X(n784) );
  STP_NR2_G_5 U608 ( .A1(n549), .A2(n692), .X(n797) );
  STP_ND2_5 U609 ( .A1(n417), .A2(n416), .X(n813) );
  STP_INV_3P5 U610 ( .A(n521), .X(n416) );
  STP_ND3_4 U611 ( .A1(n695), .A2(n475), .A3(n719), .X(n712) );
  STP_AOI21_2 U612 ( .A1(n788), .A2(n712), .B(n803), .X(n850) );
  STP_AOI21_6 U613 ( .A1(n554), .A2(n427), .B(n418), .X(n553) );
  STP_NR2_G_4 U614 ( .A1(n712), .A2(n581), .X(n418) );
  STP_NR2_G_5 U615 ( .A1(n439), .A2(n438), .X(n554) );
  STP_NR2_G_5 U616 ( .A1(n497), .A2(n524), .X(n466) );
  STP_ND4_MM_8 U617 ( .A1(n702), .A2(n829), .A3(n724), .A4(n701), .X(n821) );
  STP_ND2_G_1P5 U618 ( .A1(n787), .A2(n866), .X(n436) );
  STP_ND2_G_2 U619 ( .A1(n847), .A2(n423), .X(n689) );
  STP_NR2_S_3 U620 ( .A1(n618), .A2(n878), .X(n756) );
  STP_NR3_G_3 U621 ( .A1(n458), .A2(n429), .A3(n475), .X(n807) );
  STP_ND2_G_3 U622 ( .A1(n793), .A2(n794), .X(n819) );
  STP_ND2_5 U623 ( .A1(n719), .A2(n419), .X(n521) );
  STP_INV_6P5 U624 ( .A(n477), .X(n432) );
  STP_ND2_10 U625 ( .A1(n566), .A2(n600), .X(n809) );
  STP_INV_2 U626 ( .A(n675), .X(n676) );
  STP_NR2_8 U627 ( .A1(n843), .A2(n434), .X(n580) );
  STP_INV_S_1 U628 ( .A(n676), .X(n539) );
  STP_INV_S_1 U629 ( .A(n694), .X(n535) );
  STP_OR3_3 U630 ( .A1(n617), .A2(n633), .A3(n535), .X(n423) );
  STP_OAI22_3 U631 ( .A1(n853), .A2(n784), .B1(n814), .B2(n783), .X(n709) );
  STP_OAI211_2 U632 ( .A1(n580), .A2(n579), .B1(n544), .B2(n607), .X(n925) );
  STP_AOI22_0P5 U633 ( .A1(n735), .A2(n818), .B1(n760), .B2(n843), .X(n736) );
  STP_AO21B_2 U634 ( .A1(n843), .A2(n818), .B(n436), .X(n791) );
  STP_OAI22_6 U635 ( .A1(n837), .A2(n803), .B1(n771), .B2(n548), .X(n700) );
  STP_INV_S_10 U636 ( .A(n577), .X(n719) );
  STP_NR2_1 U637 ( .A1(n906), .A2(n597), .X(n901) );
  STP_ND2_S_6 U638 ( .A1(n820), .A2(n870), .X(n636) );
  STP_AOI211_G_1 U639 ( .A1(n734), .A2(n867), .B1(n733), .B2(n732), .X(n737)
         );
  STP_ND2_S_1P5 U640 ( .A1(n461), .A2(n817), .X(n459) );
  STP_INV_1P5 U641 ( .A(n599), .X(n711) );
  STP_BUF_3 U642 ( .A(n488), .X(n453) );
  STP_EN2_3 U643 ( .A1(codeword[28]), .A2(codeword[18]), .X(n591) );
  STP_EO2_S_0P5 U644 ( .A1(n889), .A2(codeword[28]), .X(message[20]) );
  STP_EO2_S_0P5 U645 ( .A1(n883), .A2(codeword[20]), .X(message[12]) );
  STP_EO2_S_0P5 U646 ( .A1(n911), .A2(codeword[52]), .X(message[44]) );
  STP_ND2_G_1P5 U647 ( .A1(n502), .A2(n503), .X(n505) );
  STP_EO2_S_0P5 U648 ( .A1(n920), .A2(codeword[59]), .X(message[51]) );
  STP_INV_S_1P25 U649 ( .A(n635), .X(n502) );
  STP_ND2_1P5 U650 ( .A1(n933), .A2(n939), .X(n934) );
  STP_NR2_1 U651 ( .A1(n893), .A2(n596), .X(n888) );
  STP_NR2_1 U652 ( .A1(n913), .A2(n597), .X(n908) );
  STP_NR2_1 U653 ( .A1(n596), .A2(n878), .X(n876) );
  STP_NR2_1 U654 ( .A1(n906), .A2(n596), .X(n904) );
  STP_NR2_1 U655 ( .A1(n893), .A2(n597), .X(n886) );
  STP_NR2_1 U656 ( .A1(n596), .A2(n913), .X(n910) );
  STP_INV_2 U657 ( .A(n939), .X(n937) );
  STP_ND2_G_1P5 U658 ( .A1(n749), .A2(n748), .X(n839) );
  STP_NR4_2 U659 ( .A1(n830), .A2(n791), .A3(n789), .A4(n790), .X(n932) );
  STP_INV_2 U660 ( .A(n467), .X(n822) );
  STP_NR2B_3 U661 ( .A(n819), .B(n459), .X(n870) );
  STP_NR2_G_0P8 U662 ( .A1(n759), .A2(n606), .X(n763) );
  STP_NR2_1 U663 ( .A1(n772), .A2(n848), .X(n774) );
  STP_INV_S_0P65 U664 ( .A(n722), .X(n468) );
  STP_ND2_G_3 U665 ( .A1(n811), .A2(n807), .X(n469) );
  STP_NR2_G_2 U666 ( .A1(n424), .A2(n509), .X(n582) );
  STP_NR2_G_0P8 U667 ( .A1(n753), .A2(n601), .X(n454) );
  STP_INV_1P5 U668 ( .A(n715), .X(n481) );
  STP_INV_3P5 U669 ( .A(n760), .X(n605) );
  STP_ND2B_V1DG_2 U670 ( .A(n508), .B(n425), .X(n633) );
  STP_INV_3P5 U671 ( .A(n834), .X(n428) );
  STP_INV_4 U672 ( .A(n564), .X(n518) );
  STP_INV_S_1 U673 ( .A(n453), .X(n476) );
  STP_INV_S_1 U674 ( .A(codeword[24]), .X(n457) );
  STP_EN2_3 U675 ( .A1(codeword[62]), .A2(codeword[59]), .X(n675) );
  STP_EN2_3 U676 ( .A1(codeword[16]), .A2(codeword[71]), .X(n669) );
  STP_INV_S_1 U677 ( .A(codeword[48]), .X(n464) );
  STP_EN2_3 U678 ( .A1(codeword[27]), .A2(codeword[38]), .X(n666) );
  STP_INV_S_1 U679 ( .A(codeword[16]), .X(n451) );
  STP_EN2_3 U680 ( .A1(codeword[11]), .A2(codeword[23]), .X(n682) );
  STP_EN2_4 U681 ( .A1(codeword[10]), .A2(codeword[17]), .X(n603) );
  STP_INV_S_1 U682 ( .A(codeword[40]), .X(n463) );
  STP_EN2_3 U683 ( .A1(codeword[57]), .A2(codeword[64]), .X(n447) );
  STP_EN2_4 U684 ( .A1(codeword[13]), .A2(codeword[61]), .X(n632) );
  STP_EN2_3 U685 ( .A1(codeword[41]), .A2(codeword[51]), .X(n665) );
  STP_INV_S_1 U686 ( .A(codeword[64]), .X(n462) );
  STP_INV_S_1 U687 ( .A(codeword[56]), .X(n465) );
  STP_EN2_3 U688 ( .A1(codeword[52]), .A2(codeword[24]), .X(n653) );
  STP_EN2_3 U689 ( .A1(codeword[58]), .A2(codeword[16]), .X(n660) );
  STP_EN2_3 U690 ( .A1(codeword[6]), .A2(codeword[0]), .X(n470) );
  STP_INV_4 U691 ( .A(n420), .X(n793) );
  STP_INV_6 U692 ( .A(n714), .X(n549) );
  STP_ND2_7 U693 ( .A1(n571), .A2(n719), .X(n617) );
  STP_ND2_5 U694 ( .A1(n431), .A2(n553), .X(n552) );
  STP_INV_7P5 U695 ( .A(n706), .X(n475) );
  STP_NR2_G_12 U696 ( .A1(n768), .A2(n429), .X(n566) );
  STP_ND2_G_1 U697 ( .A1(n857), .A2(n818), .X(n461) );
  STP_NR2B_4 U698 ( .A(n718), .B(n458), .X(n857) );
  STP_NR2_G_2 U699 ( .A1(n508), .A2(n742), .X(n697) );
  STP_EN3_3 U700 ( .A1(n663), .A2(n621), .A3(n619), .X(n508) );
  STP_NR2_G_6 U701 ( .A1(n617), .A2(n430), .X(n806) );
  STP_ND2_G_1 U702 ( .A1(n834), .A2(n716), .X(n847) );
  STP_EN3_3 U703 ( .A1(n586), .A2(n584), .A3(n583), .X(n497) );
  STP_EO3_3 U704 ( .A1(n674), .A2(n585), .A3(n647), .X(n584) );
  STP_ND2B_6 U705 ( .A(n488), .B(n497), .X(n698) );
  STP_EO2_4 U706 ( .A1(codeword[40]), .A2(codeword[65]), .X(n525) );
  STP_ND2_5 U707 ( .A1(n432), .A2(n628), .X(n853) );
  STP_ND2_5 U708 ( .A1(n592), .A2(n688), .X(n752) );
  STP_INV_6 U709 ( .A(n719), .X(n768) );
  STP_NR2_8 U710 ( .A1(n506), .A2(n511), .X(n695) );
  STP_EN3_3 U711 ( .A1(n644), .A2(n643), .A3(n650), .X(n526) );
  STP_NR3_G_4 U712 ( .A1(n816), .A2(n815), .A3(n433), .X(n928) );
  STP_INV_2 U713 ( .A(n797), .X(n474) );
  STP_AOI211_G_1 U714 ( .A1(n440), .A2(n746), .B1(n744), .B2(n745), .X(n749)
         );
  STP_NR2_G_4 U715 ( .A1(n861), .A2(n855), .X(n701) );
  STP_NR2_G_12 U716 ( .A1(n519), .A2(n518), .X(n843) );
  STP_ND2_S_5 U717 ( .A1(n424), .A2(n806), .X(n773) );
  STP_OR2_7 U718 ( .A1(n726), .A2(n563), .X(n507) );
  STP_OAI22_5 U719 ( .A1(n835), .A2(n575), .B1(n726), .B2(n803), .X(n708) );
  STP_OAI211_4 U720 ( .A1(n421), .A2(n838), .B1(n808), .B2(n836), .X(n816) );
  STP_INV_S_5 U721 ( .A(n853), .X(n811) );
  STP_ND2_G_2 U722 ( .A1(n511), .A2(n506), .X(n781) );
  STP_ND2_S_2 U723 ( .A1(n520), .A2(n890), .X(n887) );
  STP_ND2_S_2 U724 ( .A1(n520), .A2(n881), .X(n882) );
  STP_ND2_7 U725 ( .A1(n565), .A2(n435), .X(n803) );
  STP_OAI22_5 U726 ( .A1(n798), .A2(n428), .B1(n852), .B2(n540), .X(n863) );
  STP_NR2_8 U727 ( .A1(n799), .A2(n863), .X(n820) );
  STP_INV_7P5 U728 ( .A(n571), .X(n522) );
  STP_EO2_S_0P5 U729 ( .A1(n802), .A2(codeword[44]), .X(message[36]) );
  STP_EO2_S_0P5 U730 ( .A1(n897), .A2(codeword[36]), .X(message[28]) );
  STP_ND2_G_1 U731 ( .A1(n783), .A2(n487), .X(n747) );
  STP_INV_4 U732 ( .A(n845), .X(n761) );
  STP_NR2_6 U733 ( .A1(n854), .A2(n704), .X(n799) );
  STP_NR2_G_2 U734 ( .A1(n921), .A2(n893), .X(n889) );
  STP_AN2_2 U735 ( .A1(n728), .A2(n761), .X(n523) );
  STP_NR2_S_3 U736 ( .A1(n618), .A2(n937), .X(n938) );
  STP_NR2_G_4 U737 ( .A1(n813), .A2(n803), .X(n766) );
  STP_OR3_6 U738 ( .A1(n719), .A2(n571), .A3(n430), .X(n771) );
  STP_BUF_5 U739 ( .A(n706), .X(n600) );
  STP_ND2_6 U740 ( .A1(n455), .A2(n795), .X(n845) );
  STP_INV_6 U741 ( .A(n740), .X(n805) );
  STP_NR2_6 U742 ( .A1(n627), .A2(n509), .X(n838) );
  STP_INV_6 U743 ( .A(n806), .X(n835) );
  STP_NR3_G_1 U744 ( .A1(n477), .A2(n742), .A3(n741), .X(n796) );
  STP_EN3_3 U745 ( .A1(n620), .A2(n664), .A3(n680), .X(n619) );
  STP_INV_3P5 U746 ( .A(n616), .X(n706) );
  STP_EN3_3 U747 ( .A1(n663), .A2(n445), .A3(n442), .X(n616) );
  STP_NR2_S_1P5 U748 ( .A1(n573), .A2(n937), .X(n931) );
  STP_EO2_S_0P5 U749 ( .A1(n756), .A2(codeword[13]), .X(message[5]) );
  STP_EO2_S_0P5 U750 ( .A1(n938), .A2(codeword[69]), .X(message[61]) );
  STP_NR2_S_3 U751 ( .A1(n618), .A2(n923), .X(n755) );
  STP_ND3_5 U752 ( .A1(n536), .A2(n507), .A3(n469), .X(n710) );
  STP_BUF_S_8 U753 ( .A(n508), .X(n477) );
  STP_EO3_3 U754 ( .A1(n648), .A2(n658), .A3(n642), .X(n534) );
  STP_ND2_G_3 U755 ( .A1(n694), .A2(n477), .X(n810) );
  STP_BUF_15 U756 ( .A(n719), .X(n458) );
  STP_INV_7P5 U757 ( .A(n866), .X(n575) );
  STP_NR2B_8 U758 ( .A(n466), .B(n456), .X(n804) );
  STP_EO3_3 U759 ( .A1(n568), .A2(codeword[56]), .A3(codeword[4]), .X(n567) );
  STP_ND2_G_1 U760 ( .A1(n460), .A2(n455), .X(n817) );
  STP_ND2_G_1 U761 ( .A1(n426), .A2(n783), .X(n728) );
  STP_NR2_1 U762 ( .A1(n913), .A2(n914), .X(n915) );
  STP_OAI21_6 U763 ( .A1(n926), .A2(n833), .B(n918), .X(n914) );
  STP_EN3_3 U764 ( .A1(n437), .A2(n472), .A3(n470), .X(n656) );
  STP_EN3_3 U765 ( .A1(n471), .A2(codeword[18]), .A3(codeword[5]), .X(n437) );
  STP_OAI21B_4 U766 ( .A1(n440), .A2(n554), .B(n783), .X(n785) );
  STP_EN2_6 U767 ( .A1(n651), .A2(codeword[14]), .X(n674) );
  STP_ND2_9 U768 ( .A1(n458), .A2(n475), .X(n519) );
  STP_INV_1P5 U769 ( .A(n784), .X(n440) );
  STP_AOI21_6 U770 ( .A1(n576), .A2(n809), .B(n575), .X(n441) );
  STP_EN3_3 U771 ( .A1(n444), .A2(n650), .A3(n443), .X(n442) );
  STP_EN3_6 U772 ( .A1(n531), .A2(codeword[9]), .A3(codeword[53]), .X(n443) );
  STP_EO3_3 U773 ( .A1(n447), .A2(codeword[47]), .A3(codeword[0]), .X(n446) );
  STP_EN3_3 U774 ( .A1(n449), .A2(n674), .A3(n448), .X(n663) );
  STP_EN2_4 U775 ( .A1(n603), .A2(n632), .X(n448) );
  STP_EO2_2 U776 ( .A1(n654), .A2(n604), .X(n449) );
  STP_EO3_3 U777 ( .A1(n631), .A2(codeword[8]), .A3(n450), .X(n654) );
  STP_INV_6P5 U778 ( .A(codeword[12]), .X(n450) );
  STP_OAI21_1 U779 ( .A1(n787), .A2(n797), .B(n424), .X(n720) );
  STP_ND2B_3 U780 ( .A(n693), .B(n524), .X(n690) );
  STP_EO3_3 U781 ( .A1(n686), .A2(n482), .A3(n684), .X(n524) );
  STP_EO3_3 U782 ( .A1(n683), .A2(codeword[8]), .A3(n682), .X(n684) );
  STP_EN3_3 U783 ( .A1(n625), .A2(n679), .A3(n678), .X(n686) );
  STP_EN3_3 U784 ( .A1(n586), .A2(n584), .A3(n583), .X(n693) );
  STP_EO2_S_0P5 U785 ( .A1(n823), .A2(n451), .X(message[8]) );
  STP_EO3_3 U786 ( .A1(n686), .A2(n482), .A3(n684), .X(n488) );
  STP_ND2_G_1 U787 ( .A1(n454), .A2(n455), .X(n547) );
  STP_NR2B_8 U788 ( .A(n740), .B(n742), .X(n565) );
  STP_EN3_3 U789 ( .A1(n663), .A2(n619), .A3(n621), .X(n740) );
  STP_EN3_3 U790 ( .A1(n499), .A2(n609), .A3(n671), .X(n498) );
  STP_EO2_S_0P5 U791 ( .A1(n824), .A2(n457), .X(message[16]) );
  STP_OR2_4 U792 ( .A1(n760), .A2(n427), .X(n794) );
  STP_EO2_S_0P5 U793 ( .A1(n875), .A2(n462), .X(message[56]) );
  STP_EO2_S_0P5 U794 ( .A1(n828), .A2(n463), .X(message[32]) );
  STP_EO2_S_0P5 U795 ( .A1(n840), .A2(n464), .X(message[40]) );
  STP_EO2_S_0P5 U796 ( .A1(n841), .A2(n465), .X(message[48]) );
  STP_ND2_G_3 U797 ( .A1(n697), .A2(n466), .X(n846) );
  STP_AN4B_1 U798 ( .B1(n720), .B2(n721), .B3(n469), .A(n468), .X(n467) );
  STP_EN2_8 U799 ( .A1(codeword[4]), .A2(codeword[1]), .X(n651) );
  STP_NR2_G_4 U800 ( .A1(n478), .A2(n480), .X(n746) );
  STP_ND2_G_4 U801 ( .A1(n537), .A2(n538), .X(n536) );
  STP_EO2_3 U802 ( .A1(codeword[34]), .A2(codeword[39]), .X(n486) );
  STP_NR4_1 U803 ( .A1(n791), .A2(n830), .A3(n789), .A4(n790), .X(n479) );
  STP_INV_2 U804 ( .A(n711), .X(n480) );
  STP_OAI21_4 U805 ( .A1(n845), .A2(n546), .B(n752), .X(n703) );
  STP_EN3_6 U806 ( .A1(codeword[40]), .A2(codeword[54]), .A3(codeword[19]), 
        .X(n514) );
  STP_NR2_S_1P5 U807 ( .A1(n914), .A2(n937), .X(n594) );
  STP_EN3_3 U808 ( .A1(n570), .A2(codeword[7]), .A3(codeword[3]), .X(n483) );
  STP_NR2_G_4 U809 ( .A1(n797), .A2(n806), .X(n798) );
  STP_INV_2 U810 ( .A(n771), .X(n787) );
  STP_EN3_3 U811 ( .A1(n657), .A2(n656), .A3(n655), .X(n506) );
  STP_EN3_3 U812 ( .A1(n483), .A2(n569), .A3(n496), .X(n484) );
  STP_NR4_6 U813 ( .A1(n710), .A2(n707), .A3(n709), .A4(n708), .X(n713) );
  STP_EN3_3 U814 ( .A1(n491), .A2(n485), .A3(n486), .X(n625) );
  STP_EN2_8 U815 ( .A1(codeword[22]), .A2(codeword[1]), .X(n513) );
  STP_BUF_3P5 U816 ( .A(n928), .X(n597) );
  STP_EN3_3 U817 ( .A1(n525), .A2(n903), .A3(codeword[26]), .X(n677) );
  STP_EN3_3 U818 ( .A1(n492), .A2(n493), .A3(n501), .X(n491) );
  STP_INV_S_14 U819 ( .A(codeword[52]), .X(n501) );
  STP_EN3_3 U820 ( .A1(n492), .A2(n493), .A3(n501), .X(n680) );
  STP_INV_18 U821 ( .A(codeword[58]), .X(n493) );
  STP_INV_18 U822 ( .A(codeword[9]), .X(n494) );
  STP_EN3_3 U823 ( .A1(n495), .A2(n569), .A3(n496), .X(n661) );
  STP_EN3_3 U824 ( .A1(n570), .A2(codeword[7]), .A3(codeword[3]), .X(n495) );
  STP_INV_4 U825 ( .A(n716), .X(n837) );
  STP_EN3_3 U826 ( .A1(n667), .A2(n612), .A3(n666), .X(n499) );
  STP_EN3_6 U827 ( .A1(codeword[70]), .A2(codeword[7]), .A3(n500), .X(n650) );
  STP_INV_18 U828 ( .A(codeword[67]), .X(n500) );
  STP_EN3_6 U829 ( .A1(codeword[21]), .A2(codeword[15]), .A3(n494), .X(n664)
         );
  STP_ND2_G_1 U830 ( .A1(codeword[8]), .A2(n635), .X(n504) );
  STP_ND2_G_1 U831 ( .A1(n504), .A2(n505), .X(message[0]) );
  STP_NR2_G_4 U832 ( .A1(n843), .A2(n761), .X(n854) );
  STP_ND2_G_2 U833 ( .A1(n843), .A2(n427), .X(n812) );
  STP_ND2_G_1 U834 ( .A1(n843), .A2(n842), .X(n844) );
  STP_EN2_8 U835 ( .A1(codeword[29]), .A2(codeword[47]), .X(n611) );
  STP_OR3B_2 U836 ( .B1(n866), .B2(n555), .A(n838), .X(n560) );
  STP_NR3_G_3 U837 ( .A1(n689), .A2(n850), .A3(n703), .X(n702) );
  STP_EN2_8 U838 ( .A1(codeword[70]), .A2(codeword[39]), .X(n570) );
  STP_NR2_G_2 U839 ( .A1(n741), .A2(n498), .X(n694) );
  STP_OAI211_0P5 U840 ( .A1(n845), .A2(n487), .B1(n423), .B2(n844), .X(n851)
         );
  STP_INV_S_0P65 U841 ( .A(n852), .X(n858) );
  STP_OAI21_1 U842 ( .A1(n717), .A2(n716), .B(n555), .X(n722) );
  STP_ND2_G_1 U843 ( .A1(n730), .A2(n507), .X(n595) );
  STP_AOI22_0P5 U844 ( .A1(n867), .A2(n769), .B1(n747), .B2(n793), .X(n748) );
  STP_AN3B_2 U845 ( .B1(n752), .B2(n547), .A(n545), .X(n544) );
  STP_NR2_G_2 U846 ( .A1(n865), .A2(n562), .X(n561) );
  STP_EO2_S_2 U847 ( .A1(n670), .A2(n677), .X(n621) );
  STP_ND3_2 U848 ( .A1(n711), .A2(n805), .A3(n453), .X(n753) );
  STP_NR2_G_2 U849 ( .A1(n571), .A2(n692), .X(n718) );
  STP_ND3_2 U850 ( .A1(n806), .A2(n805), .A3(n804), .X(n836) );
  STP_OAI31_G_0P5 U851 ( .A1(n768), .A2(n795), .A3(n767), .B(n771), .X(n770)
         );
  STP_NR2_1 U852 ( .A1(n421), .A2(n581), .X(n732) );
  STP_ND2B_2 U853 ( .A(n800), .B(n820), .X(n935) );
  STP_ND3_0P5 U854 ( .A1(n868), .A2(n869), .A3(n870), .X(n871) );
  STP_AOI211_0P5 U855 ( .A1(n867), .A2(n866), .B1(n865), .B2(n864), .X(n868)
         );
  STP_ND2_G_1 U856 ( .A1(n874), .A2(n822), .X(n635) );
  STP_NR2_1 U857 ( .A1(n878), .A2(n597), .X(n550) );
  STP_INV_S_1 U858 ( .A(codeword[10]), .X(n630) );
  STP_EN2_0P5 U859 ( .A1(n725), .A2(codeword[14]), .X(message[6]) );
  STP_NR2_G_0P5 U860 ( .A1(n597), .A2(n884), .X(n880) );
  STP_NR2_G_0P5 U861 ( .A1(n596), .A2(n884), .X(n792) );
  STP_NR2_1 U862 ( .A1(n921), .A2(n884), .X(n883) );
  STP_INV_S_1 U863 ( .A(codeword[21]), .X(n757) );
  STP_NR2_1 U864 ( .A1(n884), .A2(n914), .X(n885) );
  STP_INV_S_1 U865 ( .A(codeword[29]), .X(n764) );
  STP_INV_S_1 U866 ( .A(codeword[32]), .X(n572) );
  STP_INV_S_1 U867 ( .A(codeword[34]), .X(n779) );
  STP_INV_S_1 U868 ( .A(codeword[37]), .X(n777) );
  STP_EN2_S_1 U869 ( .A1(n904), .A2(n903), .X(message[35]) );
  STP_INV_S_1 U870 ( .A(codeword[45]), .X(n738) );
  STP_INV_S_1 U871 ( .A(codeword[53]), .X(n750) );
  STP_NR2_1 U872 ( .A1(n923), .A2(n597), .X(n916) );
  STP_NR3_G_1 U873 ( .A1(n634), .A2(n919), .A3(n923), .X(n920) );
  STP_NR2_1 U874 ( .A1(n940), .A2(n923), .X(n924) );
  STP_INV_S_1 U875 ( .A(codeword[70]), .X(n941) );
  STP_ND2_S_0P8 U876 ( .A1(n475), .A2(n419), .X(n767) );
  STP_EN3_3 U877 ( .A1(n515), .A2(n514), .A3(n512), .X(n517) );
  STP_EO3_3 U878 ( .A1(n513), .A2(codeword[48]), .A3(codeword[31]), .X(n512)
         );
  STP_EN3_3 U879 ( .A1(n517), .A2(n661), .A3(n662), .X(n574) );
  STP_ND2_S_2 U880 ( .A1(n520), .A2(n825), .X(n780) );
  STP_ND2_S_2 U881 ( .A1(n520), .A2(n822), .X(n723) );
  STP_NR3_G_2 U882 ( .A1(n508), .A2(n599), .A3(n453), .X(n834) );
  STP_EO3_3 U883 ( .A1(n677), .A2(n672), .A3(n673), .X(n583) );
  STP_EN2_4 U884 ( .A1(codeword[19]), .A2(codeword[53]), .X(n672) );
  STP_EN3_3 U885 ( .A1(n527), .A2(n532), .A3(n526), .X(n577) );
  STP_EN2_4 U886 ( .A1(n534), .A2(n528), .X(n527) );
  STP_OAI21_2 U887 ( .A1(n543), .A2(n845), .B(n752), .X(n529) );
  STP_INV_S_0P65 U888 ( .A(n506), .X(n795) );
  STP_ND2_S_5 U889 ( .A1(n932), .A2(n928), .X(n873) );
  STP_AOI21_1 U890 ( .A1(n837), .A2(n788), .B(n581), .X(n789) );
  STP_BUF_S_10 U891 ( .A(n918), .X(n634) );
  STP_ND2_G_3 U892 ( .A1(n829), .A2(n533), .X(n614) );
  STP_EO2_S_0P5 U893 ( .A1(n900), .A2(codeword[39]), .X(message[31]) );
  STP_EO2_S_0P5 U894 ( .A1(n894), .A2(codeword[31]), .X(message[23]) );
  STP_EO2_S_0P5 U895 ( .A1(n907), .A2(codeword[47]), .X(message[39]) );
  STP_EO2_S_0P5 U896 ( .A1(n915), .A2(codeword[55]), .X(message[47]) );
  STP_INV_6 U897 ( .A(n692), .X(n564) );
  STP_AN2_7 U898 ( .A1(n719), .A2(n706), .X(n714) );
  STP_EN2_8 U899 ( .A1(codeword[31]), .A2(codeword[44]), .X(n623) );
  STP_EN3_3 U900 ( .A1(n539), .A2(n590), .A3(n591), .X(n589) );
  STP_ND2_9 U901 ( .A1(n714), .A2(n425), .X(n814) );
  STP_ND2B_1 U902 ( .A(n846), .B(n807), .X(n808) );
  STP_NR2_1P5 U903 ( .A1(n573), .A2(n913), .X(n909) );
  STP_ND2_S_0P8 U904 ( .A1(n578), .A2(n806), .X(error_type[0]) );
  STP_INV_3P5 U905 ( .A(n925), .X(n923) );
  STP_NR2_1 U906 ( .A1(n543), .A2(n420), .X(n545) );
  STP_ND2_G_3 U907 ( .A1(n697), .A2(n696), .X(n548) );
  STP_AOI21_1 U908 ( .A1(n715), .A2(n549), .B(n692), .X(n717) );
  STP_EO2_S_0P5 U909 ( .A1(n550), .A2(codeword[9]), .X(message[1]) );
  STP_NR3_G_8 U910 ( .A1(n552), .A2(n556), .A3(n551), .X(n831) );
  STP_AO2BB2_4 U911 ( .A1(n626), .A2(n784), .B1(n716), .B2(n866), .X(n551) );
  STP_NR2_G_4 U912 ( .A1(n420), .A2(n426), .X(n556) );
  STP_NR2_G_4 U913 ( .A1(n726), .A2(n428), .X(n557) );
  STP_NR3_G_3 U914 ( .A1(n719), .A2(n571), .A3(n781), .X(n716) );
  STP_ND3_5 U915 ( .A1(n561), .A2(n559), .A3(n558), .X(n939) );
  STP_EN3_3 U916 ( .A1(n484), .A2(n629), .A3(n567), .X(n657) );
  STP_EN2_4 U917 ( .A1(codeword[30]), .A2(codeword[49]), .X(n568) );
  STP_EO2_S_0P5 U918 ( .A1(n826), .A2(n572), .X(message[24]) );
  STP_NR2_G_0P8 U919 ( .A1(n906), .A2(n573), .X(n902) );
  STP_NR2_G_0P8 U920 ( .A1(n923), .A2(n573), .X(n917) );
  STP_ND2_S_10 U921 ( .A1(n821), .A2(n940), .X(n573) );
  STP_ND2_G_3 U922 ( .A1(n574), .A2(n506), .X(n692) );
  STP_AN2_MG_6 U923 ( .A1(n577), .A2(n616), .X(n782) );
  STP_NR2_1 U924 ( .A1(n842), .A2(n578), .X(n579) );
  STP_NR2_G_0P8 U925 ( .A1(n580), .A2(n853), .X(n606) );
  STP_AOI21_4 U926 ( .A1(n726), .A2(n771), .B(n581), .X(n699) );
  STP_ND2_G_1 U927 ( .A1(n575), .A2(n581), .X(n769) );
  STP_EN2_4 U928 ( .A1(codeword[23]), .A2(codeword[48]), .X(n647) );
  STP_EO2_3 U929 ( .A1(codeword[11]), .A2(codeword[33]), .X(n585) );
  STP_EO3_3 U930 ( .A1(n589), .A2(n587), .A3(n678), .X(n586) );
  STP_EO3_3 U931 ( .A1(n588), .A2(codeword[56]), .A3(codeword[22]), .X(n587)
         );
  STP_EO2_3 U932 ( .A1(codeword[50]), .A2(codeword[69]), .X(n588) );
  STP_EN3_6 U933 ( .A1(n624), .A2(codeword[20]), .A3(codeword[37]), .X(n678)
         );
  STP_EO2_3 U934 ( .A1(codeword[21]), .A2(codeword[7]), .X(n590) );
  STP_AOI21_1 U935 ( .A1(n421), .A2(n726), .B(n575), .X(n727) );
  STP_EN3_3 U936 ( .A1(n654), .A2(n653), .A3(n652), .X(n655) );
  STP_EN2_S_2 U937 ( .A1(n594), .A2(n593), .X(message[63]) );
  STP_EO2_S_0P5 U938 ( .A1(n780), .A2(n779), .X(message[26]) );
  STP_NR3_G_8 U939 ( .A1(n705), .A2(n799), .A3(n598), .X(n940) );
  STP_INV_3P5 U940 ( .A(n533), .X(n598) );
  STP_NR2_G_4 U941 ( .A1(n700), .A2(n699), .X(n724) );
  STP_EO2_S_0P5 U942 ( .A1(n885), .A2(codeword[23]), .X(message[15]) );
  STP_EO2_S_0P5 U943 ( .A1(n909), .A2(codeword[50]), .X(message[42]) );
  STP_EO2_S_0P5 U944 ( .A1(n902), .A2(codeword[42]), .X(message[34]) );
  STP_ND3_2 U945 ( .A1(n634), .A2(n926), .A3(n925), .X(n927) );
  STP_NR4_8 U946 ( .A1(n873), .A2(n918), .A3(n821), .A4(n636), .X(n874) );
  STP_ND2_S_10 U947 ( .A1(n713), .A2(n831), .X(n918) );
  STP_EN2_S_2 U948 ( .A1(n882), .A2(codeword[18]), .X(message[10]) );
  STP_EN2_S_2 U949 ( .A1(n755), .A2(n754), .X(message[53]) );
  STP_NR2_1 U950 ( .A1(n852), .A2(n420), .X(n815) );
  STP_ND2_S_10 U951 ( .A1(n935), .A2(n801), .X(n921) );
  STP_INV_3 U952 ( .A(n831), .X(n615) );
  STP_ND2_G_2 U953 ( .A1(n804), .A2(n477), .X(n783) );
  STP_EO2_3 U954 ( .A1(codeword[10]), .A2(codeword[27]), .X(n652) );
  STP_ND2_S_16 U955 ( .A1(n634), .A2(n801), .X(n618) );
  STP_EN2_S_2 U956 ( .A1(n739), .A2(n738), .X(message[37]) );
  STP_EN2_S_2 U957 ( .A1(n751), .A2(n750), .X(message[45]) );
  STP_EN2_S_2 U958 ( .A1(n765), .A2(n764), .X(message[21]) );
  STP_EN2_S_2 U959 ( .A1(n778), .A2(n777), .X(message[29]) );
  STP_EO2_S_0P5 U960 ( .A1(n917), .A2(codeword[58]), .X(message[50]) );
  STP_EO3_3 U961 ( .A1(n670), .A2(n610), .A3(n672), .X(n609) );
  STP_EO2_3 U962 ( .A1(codeword[56]), .A2(codeword[21]), .X(n610) );
  STP_EO3_3 U963 ( .A1(n611), .A2(codeword[34]), .A3(codeword[24]), .X(n670)
         );
  STP_EO3_3 U964 ( .A1(n613), .A2(codeword[6]), .A3(codeword[36]), .X(n612) );
  STP_EO2_3 U965 ( .A1(codeword[65]), .A2(codeword[9]), .X(n613) );
  STP_NR2_1 U966 ( .A1(n921), .A2(n923), .X(n922) );
  STP_NR2_8 U967 ( .A1(n615), .A2(n614), .X(n801) );
  STP_EO2_S_0P5 U968 ( .A1(n877), .A2(codeword[12]), .X(message[4]) );
  STP_EO2_S_0P5 U969 ( .A1(n879), .A2(codeword[15]), .X(message[7]) );
  STP_EO2_S_0P5 U970 ( .A1(n931), .A2(codeword[66]), .X(message[58]) );
  STP_NR2_S_3 U971 ( .A1(n618), .A2(n899), .X(n778) );
  STP_NR2_S_3 U972 ( .A1(n618), .A2(n906), .X(n739) );
  STP_NR2_S_3 U973 ( .A1(n618), .A2(n913), .X(n751) );
  STP_NR2_S_3 U974 ( .A1(n618), .A2(n893), .X(n765) );
  STP_NR2_S_3 U975 ( .A1(n618), .A2(n884), .X(n758) );
  STP_EO2_3 U976 ( .A1(codeword[68]), .A2(codeword[16]), .X(n622) );
  STP_EN2_S_2 U977 ( .A1(n758), .A2(n757), .X(message[13]) );
  STP_INV_3 U978 ( .A(codeword[32]), .X(n646) );
  STP_ND2_G_1 U979 ( .A1(n891), .A2(n822), .X(n725) );
  STP_EO3_3 U980 ( .A1(n623), .A2(codeword[49]), .A3(codeword[2]), .X(n679) );
  STP_EN3_3 U981 ( .A1(n903), .A2(codeword[60]), .A3(codeword[46]), .X(n629)
         );
  STP_EO2_S_0P5 U982 ( .A1(n723), .A2(n630), .X(message[2]) );
  STP_EO2_3 U983 ( .A1(codeword[45]), .A2(codeword[37]), .X(n638) );
  STP_ND2_G_1 U984 ( .A1(n891), .A2(n890), .X(n892) );
  STP_ND2_G_1 U985 ( .A1(n891), .A2(n881), .X(n731) );
  STP_EO3_3 U986 ( .A1(n639), .A2(codeword[29]), .A3(codeword[51]), .X(n640)
         );
  STP_EO3_3 U987 ( .A1(codeword[42]), .A2(codeword[28]), .A3(codeword[25]), 
        .X(n685) );
  STP_EO3_3 U988 ( .A1(n647), .A2(n646), .A3(n645), .X(n648) );
  STP_EN2_S_2 U989 ( .A1(n731), .A2(codeword[22]), .X(message[14]) );
  STP_EO2_3 U990 ( .A1(codeword[10]), .A2(codeword[13]), .X(n658) );
  STP_EO2_S_0P5 U991 ( .A1(n895), .A2(codeword[33]), .X(message[25]) );
  STP_EO3_3 U992 ( .A1(n679), .A2(n669), .A3(n668), .X(n671) );
  STP_ND2_G_1 U993 ( .A1(n929), .A2(n939), .X(n930) );
  STP_EO2_S_2 U994 ( .A1(codeword[45]), .A2(codeword[38]), .X(n639) );
  STP_EO2_S_2 U995 ( .A1(codeword[55]), .A2(codeword[2]), .X(n641) );
  STP_EO2_S_2 U996 ( .A1(codeword[26]), .A2(codeword[35]), .X(n643) );
  STP_EO2_S_2 U997 ( .A1(n651), .A2(codeword[63]), .X(n649) );
  STP_EO2_3 U998 ( .A1(codeword[61]), .A2(codeword[45]), .X(n659) );
  STP_EO3_3 U999 ( .A1(n685), .A2(n660), .A3(n659), .X(n662) );
  STP_EO2_S_2 U1000 ( .A1(n675), .A2(n665), .X(n667) );
  STP_EO2_3 U1001 ( .A1(codeword[13]), .A2(codeword[67]), .X(n668) );
  STP_EO3_3 U1002 ( .A1(n681), .A2(codeword[14]), .A3(codeword[62]), .X(n683)
         );
  STP_INV_S_1 U1003 ( .A(n782), .X(n715) );
  STP_OAI21_0P5 U1004 ( .A1(n811), .A2(n746), .B(n857), .X(n721) );
  STP_OAI21B_1 U1005 ( .A1(n746), .A2(n760), .B(n420), .X(n729) );
  STP_ND2_S_0P8 U1006 ( .A1(n803), .A2(n428), .X(n734) );
  STP_AOI21_0P75 U1007 ( .A1(n853), .A2(n810), .B(n420), .X(n733) );
  STP_OAI31_G_0P75 U1008 ( .A1(n768), .A2(n601), .A3(n767), .B(n540), .X(n735)
         );
  STP_INV_S_0P65 U1009 ( .A(n796), .X(n743) );
  STP_AOI21_0P75 U1010 ( .A1(n743), .A2(n810), .B(n540), .X(n744) );
  STP_INV_S_0P65 U1011 ( .A(n783), .X(n842) );
  STP_INV_S_1 U1012 ( .A(codeword[61]), .X(n754) );
  STP_OAI22_0P5 U1013 ( .A1(n803), .A2(n421), .B1(n784), .B2(n487), .X(n759)
         );
  STP_AOI22_1 U1014 ( .A1(n761), .A2(n794), .B1(n769), .B2(n797), .X(n762) );
  STP_ND2_G_1P5 U1015 ( .A1(n763), .A2(n762), .X(n890) );
  STP_INV_2 U1016 ( .A(n890), .X(n893) );
  STP_ND2_S_1 U1017 ( .A1(n770), .A2(n769), .X(n775) );
  STP_INV_S_0P65 U1018 ( .A(n423), .X(n772) );
  STP_NR2B_V1DG_1 U1019 ( .A(n834), .B(n771), .X(n848) );
  STP_ND4_1P5 U1020 ( .A1(n776), .A2(n775), .A3(n774), .A4(n773), .X(n825) );
  STP_INV_2 U1021 ( .A(n825), .X(n899) );
  STP_ND2_G_3 U1022 ( .A1(n785), .A2(n786), .X(n830) );
  STP_EO2_S_0P5 U1023 ( .A1(n792), .A2(codeword[19]), .X(message[11]) );
  STP_ND2_S_0P8 U1024 ( .A1(n817), .A2(n819), .X(n800) );
  STP_NR2_G_0P8 U1025 ( .A1(n921), .A2(n906), .X(n802) );
  STP_ND2_S_0P8 U1026 ( .A1(n874), .A2(n881), .X(n823) );
  STP_ND2_S_0P8 U1027 ( .A1(n874), .A2(n890), .X(n824) );
  STP_ND2_S_0P8 U1028 ( .A1(n874), .A2(n825), .X(n826) );
  STP_ND2_S_0P8 U1029 ( .A1(n874), .A2(n827), .X(n828) );
  STP_INV_S_1 U1030 ( .A(n829), .X(n833) );
  STP_ND2_G_3 U1031 ( .A1(n831), .A2(n832), .X(n926) );
  STP_ND2_S_0P8 U1032 ( .A1(n874), .A2(n839), .X(n840) );
  STP_ND2_S_0P8 U1033 ( .A1(n874), .A2(n925), .X(n841) );
  STP_INV_S_0P65 U1034 ( .A(n847), .X(n849) );
  STP_NR4_1 U1035 ( .A1(n850), .A2(n851), .A3(n849), .A4(n848), .X(n860) );
  STP_NR2_G_0P5 U1036 ( .A1(n426), .A2(n854), .X(n856) );
  STP_AOI211_0P5 U1037 ( .A1(n857), .A2(n858), .B1(n855), .B2(n856), .X(n859)
         );
  STP_ND3_0P5 U1038 ( .A1(n860), .A2(n940), .A3(n859), .X(n872) );
  STP_NR3_G_0P8 U1039 ( .A1(n863), .A2(n861), .A3(n862), .X(n869) );
  STP_INV_S_0P65 U1040 ( .A(error_type[0]), .X(n864) );
  STP_NR4_1 U1041 ( .A1(n873), .A2(n634), .A3(n871), .A4(n872), .X(
        error_type[1]) );
  STP_ND2_S_0P8 U1042 ( .A1(n874), .A2(n939), .X(n875) );
  STP_NR2_G_0P8 U1043 ( .A1(n921), .A2(n878), .X(n877) );
  STP_NR2_G_0P8 U1044 ( .A1(n914), .A2(n878), .X(n879) );
  STP_EO2_S_0P5 U1045 ( .A1(n880), .A2(codeword[17]), .X(message[9]) );
  STP_EO2_S_0P5 U1046 ( .A1(n886), .A2(codeword[25]), .X(message[17]) );
  STP_EN2_S_2 U1047 ( .A1(n887), .A2(codeword[26]), .X(message[18]) );
  STP_EO2_S_0P5 U1048 ( .A1(n888), .A2(codeword[27]), .X(message[19]) );
  STP_EN2_S_2 U1049 ( .A1(n892), .A2(codeword[30]), .X(message[22]) );
  STP_NR2_G_0P8 U1050 ( .A1(n914), .A2(n893), .X(n894) );
  STP_NR2_G_0P8 U1051 ( .A1(n899), .A2(n597), .X(n895) );
  STP_NR2_G_0P8 U1052 ( .A1(n899), .A2(n596), .X(n896) );
  STP_EO2_S_0P5 U1053 ( .A1(n896), .A2(codeword[35]), .X(message[27]) );
  STP_NR2_G_0P8 U1054 ( .A1(n921), .A2(n899), .X(n897) );
  STP_NR2_G_0P8 U1055 ( .A1(n899), .A2(n940), .X(n898) );
  STP_EO2_S_0P5 U1056 ( .A1(n898), .A2(codeword[38]), .X(message[30]) );
  STP_NR2_G_0P8 U1057 ( .A1(n914), .A2(n899), .X(n900) );
  STP_EO2_S_0P5 U1058 ( .A1(n901), .A2(codeword[41]), .X(message[33]) );
  STP_NR2_G_0P8 U1059 ( .A1(n940), .A2(n906), .X(n905) );
  STP_EO2_S_0P5 U1060 ( .A1(n905), .A2(codeword[46]), .X(message[38]) );
  STP_NR2_G_0P8 U1061 ( .A1(n914), .A2(n906), .X(n907) );
  STP_EO2_S_0P5 U1062 ( .A1(n908), .A2(codeword[49]), .X(message[41]) );
  STP_EO2_S_0P5 U1063 ( .A1(n910), .A2(codeword[51]), .X(message[43]) );
  STP_NR2_G_0P8 U1064 ( .A1(n940), .A2(n913), .X(n912) );
  STP_EO2_S_0P5 U1065 ( .A1(n912), .A2(codeword[54]), .X(message[46]) );
  STP_EO2_S_0P5 U1066 ( .A1(n916), .A2(codeword[57]), .X(message[49]) );
  STP_INV_S_1 U1067 ( .A(n926), .X(n919) );
  STP_EO2_S_0P5 U1068 ( .A1(n922), .A2(codeword[60]), .X(message[52]) );
  STP_EO2_S_0P5 U1069 ( .A1(n924), .A2(codeword[62]), .X(message[54]) );
  STP_EN2_S_2 U1070 ( .A1(n927), .A2(codeword[63]), .X(message[55]) );
  STP_EN2_S_2 U1071 ( .A1(n930), .A2(codeword[65]), .X(message[57]) );
  STP_EN2_S_2 U1072 ( .A1(n934), .A2(codeword[67]), .X(message[59]) );
  STP_ND2_S_1P5 U1073 ( .A1(n935), .A2(n939), .X(n936) );
  STP_EN2_S_2 U1074 ( .A1(n936), .A2(codeword[68]), .X(message[60]) );
  STP_ND2B_2 U1075 ( .A(n940), .B(n939), .X(n942) );
  STP_EO2_S_0P5 U1076 ( .A1(n942), .A2(n941), .X(message[62]) );
endmodule

