
-- 
-- Definition of  base_control
-- 
--      05/25/23 10:22:58
--      
--      LeonardoSpectrum Level 3, 2012b.6
-- 

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity counter_trigger_500 is
   port (
      clk : IN std_logic ;
      res : IN std_logic ;
      trigger : IN std_logic ;
      cnt_rdy : OUT std_logic) ;
end counter_trigger_500 ;

architecture arch of counter_trigger_500 is
   signal cnt_s_31, cnt_s_27, cnt_s_26, cnt_s_24, cnt_s_6, cnt_s_5, cnt_s_4, 
      cnt_s_3, cnt_s_2, cnt_s_1, cnt_s_0, STATE, nx500, nx2, nx10, nx26, 
      nx501, nx42, nx503, nx60, nx504, nx78, nx505, nx96, nx507, nx114, 
      nx132, nx511, nx512, nx168, nx186, nx514, nx204, nx515, nx222, nx240, 
      nx517, nx518, nx294, nx521, nx522, nx348, nx525, nx527, nx402, nx531, 
      nx456, nx492, nx590, nx646, nx684, nx694, nx577, nx581, nx587, nx591, 
      nx599, nx603, nx607, nx615, nx623, nx627, nx631, nx639, nx647, nx655, 
      nx663, nx671, nx679, nx687, nx695, nx699, nx702, nx708, nx714, nx717, 
      nx720, nx726, nx732, nx735, nx738, nx741, nx744, nx747, nx750, nx753, 
      nx756, nx759, nx762, nx765, nx768, nx773, nx776, nx780, nx811, nx819, 
      nx823, nx827, nx830, nx832, nx836, nx838, nx842, nx846, nx848, nx850, 
      nx852, nx856, nx858, nx860, nx862, nx864, nx866, nx868, nx870, nx872, 
      nx874, nx876, nx878, nx880, nx882, nx884, nx886, nx888, nx890, nx892, 
      nx894, nx896, nx900, nx902, nx904, nx906, nx908, nx916, nx918, nx945, 
      nx947, nx949, nx951, nx953, nx955, cnt_s_30, nx559, cnt_s_29, nx567, 
      cnt_s_28, nx573, nx528, cnt_s_25, nx595, nx474, cnt_s_23, nx611, nx438, 
      cnt_s_22, nx619, nx420, cnt_s_20, nx635, nx384, cnt_s_19, nx643, nx366, 
      cnt_s_19_XX0_XREP40, nx643_XX0_XREP40, cnt_s_17, nx659, nx330, 
      cnt_s_16, nx667, nx312, cnt_s_14, nx683, nx276, nx258, cnt_s_8, nx723, 
      cnt_s_11, nx705, cnt_s_10, nx711, cnt_s_15, nx675, cnt_s_14_XX0_XREP46, 
      nx683_XX0_XREP46, cnt_s_13, nx691, cnt_s_7, nx729, nx150, 
      cnt_s_7_XX0_XREP73, nx729_XX0_XREP73, cnt_s_18, nx651, 
      cnt_s_17_XX0_XREP42, nx659_XX0_XREP42, cnt_s_16_XX0_XREP44, 
      nx667_XX0_XREP44, nx981, nx982, nx983, nx984, nx985, nx986, nx987, 
      nx988, nx989, nx990, nx991, nx992, nx993, nx994, nx995, nx996, nx997, 
      nx998, nx999, nx578, nx1000, nx1001, nx1002, nx1003, nx1004, nx1005, 
      nx1006, nx1007, nx1008, nx1009, nx1010, nx1011, nx564, nx533, nx910, 
      nx1012, nx1013, nx1014, nx1015, nx1016, nx535, nx1017, nx1018, nx1019, 
      nx1020, nx1021, nx536, nx1022, nx546, nx532, nx844, nx840, nx1023, 
      nx1024, nx1025, nx1026, nx529, nx1027, nx1028, nx898, nx1029, nx1030, 
      nx1031, nx1032, nx1033, nx1034, nx1035, nx1036, nx1037, nx1038, nx1039, 
      nx1040, nx510, nx530, nx1041, nx1042, nx1043, nx513, nx509, nx1044, 
      nx1045, nx1046, nx516, nx1047, nx1048, nx1049, nx1050, nx1051, nx1052, 
      nx1053, nx1054, nx523, nx1055, nx1056, nx1057, nx1058, nx519, nx1059, 
      nx1060, nx1061, nx1062, nx1063, nx1064, nx1065, nx1066, nx1067, nx674, 
      nx1068, nx1069, nx1070, nx1071, nx1072, nx1073, nx1074, nx1075, nx1076, 
      nx1077, nx1078, nx1079, cnt_rdy_EXMPLR, nx1080, nx1081, nx1082, nx1083, 
      nx1084, nx1085, nx785, nx604, nx815, nx1086, nx1087, nx1088, nx1089: 
   std_logic ;

begin
   cnt_rdy <= cnt_rdy_EXMPLR ;
   reg_cnt_s_31 : dff port map ( Q=>cnt_s_31, QB=>OPEN, D=>nx578, CLK=>clk);
   ix496 : nor02_2x port map ( Y=>nx492, A0=>nx591, A1=>nx908);
   reg_cnt_s_24 : dff port map ( Q=>cnt_s_24, QB=>nx603, D=>nx456, CLK=>clk
   );
   ix457 : nor02_2x port map ( Y=>nx456, A0=>nx607, A1=>nx902);
   ix447 : nor04 port map ( Y=>nx531, A0=>nx981, A1=>nx619, A2=>nx627, A3=>
      nx900);
   cnt_s_21 : dff port map ( Q=>OPEN, QB=>nx627, D=>nx402, CLK=>clk);
   ix403 : nor02_2x port map ( Y=>nx402, A0=>nx631, A1=>nx890);
   ix632 : nor02ii port map ( Y=>nx631, A0=>nx527, A1=>nx627);
   ix393 : nor04 port map ( Y=>nx527, A0=>nx635, A1=>nx643, A2=>nx651, A3=>
      nx888);
   ix375 : nor04 port map ( Y=>nx525, A0=>nx643_XX0_XREP40, A1=>nx651, A2=>
      nx659_XX0_XREP42, A3=>nx874);
   ix349 : nor02_2x port map ( Y=>nx348, A0=>nx655, A1=>nx878);
   ix339 : nor04 port map ( Y=>nx522, A0=>nx659, A1=>nx667, A2=>nx675, A3=>
      nx876);
   ix321 : nor04 port map ( Y=>nx521, A0=>nx667_XX0_XREP44, A1=>nx675, A2=>
      nx683_XX0_XREP46, A3=>nx862);
   ix295 : nor02_2x port map ( Y=>nx294, A0=>nx679, A1=>nx866);
   ix285 : nor04 port map ( Y=>nx518, A0=>nx683, A1=>nx983, A2=>nx699, A3=>
      nx864);
   ix267 : nor04 port map ( Y=>nx517, A0=>nx983, A1=>nx699, A2=>nx705, A3=>
      nx858);
   cnt_s_12 : dff port map ( Q=>OPEN, QB=>nx699, D=>nx240, CLK=>clk);
   ix241 : nor02_2x port map ( Y=>nx240, A0=>nx702, A1=>nx850);
   ix703 : nor02ii port map ( Y=>nx702, A0=>nx515, A1=>nx699);
   ix231 : nor04 port map ( Y=>nx515, A0=>nx705, A1=>nx711, A2=>nx717, A3=>
      nx848);
   ix223 : nor03_2x port map ( Y=>nx222, A0=>nx708, A1=>nx515, A2=>nx947);
   ix213 : nor04 port map ( Y=>nx514, A0=>nx711, A1=>nx717, A2=>nx723, A3=>
      nx846);
   ix205 : nor03_2x port map ( Y=>nx204, A0=>nx714, A1=>nx514, A2=>nx947);
   cnt_s_9 : dff port map ( Q=>OPEN, QB=>nx717, D=>nx186, CLK=>clk);
   ix187 : nor03_2x port map ( Y=>nx186, A0=>nx720, A1=>nx985, A2=>nx947);
   ix721 : nor02ii port map ( Y=>nx720, A0=>nx512, A1=>nx717);
   ix177 : nor03_2x port map ( Y=>nx512, A0=>nx723, A1=>nx729, A2=>nx844);
   ix169 : nor03_2x port map ( Y=>nx168, A0=>nx726, A1=>nx512, A2=>nx947);
   ix159 : nor04 port map ( Y=>nx511, A0=>nx729, A1=>nx735, A2=>nx741, A3=>
      nx842);
   ix133 : nor03_2x port map ( Y=>nx132, A0=>nx738, A1=>nx988, A2=>nx945);
   ix123 : nor03_2x port map ( Y=>nx507, A0=>nx741, A1=>nx747, A2=>nx840);
   ix115 : nor03_2x port map ( Y=>nx114, A0=>nx744, A1=>nx507, A2=>nx945);
   ix105 : nor03_2x port map ( Y=>nx505, A0=>nx747, A1=>nx753, A2=>nx838);
   ix97 : nor03_2x port map ( Y=>nx96, A0=>nx750, A1=>nx505, A2=>nx945);
   ix87 : nor03_2x port map ( Y=>nx504, A0=>nx753, A1=>nx759, A2=>nx836);
   ix79 : nor03_2x port map ( Y=>nx78, A0=>nx756, A1=>nx504, A2=>nx945);
   ix69 : nor02_2x port map ( Y=>nx503, A0=>nx759, A1=>nx836);
   reg_cnt_s_2 : dff port map ( Q=>cnt_s_2, QB=>nx759, D=>nx60, CLK=>clk);
   ix61 : nor03_2x port map ( Y=>nx60, A0=>nx762, A1=>nx503, A2=>nx945);
   ix51 : nor02_2x port map ( Y=>nx501, A0=>nx765, A1=>nx823);
   ix43 : nor03_2x port map ( Y=>nx42, A0=>nx768, A1=>nx501, A2=>nx945);
   ix769 : nor02_2x port map ( Y=>nx768, A0=>nx1088, A1=>nx1086);
   ix27 : nor02_2x port map ( Y=>nx26, A0=>nx1088, A1=>nx945);
   ix21 : nand02 port map ( Y=>nx500, A0=>nx773, A1=>STATE);
   ix774 : nand03 port map ( Y=>nx773, A0=>nx646, A1=>nx674, A2=>nx694);
   ix647 : nor03_2x port map ( Y=>nx646, A0=>nx776, A1=>nx780, A2=>nx785);
   ix777 : nand03 port map ( Y=>nx776, A0=>nx590, A1=>nx567, A2=>nx573);
   ix591 : nor02_2x port map ( Y=>nx590, A0=>cnt_s_31, A1=>cnt_s_30);
   ix781 : nand03 port map ( Y=>nx780, A0=>nx604, A1=>nx595, A2=>nx603);
   reg_cnt_s_27 : dff port map ( Q=>cnt_s_27, QB=>nx581, D=>nx510, CLK=>clk
   );
   reg_cnt_s_26 : dff port map ( Q=>cnt_s_26, QB=>nx587, D=>nx492, CLK=>clk
   );
   ix695 : nor03_2x port map ( Y=>nx694, A0=>nx811, A1=>nx815, A2=>nx819);
   ix812 : nand02 port map ( Y=>nx811, A0=>cnt_s_7, A1=>cnt_s_6);
   reg_cnt_s_6 : dff port map ( Q=>cnt_s_6, QB=>nx735, D=>nx132, CLK=>clk);
   reg_cnt_s_5 : dff port map ( Q=>cnt_s_5, QB=>nx741, D=>nx114, CLK=>clk);
   reg_cnt_s_4 : dff port map ( Q=>cnt_s_4, QB=>nx747, D=>nx96, CLK=>clk);
   ix820 : nand03 port map ( Y=>nx819, A0=>nx684, A1=>nx765, A2=>nx823);
   ix685 : nor02_2x port map ( Y=>nx684, A0=>cnt_s_3, A1=>nx759);
   reg_cnt_s_3 : dff port map ( Q=>cnt_s_3, QB=>nx753, D=>nx78, CLK=>clk);
   reg_cnt_s_0 : dff port map ( Q=>cnt_s_0, QB=>nx823, D=>nx26, CLK=>clk);
   reg_STATE : dff port map ( Q=>STATE, QB=>OPEN, D=>nx10, CLK=>clk);
   ix11 : nor02_2x port map ( Y=>nx10, A0=>res, A1=>nx827);
   ix828 : nor02_2x port map ( Y=>nx827, A0=>nx2, A1=>nx951);
   ix3 : nor02_2x port map ( Y=>nx2, A0=>nx830, A1=>STATE);
   ix831 : inv01 port map ( Y=>nx830, A=>trigger);
   ix833 : nor02ii port map ( Y=>nx832, A0=>cnt_rdy_EXMPLR, A1=>STATE);
   reg_cnt_s_1 : dff port map ( Q=>cnt_s_1, QB=>nx765, D=>nx42, CLK=>clk);
   ix837 : nand02 port map ( Y=>nx836, A0=>nx1086, A1=>nx1088);
   ix839 : nand03 port map ( Y=>nx838, A0=>cnt_s_2, A1=>nx1086, A2=>nx1088);
   ix843 : nand02 port map ( Y=>nx842, A0=>cnt_s_4, A1=>nx504);
   ix847 : nand02 port map ( Y=>nx846, A0=>cnt_s_7, A1=>nx988);
   ix849 : nand03 port map ( Y=>nx848, A0=>cnt_s_8, A1=>cnt_s_7, A2=>nx988);
   ix851 : nand02 port map ( Y=>nx850, A0=>nx852, A1=>nx951);
   ix853 : inv01 port map ( Y=>nx852, A=>nx986);
   ix857 : oai21 port map ( Y=>nx856, A0=>nx983, A1=>nx852, B0=>nx951);
   ix859 : nand02 port map ( Y=>nx858, A0=>cnt_s_10, A1=>nx985);
   ix861 : oai21 port map ( Y=>nx860, A0=>nx683, A1=>nx862, B0=>nx951);
   ix863 : nand02 port map ( Y=>nx862, A0=>nx984, A1=>nx986);
   ix865 : nand02 port map ( Y=>nx864, A0=>cnt_s_11, A1=>nx514);
   ix867 : nand02 port map ( Y=>nx866, A0=>nx868, A1=>nx951);
   ix869 : inv01 port map ( Y=>nx868, A=>nx987);
   ix871 : oai21 port map ( Y=>nx870, A0=>nx667, A1=>nx868, B0=>nx951);
   ix873 : oai21 port map ( Y=>nx872, A0=>nx659, A1=>nx874, B0=>nx951);
   ix875 : nand02 port map ( Y=>nx874, A0=>cnt_s_16, A1=>nx987);
   ix877 : nand02 port map ( Y=>nx876, A0=>cnt_s_14, A1=>nx517);
   ix879 : nand02 port map ( Y=>nx878, A0=>nx880, A1=>nx953);
   ix881 : inv01 port map ( Y=>nx880, A=>nx523);
   ix883 : oai21 port map ( Y=>nx882, A0=>nx643, A1=>nx880, B0=>nx953);
   ix885 : oai21 port map ( Y=>nx884, A0=>nx635, A1=>nx886, B0=>nx953);
   ix887 : nand02 port map ( Y=>nx886, A0=>cnt_s_19, A1=>nx523);
   ix889 : nand02 port map ( Y=>nx888, A0=>cnt_s_17, A1=>nx521);
   ix891 : nand02 port map ( Y=>nx890, A0=>nx892, A1=>nx953);
   ix893 : inv01 port map ( Y=>nx892, A=>nx529);
   ix895 : oai21 port map ( Y=>nx894, A0=>nx619, A1=>nx892, B0=>nx953);
   ix897 : oai21 port map ( Y=>nx896, A0=>nx981, A1=>nx898, B0=>nx953);
   ix901 : nand02 port map ( Y=>nx900, A0=>nx982, A1=>nx525);
   ix903 : nand02 port map ( Y=>nx902, A0=>nx904, A1=>nx953);
   ix905 : inv01 port map ( Y=>nx904, A=>nx532);
   ix907 : oai21 port map ( Y=>nx906, A0=>nx595, A1=>nx904, B0=>nx955);
   ix909 : oai21 port map ( Y=>nx908, A0=>nx587, A1=>nx910, B0=>nx955);
   ix917 : inv01 port map ( Y=>nx916, A=>nx535);
   ix919 : oai21 port map ( Y=>nx918, A0=>nx573, A1=>nx916, B0=>nx955);
   ix944 : buf02 port map ( Y=>nx945, A=>nx500);
   ix946 : buf02 port map ( Y=>nx947, A=>nx500);
   ix948 : inv02 port map ( Y=>nx949, A=>nx832);
   ix950 : inv02 port map ( Y=>nx951, A=>nx949);
   ix952 : inv02 port map ( Y=>nx953, A=>nx949);
   ix954 : inv02 port map ( Y=>nx955, A=>nx949);
   ix578 : nor02_2x port map ( Y=>nx577, A0=>nx535, A1=>cnt_s_28);
   ix592 : nor02_2x port map ( Y=>nx591, A0=>nx533, A1=>cnt_s_26);
   ix600 : nor02_2x port map ( Y=>nx599, A0=>nx532, A1=>cnt_s_25);
   ix608 : nor02_2x port map ( Y=>nx607, A0=>nx531, A1=>cnt_s_24);
   ix616 : nor02_2x port map ( Y=>nx615, A0=>nx530, A1=>cnt_s_23);
   ix624 : nor02_2x port map ( Y=>nx623, A0=>nx529, A1=>cnt_s_22);
   ix640 : nor02_2x port map ( Y=>nx639, A0=>nx525, A1=>nx982);
   ix648 : nor02_2x port map ( Y=>nx647, A0=>nx523, A1=>cnt_s_19);
   ix656 : nor02_2x port map ( Y=>nx655, A0=>nx522, A1=>cnt_s_18);
   ix664 : nor02_2x port map ( Y=>nx663, A0=>nx521, A1=>cnt_s_17);
   ix672 : nor02_2x port map ( Y=>nx671, A0=>nx987, A1=>cnt_s_16);
   ix680 : nor02_2x port map ( Y=>nx679, A0=>nx518, A1=>cnt_s_15);
   ix688 : nor02_2x port map ( Y=>nx687, A0=>nx517, A1=>cnt_s_14);
   ix696 : nor02_2x port map ( Y=>nx695, A0=>nx986, A1=>nx984);
   ix709 : nor02_2x port map ( Y=>nx708, A0=>nx514, A1=>cnt_s_11);
   ix715 : nor02_2x port map ( Y=>nx714, A0=>nx985, A1=>cnt_s_10);
   ix727 : nor02_2x port map ( Y=>nx726, A0=>nx511, A1=>cnt_s_8);
   ix733 : nor02_2x port map ( Y=>nx732, A0=>nx988, A1=>cnt_s_7);
   ix739 : nor02_2x port map ( Y=>nx738, A0=>nx507, A1=>cnt_s_6);
   ix745 : nor02_2x port map ( Y=>nx744, A0=>nx505, A1=>cnt_s_5);
   ix751 : nor02_2x port map ( Y=>nx750, A0=>nx504, A1=>cnt_s_4);
   ix757 : nor02_2x port map ( Y=>nx756, A0=>nx503, A1=>cnt_s_3);
   ix763 : nor02_2x port map ( Y=>nx762, A0=>nx501, A1=>cnt_s_2);
   reg_cnt_s_30 : dff port map ( Q=>cnt_s_30, QB=>nx559, D=>nx564, CLK=>clk
   );
   reg_cnt_s_29 : dff port map ( Q=>cnt_s_29, QB=>nx567, D=>nx546, CLK=>clk
   );
   reg_cnt_s_28 : dff port map ( Q=>cnt_s_28, QB=>nx573, D=>nx528, CLK=>clk
   );
   ix529 : nor02_2x port map ( Y=>nx528, A0=>nx577, A1=>nx918);
   reg_cnt_s_25 : dff port map ( Q=>cnt_s_25, QB=>nx595, D=>nx474, CLK=>clk
   );
   ix475 : nor02_2x port map ( Y=>nx474, A0=>nx599, A1=>nx906);
   reg_cnt_s_23 : dff port map ( Q=>cnt_s_23, QB=>nx611, D=>nx438, CLK=>clk
   );
   ix439 : nor02_2x port map ( Y=>nx438, A0=>nx615, A1=>nx896);
   reg_cnt_s_22 : dff port map ( Q=>cnt_s_22, QB=>nx619, D=>nx420, CLK=>clk
   );
   ix421 : nor02_2x port map ( Y=>nx420, A0=>nx623, A1=>nx894);
   reg_cnt_s_20 : dff port map ( Q=>cnt_s_20, QB=>nx635, D=>nx384, CLK=>clk
   );
   ix385 : nor02_2x port map ( Y=>nx384, A0=>nx639, A1=>nx884);
   reg_cnt_s_19 : dff port map ( Q=>cnt_s_19, QB=>nx643, D=>nx366, CLK=>clk
   );
   ix367 : nor02_2x port map ( Y=>nx366, A0=>nx647, A1=>nx882);
   reg_cnt_s_19_0_XREP40 : dff port map ( Q=>cnt_s_19_XX0_XREP40, QB=>
      nx643_XX0_XREP40, D=>nx366, CLK=>clk);
   reg_cnt_s_17 : dff port map ( Q=>cnt_s_17, QB=>nx659, D=>nx330, CLK=>clk
   );
   ix331 : nor02_2x port map ( Y=>nx330, A0=>nx663, A1=>nx872);
   reg_cnt_s_16 : dff port map ( Q=>cnt_s_16, QB=>nx667, D=>nx312, CLK=>clk
   );
   ix313 : nor02_2x port map ( Y=>nx312, A0=>nx671, A1=>nx870);
   reg_cnt_s_14 : dff port map ( Q=>cnt_s_14, QB=>nx683, D=>nx276, CLK=>clk
   );
   ix277 : nor02_2x port map ( Y=>nx276, A0=>nx687, A1=>nx860);
   ix259 : nor02_2x port map ( Y=>nx258, A0=>nx695, A1=>nx856);
   reg_cnt_s_8 : dff port map ( Q=>cnt_s_8, QB=>nx723, D=>nx168, CLK=>clk);
   reg_cnt_s_11 : dff port map ( Q=>cnt_s_11, QB=>nx705, D=>nx222, CLK=>clk
   );
   reg_cnt_s_10 : dff port map ( Q=>cnt_s_10, QB=>nx711, D=>nx204, CLK=>clk
   );
   reg_cnt_s_15 : dff port map ( Q=>cnt_s_15, QB=>nx675, D=>nx294, CLK=>clk
   );
   reg_cnt_s_14_0_XREP46 : dff port map ( Q=>cnt_s_14_XX0_XREP46, QB=>
      nx683_XX0_XREP46, D=>nx276, CLK=>clk);
   reg_cnt_s_13 : dff port map ( Q=>cnt_s_13, QB=>nx691, D=>nx258, CLK=>clk
   );
   reg_cnt_s_7 : dff port map ( Q=>cnt_s_7, QB=>nx729, D=>nx150, CLK=>clk);
   ix151 : nor03_2x port map ( Y=>nx150, A0=>nx732, A1=>nx511, A2=>nx947);
   reg_cnt_s_7_0_XREP73 : dff port map ( Q=>cnt_s_7_XX0_XREP73, QB=>
      nx729_XX0_XREP73, D=>nx150, CLK=>clk);
   reg_cnt_s_18 : dff port map ( Q=>cnt_s_18, QB=>nx651, D=>nx348, CLK=>clk
   );
   reg_cnt_s_17_0_XREP42 : dff port map ( Q=>cnt_s_17_XX0_XREP42, QB=>
      nx659_XX0_XREP42, D=>nx330, CLK=>clk);
   reg_cnt_s_16_0_XREP44 : dff port map ( Q=>cnt_s_16_XX0_XREP44, QB=>
      nx667_XX0_XREP44, D=>nx312, CLK=>clk);
   ix1090 : buf04 port map ( Y=>nx981, A=>nx611);
   ix1091 : buf04 port map ( Y=>nx982, A=>cnt_s_20);
   ix1092 : buf04 port map ( Y=>nx983, A=>nx691);
   ix1093 : buf04 port map ( Y=>nx984, A=>cnt_s_13);
   ix1094 : buf02 port map ( Y=>nx985, A=>nx513);
   ix1095 : buf02 port map ( Y=>nx986, A=>nx516);
   ix1096 : buf04 port map ( Y=>nx987, A=>nx519);
   ix1097 : buf04 port map ( Y=>nx988, A=>nx509);
   ix1098 : and02 port map ( Y=>nx989, A0=>cnt_s_25, A1=>cnt_s_22);
   ix1099 : and04 port map ( Y=>nx990, A0=>cnt_s_26, A1=>cnt_s_24, A2=>
      cnt_s_27, A3=>cnt_s_23);
   ix1100 : inv02 port map ( Y=>nx991, A=>cnt_s_31);
   ix1101 : inv02 port map ( Y=>nx992, A=>cnt_s_30);
   ix1102 : inv02 port map ( Y=>nx993, A=>cnt_s_29);
   ix1103 : inv02 port map ( Y=>nx994, A=>cnt_s_28);
   ix1104 : aoi222 port map ( Y=>nx995, A0=>cnt_s_31, A1=>nx992, B0=>
      cnt_s_31, B1=>nx993, C0=>cnt_s_31, C1=>nx994);
   ix1105 : and02 port map ( Y=>nx996, A0=>cnt_s_29, A1=>cnt_s_28);
   ix1106 : inv02 port map ( Y=>nx997, A=>nx949);
   ix1107 : nor02ii port map ( Y=>nx998, A0=>cnt_s_31, A1=>cnt_s_30);
   ix1108 : nand04_2x port map ( Y=>nx999, A0=>nx535, A1=>nx996, A2=>nx997, 
      A3=>nx998);
   reg_nx578 : oai321 port map ( Y=>nx578, A0=>nx535, A1=>nx991, A2=>nx949, 
      B0=>nx995, B1=>nx949, C0=>nx999);
   ix1109 : inv02 port map ( Y=>nx1000, A=>cnt_s_25);
   ix1110 : nor04_2x port map ( Y=>nx1001, A0=>nx1000, A1=>nx573, A2=>nx581, 
      A3=>nx587);
   ix1111 : inv02 port map ( Y=>nx1002, A=>nx955);
   ix1112 : inv02 port map ( Y=>nx1003, A=>nx611);
   ix1113 : inv02 port map ( Y=>nx1004, A=>nx595);
   ix1114 : inv02 port map ( Y=>nx1005, A=>nx567);
   ix1115 : inv02 port map ( Y=>nx1006, A=>nx573);
   ix1116 : nand04_2x port map ( Y=>nx1007, A0=>nx1003, A1=>nx1004, A2=>
      nx1005, A3=>nx1006);
   ix1117 : inv02 port map ( Y=>nx1008, A=>cnt_s_26);
   ix1118 : nor04_2x port map ( Y=>nx1009, A0=>nx1007, A1=>nx1008, A2=>nx581, 
      A3=>nx603);
   ix1119 : inv02 port map ( Y=>nx1010, A=>cnt_s_29);
   ix1120 : oai21 port map ( Y=>nx1011, A0=>nx1010, A1=>nx559, B0=>nx955);
   reg_nx564 : oai32 port map ( Y=>nx564, A0=>nx536, A1=>nx1002, A2=>nx1028, 
      B0=>nx1028, B1=>nx1011);
   reg_nx533 : nor04_2x port map ( Y=>nx533, A0=>nx898, A1=>nx595, A2=>nx611, 
      A3=>nx603);
   reg_nx910 : nand02_2x port map ( Y=>nx910, A0=>cnt_s_25, A1=>nx532);
   ix1121 : inv02 port map ( Y=>nx1012, A=>nx567);
   ix1122 : inv01 port map ( Y=>nx1013, A=>nx955);
   ix1123 : aoi21 port map ( Y=>nx1014, A0=>cnt_s_28, A1=>nx1012, B0=>nx1013
   );
   ix1124 : nor02ii port map ( Y=>nx1015, A0=>nx627, A1=>cnt_s_20);
   ix1125 : and04 port map ( Y=>nx1016, A0=>nx990, A1=>nx1015, A2=>nx989, A3
      =>cnt_s_19_XX0_XREP40);
   reg_nx535 : and02 port map ( Y=>nx535, A0=>nx523, A1=>nx1016);
   ix1126 : nor02_2x port map ( Y=>nx1017, A0=>nx1013, A1=>nx535);
   ix1127 : and02 port map ( Y=>nx1018, A0=>cnt_s_20, A1=>
      cnt_s_19_XX0_XREP40);
   ix1128 : and02 port map ( Y=>nx1019, A0=>cnt_s_22, A1=>cnt_s_24);
   ix1129 : nor02ii port map ( Y=>nx1020, A0=>nx627, A1=>cnt_s_23);
   ix1130 : and04 port map ( Y=>nx1021, A0=>nx1018, A1=>nx1019, A2=>nx1001, 
      A3=>nx1020);
   reg_nx536 : and02 port map ( Y=>nx536, A0=>nx523, A1=>nx1021);
   ix1131 : oai22 port map ( Y=>nx1022, A0=>nx1014, A1=>nx1017, B0=>nx536, 
      B1=>cnt_s_29);
   reg_nx546 : inv01 port map ( Y=>nx546, A=>nx1022);
   reg_nx532 : and04 port map ( Y=>nx532, A0=>nx523, A1=>nx1018, A2=>nx1019, 
      A3=>nx1020);
   reg_nx844 : inv01 port map ( Y=>nx844, A=>nx509);
   reg_nx840 : nand04_2x port map ( Y=>nx840, A0=>cnt_s_2, A1=>nx1086, A2=>
      cnt_s_3, A3=>nx1089);
   ix1132 : nand03_2x port map ( Y=>nx1023, A0=>nx519, A1=>
      cnt_s_17_XX0_XREP42, A2=>cnt_s_16_XX0_XREP44);
   ix1133 : inv02 port map ( Y=>nx1024, A=>nx1015);
   ix1134 : inv02 port map ( Y=>nx1025, A=>cnt_s_19_XX0_XREP40);
   ix1135 : inv02 port map ( Y=>nx1026, A=>cnt_s_18);
   reg_nx529 : nor04_2x port map ( Y=>nx529, A0=>nx1023, A1=>nx1024, A2=>
      nx1025, A3=>nx1026);
   ix1136 : ao21 port map ( Y=>nx1027, A0=>nx1009, A1=>cnt_s_22, B0=>
      cnt_s_30);
   ix1137 : oai21 port map ( Y=>nx1028, A0=>nx529, A1=>cnt_s_30, B0=>nx1027
   );
   reg_nx898 : nand02_2x port map ( Y=>nx898, A0=>cnt_s_22, A1=>nx529);
   ix1138 : inv02 port map ( Y=>nx1029, A=>nx595);
   ix1139 : inv02 port map ( Y=>nx1030, A=>nx603);
   ix1140 : nand03_2x port map ( Y=>nx1031, A0=>cnt_s_23, A1=>nx1029, A2=>
      nx1030);
   ix1141 : inv02 port map ( Y=>nx1032, A=>nx619);
   ix1142 : inv02 port map ( Y=>nx1033, A=>nx635);
   ix1143 : inv02 port map ( Y=>nx1034, A=>nx587);
   ix1144 : inv02 port map ( Y=>nx1035, A=>nx627);
   ix1145 : nand04_2x port map ( Y=>nx1036, A0=>nx1032, A1=>nx1033, A2=>
      nx1034, A3=>nx1035);
   ix1146 : nor03_2x port map ( Y=>nx1037, A0=>nx886, A1=>nx1031, A2=>nx1036
   );
   ix1147 : nor02_2x port map ( Y=>nx1038, A0=>nx1037, A1=>cnt_s_27);
   ix1148 : inv01 port map ( Y=>nx1039, A=>nx916);
   ix1149 : inv02 port map ( Y=>nx1040, A=>nx955);
   reg_nx510 : nor03_2x port map ( Y=>nx510, A0=>nx1038, A1=>nx1039, A2=>
      nx1040);
   reg_nx530 : nor04_2x port map ( Y=>nx530, A0=>nx886, A1=>nx635, A2=>nx619, 
      A3=>nx627);
   ix1150 : nand04_2x port map ( Y=>nx1041, A0=>nx1087, A1=>cnt_s_2, A2=>
      cnt_s_3, A3=>nx1089);
   ix1151 : nor02_2x port map ( Y=>nx1042, A0=>nx717, A1=>nx741);
   ix1152 : nand04_2x port map ( Y=>nx1043, A0=>nx1061, A1=>nx1042, A2=>
      cnt_s_8, A3=>cnt_s_7_XX0_XREP73);
   reg_nx513 : nor02_2x port map ( Y=>nx513, A0=>nx1041, A1=>nx1043);
   reg_nx509 : and04 port map ( Y=>nx509, A0=>nx1059, A1=>nx1047, A2=>
      cnt_s_2, A3=>nx1061);
   ix1153 : and02 port map ( Y=>nx1044, A0=>cnt_s_8, A1=>nx1087);
   ix1154 : nand04_2x port map ( Y=>nx1045, A0=>nx1059, A1=>nx1052, A2=>
      nx1060, A3=>nx1044);
   ix1155 : nand04_2x port map ( Y=>nx1046, A0=>cnt_s_11, A1=>cnt_s_10, A2=>
      cnt_s_7_XX0_XREP73, A3=>nx1061);
   reg_nx516 : nor02_2x port map ( Y=>nx516, A0=>nx1045, A1=>nx1046);
   ix1156 : and02 port map ( Y=>nx1047, A0=>cnt_s_3, A1=>nx1087);
   ix1157 : nand04_2x port map ( Y=>nx1048, A0=>nx1087, A1=>nx1089, A2=>
      cnt_s_8, A3=>cnt_s_10);
   ix1158 : nand04_2x port map ( Y=>nx1049, A0=>cnt_s_18, A1=>
      cnt_s_7_XX0_XREP73, A2=>cnt_s_11, A3=>cnt_s_2);
   ix1159 : nor02ii port map ( Y=>nx1050, A0=>nx735, A1=>cnt_s_3);
   ix1160 : nor02_2x port map ( Y=>nx1051, A0=>nx741, A1=>nx747);
   ix1161 : nor02_2x port map ( Y=>nx1052, A0=>nx699, A1=>nx717);
   ix1162 : nand04_2x port map ( Y=>nx1053, A0=>nx1050, A1=>nx1051, A2=>
      cnt_s_13, A3=>nx1052);
   ix1163 : nand04_2x port map ( Y=>nx1054, A0=>cnt_s_16_XX0_XREP44, A1=>
      cnt_s_15, A2=>cnt_s_17_XX0_XREP42, A3=>cnt_s_14_XX0_XREP46);
   reg_nx523 : nor04_2x port map ( Y=>nx523, A0=>nx1048, A1=>nx1049, A2=>
      nx1053, A3=>nx1054);
   ix1164 : and02 port map ( Y=>nx1055, A0=>nx1087, A1=>nx1089);
   ix1165 : nand04_2x port map ( Y=>nx1056, A0=>nx1052, A1=>nx1051, A2=>
      nx1055, A3=>nx1050);
   ix1166 : nand04_2x port map ( Y=>nx1057, A0=>cnt_s_15, A1=>
      cnt_s_7_XX0_XREP73, A2=>cnt_s_14_XX0_XREP46, A3=>cnt_s_13);
   ix1167 : nand04_2x port map ( Y=>nx1058, A0=>cnt_s_8, A1=>cnt_s_10, A2=>
      cnt_s_11, A3=>cnt_s_2);
   reg_nx519 : nor03_2x port map ( Y=>nx519, A0=>nx1056, A1=>nx1057, A2=>
      nx1058);
   ix1168 : nor02ii port map ( Y=>nx1059, A0=>nx741, A1=>nx1089);
   ix1169 : and02 port map ( Y=>nx1060, A0=>cnt_s_2, A1=>cnt_s_3);
   ix1170 : nor02_2x port map ( Y=>nx1061, A0=>nx735, A1=>nx747);
   ix1171 : inv01 port map ( Y=>nx1062, A=>cnt_s_11);
   ix1172 : inv01 port map ( Y=>nx1063, A=>cnt_s_10);
   ix1173 : inv01 port map ( Y=>nx1064, A=>cnt_s_15);
   ix1174 : inv01 port map ( Y=>nx1065, A=>cnt_s_14_XX0_XREP46);
   ix1175 : nand04_2x port map ( Y=>nx1066, A0=>nx1062, A1=>nx1063, A2=>
      nx1064, A3=>nx1065);
   ix1176 : nand04_2x port map ( Y=>nx1067, A0=>nx699, A1=>nx717, A2=>nx691, 
      A3=>cnt_s_8);
   reg_nx674 : nor02_2x port map ( Y=>nx674, A0=>nx1066, A1=>nx1067);
   ix1177 : and04 port map ( Y=>nx1068, A0=>nx627, A1=>nx635, A2=>cnt_s_5, 
      A3=>cnt_s_4);
   ix1178 : nor04_2x port map ( Y=>nx1069, A0=>cnt_s_17, A1=>cnt_s_16, A2=>
      cnt_s_27, A3=>cnt_s_19);
   ix1179 : nand03_2x port map ( Y=>nx1070, A0=>nx674, A1=>nx1068, A2=>
      nx1069);
   ix1180 : inv01 port map ( Y=>nx1071, A=>nx573);
   ix1181 : inv01 port map ( Y=>nx1072, A=>nx567);
   ix1182 : nor04_2x port map ( Y=>nx1073, A0=>nx1071, A1=>nx759, A2=>nx1072, 
      A3=>nx735);
   ix1183 : inv01 port map ( Y=>nx1074, A=>nx765);
   ix1184 : inv01 port map ( Y=>nx1075, A=>nx823);
   ix1185 : nor04_2x port map ( Y=>nx1076, A0=>nx1074, A1=>nx1075, A2=>
      nx729_XX0_XREP73, A3=>cnt_s_3);
   ix1186 : nor04_2x port map ( Y=>nx1077, A0=>cnt_s_25, A1=>cnt_s_18, A2=>
      cnt_s_26, A3=>cnt_s_24);
   ix1187 : nor04_2x port map ( Y=>nx1078, A0=>cnt_s_30, A1=>cnt_s_23, A2=>
      cnt_s_31, A3=>cnt_s_22);
   ix1188 : nand04_2x port map ( Y=>nx1079, A0=>nx1073, A1=>nx1076, A2=>
      nx1077, A3=>nx1078);
   reg_cnt_rdy : nor02_2x port map ( Y=>cnt_rdy_EXMPLR, A0=>nx1070, A1=>
      nx1079);
   ix1189 : inv02 port map ( Y=>nx1080, A=>nx627);
   ix1190 : inv02 port map ( Y=>nx1081, A=>nx635);
   ix1191 : nor04_2x port map ( Y=>nx1082, A0=>nx1080, A1=>nx1081, A2=>
      cnt_s_19, A3=>cnt_s_18);
   ix1192 : nor02_2x port map ( Y=>nx1083, A0=>cnt_s_17, A1=>cnt_s_16);
   ix1193 : inv02 port map ( Y=>nx1084, A=>cnt_s_23);
   ix1194 : inv02 port map ( Y=>nx1085, A=>cnt_s_22);
   reg_nx785 : nand04_2x port map ( Y=>nx785, A0=>nx1082, A1=>nx1083, A2=>
      nx1084, A3=>nx1085);
   reg_nx604 : nor02_2x port map ( Y=>nx604, A0=>cnt_s_27, A1=>cnt_s_26);
   reg_nx815 : nand02_2x port map ( Y=>nx815, A0=>cnt_s_5, A1=>cnt_s_4);
   ix1195 : buf16 port map ( Y=>nx1086, A=>cnt_s_1);
   ix1196 : buf16 port map ( Y=>nx1087, A=>cnt_s_1);
   ix1197 : buf16 port map ( Y=>nx1088, A=>cnt_s_0);
   ix1198 : buf16 port map ( Y=>nx1089, A=>cnt_s_0);
end arch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity fsm_guru is
   port (
      clk : IN std_logic ;
      res : IN std_logic ;
      fsm_sg_start : IN std_logic ;
      end_of_guru : IN std_logic ;
      cnt_guru_rdy : IN std_logic ;
      duo_formed : IN std_logic ;
      go_guru : IN std_logic ;
      flags_2_dp_ng_cte_incr : OUT std_logic ;
      flags_2_dp_ng_rand_zero : OUT std_logic ;
      flags_2_dp_alu_ctrl : OUT std_logic ;
      flags_2_dp_rb_INIT_en : OUT std_logic ;
      flags_2_dp_rb_GURU_en : OUT std_logic ;
      flags_2_dp_rb_PRE_GURU_en : OUT std_logic ;
      flags_2_dp_rb_out_sel_4 : OUT std_logic ;
      flags_2_dp_rb_out_sel_3 : OUT std_logic ;
      flags_2_dp_rb_out_sel_2 : OUT std_logic ;
      flags_2_dp_rb_out_sel_1 : OUT std_logic ;
      flags_2_dp_rb_out_sel_0 : OUT std_logic ;
      flags_2_dp_cg_sel_1 : OUT std_logic ;
      flags_2_dp_cg_sel_0 : OUT std_logic ;
      flags_2_mem_mem_a_addr_5 : OUT std_logic ;
      flags_2_mem_mem_a_addr_4 : OUT std_logic ;
      flags_2_mem_mem_a_addr_3 : OUT std_logic ;
      flags_2_mem_mem_a_addr_2 : OUT std_logic ;
      flags_2_mem_mem_a_addr_1 : OUT std_logic ;
      flags_2_mem_mem_a_addr_0 : OUT std_logic ;
      flags_2_mem_mem_wr_en : OUT std_logic ;
      flags_2_mem_data_a_7 : OUT std_logic ;
      flags_2_mem_data_a_6 : OUT std_logic ;
      flags_2_mem_data_a_5 : OUT std_logic ;
      flags_2_mem_data_a_4 : OUT std_logic ;
      flags_2_mem_data_a_3 : OUT std_logic ;
      flags_2_mem_data_a_2 : OUT std_logic ;
      flags_2_mem_data_a_1 : OUT std_logic ;
      flags_2_mem_data_a_0 : OUT std_logic ;
      flags_2_mem_cg_sel_1 : OUT std_logic ;
      flags_2_mem_cg_sel_0 : OUT std_logic) ;
end fsm_guru ;

architecture arch_unfold_1626 of fsm_guru is
   signal flags_2_dp_cg_sel_1_EXMPLR, flags_2_dp_rb_PRE_GURU_en_EXMPLR, 
      flags_2_mem_cg_sel_0_EXMPLR, flags_2_dp_alu_ctrl_EXMPLR, 
      flags_2_dp_rb_out_sel_2_EXMPLR, flags_2_mem_cg_sel_1_EXMPLR, STATE_7, 
      STATE_8, STATE_3, STATE_10, nx8, nx20, STATE_2, STATE_0, STATE_9, nx30, 
      nx44, nx56, nx66, nx78, nx84, nx96, nx108, nx124, nx138, nx64, nx73, 
      nx77, nx79, nx83, nx87, nx90, nx93, nx97, nx100, nx103, nx105, nx109, 
      nx111, nx114, nx118, nx123, nx125, nx127, nx133, nx135, nx141, nx145, 
      nx147: std_logic ;

begin
   flags_2_dp_ng_cte_incr <= flags_2_dp_alu_ctrl_EXMPLR ;
   flags_2_dp_ng_rand_zero <= flags_2_mem_cg_sel_1_EXMPLR ;
   flags_2_dp_alu_ctrl <= flags_2_dp_alu_ctrl_EXMPLR ;
   flags_2_dp_rb_GURU_en <= flags_2_dp_rb_PRE_GURU_en_EXMPLR ;
   flags_2_dp_rb_PRE_GURU_en <= flags_2_dp_rb_PRE_GURU_en_EXMPLR ;
   flags_2_dp_rb_out_sel_4 <= flags_2_mem_cg_sel_1_EXMPLR ;
   flags_2_dp_rb_out_sel_3 <= flags_2_mem_cg_sel_1_EXMPLR ;
   flags_2_dp_rb_out_sel_2 <= flags_2_dp_rb_out_sel_2_EXMPLR ;
   flags_2_dp_rb_out_sel_0 <= flags_2_mem_cg_sel_1_EXMPLR ;
   flags_2_dp_cg_sel_1 <= flags_2_dp_cg_sel_1_EXMPLR ;
   flags_2_dp_cg_sel_0 <= flags_2_mem_cg_sel_0_EXMPLR ;
   flags_2_mem_cg_sel_1 <= flags_2_mem_cg_sel_1_EXMPLR ;
   flags_2_mem_cg_sel_0 <= flags_2_mem_cg_sel_0_EXMPLR ;
   ix65 : fake_vcc port map ( Y=>nx64);
   ix52 : fake_gnd port map ( Y=>flags_2_mem_cg_sel_1_EXMPLR);
   ix70 : nor02_2x port map ( Y=>flags_2_dp_rb_out_sel_1, A0=>STATE_9, A1=>
      STATE_10);
   ix31 : nor03_2x port map ( Y=>nx30, A0=>res, A1=>nx73, A2=>nx135);
   ix109 : oai22 port map ( Y=>nx108, A0=>go_guru, A1=>nx77, B0=>res, B1=>
      nx83);
   ix78 : nand02 port map ( Y=>nx77, A0=>nx79, A1=>STATE_8);
   ix80 : inv01 port map ( Y=>nx79, A=>res);
   reg_STATE_8 : dff port map ( Q=>STATE_8, QB=>nx73, D=>nx108, CLK=>clk);
   reg_STATE_4 : dff port map ( Q=>OPEN, QB=>nx83, D=>nx96, CLK=>clk);
   ix97 : nor03_2x port map ( Y=>nx96, A0=>nx87, A1=>res, A2=>nx133);
   reg_STATE_3 : dff port map ( Q=>STATE_3, QB=>nx87, D=>nx84, CLK=>clk);
   ix85 : nor02_2x port map ( Y=>nx84, A0=>res, A1=>nx90);
   ix79 : oai21 port map ( Y=>nx78, A0=>cnt_guru_rdy, A1=>nx87, B0=>nx93);
   reg_STATE_2 : dff port map ( Q=>STATE_2, QB=>nx93, D=>nx66, CLK=>clk);
   ix67 : nor02_2x port map ( Y=>nx66, A0=>res, A1=>nx97);
   reg_STATE_1 : dff port map ( Q=>OPEN, QB=>nx97, D=>nx56, CLK=>clk);
   ix57 : nor03_2x port map ( Y=>nx56, A0=>nx100, A1=>res, A2=>nx105);
   ix45 : nand03 port map ( Y=>nx44, A0=>nx103, A1=>nx109, A2=>nx79);
   ix104 : nand02 port map ( Y=>nx103, A0=>nx105, A1=>STATE_0);
   ix106 : inv01 port map ( Y=>nx105, A=>fsm_sg_start);
   reg_STATE_0 : dff port map ( Q=>STATE_0, QB=>nx100, D=>nx44, CLK=>clk);
   reg_STATE_9 : dff port map ( Q=>STATE_9, QB=>nx109, D=>nx30, CLK=>clk);
   reg_STATE_10 : dff port map ( Q=>STATE_10, QB=>nx111, D=>nx20, CLK=>clk);
   ix21 : nor02_2x port map ( Y=>nx20, A0=>res, A1=>nx114);
   ix115 : nor02_2x port map ( Y=>nx114, A0=>flags_2_dp_cg_sel_1_EXMPLR, A1
      =>STATE_7);
   reg_STATE_6 : dff port map ( Q=>flags_2_dp_cg_sel_1_EXMPLR, QB=>OPEN, D=>
      nx8, CLK=>clk);
   ix9 : nor03_2x port map ( Y=>nx8, A0=>nx118, A1=>res, A2=>nx127);
   reg_STATE_5 : dff port map ( Q=>OPEN, QB=>nx118, D=>nx124, CLK=>clk);
   ix125 : nor02_2x port map ( Y=>nx124, A0=>nx77, A1=>nx123);
   ix124 : nand02 port map ( Y=>nx123, A0=>go_guru, A1=>nx125);
   ix126 : inv01 port map ( Y=>nx125, A=>end_of_guru);
   ix128 : inv01 port map ( Y=>nx127, A=>duo_formed);
   reg_STATE_7 : dff port map ( Q=>STATE_7, QB=>OPEN, D=>nx138, CLK=>clk);
   ix139 : nor03_2x port map ( Y=>nx138, A0=>nx118, A1=>res, A2=>duo_formed
   );
   ix134 : inv01 port map ( Y=>nx133, A=>cnt_guru_rdy);
   ix136 : nand02 port map ( Y=>nx135, A0=>go_guru, A1=>end_of_guru);
   ix149 : nand02 port map ( Y=>flags_2_dp_rb_out_sel_2_EXMPLR, A0=>nx109, 
      A1=>nx111);
   ix169 : nor03_2x port map ( Y=>flags_2_dp_alu_ctrl_EXMPLR, A0=>STATE_3, 
      A1=>STATE_2, A2=>nx141);
   ix142 : nand02 port map ( Y=>nx141, A0=>nx97, A1=>nx100);
   ix175 : nor02_2x port map ( Y=>flags_2_mem_cg_sel_0_EXMPLR, A0=>STATE_0, 
      A1=>flags_2_dp_rb_out_sel_2_EXMPLR);
   ix153 : nand02 port map ( Y=>flags_2_mem_mem_wr_en, A0=>nx145, A1=>nx147
   );
   ix146 : nor02_2x port map ( Y=>nx145, A0=>flags_2_dp_cg_sel_1_EXMPLR, A1
      =>flags_2_dp_rb_out_sel_2_EXMPLR);
   ix148 : nor02_2x port map ( Y=>nx147, A0=>STATE_2, A1=>STATE_7);
   ix177 : nand02 port map ( Y=>flags_2_dp_rb_PRE_GURU_en_EXMPLR, A0=>nx97, 
      A1=>nx83);
   tri_flags_2_mem_data_a_0 : tri01 port map ( Y=>flags_2_mem_data_a_0, A=>
      nx64, E=>flags_2_mem_cg_sel_1_EXMPLR);
   tri_flags_2_mem_data_a_1 : tri01 port map ( Y=>flags_2_mem_data_a_1, A=>
      nx64, E=>flags_2_mem_cg_sel_1_EXMPLR);
   tri_flags_2_mem_data_a_2 : tri01 port map ( Y=>flags_2_mem_data_a_2, A=>
      nx64, E=>flags_2_mem_cg_sel_1_EXMPLR);
   tri_flags_2_mem_data_a_3 : tri01 port map ( Y=>flags_2_mem_data_a_3, A=>
      nx64, E=>flags_2_mem_cg_sel_1_EXMPLR);
   tri_flags_2_mem_data_a_4 : tri01 port map ( Y=>flags_2_mem_data_a_4, A=>
      nx64, E=>flags_2_mem_cg_sel_1_EXMPLR);
   tri_flags_2_mem_data_a_5 : tri01 port map ( Y=>flags_2_mem_data_a_5, A=>
      nx64, E=>flags_2_mem_cg_sel_1_EXMPLR);
   tri_flags_2_mem_data_a_6 : tri01 port map ( Y=>flags_2_mem_data_a_6, A=>
      nx64, E=>flags_2_mem_cg_sel_1_EXMPLR);
   tri_flags_2_mem_data_a_7 : tri01 port map ( Y=>flags_2_mem_data_a_7, A=>
      nx64, E=>flags_2_mem_cg_sel_1_EXMPLR);
   tri_flags_2_mem_mem_a_addr_0 : tri01 port map ( Y=>
      flags_2_mem_mem_a_addr_0, A=>nx64, E=>flags_2_mem_cg_sel_1_EXMPLR);
   tri_flags_2_mem_mem_a_addr_1 : tri01 port map ( Y=>
      flags_2_mem_mem_a_addr_1, A=>nx64, E=>flags_2_mem_cg_sel_1_EXMPLR);
   tri_flags_2_mem_mem_a_addr_2 : tri01 port map ( Y=>
      flags_2_mem_mem_a_addr_2, A=>nx64, E=>flags_2_mem_cg_sel_1_EXMPLR);
   tri_flags_2_mem_mem_a_addr_3 : tri01 port map ( Y=>
      flags_2_mem_mem_a_addr_3, A=>nx64, E=>flags_2_mem_cg_sel_1_EXMPLR);
   tri_flags_2_mem_mem_a_addr_4 : tri01 port map ( Y=>
      flags_2_mem_mem_a_addr_4, A=>nx64, E=>flags_2_mem_cg_sel_1_EXMPLR);
   tri_flags_2_mem_mem_a_addr_5 : tri01 port map ( Y=>
      flags_2_mem_mem_a_addr_5, A=>nx64, E=>flags_2_mem_cg_sel_1_EXMPLR);
   tri_flags_2_dp_rb_INIT_en : tri01 port map ( Y=>flags_2_dp_rb_INIT_en, A
      =>nx64, E=>flags_2_mem_cg_sel_1_EXMPLR);
   ix91 : nor02_2x port map ( Y=>nx90, A0=>nx78, A1=>STATE_10);
end arch_unfold_1626 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity base_control is
   port (
      clk : IN std_logic ;
      res : IN std_logic ;
      en_disc : IN std_logic ;
      cnt_guru_rdy : IN std_logic ;
      dp_2_ctrl : IN std_logic_vector (1 DOWNTO 0) ;
      disc_2_base : IN std_logic_vector (0 DOWNTO 0) ;
      ref_2_base : IN std_logic_vector (1 DOWNTO 0) ;
      en_cnt_step : OUT std_logic ;
      start_step : OUT std_logic ;
      ctrl_2_dp_ng_cte_incr : OUT std_logic ;
      ctrl_2_dp_ng_rand_zero : OUT std_logic ;
      ctrl_2_dp_alu_ctrl : OUT std_logic ;
      ctrl_2_dp_rb_INIT_en : OUT std_logic ;
      ctrl_2_dp_rb_GURU_en : OUT std_logic ;
      ctrl_2_dp_rb_PRE_GURU_en : OUT std_logic ;
      ctrl_2_dp_rb_out_sel_4 : OUT std_logic ;
      ctrl_2_dp_rb_out_sel_3 : OUT std_logic ;
      ctrl_2_dp_rb_out_sel_2 : OUT std_logic ;
      ctrl_2_dp_rb_out_sel_1 : OUT std_logic ;
      ctrl_2_dp_rb_out_sel_0 : OUT std_logic ;
      ctrl_2_dp_cg_sel_1 : OUT std_logic ;
      ctrl_2_dp_cg_sel_0 : OUT std_logic ;
      ctrl_2_mem_mem_a_addr_5 : OUT std_logic ;
      ctrl_2_mem_mem_a_addr_4 : OUT std_logic ;
      ctrl_2_mem_mem_a_addr_3 : OUT std_logic ;
      ctrl_2_mem_mem_a_addr_2 : OUT std_logic ;
      ctrl_2_mem_mem_a_addr_1 : OUT std_logic ;
      ctrl_2_mem_mem_a_addr_0 : OUT std_logic ;
      ctrl_2_mem_mem_wr_en : OUT std_logic ;
      ctrl_2_mem_data_a_7 : OUT std_logic ;
      ctrl_2_mem_data_a_6 : OUT std_logic ;
      ctrl_2_mem_data_a_5 : OUT std_logic ;
      ctrl_2_mem_data_a_4 : OUT std_logic ;
      ctrl_2_mem_data_a_3 : OUT std_logic ;
      ctrl_2_mem_data_a_2 : OUT std_logic ;
      ctrl_2_mem_data_a_1 : OUT std_logic ;
      ctrl_2_mem_data_a_0 : OUT std_logic ;
      ctrl_2_mem_cg_sel_1 : OUT std_logic ;
      ctrl_2_mem_cg_sel_0 : OUT std_logic) ;
end base_control ;

architecture arch of base_control is
   component counter_trigger_500
      port (
         clk : IN std_logic ;
         res : IN std_logic ;
         trigger : IN std_logic ;
         cnt_rdy : OUT std_logic) ;
   end component ;
   component fsm_guru
      port (
         clk : IN std_logic ;
         res : IN std_logic ;
         fsm_sg_start : IN std_logic ;
         end_of_guru : IN std_logic ;
         cnt_guru_rdy : IN std_logic ;
         duo_formed : IN std_logic ;
         go_guru : IN std_logic ;
         flags_2_dp_ng_cte_incr : OUT std_logic ;
         flags_2_dp_ng_rand_zero : OUT std_logic ;
         flags_2_dp_alu_ctrl : OUT std_logic ;
         flags_2_dp_rb_INIT_en : OUT std_logic ;
         flags_2_dp_rb_GURU_en : OUT std_logic ;
         flags_2_dp_rb_PRE_GURU_en : OUT std_logic ;
         flags_2_dp_rb_out_sel_4 : OUT std_logic ;
         flags_2_dp_rb_out_sel_3 : OUT std_logic ;
         flags_2_dp_rb_out_sel_2 : OUT std_logic ;
         flags_2_dp_rb_out_sel_1 : OUT std_logic ;
         flags_2_dp_rb_out_sel_0 : OUT std_logic ;
         flags_2_dp_cg_sel_1 : OUT std_logic ;
         flags_2_dp_cg_sel_0 : OUT std_logic ;
         flags_2_mem_mem_a_addr_5 : OUT std_logic ;
         flags_2_mem_mem_a_addr_4 : OUT std_logic ;
         flags_2_mem_mem_a_addr_3 : OUT std_logic ;
         flags_2_mem_mem_a_addr_2 : OUT std_logic ;
         flags_2_mem_mem_a_addr_1 : OUT std_logic ;
         flags_2_mem_mem_a_addr_0 : OUT std_logic ;
         flags_2_mem_mem_wr_en : OUT std_logic ;
         flags_2_mem_data_a_7 : OUT std_logic ;
         flags_2_mem_data_a_6 : OUT std_logic ;
         flags_2_mem_data_a_5 : OUT std_logic ;
         flags_2_mem_data_a_4 : OUT std_logic ;
         flags_2_mem_data_a_3 : OUT std_logic ;
         flags_2_mem_data_a_2 : OUT std_logic ;
         flags_2_mem_data_a_1 : OUT std_logic ;
         flags_2_mem_data_a_0 : OUT std_logic ;
         flags_2_mem_cg_sel_1 : OUT std_logic ;
         flags_2_mem_cg_sel_0 : OUT std_logic) ;
   end component ;
   signal en_cnt_step_EXMPLR, start_step_EXMPLR, 
      ctrl_2_dp_rb_out_sel_0_EXMPLR, cnt_prepare_i_s, cnt_start_i_s, 
      cnt_prepare_f_s, cnt_start_f_s, init_2_dp_s_rb_GURU_en, 
      init_2_dp_s_rb_PRE_GURU_en, init_2_dp_s_cg_sel_1, init_2_dp_s_cg_sel_0, 
      guru_2_dp_s_ng_cte_incr, guru_2_dp_s_rb_INIT_en, 
      guru_2_dp_s_rb_GURU_en, guru_2_dp_s_rb_out_sel_2, 
      guru_2_dp_s_rb_out_sel_1, guru_2_dp_s_cg_sel_1, guru_2_dp_s_cg_sel_0, 
      init_2_mem_s_mem_a_addr_5, init_2_mem_s_mem_a_addr_4, 
      init_2_mem_s_mem_a_addr_3, init_2_mem_s_mem_a_addr_2, 
      init_2_mem_s_mem_a_addr_1, init_2_mem_s_mem_a_addr_0, 
      init_2_mem_s_data_a_7, init_2_mem_s_data_a_6, init_2_mem_s_data_a_5, 
      init_2_mem_s_data_a_4, init_2_mem_s_data_a_3, init_2_mem_s_data_a_2, 
      init_2_mem_s_data_a_1, init_2_mem_s_data_a_0, 
      guru_2_mem_s_mem_a_addr_5, guru_2_mem_s_mem_a_addr_4, 
      guru_2_mem_s_mem_a_addr_3, guru_2_mem_s_mem_a_addr_2, 
      guru_2_mem_s_mem_a_addr_1, guru_2_mem_s_mem_a_addr_0, 
      guru_2_mem_s_mem_wr_en, guru_2_mem_s_data_a_7, guru_2_mem_s_data_a_6, 
      guru_2_mem_s_data_a_5, guru_2_mem_s_data_a_4, guru_2_mem_s_data_a_3, 
      guru_2_mem_s_data_a_2, guru_2_mem_s_data_a_1, guru_2_mem_s_data_a_0, 
      ctrl_2_dp_rb_out_sel_3_EXMPLR, nx499, init_STATE_0, nx4, nx8, nx14, 
      nx28, nx44, nx234, nx240, nx501, nx256, nx260, nx270, nx296, nx502, 
      nx312, nx320, nx505, nx511, nx514, nx519, nx522, nx525, nx527, nx530, 
      nx534, nx540, nx542, nx544, nx547, nx550, nx553, nx555, nx558, nx560, 
      nx562, nx566, nx568, nx572, nx574, nx576, nx578, nx579, nx581, nx585, 
      nx588, nx591, nx594, nx597, nx600, nx603, nx606, nx609, nx612, nx615, 
      nx618, nx621, nx624, nx627, nx630, nx633, nx636, nx639, nx641, nx644, 
      nx647, nx650, nx653, nx656, nx659, nx662, nx665, nx668, nx671, nx674, 
      nx677, nx680, nx683, nx686, nx689, nx692, nx695, nx698, nx701, nx704, 
      nx707, nx710, nx713, nx715, nx719, nx722, nx724, nx731, nx733, nx735, 
      nx737, nx739, nx741, nx743, nx745, nx747, nx749, nx751: std_logic ;
   
   signal DANGLING : std_logic_vector (7 downto 0 );

begin
   en_cnt_step <= en_cnt_step_EXMPLR ;
   start_step <= start_step_EXMPLR ;
   ctrl_2_dp_rb_out_sel_4 <= ctrl_2_dp_rb_out_sel_3_EXMPLR ;
   ctrl_2_dp_rb_out_sel_3 <= ctrl_2_dp_rb_out_sel_3_EXMPLR ;
   ctrl_2_dp_rb_out_sel_0 <= ctrl_2_dp_rb_out_sel_0_EXMPLR ;
   cnt_prep : counter_trigger_500 port map ( clk=>clk, res=>res, trigger=>
      cnt_prepare_i_s, cnt_rdy=>cnt_prepare_f_s);
   cnt_strat : counter_trigger_500 port map ( clk=>clk, res=>res, trigger=>
      cnt_start_i_s, cnt_rdy=>cnt_start_f_s);
   guru : fsm_guru port map ( clk=>clk, res=>res, fsm_sg_start=>
      start_step_EXMPLR, end_of_guru=>dp_2_ctrl(1), cnt_guru_rdy=>
      cnt_guru_rdy, duo_formed=>ref_2_base(1), go_guru=>ref_2_base(0), 
      flags_2_dp_ng_cte_incr=>guru_2_dp_s_ng_cte_incr, 
      flags_2_dp_ng_rand_zero=>DANGLING(0), flags_2_dp_alu_ctrl=>DANGLING(1), 
      flags_2_dp_rb_INIT_en=>guru_2_dp_s_rb_INIT_en, flags_2_dp_rb_GURU_en=>
      guru_2_dp_s_rb_GURU_en, flags_2_dp_rb_PRE_GURU_en=>DANGLING(2), 
      flags_2_dp_rb_out_sel_4=>DANGLING(3), flags_2_dp_rb_out_sel_3=>
      DANGLING(4), flags_2_dp_rb_out_sel_2=>guru_2_dp_s_rb_out_sel_2, 
      flags_2_dp_rb_out_sel_1=>guru_2_dp_s_rb_out_sel_1, 
      flags_2_dp_rb_out_sel_0=>DANGLING(5), flags_2_dp_cg_sel_1=>
      guru_2_dp_s_cg_sel_1, flags_2_dp_cg_sel_0=>guru_2_dp_s_cg_sel_0, 
      flags_2_mem_mem_a_addr_5=>guru_2_mem_s_mem_a_addr_5, 
      flags_2_mem_mem_a_addr_4=>guru_2_mem_s_mem_a_addr_4, 
      flags_2_mem_mem_a_addr_3=>guru_2_mem_s_mem_a_addr_3, 
      flags_2_mem_mem_a_addr_2=>guru_2_mem_s_mem_a_addr_2, 
      flags_2_mem_mem_a_addr_1=>guru_2_mem_s_mem_a_addr_1, 
      flags_2_mem_mem_a_addr_0=>guru_2_mem_s_mem_a_addr_0, 
      flags_2_mem_mem_wr_en=>guru_2_mem_s_mem_wr_en, flags_2_mem_data_a_7=>
      guru_2_mem_s_data_a_7, flags_2_mem_data_a_6=>guru_2_mem_s_data_a_6, 
      flags_2_mem_data_a_5=>guru_2_mem_s_data_a_5, flags_2_mem_data_a_4=>
      guru_2_mem_s_data_a_4, flags_2_mem_data_a_3=>guru_2_mem_s_data_a_3, 
      flags_2_mem_data_a_2=>guru_2_mem_s_data_a_2, flags_2_mem_data_a_1=>
      guru_2_mem_s_data_a_1, flags_2_mem_data_a_0=>guru_2_mem_s_data_a_0, 
      flags_2_mem_cg_sel_1=>DANGLING(6), flags_2_mem_cg_sel_0=>DANGLING(7));
   ix506 : fake_vcc port map ( Y=>nx505);
   ix444 : fake_gnd port map ( Y=>ctrl_2_dp_rb_out_sel_3_EXMPLR);
   ix241 : nor02_2x port map ( Y=>nx240, A0=>res, A1=>nx511);
   ix235 : nor02_2x port map ( Y=>nx234, A0=>cnt_start_f_s, A1=>nx514);
   main_reg_STATE_5 : dff port map ( Q=>cnt_start_i_s, QB=>nx514, D=>nx240, 
      CLK=>clk);
   main_reg_STATE_1 : dff port map ( Q=>start_step_EXMPLR, QB=>OPEN, D=>
      nx502, CLK=>clk);
   ix333 : nor03_2x port map ( Y=>nx502, A0=>nx519, A1=>res, A2=>nx527);
   ix321 : oai22 port map ( Y=>nx320, A0=>res, A1=>nx522, B0=>nx579, B1=>
      nx581);
   ix523 : nor02ii port map ( Y=>nx522, A0=>nx312, A1=>nx555);
   ix313 : nand02 port map ( Y=>nx312, A0=>nx525, A1=>nx530);
   ix526 : oai21 port map ( Y=>nx525, A0=>res, A1=>nx527, B0=>
      cnt_prepare_i_s);
   ix528 : inv01 port map ( Y=>nx527, A=>cnt_prepare_f_s);
   main_reg_STATE_4 : dff port map ( Q=>cnt_prepare_i_s, QB=>nx519, D=>nx320, 
      CLK=>clk);
   ix531 : nand03 port map ( Y=>nx530, A0=>init_STATE_0, A1=>nx739, A2=>
      nx731);
   ix15 : nor02_2x port map ( Y=>nx14, A0=>res, A1=>nx534);
   ix535 : nor02_2x port map ( Y=>nx534, A0=>nx8, A1=>nx4);
   ix9 : nor03_2x port map ( Y=>nx8, A0=>nx743, A1=>init_STATE_0, A2=>nx739
   );
   main_reg_STATE_0 : dff port map ( Q=>ctrl_2_dp_rb_out_sel_0_EXMPLR, QB=>
      OPEN, D=>nx44, CLK=>clk);
   ix45 : oai21 port map ( Y=>nx44, A0=>nx540, A1=>nx743, B0=>nx550);
   ix541 : nor02_2x port map ( Y=>nx540, A0=>nx542, A1=>nx544);
   init_reg_STATE_0 : dff port map ( Q=>init_STATE_0, QB=>nx542, D=>nx14, 
      CLK=>clk);
   ix29 : nor02_2x port map ( Y=>nx28, A0=>res, A1=>nx547);
   init_reg_STATE_1 : dff port map ( Q=>OPEN, QB=>nx544, D=>nx28, CLK=>clk);
   ix551 : inv01 port map ( Y=>nx550, A=>res);
   ix5 : nor02_2x port map ( Y=>nx4, A0=>init_STATE_0, A1=>nx553);
   ix554 : nand02 port map ( Y=>nx553, A0=>dp_2_ctrl(0), A1=>nx739);
   main_reg_STATE_3 : dff port map ( Q=>OPEN, QB=>nx555, D=>nx296, CLK=>clk
   );
   ix297 : nor03_2x port map ( Y=>nx296, A0=>nx558, A1=>nx560, A2=>nx562);
   ix559 : inv01 port map ( Y=>nx558, A=>en_disc);
   ix561 : nand02 port map ( Y=>nx560, A0=>disc_2_base(0), A1=>dp_2_ctrl(1)
   );
   ix563 : nand03 port map ( Y=>nx562, A0=>ref_2_base(1), A1=>nx550, A2=>
      en_cnt_step_EXMPLR);
   main_reg_STATE_2 : dff port map ( Q=>en_cnt_step_EXMPLR, QB=>nx578, D=>
      nx270, CLK=>clk);
   ix271 : oai21 port map ( Y=>nx270, A0=>nx566, A1=>nx568, B0=>nx576);
   ix567 : nand02 port map ( Y=>nx566, A0=>nx550, A1=>en_cnt_step_EXMPLR);
   ix569 : nor03_2x port map ( Y=>nx568, A0=>nx260, A1=>nx256, A2=>nx574);
   ix261 : nor02_2x port map ( Y=>nx260, A0=>disc_2_base(0), A1=>nx558);
   ix257 : nor02_2x port map ( Y=>nx256, A0=>en_disc, A1=>nx572);
   ix573 : inv01 port map ( Y=>nx572, A=>ref_2_base(1));
   ix575 : inv01 port map ( Y=>nx574, A=>dp_2_ctrl(1));
   ix577 : nand03 port map ( Y=>nx576, A0=>cnt_start_i_s, A1=>nx550, A2=>
      cnt_start_f_s);
   ix580 : nand02 port map ( Y=>nx579, A0=>dp_2_ctrl(1), A1=>nx572);
   ix582 : oai21 port map ( Y=>nx581, A0=>nx558, A1=>disc_2_base(0), B0=>
      nx501);
   ix281 : nor02_2x port map ( Y=>nx501, A0=>res, A1=>nx578);
   ix177 : nor02_2x port map ( Y=>ctrl_2_mem_cg_sel_0, A0=>nx585, A1=>nx731
   );
   ix586 : inv01 port map ( Y=>nx585, A=>guru_2_dp_s_cg_sel_0);
   ix185 : nor02_2x port map ( Y=>ctrl_2_mem_cg_sel_1, A0=>nx588, A1=>nx731
   );
   ix589 : inv01 port map ( Y=>nx588, A=>guru_2_dp_s_cg_sel_1);
   ix59 : nand02 port map ( Y=>ctrl_2_mem_data_a_0, A0=>nx591, A1=>nx594);
   ix592 : nand02 port map ( Y=>nx591, A0=>init_2_mem_s_data_a_0, A1=>nx731
   );
   init_tri_flags_2_mem_data_a_0 : tri01 port map ( Y=>init_2_mem_s_data_a_0, 
      A=>nx505, E=>ctrl_2_dp_rb_out_sel_3_EXMPLR);
   ix595 : nand02 port map ( Y=>nx594, A0=>guru_2_mem_s_data_a_0, A1=>nx743
   );
   ix67 : nand02 port map ( Y=>ctrl_2_mem_data_a_1, A0=>nx597, A1=>nx600);
   ix598 : nand02 port map ( Y=>nx597, A0=>init_2_mem_s_data_a_1, A1=>nx731
   );
   init_tri_flags_2_mem_data_a_1 : tri01 port map ( Y=>init_2_mem_s_data_a_1, 
      A=>nx505, E=>ctrl_2_dp_rb_out_sel_3_EXMPLR);
   ix601 : nand02 port map ( Y=>nx600, A0=>guru_2_mem_s_data_a_1, A1=>nx743
   );
   ix75 : nand02 port map ( Y=>ctrl_2_mem_data_a_2, A0=>nx603, A1=>nx606);
   ix604 : nand02 port map ( Y=>nx603, A0=>init_2_mem_s_data_a_2, A1=>nx731
   );
   init_tri_flags_2_mem_data_a_2 : tri01 port map ( Y=>init_2_mem_s_data_a_2, 
      A=>nx505, E=>ctrl_2_dp_rb_out_sel_3_EXMPLR);
   ix607 : nand02 port map ( Y=>nx606, A0=>guru_2_mem_s_data_a_2, A1=>nx743
   );
   ix83 : nand02 port map ( Y=>ctrl_2_mem_data_a_3, A0=>nx609, A1=>nx612);
   ix610 : nand02 port map ( Y=>nx609, A0=>init_2_mem_s_data_a_3, A1=>nx731
   );
   init_tri_flags_2_mem_data_a_3 : tri01 port map ( Y=>init_2_mem_s_data_a_3, 
      A=>nx505, E=>ctrl_2_dp_rb_out_sel_3_EXMPLR);
   ix613 : nand02 port map ( Y=>nx612, A0=>guru_2_mem_s_data_a_3, A1=>nx743
   );
   ix91 : nand02 port map ( Y=>ctrl_2_mem_data_a_4, A0=>nx615, A1=>nx618);
   ix616 : nand02 port map ( Y=>nx615, A0=>init_2_mem_s_data_a_4, A1=>nx733
   );
   init_tri_flags_2_mem_data_a_4 : tri01 port map ( Y=>init_2_mem_s_data_a_4, 
      A=>nx505, E=>ctrl_2_dp_rb_out_sel_3_EXMPLR);
   ix619 : nand02 port map ( Y=>nx618, A0=>guru_2_mem_s_data_a_4, A1=>nx743
   );
   ix99 : nand02 port map ( Y=>ctrl_2_mem_data_a_5, A0=>nx621, A1=>nx624);
   ix622 : nand02 port map ( Y=>nx621, A0=>init_2_mem_s_data_a_5, A1=>nx733
   );
   init_tri_flags_2_mem_data_a_5 : tri01 port map ( Y=>init_2_mem_s_data_a_5, 
      A=>nx505, E=>ctrl_2_dp_rb_out_sel_3_EXMPLR);
   ix625 : nand02 port map ( Y=>nx624, A0=>guru_2_mem_s_data_a_5, A1=>nx745
   );
   ix107 : nand02 port map ( Y=>ctrl_2_mem_data_a_6, A0=>nx627, A1=>nx630);
   ix628 : nand02 port map ( Y=>nx627, A0=>init_2_mem_s_data_a_6, A1=>nx733
   );
   init_tri_flags_2_mem_data_a_6 : tri01 port map ( Y=>init_2_mem_s_data_a_6, 
      A=>nx505, E=>ctrl_2_dp_rb_out_sel_3_EXMPLR);
   ix631 : nand02 port map ( Y=>nx630, A0=>guru_2_mem_s_data_a_6, A1=>nx745
   );
   ix115 : nand02 port map ( Y=>ctrl_2_mem_data_a_7, A0=>nx633, A1=>nx636);
   ix634 : nand02 port map ( Y=>nx633, A0=>init_2_mem_s_data_a_7, A1=>nx733
   );
   init_tri_flags_2_mem_data_a_7 : tri01 port map ( Y=>init_2_mem_s_data_a_7, 
      A=>nx505, E=>ctrl_2_dp_rb_out_sel_3_EXMPLR);
   ix637 : nand02 port map ( Y=>nx636, A0=>guru_2_mem_s_data_a_7, A1=>nx745
   );
   ix125 : oai21 port map ( Y=>ctrl_2_mem_mem_wr_en, A0=>nx547, A1=>nx639, 
      B0=>nx641);
   ix640 : oai21 port map ( Y=>nx639, A0=>init_STATE_0, A1=>nx739, B0=>nx733
   );
   ix642 : nand02 port map ( Y=>nx641, A0=>guru_2_mem_s_mem_wr_en, A1=>nx745
   );
   ix133 : nand02 port map ( Y=>ctrl_2_mem_mem_a_addr_0, A0=>nx644, A1=>
      nx647);
   ix645 : nand02 port map ( Y=>nx644, A0=>init_2_mem_s_mem_a_addr_0, A1=>
      nx733);
   init_tri_flags_2_mem_mem_a_addr_0 : tri01 port map ( Y=>
      init_2_mem_s_mem_a_addr_0, A=>nx505, E=>ctrl_2_dp_rb_out_sel_3_EXMPLR
   );
   ix648 : nand02 port map ( Y=>nx647, A0=>guru_2_mem_s_mem_a_addr_0, A1=>
      nx745);
   ix141 : nand02 port map ( Y=>ctrl_2_mem_mem_a_addr_1, A0=>nx650, A1=>
      nx653);
   ix651 : nand02 port map ( Y=>nx650, A0=>init_2_mem_s_mem_a_addr_1, A1=>
      nx733);
   init_tri_flags_2_mem_mem_a_addr_1 : tri01 port map ( Y=>
      init_2_mem_s_mem_a_addr_1, A=>nx505, E=>ctrl_2_dp_rb_out_sel_3_EXMPLR
   );
   ix654 : nand02 port map ( Y=>nx653, A0=>guru_2_mem_s_mem_a_addr_1, A1=>
      nx745);
   ix149 : nand02 port map ( Y=>ctrl_2_mem_mem_a_addr_2, A0=>nx656, A1=>
      nx659);
   ix657 : nand02 port map ( Y=>nx656, A0=>init_2_mem_s_mem_a_addr_2, A1=>
      nx735);
   init_tri_flags_2_mem_mem_a_addr_2 : tri01 port map ( Y=>
      init_2_mem_s_mem_a_addr_2, A=>nx505, E=>ctrl_2_dp_rb_out_sel_3_EXMPLR
   );
   ix660 : nand02 port map ( Y=>nx659, A0=>guru_2_mem_s_mem_a_addr_2, A1=>
      nx745);
   ix157 : nand02 port map ( Y=>ctrl_2_mem_mem_a_addr_3, A0=>nx662, A1=>
      nx665);
   ix663 : nand02 port map ( Y=>nx662, A0=>init_2_mem_s_mem_a_addr_3, A1=>
      nx735);
   init_tri_flags_2_mem_mem_a_addr_3 : tri01 port map ( Y=>
      init_2_mem_s_mem_a_addr_3, A=>nx505, E=>ctrl_2_dp_rb_out_sel_3_EXMPLR
   );
   ix666 : nand02 port map ( Y=>nx665, A0=>guru_2_mem_s_mem_a_addr_3, A1=>
      nx747);
   ix165 : nand02 port map ( Y=>ctrl_2_mem_mem_a_addr_4, A0=>nx668, A1=>
      nx671);
   ix669 : nand02 port map ( Y=>nx668, A0=>init_2_mem_s_mem_a_addr_4, A1=>
      nx735);
   init_tri_flags_2_mem_mem_a_addr_4 : tri01 port map ( Y=>
      init_2_mem_s_mem_a_addr_4, A=>nx505, E=>ctrl_2_dp_rb_out_sel_3_EXMPLR
   );
   ix672 : nand02 port map ( Y=>nx671, A0=>guru_2_mem_s_mem_a_addr_4, A1=>
      nx747);
   ix173 : nand02 port map ( Y=>ctrl_2_mem_mem_a_addr_5, A0=>nx674, A1=>
      nx677);
   ix675 : nand02 port map ( Y=>nx674, A0=>init_2_mem_s_mem_a_addr_5, A1=>
      nx735);
   init_tri_flags_2_mem_mem_a_addr_5 : tri01 port map ( Y=>
      init_2_mem_s_mem_a_addr_5, A=>nx505, E=>ctrl_2_dp_rb_out_sel_3_EXMPLR
   );
   ix678 : nand02 port map ( Y=>nx677, A0=>guru_2_mem_s_mem_a_addr_5, A1=>
      nx747);
   ix181 : nand02 port map ( Y=>ctrl_2_dp_cg_sel_0, A0=>nx680, A1=>nx683);
   ix681 : nand02 port map ( Y=>nx680, A0=>init_2_dp_s_cg_sel_0, A1=>nx735);
   init_tri_flags_2_dp_cg_sel_0 : tri01 port map ( Y=>init_2_dp_s_cg_sel_0, 
      A=>nx505, E=>ctrl_2_dp_rb_out_sel_3_EXMPLR);
   ix684 : nand02 port map ( Y=>nx683, A0=>guru_2_dp_s_cg_sel_0, A1=>nx747);
   ix189 : nand02 port map ( Y=>ctrl_2_dp_cg_sel_1, A0=>nx686, A1=>nx689);
   ix687 : nand02 port map ( Y=>nx686, A0=>init_2_dp_s_cg_sel_1, A1=>nx735);
   init_tri_flags_2_dp_cg_sel_1 : tri01 port map ( Y=>init_2_dp_s_cg_sel_1, 
      A=>nx505, E=>ctrl_2_dp_rb_out_sel_3_EXMPLR);
   ix690 : nand02 port map ( Y=>nx689, A0=>guru_2_dp_s_cg_sel_1, A1=>nx747);
   ix343 : nor02_2x port map ( Y=>ctrl_2_dp_rb_out_sel_1, A0=>nx692, A1=>
      nx735);
   ix693 : inv01 port map ( Y=>nx692, A=>guru_2_dp_s_rb_out_sel_1);
   ix347 : nor02_2x port map ( Y=>ctrl_2_dp_rb_out_sel_2, A0=>nx695, A1=>
      nx737);
   ix696 : inv01 port map ( Y=>nx695, A=>guru_2_dp_s_rb_out_sel_2);
   ix197 : nand02 port map ( Y=>ctrl_2_dp_rb_PRE_GURU_en, A0=>nx698, A1=>
      nx701);
   ix699 : nand02 port map ( Y=>nx698, A0=>init_2_dp_s_rb_PRE_GURU_en, A1=>
      nx737);
   init_tri_flags_2_dp_rb_PRE_GURU_en : tri01 port map ( Y=>
      init_2_dp_s_rb_PRE_GURU_en, A=>nx505, E=>ctrl_2_dp_rb_out_sel_3_EXMPLR
   );
   ix702 : nand02 port map ( Y=>nx701, A0=>guru_2_dp_s_rb_GURU_en, A1=>nx747
   );
   ix205 : nand02 port map ( Y=>ctrl_2_dp_rb_GURU_en, A0=>nx704, A1=>nx707);
   ix705 : nand02 port map ( Y=>nx704, A0=>init_2_dp_s_rb_GURU_en, A1=>nx737
   );
   init_tri_flags_2_dp_rb_GURU_en : tri01 port map ( Y=>
      init_2_dp_s_rb_GURU_en, A=>nx505, E=>ctrl_2_dp_rb_out_sel_3_EXMPLR);
   ix708 : nand02 port map ( Y=>nx707, A0=>guru_2_dp_s_rb_GURU_en, A1=>nx747
   );
   ix213 : oai21 port map ( Y=>ctrl_2_dp_rb_INIT_en, A0=>nx547, A1=>nx639, 
      B0=>nx710);
   ix711 : nand02 port map ( Y=>nx710, A0=>guru_2_dp_s_rb_INIT_en, A1=>nx749
   );
   ix227 : nor02_2x port map ( Y=>ctrl_2_dp_alu_ctrl, A0=>nx713, A1=>nx715);
   ix716 : nor02_2x port map ( Y=>nx715, A0=>nx749, A1=>nx499);
   ix41 : nand02 port map ( Y=>nx499, A0=>init_STATE_0, A1=>nx739);
   ix121 : nor02_2x port map ( Y=>ctrl_2_dp_ng_rand_zero, A0=>nx749, A1=>
      nx719);
   ix720 : nor02_2x port map ( Y=>nx719, A0=>init_STATE_0, A1=>nx741);
   ix221 : nand02 port map ( Y=>ctrl_2_dp_ng_cte_incr, A0=>nx722, A1=>nx724
   );
   ix723 : nand02 port map ( Y=>nx722, A0=>nx741, A1=>nx737);
   ix725 : nand02 port map ( Y=>nx724, A0=>guru_2_dp_s_ng_cte_incr, A1=>
      nx749);
   ix730 : inv02 port map ( Y=>nx731, A=>nx749);
   ix732 : inv02 port map ( Y=>nx733, A=>nx749);
   ix734 : inv02 port map ( Y=>nx735, A=>nx749);
   ix736 : inv02 port map ( Y=>nx737, A=>nx751);
   ix738 : inv02 port map ( Y=>nx739, A=>nx544);
   ix740 : inv02 port map ( Y=>nx741, A=>nx544);
   ix742 : inv02 port map ( Y=>nx743, A=>ctrl_2_dp_rb_out_sel_0_EXMPLR);
   ix744 : inv02 port map ( Y=>nx745, A=>ctrl_2_dp_rb_out_sel_0_EXMPLR);
   ix746 : inv02 port map ( Y=>nx747, A=>ctrl_2_dp_rb_out_sel_0_EXMPLR);
   ix748 : inv02 port map ( Y=>nx749, A=>ctrl_2_dp_rb_out_sel_0_EXMPLR);
   ix750 : inv02 port map ( Y=>nx751, A=>ctrl_2_dp_rb_out_sel_0_EXMPLR);
   ix512 : nor02_2x port map ( Y=>nx511, A0=>nx234, A1=>start_step_EXMPLR);
   ix548 : xnor2 port map ( Y=>nx547, A0=>nx542, A1=>nx544);
   ix714 : mux21 port map ( Y=>nx713, A0=>nx739, A1=>guru_2_dp_s_ng_cte_incr, 
      S0=>nx751);
end arch ;

