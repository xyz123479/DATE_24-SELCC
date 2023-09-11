/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : Q-2019.12-SP5-5
// Date      : Mon Sep 11 17:00:46 2023
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
         n817, n818, n819, n820, n821, n822, n823, n824, n825, n826, n827;

  STP_INV_S_0P65 U478 ( .A(n757), .X(n823) );
  STP_ND2B_1 U479 ( .A(n709), .B(n724), .X(n821) );
  STP_ND2_S_2 U480 ( .A1(n769), .A2(n711), .X(n826) );
  STP_ND2_G_1 U481 ( .A1(n725), .A2(n721), .X(n818) );
  STP_ND2_G_1 U482 ( .A1(n695), .A2(n721), .X(n806) );
  STP_NR3_G_1 U483 ( .A1(n707), .A2(n706), .A3(n752), .X(n825) );
  STP_INV_S_0P65 U484 ( .A(n724), .X(n721) );
  STP_ND2_S_0P8 U485 ( .A1(n780), .A2(n779), .X(n792) );
  STP_NR2_1 U486 ( .A1(n780), .A2(n791), .X(n802) );
  STP_NR2_G_2 U487 ( .A1(n672), .A2(n638), .X(n780) );
  STP_ND2_G_1 U488 ( .A1(n756), .A2(n652), .X(n638) );
  STP_NR3_G_1 U489 ( .A1(n602), .A2(n601), .A3(n600), .X(n670) );
  STP_ND4_1 U490 ( .A1(n519), .A2(n518), .A3(n517), .A4(n516), .X(n589) );
  STP_INV_S_1 U491 ( .A(n700), .X(n683) );
  STP_NR2_1 U492 ( .A1(n525), .A2(n704), .X(n647) );
  STP_NR2_1 U493 ( .A1(n509), .A2(n530), .X(n615) );
  STP_ND2_S_1 U494 ( .A1(n520), .A2(n627), .X(n742) );
  STP_ND2_S_1 U495 ( .A1(n536), .A2(n539), .X(n700) );
  STP_NR2_1 U496 ( .A1(n511), .A2(n507), .X(n539) );
  STP_INV_S_0P65 U497 ( .A(n442), .X(n443) );
  STP_EN2_0P5 U498 ( .A1(n495), .A2(n494), .X(n498) );
  STP_EO3_1 U499 ( .A1(n447), .A2(n428), .A3(n427), .X(n442) );
  STP_EO3_0P5 U500 ( .A1(n451), .A2(codeword[26]), .A3(codeword[2]), .X(n454)
         );
  STP_EO3_0P5 U501 ( .A1(n452), .A2(codeword[38]), .A3(codeword[35]), .X(n453)
         );
  STP_EO3_0P5 U502 ( .A1(n501), .A2(codeword[34]), .A3(codeword[62]), .X(n503)
         );
  STP_EO3_0P5 U503 ( .A1(codeword[35]), .A2(codeword[22]), .A3(codeword[30]), 
        .X(n485) );
  STP_EO3_0P5 U504 ( .A1(codeword[13]), .A2(codeword[65]), .A3(codeword[6]), 
        .X(n470) );
  STP_EN2_S_1 U505 ( .A1(n477), .A2(n439), .X(n465) );
  STP_EN2_S_1 U506 ( .A1(codeword[59]), .A2(codeword[51]), .X(n451) );
  STP_EO3_1 U507 ( .A1(codeword[28]), .A2(codeword[42]), .A3(codeword[25]), 
        .X(n494) );
  STP_EO3_1 U508 ( .A1(codeword[37]), .A2(codeword[46]), .A3(codeword[20]), 
        .X(n495) );
  STP_EO3_1 U509 ( .A1(codeword[58]), .A2(codeword[52]), .A3(codeword[55]), 
        .X(n497) );
  STP_EO2_S_0P5 U510 ( .A1(codeword[42]), .A2(codeword[63]), .X(n452) );
  STP_EO2_S_0P5 U511 ( .A1(codeword[29]), .A2(codeword[55]), .X(n449) );
  STP_EN2_0P5 U512 ( .A1(codeword[8]), .A2(codeword[45]), .X(n450) );
  STP_EO3_1 U513 ( .A1(codeword[53]), .A2(codeword[56]), .A3(codeword[59]), 
        .X(n469) );
  STP_EN2_S_1 U514 ( .A1(n499), .A2(codeword[12]), .X(n431) );
  STP_EN2_S_1 U515 ( .A1(codeword[9]), .A2(codeword[21]), .X(n477) );
  STP_EN2_0P5 U516 ( .A1(codeword[41]), .A2(codeword[51]), .X(n476) );
  STP_EN2_0P5 U517 ( .A1(codeword[24]), .A2(codeword[29]), .X(n464) );
  STP_INV_S_0P65 U518 ( .A(codeword[15]), .X(n439) );
  STP_EO3_0P5 U519 ( .A1(codeword[61]), .A2(codeword[17]), .A3(codeword[50]), 
        .X(n411) );
  STP_EN2_0P5 U520 ( .A1(codeword[45]), .A2(codeword[16]), .X(n461) );
  STP_EN2_S_1 U521 ( .A1(codeword[4]), .A2(codeword[14]), .X(n486) );
  STP_EN2_S_1 U522 ( .A1(codeword[8]), .A2(codeword[11]), .X(n499) );
  STP_EN2_0P5 U523 ( .A1(codeword[53]), .A2(codeword[44]), .X(n413) );
  STP_NR2_G_0P5 U524 ( .A1(n580), .A2(n704), .X(n684) );
  STP_INV_S_1 U525 ( .A(n567), .X(n513) );
  STP_NR2_G_0P5 U526 ( .A1(n521), .A2(n627), .X(n677) );
  STP_ND2_G_1 U527 ( .A1(n565), .A2(n564), .X(n590) );
  STP_NR2_G_0P5 U528 ( .A1(n717), .A2(n716), .X(n725) );
  STP_ND2_G_1 U529 ( .A1(n725), .A2(n724), .X(n815) );
  STP_NR2_G_0P8 U530 ( .A1(n789), .A2(n815), .X(n790) );
  STP_NR2_G_0P8 U531 ( .A1(n800), .A2(n823), .X(n798) );
  STP_NR2_G_0P8 U532 ( .A1(n789), .A2(n823), .X(n782) );
  STP_NR2_G_0P8 U533 ( .A1(n800), .A2(n809), .X(n795) );
  STP_NR2_G_0P8 U534 ( .A1(n800), .A2(n815), .X(n793) );
  STP_NR2_G_0P8 U535 ( .A1(n800), .A2(n818), .X(n801) );
  STP_NR2_G_0P8 U536 ( .A1(n789), .A2(n809), .X(n788) );
  STP_NR2_G_0P8 U537 ( .A1(n789), .A2(n825), .X(n786) );
  STP_NR2_G_0P8 U538 ( .A1(n789), .A2(n821), .X(n785) );
  STP_NR2_G_0P8 U539 ( .A1(n800), .A2(n821), .X(n797) );
  STP_NR2_G_0P8 U540 ( .A1(n789), .A2(n818), .X(n787) );
  STP_NR2_G_0P8 U541 ( .A1(n800), .A2(n825), .X(n799) );
  STP_NR2_G_0P8 U542 ( .A1(n789), .A2(n806), .X(n784) );
  STP_NR2_G_0P8 U543 ( .A1(n800), .A2(n806), .X(n794) );
  STP_NR2_G_0P8 U544 ( .A1(n789), .A2(n812), .X(n783) );
  STP_NR2_G_0P8 U545 ( .A1(n800), .A2(n812), .X(n796) );
  STP_ND3_2 U546 ( .A1(n781), .A2(n803), .A3(n780), .X(n733) );
  STP_INV_2 U547 ( .A(n779), .X(n803) );
  STP_ND2_S_0P8 U548 ( .A1(n757), .A2(n802), .X(n759) );
  STP_INV_2 U549 ( .A(n791), .X(n781) );
  STP_ND2_G_4 U550 ( .A1(n693), .A2(n692), .X(n779) );
  STP_ND2_S_1 U551 ( .A1(n682), .A2(n681), .X(n686) );
  STP_ND4_2 U552 ( .A1(n551), .A2(n550), .A3(n655), .A4(n549), .X(n591) );
  STP_INV_S_1 U553 ( .A(n647), .X(n687) );
  STP_ND2_S_0P8 U554 ( .A1(n659), .A2(n699), .X(n630) );
  STP_ND2_S_1 U555 ( .A1(n661), .A2(n657), .X(n703) );
  STP_AOI22_0P75 U556 ( .A1(n616), .A2(n678), .B1(n681), .B2(n675), .X(n519)
         );
  STP_AOI21_0P75 U557 ( .A1(n742), .A2(n633), .B(n747), .X(n634) );
  STP_NR2_1 U558 ( .A1(n583), .A2(n582), .X(n619) );
  STP_OAI21_0P5 U559 ( .A1(n649), .A2(n683), .B(n650), .X(n516) );
  STP_INV_S_0P65 U560 ( .A(n522), .X(n508) );
  STP_ND2_S_1 U561 ( .A1(n575), .A2(n576), .X(n446) );
  STP_ND2_S_0P8 U562 ( .A1(n542), .A2(n541), .X(n543) );
  STP_INV_1P5 U563 ( .A(n541), .X(n507) );
  STP_EN3_3 U564 ( .A1(n458), .A2(n457), .A3(n456), .X(n578) );
  STP_EO3_1 U565 ( .A1(n465), .A2(n441), .A3(n440), .X(n456) );
  STP_EO3_1 U566 ( .A1(n464), .A2(codeword[34]), .A3(codeword[47]), .X(n474)
         );
  STP_EO2_1 U567 ( .A1(codeword[24]), .A2(codeword[52]), .X(n435) );
  STP_EO2_S_2 U568 ( .A1(codeword[2]), .A2(codeword[31]), .X(n475) );
  STP_EO2_1 U569 ( .A1(codeword[14]), .A2(codeword[17]), .X(n502) );
  STP_NR2_G_0P8 U570 ( .A1(n826), .A2(n818), .X(n817) );
  STP_NR2_G_0P8 U571 ( .A1(n727), .A2(n806), .X(n712) );
  STP_NR2_G_0P8 U572 ( .A1(n826), .A2(n809), .X(n808) );
  STP_NR2_G_0P8 U573 ( .A1(n733), .A2(n806), .X(n696) );
  STP_NR2_G_0P8 U574 ( .A1(n826), .A2(n815), .X(n814) );
  STP_NR2_G_0P8 U575 ( .A1(n727), .A2(n818), .X(n718) );
  STP_NR2_G_0P8 U576 ( .A1(n727), .A2(n812), .X(n723) );
  STP_NR2_G_0P8 U577 ( .A1(n733), .A2(n825), .X(n708) );
  STP_NR2_G_0P8 U578 ( .A1(n826), .A2(n812), .X(n811) );
  STP_ND2_G_2 U579 ( .A1(n803), .A2(n802), .X(n820) );
  STP_NR2_G_2 U580 ( .A1(n781), .A2(n779), .X(n711) );
  STP_NR2_G_0P8 U581 ( .A1(n709), .A2(n724), .X(n757) );
  STP_ND2_G_1P5 U582 ( .A1(n574), .A2(n573), .X(n716) );
  STP_ND2_G_1P5 U583 ( .A1(n560), .A2(n574), .X(n715) );
  STP_NR2_1 U584 ( .A1(n590), .A2(n572), .X(n573) );
  STP_INV_S_0P65 U585 ( .A(n673), .X(n691) );
  STP_ND2_S_0P8 U586 ( .A1(n703), .A2(n616), .X(n617) );
  STP_ND2_G_1 U587 ( .A1(n643), .A2(n642), .X(n646) );
  STP_OAI22_0P75 U588 ( .A1(n701), .A2(n748), .B1(n687), .B2(n747), .X(n610)
         );
  STP_INV_S_0P65 U589 ( .A(n608), .X(n609) );
  STP_ND4_1 U590 ( .A1(n608), .A2(n571), .A3(n570), .A4(n569), .X(n572) );
  STP_AOI22_1 U591 ( .A1(n668), .A2(n615), .B1(n684), .B2(n563), .X(n564) );
  STP_OAI21_0P75 U592 ( .A1(n554), .A2(n676), .B(n647), .X(n557) );
  STP_NR2_1 U593 ( .A1(n735), .A2(n592), .X(n744) );
  STP_ND2_S_0P8 U594 ( .A1(n552), .A2(n747), .X(n545) );
  STP_ND2_S_0P8 U595 ( .A1(n742), .A2(n746), .X(n674) );
  STP_NR2_1 U596 ( .A1(n742), .A2(n555), .X(n641) );
  STP_INV_S_1 U597 ( .A(n562), .X(n580) );
  STP_ND2_G_2 U598 ( .A1(n510), .A2(n539), .X(n657) );
  STP_INV_S_1 U599 ( .A(n539), .X(n509) );
  STP_NR2_G_0P8 U600 ( .A1(n544), .A2(n543), .X(n566) );
  STP_NR2_1 U601 ( .A1(n567), .A2(n542), .X(n536) );
  STP_NR2_G_0P8 U602 ( .A1(n511), .A2(n541), .X(n535) );
  STP_INV_S_1 U603 ( .A(n426), .X(n412) );
  STP_EO3_1 U604 ( .A1(n475), .A2(codeword[44]), .A3(codeword[49]), .X(n496)
         );
  STP_EO2_S_2 U605 ( .A1(codeword[36]), .A2(codeword[33]), .X(n428) );
  STP_EO2_1 U606 ( .A1(codeword[16]), .A2(codeword[67]), .X(n473) );
  STP_EO2_1 U607 ( .A1(codeword[23]), .A2(codeword[39]), .X(n501) );
  STP_EO2_1 U608 ( .A1(codeword[71]), .A2(codeword[36]), .X(n472) );
  STP_NR2_G_0P8 U609 ( .A1(n826), .A2(n806), .X(n807) );
  STP_NR2_G_0P8 U610 ( .A1(n809), .A2(n733), .X(n734) );
  STP_NR2_G_0P8 U611 ( .A1(n823), .A2(n733), .X(n710) );
  STP_NR2_G_0P8 U612 ( .A1(n809), .A2(n820), .X(n810) );
  STP_NR2_G_0P8 U613 ( .A1(n818), .A2(n820), .X(n819) );
  STP_NR2_G_0P8 U614 ( .A1(n815), .A2(n733), .X(n730) );
  STP_NR2_G_0P8 U615 ( .A1(n821), .A2(n826), .X(n694) );
  STP_NR2_G_0P8 U616 ( .A1(n826), .A2(n825), .X(n827) );
  STP_NR2_G_0P8 U617 ( .A1(n812), .A2(n820), .X(n813) );
  STP_NR2_G_0P8 U618 ( .A1(n821), .A2(n733), .X(n732) );
  STP_NR2_G_0P8 U619 ( .A1(n821), .A2(n820), .X(n822) );
  STP_NR2_G_0P8 U620 ( .A1(n815), .A2(n777), .X(n775) );
  STP_NR2_G_0P8 U621 ( .A1(n767), .A2(n825), .X(n762) );
  STP_NR2_G_0P8 U622 ( .A1(n812), .A2(n777), .X(n773) );
  STP_NR2_G_0P8 U623 ( .A1(n777), .A2(n806), .X(n771) );
  STP_NR2_G_0P8 U624 ( .A1(n809), .A2(n777), .X(n776) );
  STP_NR2_G_0P8 U625 ( .A1(n818), .A2(n777), .X(n774) );
  STP_NR2_G_0P8 U626 ( .A1(n821), .A2(n777), .X(n778) );
  STP_ND2_1P5 U627 ( .A1(n722), .A2(n724), .X(n809) );
  STP_INV_1P5 U628 ( .A(n780), .X(n769) );
  STP_NR2_1 U629 ( .A1(n713), .A2(n715), .X(n722) );
  STP_INV_1P5 U630 ( .A(n672), .X(n693) );
  STP_NR3_G_1 U631 ( .A1(n611), .A2(n610), .A3(n609), .X(n612) );
  STP_AOI211_G_1 U632 ( .A1(n676), .A2(n647), .B1(n646), .B2(n645), .X(n653)
         );
  STP_OAI22_0P5 U633 ( .A1(n744), .A2(n687), .B1(n748), .B2(n622), .X(n623) );
  STP_OAI22_V3S_1 U634 ( .A1(n662), .A2(n659), .B1(n663), .B2(n748), .X(n635)
         );
  STP_ND2_S_0P8 U635 ( .A1(n656), .A2(n655), .X(n667) );
  STP_OAI22_0P75 U636 ( .A1(n663), .A2(n662), .B1(n699), .B2(n661), .X(n664)
         );
  STP_OAI21_0P5 U637 ( .A1(n630), .A2(n607), .B(n683), .X(n587) );
  STP_OAI21_0P5 U638 ( .A1(n736), .A2(n684), .B(n683), .X(n685) );
  STP_OAI22_0P5 U639 ( .A1(n705), .A2(n629), .B1(n746), .B2(n743), .X(n637) );
  STP_OAI21_0P75 U640 ( .A1(n615), .A2(n640), .B(n647), .X(n517) );
  STP_OAI21_0P5 U641 ( .A1(n616), .A2(n607), .B(n593), .X(n569) );
  STP_OAI21_0P5 U642 ( .A1(n584), .A2(n684), .B(n632), .X(n585) );
  STP_INV_S_1 U643 ( .A(n660), .X(n616) );
  STP_NR2_1 U644 ( .A1(n525), .A2(n579), .X(n584) );
  STP_ND2_S_1 U645 ( .A1(n597), .A2(n640), .X(n598) );
  STP_INV_S_1 U646 ( .A(n684), .X(n659) );
  STP_AOI22_1 U647 ( .A1(n678), .A2(n677), .B1(n741), .B2(n676), .X(n679) );
  STP_ND2_G_1 U648 ( .A1(n735), .A2(n628), .X(n705) );
  STP_OAI21_0P5 U649 ( .A1(n592), .A2(n615), .B(n741), .X(n586) );
  STP_OAI21_0P5 U650 ( .A1(n592), .A2(n640), .B(n681), .X(n556) );
  STP_NR2_1 U651 ( .A1(n580), .A2(n579), .X(n741) );
  STP_NR2_1 U652 ( .A1(n528), .A2(n527), .X(n632) );
  STP_INV_S_1 U653 ( .A(n552), .X(n735) );
  STP_INV_2 U654 ( .A(n538), .X(n525) );
  STP_NR2_1 U655 ( .A1(n514), .A2(n529), .X(n649) );
  STP_ND2_G_1 U656 ( .A1(n562), .A2(n523), .X(n746) );
  STP_NR2_G_2 U657 ( .A1(n577), .A2(n576), .X(n538) );
  STP_NR2_1 U658 ( .A1(n446), .A2(n577), .X(n581) );
  STP_INV_S_1 U659 ( .A(n535), .X(n529) );
  STP_ND2_S_0P8 U660 ( .A1(n627), .A2(n576), .X(n515) );
  STP_INV_2 U661 ( .A(n627), .X(n577) );
  STP_INV_S_0P65 U662 ( .A(n542), .X(n547) );
  STP_NR2_1 U663 ( .A1(n578), .A2(n575), .X(n523) );
  STP_EO3_1 U664 ( .A1(n506), .A2(n505), .A3(n504), .X(n541) );
  STP_EO2_S_2 U665 ( .A1(n485), .A2(n412), .X(n419) );
  STP_INV_S_1 U666 ( .A(n499), .X(n500) );
  STP_INV_S_1 U667 ( .A(n461), .X(n462) );
  STP_EO3_1 U668 ( .A1(n460), .A2(codeword[65]), .A3(codeword[43]), .X(n482)
         );
  STP_EO2_1 U669 ( .A1(codeword[37]), .A2(codeword[68]), .X(n463) );
  STP_NR2_G_0P8 U670 ( .A1(n818), .A2(n733), .X(n731) );
  STP_NR2_G_0P8 U671 ( .A1(n727), .A2(n823), .X(n719) );
  STP_NR2_G_0P8 U672 ( .A1(n815), .A2(n820), .X(n816) );
  STP_NR2_G_0P8 U673 ( .A1(n820), .A2(n806), .X(n805) );
  STP_NR2_G_0P8 U674 ( .A1(n826), .A2(n823), .X(n824) );
  STP_NR2_G_0P8 U675 ( .A1(n727), .A2(n825), .X(n720) );
  STP_NR2_G_0P8 U676 ( .A1(n812), .A2(n733), .X(n729) );
  STP_NR2_G_0P8 U677 ( .A1(n820), .A2(n825), .X(n804) );
  STP_NR2_G_0P8 U678 ( .A1(n823), .A2(n777), .X(n772) );
  STP_NR2_G_0P8 U679 ( .A1(n815), .A2(n767), .X(n763) );
  STP_NR2_G_0P8 U680 ( .A1(n812), .A2(n767), .X(n765) );
  STP_ND2_S_3 U681 ( .A1(n780), .A2(n711), .X(n727) );
  STP_NR2_G_0P8 U682 ( .A1(n759), .A2(n803), .X(n758) );
  STP_NR2_G_0P8 U683 ( .A1(n809), .A2(n767), .X(n764) );
  STP_NR2_G_0P8 U684 ( .A1(n821), .A2(n767), .X(n766) );
  STP_NR2_G_0P8 U685 ( .A1(n818), .A2(n767), .X(n768) );
  STP_NR2_G_0P8 U686 ( .A1(n767), .A2(n806), .X(n761) );
  STP_ND3_2 U687 ( .A1(n769), .A2(n791), .A3(n779), .X(n777) );
  STP_ND2_G_2 U688 ( .A1(n802), .A2(n779), .X(n767) );
  STP_NR2_3 U689 ( .A1(n754), .A2(n671), .X(n791) );
  STP_NR2_G_0P8 U690 ( .A1(n715), .A2(n716), .X(n695) );
  STP_NR3_G_2 U691 ( .A1(n691), .A2(n690), .A3(n689), .X(n692) );
  STP_ND4_MM_4 U692 ( .A1(n670), .A2(n614), .A3(n613), .A4(n612), .X(n672) );
  STP_INV_S_0P65 U693 ( .A(n715), .X(n717) );
  STP_OAI21_0P75 U694 ( .A1(n699), .A2(n698), .B(n697), .X(n707) );
  STP_NR4_1 U695 ( .A1(n667), .A2(n666), .A3(n665), .A4(n664), .X(n673) );
  STP_AOI21_1 U696 ( .A1(n631), .A2(n749), .B(n657), .X(n636) );
  STP_OAI211_1 U697 ( .A1(n688), .A2(n687), .B1(n686), .B2(n685), .X(n689) );
  STP_NR2_1 U698 ( .A1(n591), .A2(n559), .X(n574) );
  STP_INV_S_0P65 U699 ( .A(n604), .X(n605) );
  STP_NR2_G_0P8 U700 ( .A1(n663), .A2(n700), .X(n737) );
  STP_OA21B_1 U701 ( .A1(n703), .A2(n702), .B(n701), .X(n706) );
  STP_INV_S_0P65 U702 ( .A(n630), .X(n631) );
  STP_OAOI211_V2_1 U703 ( .A1(n736), .A2(n650), .B(n649), .C(n648), .X(n651)
         );
  STP_INV_S_0P65 U704 ( .A(n603), .X(n606) );
  STP_INV_S_0P65 U705 ( .A(n644), .X(n645) );
  STP_INV_S_0P65 U706 ( .A(n596), .X(n599) );
  STP_OAI21_0P75 U707 ( .A1(n621), .A2(n743), .B(n697), .X(n624) );
  STP_OAI211_1 U708 ( .A1(n533), .A2(n532), .B1(n604), .B2(n644), .X(n534) );
  STP_ND3_1 U709 ( .A1(n558), .A2(n557), .A3(n556), .X(n559) );
  STP_INV_S_0P65 U710 ( .A(n744), .X(n682) );
  STP_OAI22_0P75 U711 ( .A1(n660), .A2(n661), .B1(n633), .B2(n743), .X(n561)
         );
  STP_ND2_S_0P8 U712 ( .A1(n736), .A2(n735), .X(error_type[0]) );
  STP_OAI21_0P5 U713 ( .A1(n640), .A2(n676), .B(n639), .X(n643) );
  STP_OAI21_0P5 U714 ( .A1(n592), .A2(n675), .B(n647), .X(n570) );
  STP_OAI22_0P75 U715 ( .A1(n661), .A2(n658), .B1(n633), .B2(n739), .X(n611)
         );
  STP_OAI22_0P5 U716 ( .A1(n658), .A2(n748), .B1(n699), .B2(n700), .X(n648) );
  STP_NR2_G_0P8 U717 ( .A1(n705), .A2(n704), .X(n752) );
  STP_OAI22_0P5 U718 ( .A1(n745), .A2(n744), .B1(n743), .B2(n742), .X(n751) );
  STP_AOI211_0P75 U719 ( .A1(n563), .A2(n650), .B1(n654), .B2(n553), .X(n558)
         );
  STP_INV_S_0P65 U720 ( .A(n633), .X(n639) );
  STP_INV_S_0P65 U721 ( .A(n654), .X(n656) );
  STP_INV_S_0P65 U722 ( .A(n675), .X(n680) );
  STP_INV_S_0P65 U723 ( .A(n674), .X(n740) );
  STP_NR2_G_0P8 U724 ( .A1(n675), .A2(n640), .X(n688) );
  STP_OAI22_0P5 U725 ( .A1(n749), .A2(n748), .B1(n747), .B2(n746), .X(n750) );
  STP_INV_S_0P65 U726 ( .A(n632), .X(n662) );
  STP_OA21B_1 U727 ( .A1(n660), .A2(n700), .B(n641), .X(n551) );
  STP_ND2_S_0P8 U728 ( .A1(n700), .A2(n748), .X(n702) );
  STP_INV_S_0P65 U729 ( .A(n699), .X(n594) );
  STP_NR2_G_0P8 U730 ( .A1(n568), .A2(n567), .X(n620) );
  STP_INV_S_0P65 U731 ( .A(n641), .X(n642) );
  STP_INV_S_0P65 U732 ( .A(n657), .X(n678) );
  STP_INV_S_0P65 U733 ( .A(n581), .X(n583) );
  STP_INV_S_0P65 U734 ( .A(n650), .X(n749) );
  STP_INV_S_0P65 U735 ( .A(n747), .X(n554) );
  STP_ND2_1P5 U736 ( .A1(n538), .A2(n537), .X(n633) );
  STP_INV_S_0P65 U737 ( .A(n742), .X(n597) );
  STP_INV_S_0P65 U738 ( .A(n566), .X(n568) );
  STP_INV_S_0P65 U739 ( .A(n510), .X(n512) );
  STP_INV_S_0P65 U740 ( .A(n526), .X(n527) );
  STP_ND2_G_2 U741 ( .A1(n540), .A2(n522), .X(n748) );
  STP_INV_S_0P65 U742 ( .A(n540), .X(n514) );
  STP_NR2_G_0P8 U743 ( .A1(n544), .A2(n541), .X(n526) );
  STP_INV_S_1 U744 ( .A(n537), .X(n629) );
  STP_INV_S_0P65 U745 ( .A(n520), .X(n521) );
  STP_INV_S_1 U746 ( .A(n523), .X(n524) );
  STP_INV_2 U747 ( .A(n626), .X(n576) );
  STP_EO2_1 U748 ( .A1(n448), .A2(n447), .X(n458) );
  STP_EN2_S_2 U749 ( .A1(n426), .A2(codeword[3]), .X(n447) );
  STP_EO2_1 U750 ( .A1(n461), .A2(n476), .X(n423) );
  STP_INV_S_0P65 U751 ( .A(n486), .X(n487) );
  STP_EO2_1 U752 ( .A1(n495), .A2(n485), .X(n492) );
  STP_EO2_1 U753 ( .A1(codeword[22]), .A2(codeword[48]), .X(n425) );
  STP_EO2_1 U754 ( .A1(codeword[5]), .A2(codeword[0]), .X(n440) );
  STP_EO2_1 U755 ( .A1(codeword[46]), .A2(codeword[30]), .X(n432) );
  STP_EO2_1 U756 ( .A1(codeword[56]), .A2(codeword[27]), .X(n433) );
  STP_EO2_1 U757 ( .A1(codeword[6]), .A2(codeword[18]), .X(n441) );
  STP_EN3_3 U758 ( .A1(codeword[1]), .A2(codeword[50]), .A3(codeword[7]), .X(
        n488) );
  STP_NR2_G_2 U759 ( .A1(n525), .A2(n524), .X(n736) );
  STP_NR4_2 U760 ( .A1(n637), .A2(n636), .A3(n635), .A4(n634), .X(n652) );
  STP_NR2_1 U761 ( .A1(n582), .A2(n575), .X(n537) );
  STP_INV_2 U762 ( .A(n578), .X(n582) );
  STP_EO3_0P5 U763 ( .A1(n481), .A2(codeword[11]), .A3(codeword[21]), .X(n483)
         );
  STP_NR2_G_2 U764 ( .A1(n528), .A2(n508), .X(n676) );
  STP_NR2_G_0P5 U765 ( .A1(n547), .A2(n546), .X(n548) );
  STP_ND2_G_1 U766 ( .A1(n536), .A2(n535), .X(n555) );
  STP_INV_S_0P65 U767 ( .A(n748), .X(n593) );
  STP_INV_S_1 U768 ( .A(n584), .X(n663) );
  STP_NR2_G_0P5 U769 ( .A1(n530), .A2(n529), .X(n531) );
  STP_NR2_1 U770 ( .A1(n513), .A2(n542), .X(n540) );
  STP_NR2_1 U771 ( .A1(n544), .A2(n507), .X(n522) );
  STP_NR2_G_0P5 U772 ( .A1(n627), .A2(n626), .X(n628) );
  STP_NR2_G_0P5 U773 ( .A1(n742), .A2(n552), .X(n654) );
  STP_EN2_0P5 U774 ( .A1(codeword[19]), .A2(codeword[31]), .X(n420) );
  STP_INV_S_0P65 U775 ( .A(n563), .X(n532) );
  STP_OA21B_1 U776 ( .A1(n688), .A2(n742), .B(n561), .X(n565) );
  STP_INV_S_1 U777 ( .A(n746), .X(n681) );
  STP_INV_S_1 U778 ( .A(n677), .X(n622) );
  STP_INV_S_0P65 U779 ( .A(n716), .X(n713) );
  STP_ND3_2 U780 ( .A1(n653), .A2(n652), .A3(n651), .X(n754) );
  STP_ND2_G_1 U781 ( .A1(n566), .A2(n567), .X(n747) );
  STP_OAI211_0P5 U782 ( .A1(n740), .A2(n739), .B1(n738), .B2(error_type[0]), 
        .X(n753) );
  STP_INV_S_0P65 U783 ( .A(n703), .X(n698) );
  STP_EN3_1 U784 ( .A1(n493), .A2(n492), .A3(n491), .X(n511) );
  STP_EO3_0P5 U785 ( .A1(n484), .A2(n483), .A3(n482), .X(n493) );
  STP_NR2_G_0P5 U786 ( .A1(n633), .A2(n555), .X(n553) );
  STP_ND2_G_1 U787 ( .A1(n513), .A2(n542), .X(n530) );
  STP_EN2_0P5 U788 ( .A1(codeword[25]), .A2(codeword[64]), .X(n414) );
  STP_INV_S_0P65 U789 ( .A(n431), .X(n434) );
  STP_EO3_0P5 U790 ( .A1(n498), .A2(n497), .A3(n496), .X(n506) );
  STP_INV_S_1 U791 ( .A(n511), .X(n544) );
  STP_EN3_1 U792 ( .A1(n430), .A2(n429), .A3(n442), .X(n626) );
  STP_ND2_G_1 U793 ( .A1(n633), .A2(n746), .X(n668) );
  STP_OAI21_1 U794 ( .A1(n744), .A2(n633), .B(n595), .X(n602) );
  STP_AOI21_0P75 U795 ( .A1(n660), .A2(n659), .B(n748), .X(n665) );
  STP_AOI21_0P75 U796 ( .A1(n658), .A2(n663), .B(n657), .X(n666) );
  STP_EO3_1 U797 ( .A1(n455), .A2(n454), .A3(n453), .X(n457) );
  STP_INV_S_1 U798 ( .A(n607), .X(n658) );
  STP_AOI22_0P5 U799 ( .A1(n615), .A2(n741), .B1(n681), .B2(n640), .X(n618) );
  STP_INV_S_0P65 U800 ( .A(n619), .X(n621) );
  STP_NR2_G_0P5 U801 ( .A1(n584), .A2(n677), .X(n533) );
  STP_INV_S_1 U802 ( .A(n736), .X(n701) );
  STP_AN4B_0P5 U803 ( .B1(n803), .B2(n756), .B3(n755), .A(n754), .X(
        error_type[1]) );
  STP_NR4_0P5 U804 ( .A1(n753), .A2(n752), .A3(n751), .A4(n750), .X(n755) );
  STP_NR2_G_0P5 U805 ( .A1(n727), .A2(n809), .X(n714) );
  STP_NR2_G_0P5 U806 ( .A1(n727), .A2(n815), .X(n726) );
  STP_NR2_G_0P5 U807 ( .A1(n821), .A2(n727), .X(n728) );
  STP_NR2_G_0P5 U808 ( .A1(n759), .A2(n779), .X(n760) );
  STP_NR2_G_0P5 U809 ( .A1(n777), .A2(n825), .X(n770) );
  STP_INV_S_0P65 U810 ( .A(n737), .X(n738) );
  STP_ND2_G_1 U811 ( .A1(n540), .A2(n539), .X(n552) );
  STP_EO2_S_0P5 U812 ( .A1(n813), .A2(codeword[27]), .X(message[19]) );
  STP_EO2_S_0P5 U813 ( .A1(n824), .A2(codeword[57]), .X(message[49]) );
  STP_EO2_S_2 U814 ( .A1(codeword[10]), .A2(codeword[13]), .X(n424) );
  STP_EO2_S_2 U815 ( .A1(codeword[32]), .A2(codeword[1]), .X(n410) );
  STP_EN3_1 U816 ( .A1(n424), .A2(n486), .A3(n410), .X(n448) );
  STP_EO3_2 U817 ( .A1(n448), .A2(n411), .A3(n431), .X(n459) );
  STP_EN3_3 U818 ( .A1(codeword[67]), .A2(codeword[7]), .A3(codeword[70]), .X(
        n426) );
  STP_EO2_S_2 U819 ( .A1(codeword[27]), .A2(codeword[38]), .X(n471) );
  STP_EO3_0P5 U820 ( .A1(n471), .A2(codeword[0]), .A3(codeword[57]), .X(n417)
         );
  STP_EO3_0P5 U821 ( .A1(n413), .A2(codeword[9]), .A3(codeword[47]), .X(n416)
         );
  STP_EO3_0P5 U822 ( .A1(n414), .A2(codeword[41]), .A3(codeword[20]), .X(n415)
         );
  STP_EN3_1 U823 ( .A1(n417), .A2(n416), .A3(n415), .X(n418) );
  STP_EN3_3 U824 ( .A1(n459), .A2(n419), .A3(n418), .X(n575) );
  STP_EO3_0P5 U825 ( .A1(codeword[1]), .A2(codeword[61]), .A3(codeword[54]), 
        .X(n422) );
  STP_EO3_0P5 U826 ( .A1(n420), .A2(codeword[40]), .A3(codeword[58]), .X(n421)
         );
  STP_EN3_1 U827 ( .A1(n423), .A2(n422), .A3(n421), .X(n430) );
  STP_EO3_0P5 U828 ( .A1(n494), .A2(n425), .A3(n424), .X(n429) );
  STP_EO2_S_2 U829 ( .A1(codeword[39]), .A2(codeword[64]), .X(n427) );
  STP_EO3_0P5 U830 ( .A1(n434), .A2(n433), .A3(n432), .X(n438) );
  STP_EO3_0P5 U831 ( .A1(codeword[10]), .A2(codeword[4]), .A3(codeword[60]), 
        .X(n437) );
  STP_EO3_0P5 U832 ( .A1(n435), .A2(codeword[43]), .A3(codeword[49]), .X(n436)
         );
  STP_EO3_0P5 U833 ( .A1(n438), .A2(n437), .A3(n436), .X(n445) );
  STP_INV_S_1 U834 ( .A(n456), .X(n444) );
  STP_EN3_3 U835 ( .A1(n445), .A2(n444), .A3(n443), .X(n627) );
  STP_EO2_S_2 U836 ( .A1(codeword[23]), .A2(codeword[48]), .X(n489) );
  STP_EO3_1 U837 ( .A1(n489), .A2(n450), .A3(n449), .X(n455) );
  STP_ND2_G_1 U838 ( .A1(n581), .A2(n582), .X(n660) );
  STP_INV_S_1 U839 ( .A(n459), .X(n468) );
  STP_EO2_S_2 U840 ( .A1(codeword[26]), .A2(codeword[40]), .X(n460) );
  STP_EO3_0P5 U841 ( .A1(n482), .A2(n463), .A3(n462), .X(n467) );
  STP_EN3_3 U842 ( .A1(n465), .A2(n497), .A3(n474), .X(n466) );
  STP_EN3_3 U843 ( .A1(n468), .A2(n467), .A3(n466), .X(n567) );
  STP_EO3_0P5 U844 ( .A1(n469), .A2(codeword[62]), .A3(codeword[19]), .X(n484)
         );
  STP_EO3_0P5 U845 ( .A1(n484), .A2(n471), .A3(n470), .X(n480) );
  STP_EO3_0P5 U846 ( .A1(n474), .A2(n473), .A3(n472), .X(n479) );
  STP_EO3_0P5 U847 ( .A1(n496), .A2(n477), .A3(n476), .X(n478) );
  STP_EN3_1 U848 ( .A1(n480), .A2(n479), .A3(n478), .X(n542) );
  STP_NR2_1 U849 ( .A1(n513), .A2(n547), .X(n510) );
  STP_EO2_S_2 U850 ( .A1(codeword[69]), .A2(codeword[18]), .X(n481) );
  STP_EO3_0P5 U851 ( .A1(n487), .A2(codeword[33]), .A3(codeword[28]), .X(n490)
         );
  STP_EO3_0P5 U852 ( .A1(n490), .A2(n489), .A3(n488), .X(n491) );
  STP_EO3_0P5 U853 ( .A1(n500), .A2(codeword[70]), .A3(codeword[5]), .X(n505)
         );
  STP_EO3_0P5 U854 ( .A1(n503), .A2(codeword[66]), .A3(n502), .X(n504) );
  STP_NR2_1 U855 ( .A1(n627), .A2(n576), .X(n562) );
  STP_ND2_G_1 U856 ( .A1(n526), .A2(n567), .X(n546) );
  STP_NR2_1 U857 ( .A1(n546), .A2(n542), .X(n675) );
  STP_NR3_G_1 U858 ( .A1(n578), .A2(n575), .A3(n626), .X(n520) );
  STP_INV_S_1 U859 ( .A(n536), .X(n528) );
  STP_ND2_G_1 U860 ( .A1(n674), .A2(n676), .X(n518) );
  STP_NR2_1 U861 ( .A1(n512), .A2(n529), .X(n640) );
  STP_ND2_G_1 U862 ( .A1(n582), .A2(n575), .X(n704) );
  STP_NR2_1 U863 ( .A1(n515), .A2(n629), .X(n650) );
  STP_INV_1P5 U864 ( .A(n649), .X(n661) );
  STP_NR2_1 U865 ( .A1(n622), .A2(n661), .X(n596) );
  STP_ND2_G_1 U866 ( .A1(n578), .A2(n575), .X(n579) );
  STP_ND2_G_1 U867 ( .A1(n657), .A2(n748), .X(n563) );
  STP_ND2_G_1 U868 ( .A1(n736), .A2(n632), .X(n604) );
  STP_ND2_G_1 U869 ( .A1(n736), .A2(n531), .X(n644) );
  STP_NR4_1 U870 ( .A1(n589), .A2(n596), .A3(n737), .A4(n534), .X(n560) );
  STP_ND2_G_1 U871 ( .A1(n668), .A2(n545), .X(n550) );
  STP_ND2_G_1 U872 ( .A1(n736), .A2(n548), .X(n655) );
  STP_ND2_G_1 U873 ( .A1(n647), .A2(n735), .X(n549) );
  STP_INV_S_1 U874 ( .A(n555), .X(n592) );
  STP_INV_S_1 U875 ( .A(n676), .X(n743) );
  STP_NR2_1 U876 ( .A1(n580), .A2(n629), .X(n607) );
  STP_AOI22_1 U877 ( .A1(n639), .A2(n675), .B1(n607), .B2(n620), .X(n608) );
  STP_INV_S_1 U878 ( .A(n615), .X(n739) );
  STP_AO21B_1 U879 ( .A1(n739), .A2(n747), .B(n597), .X(n571) );
  STP_ND2_G_1 U880 ( .A1(n715), .A2(n716), .X(n709) );
  STP_ND4_1 U881 ( .A1(n578), .A2(n577), .A3(n576), .A4(n575), .X(n699) );
  STP_ND2_G_1 U882 ( .A1(n619), .A2(n615), .X(n603) );
  STP_ND4_1 U883 ( .A1(n587), .A2(n586), .A3(n603), .A4(n585), .X(n588) );
  STP_NR4_2 U884 ( .A1(n591), .A2(n590), .A3(n589), .A4(n588), .X(n724) );
  STP_AOI22_0P75 U885 ( .A1(n607), .A2(n683), .B1(n594), .B2(n593), .X(n595)
         );
  STP_OAI22_V3S_1 U886 ( .A1(n657), .A2(n701), .B1(n687), .B2(n739), .X(n601)
         );
  STP_ND2_G_1 U887 ( .A1(n599), .A2(n598), .X(n600) );
  STP_NR2_1 U888 ( .A1(n606), .A2(n605), .X(n614) );
  STP_OAI21_1 U889 ( .A1(n616), .A2(n650), .B(n683), .X(n613) );
  STP_ND2_G_1 U890 ( .A1(n618), .A2(n617), .X(n625) );
  STP_ND2_G_1 U891 ( .A1(n736), .A2(n620), .X(n697) );
  STP_NR3_G_1 U892 ( .A1(n625), .A2(n624), .A3(n623), .X(n756) );
  STP_ND2_G_1 U893 ( .A1(n675), .A2(n668), .X(n669) );
  STP_ND3_2 U894 ( .A1(n673), .A2(n670), .A3(n669), .X(n671) );
  STP_OAI21_1 U895 ( .A1(n740), .A2(n680), .B(n679), .X(n690) );
  STP_EO2_S_0P5 U896 ( .A1(n694), .A2(codeword[49]), .X(message[41]) );
  STP_EO2_S_0P5 U897 ( .A1(n696), .A2(codeword[10]), .X(message[2]) );
  STP_EO2_S_0P5 U898 ( .A1(n708), .A2(codeword[66]), .X(message[58]) );
  STP_EO2_S_0P5 U899 ( .A1(n710), .A2(codeword[58]), .X(message[50]) );
  STP_EO2_S_0P5 U900 ( .A1(n712), .A2(codeword[8]), .X(message[0]) );
  STP_EO2_S_0P5 U901 ( .A1(n714), .A2(codeword[16]), .X(message[8]) );
  STP_EO2_S_0P5 U902 ( .A1(n718), .A2(codeword[40]), .X(message[32]) );
  STP_EO2_S_0P5 U903 ( .A1(n719), .A2(codeword[56]), .X(message[48]) );
  STP_EO2_S_0P5 U904 ( .A1(n720), .A2(codeword[64]), .X(message[56]) );
  STP_ND2_G_2 U905 ( .A1(n722), .A2(n721), .X(n812) );
  STP_EO2_S_0P5 U906 ( .A1(n723), .A2(codeword[24]), .X(message[16]) );
  STP_EO2_S_0P5 U907 ( .A1(n726), .A2(codeword[32]), .X(message[24]) );
  STP_EO2_S_0P5 U908 ( .A1(n728), .A2(codeword[48]), .X(message[40]) );
  STP_EO2_S_0P5 U909 ( .A1(n729), .A2(codeword[26]), .X(message[18]) );
  STP_EO2_S_0P5 U910 ( .A1(n730), .A2(codeword[34]), .X(message[26]) );
  STP_EO2_S_0P5 U911 ( .A1(n731), .A2(codeword[42]), .X(message[34]) );
  STP_EO2_S_0P5 U912 ( .A1(n732), .A2(codeword[50]), .X(message[42]) );
  STP_EO2_S_0P5 U913 ( .A1(n734), .A2(codeword[18]), .X(message[10]) );
  STP_INV_S_0P65 U914 ( .A(n741), .X(n745) );
  STP_EO2_S_0P5 U915 ( .A1(n758), .A2(codeword[63]), .X(message[55]) );
  STP_EO2_S_0P5 U916 ( .A1(n760), .A2(codeword[59]), .X(message[51]) );
  STP_EO2_S_0P5 U917 ( .A1(n761), .A2(codeword[15]), .X(message[7]) );
  STP_EO2_S_0P5 U918 ( .A1(n762), .A2(codeword[71]), .X(message[63]) );
  STP_EO2_S_0P5 U919 ( .A1(n763), .A2(codeword[39]), .X(message[31]) );
  STP_EO2_S_0P5 U920 ( .A1(n764), .A2(codeword[23]), .X(message[15]) );
  STP_EO2_S_0P5 U921 ( .A1(n765), .A2(codeword[31]), .X(message[23]) );
  STP_EO2_S_0P5 U922 ( .A1(n766), .A2(codeword[55]), .X(message[47]) );
  STP_EO2_S_0P5 U923 ( .A1(n768), .A2(codeword[47]), .X(message[39]) );
  STP_EO2_S_0P5 U924 ( .A1(n770), .A2(codeword[69]), .X(message[61]) );
  STP_EO2_S_0P5 U925 ( .A1(n771), .A2(codeword[13]), .X(message[5]) );
  STP_EO2_S_0P5 U926 ( .A1(n772), .A2(codeword[61]), .X(message[53]) );
  STP_EO2_S_0P5 U927 ( .A1(n773), .A2(codeword[29]), .X(message[21]) );
  STP_EO2_S_0P5 U928 ( .A1(n774), .A2(codeword[45]), .X(message[37]) );
  STP_EO2_S_0P5 U929 ( .A1(n775), .A2(codeword[37]), .X(message[29]) );
  STP_EO2_S_0P5 U930 ( .A1(n776), .A2(codeword[21]), .X(message[13]) );
  STP_EO2_S_0P5 U931 ( .A1(n778), .A2(codeword[53]), .X(message[45]) );
  STP_ND2B_2 U932 ( .A(n792), .B(n781), .X(n789) );
  STP_EO2_S_0P5 U933 ( .A1(n782), .A2(codeword[62]), .X(message[54]) );
  STP_EO2_S_0P5 U934 ( .A1(n783), .A2(codeword[30]), .X(message[22]) );
  STP_EO2_S_0P5 U935 ( .A1(n784), .A2(codeword[14]), .X(message[6]) );
  STP_EO2_S_0P5 U936 ( .A1(n785), .A2(codeword[54]), .X(message[46]) );
  STP_EO2_S_0P5 U937 ( .A1(n786), .A2(codeword[70]), .X(message[62]) );
  STP_EO2_S_0P5 U938 ( .A1(n787), .A2(codeword[46]), .X(message[38]) );
  STP_EO2_S_0P5 U939 ( .A1(n788), .A2(codeword[22]), .X(message[14]) );
  STP_EO2_S_0P5 U940 ( .A1(n790), .A2(codeword[38]), .X(message[30]) );
  STP_ND2B_2 U941 ( .A(n792), .B(n791), .X(n800) );
  STP_EO2_S_0P5 U942 ( .A1(n793), .A2(codeword[36]), .X(message[28]) );
  STP_EO2_S_0P5 U943 ( .A1(n794), .A2(codeword[12]), .X(message[4]) );
  STP_EO2_S_0P5 U944 ( .A1(n795), .A2(codeword[20]), .X(message[12]) );
  STP_EO2_S_0P5 U945 ( .A1(n796), .A2(codeword[28]), .X(message[20]) );
  STP_EO2_S_0P5 U946 ( .A1(n797), .A2(codeword[52]), .X(message[44]) );
  STP_EO2_S_0P5 U947 ( .A1(n798), .A2(codeword[60]), .X(message[52]) );
  STP_EO2_S_0P5 U948 ( .A1(n799), .A2(codeword[68]), .X(message[60]) );
  STP_EO2_S_0P5 U949 ( .A1(n801), .A2(codeword[44]), .X(message[36]) );
  STP_EO2_S_0P5 U950 ( .A1(n804), .A2(codeword[67]), .X(message[59]) );
  STP_EO2_S_0P5 U951 ( .A1(n805), .A2(codeword[11]), .X(message[3]) );
  STP_EO2_S_0P5 U952 ( .A1(n807), .A2(codeword[9]), .X(message[1]) );
  STP_EO2_S_0P5 U953 ( .A1(n808), .A2(codeword[17]), .X(message[9]) );
  STP_EO2_S_0P5 U954 ( .A1(n810), .A2(codeword[19]), .X(message[11]) );
  STP_EO2_S_0P5 U955 ( .A1(n811), .A2(codeword[25]), .X(message[17]) );
  STP_EO2_S_0P5 U956 ( .A1(n814), .A2(codeword[33]), .X(message[25]) );
  STP_EO2_S_0P5 U957 ( .A1(n816), .A2(codeword[35]), .X(message[27]) );
  STP_EO2_S_0P5 U958 ( .A1(n817), .A2(codeword[41]), .X(message[33]) );
  STP_EO2_S_0P5 U959 ( .A1(n819), .A2(codeword[43]), .X(message[35]) );
  STP_EO2_S_0P5 U960 ( .A1(n822), .A2(codeword[51]), .X(message[43]) );
  STP_EO2_S_0P5 U961 ( .A1(n827), .A2(codeword[65]), .X(message[57]) );
endmodule

