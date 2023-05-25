
-- 
-- Definition of  base_control
-- 
--      05/25/23 09:38:53
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
   signal cnt_s_31, cnt_s_30, cnt_s_29, cnt_s_28, cnt_s_27, cnt_s_26, 
      cnt_s_25, cnt_s_24, cnt_s_23, cnt_s_22, cnt_s_21, cnt_s_20, cnt_s_19, 
      cnt_s_18, cnt_s_17, cnt_s_16, cnt_s_15, cnt_s_14, cnt_s_13, cnt_s_12, 
      cnt_s_11, cnt_s_10, cnt_s_7, cnt_s_6, cnt_s_5, cnt_s_4, cnt_s_3, 
      cnt_s_2, cnt_s_1, cnt_s_0, nx500, nx10, nx26, nx42, nx60, nx78, nx96, 
      nx114, nx132, nx150, nx168, nx186, nx204, nx222, nx240, nx258, nx276, 
      nx294, nx312, nx330, nx348, nx366, nx384, nx402, nx420, nx438, nx456, 
      nx474, nx492, nx510, nx528, nx546, nx559, nx571, nx586, nx591, nx605, 
      nx609, nx619, nx623, nx627, nx637, nx641, nx645, nx655, nx659, nx663, 
      nx673, nx677, nx681, nx691, nx695, nx699, nx706, nx709, nx712, nx719, 
      nx722, nx725, nx732, nx738, nx745, nx748, nx751, nx758, nx761, nx764, 
      nx771, nx775, nx779, nx784, nx787, nx795, nx797, nx799, nx801, nx846, 
      nx848, nx850, nx852, nx856, nx866, nx870, nx872, nx874, nx876, nx878, 
      nx880, nx882, nx884, nx886, nx888, nx890, nx894, nx512, cnt_s_8, nx735, 
      cnt_s_9, nx920, nx921, nx922, nx858, nx923, nx924, nx925, nx926, nx578, 
      nx927, nx928, nx929, nx930, nx931, nx932, nx933, nx934, nx935, nx936, 
      nx937, nx564, nx938, nx939, nx892, nx754, nx505, nx767, nx940, nx941, 
      nx942, nx864, nx943, nx944, nx536, nx945, nx946, nx741, nx947, nx948, 
      nx949, nx950, nx951, nx952, nx953, nx954, NOT_nx563, nx955, nx613, 
      nx956, nx957, nx509, nx728, nx958, nx959, nx960, nx575, NOT_nx579, 
      nx961, nx595, nx962, nx963, nx964, nx514, nx715, nx965, nx966, nx967, 
      nx516, nx702, nx968, nx969, nx970, nx971, nx972, nx973, nx974, nx975, 
      nx583, nx534, nx631, nx976, nx977, nx527, nx978, nx518, nx685, nx979, 
      nx980, nx981, nx982, nx983, nx984, nx985, nx986, nx987, nx523, nx988, 
      nx989, nx521, nx667, nx990, nx991, nx992, nx993, nx994, nx995, nx996, 
      nx997, nx998, nx999, nx532, nx868, nx1000, nx1001, nx530, nx649, 
      nx1002, nx1003, nx1004, nx1005, nx1006, nx1007, nx1008, nx1009, nx1010, 
      nx1011, cnt_rdy_EXMPLR, nx1012, nx1013, nx1014, nx1015, nx1016, nx1017, 
      nx1018, nx1019, nx1020, nx1021, nx1022, nx1023, nx1129, nx1131, nx1133
   : std_logic ;

begin
   cnt_rdy <= cnt_rdy_EXMPLR ;
   reg_cnt_s_31 : dff port map ( Q=>cnt_s_31, QB=>OPEN, D=>nx578, CLK=>clk);
   reg_cnt_s_30 : dff port map ( Q=>cnt_s_30, QB=>nx559, D=>nx1129, CLK=>clk
   );
   reg_cnt_s_29 : dff port map ( Q=>cnt_s_29, QB=>OPEN, D=>nx546, CLK=>clk);
   ix529 : nor03_2x port map ( Y=>nx528, A0=>nx575, A1=>nx536, A2=>nx852);
   reg_cnt_s_28 : dff port map ( Q=>cnt_s_28, QB=>nx571, D=>nx528, CLK=>clk
   );
   reg_cnt_s_27 : dff port map ( Q=>cnt_s_27, QB=>OPEN, D=>nx510, CLK=>clk);
   ix496 : nor03_2x port map ( Y=>nx492, A0=>nx591, A1=>nx534, A2=>nx852);
   reg_cnt_s_26 : dff port map ( Q=>cnt_s_26, QB=>nx586, D=>nx492, CLK=>clk
   );
   reg_cnt_s_25 : dff port map ( Q=>cnt_s_25, QB=>OPEN, D=>nx474, CLK=>clk);
   ix457 : nor03_2x port map ( Y=>nx456, A0=>nx609, A1=>nx532, A2=>nx852);
   reg_cnt_s_24 : dff port map ( Q=>cnt_s_24, QB=>nx605, D=>nx456, CLK=>clk
   );
   reg_cnt_s_23 : dff port map ( Q=>cnt_s_23, QB=>OPEN, D=>nx438, CLK=>clk);
   ix620 : nor02_2x port map ( Y=>nx619, A0=>nx530, A1=>cnt_s_23);
   ix421 : nor03_2x port map ( Y=>nx420, A0=>nx627, A1=>nx530, A2=>nx850);
   reg_cnt_s_22 : dff port map ( Q=>cnt_s_22, QB=>nx623, D=>nx420, CLK=>clk
   );
   reg_cnt_s_21 : dff port map ( Q=>cnt_s_21, QB=>OPEN, D=>nx402, CLK=>clk);
   ix638 : nor02_2x port map ( Y=>nx637, A0=>nx527, A1=>cnt_s_21);
   ix385 : nor03_2x port map ( Y=>nx384, A0=>nx645, A1=>nx527, A2=>nx850);
   reg_cnt_s_20 : dff port map ( Q=>cnt_s_20, QB=>nx641, D=>nx384, CLK=>clk
   );
   reg_cnt_s_19 : dff port map ( Q=>cnt_s_19, QB=>OPEN, D=>nx366, CLK=>clk);
   ix656 : nor02_2x port map ( Y=>nx655, A0=>nx1131, A1=>cnt_s_19);
   ix349 : nor03_2x port map ( Y=>nx348, A0=>nx663, A1=>nx1131, A2=>nx850);
   reg_cnt_s_18 : dff port map ( Q=>cnt_s_18, QB=>nx659, D=>nx348, CLK=>clk
   );
   reg_cnt_s_17 : dff port map ( Q=>cnt_s_17, QB=>OPEN, D=>nx330, CLK=>clk);
   ix674 : nor02_2x port map ( Y=>nx673, A0=>nx521, A1=>cnt_s_17);
   ix313 : nor03_2x port map ( Y=>nx312, A0=>nx681, A1=>nx521, A2=>nx850);
   reg_cnt_s_16 : dff port map ( Q=>cnt_s_16, QB=>nx677, D=>nx312, CLK=>clk
   );
   reg_cnt_s_15 : dff port map ( Q=>cnt_s_15, QB=>OPEN, D=>nx294, CLK=>clk);
   ix692 : nor02_2x port map ( Y=>nx691, A0=>nx518, A1=>cnt_s_15);
   ix277 : nor03_2x port map ( Y=>nx276, A0=>nx699, A1=>nx518, A2=>nx848);
   reg_cnt_s_14 : dff port map ( Q=>cnt_s_14, QB=>nx695, D=>nx276, CLK=>clk
   );
   reg_cnt_s_13 : dff port map ( Q=>cnt_s_13, QB=>OPEN, D=>nx258, CLK=>clk);
   ix707 : nor02_2x port map ( Y=>nx706, A0=>nx516, A1=>cnt_s_13);
   ix241 : nor03_2x port map ( Y=>nx240, A0=>nx712, A1=>nx516, A2=>nx848);
   reg_cnt_s_12 : dff port map ( Q=>cnt_s_12, QB=>nx709, D=>nx240, CLK=>clk
   );
   reg_cnt_s_11 : dff port map ( Q=>cnt_s_11, QB=>OPEN, D=>nx222, CLK=>clk);
   ix720 : nor02_2x port map ( Y=>nx719, A0=>nx514, A1=>cnt_s_11);
   ix205 : nor03_2x port map ( Y=>nx204, A0=>nx725, A1=>nx514, A2=>nx848);
   reg_cnt_s_10 : dff port map ( Q=>cnt_s_10, QB=>nx722, D=>nx204, CLK=>clk
   );
   ix733 : nor02_2x port map ( Y=>nx732, A0=>nx512, A1=>cnt_s_9);
   ix169 : nor03_2x port map ( Y=>nx168, A0=>nx738, A1=>nx512, A2=>nx846);
   reg_cnt_s_7 : dff port map ( Q=>cnt_s_7, QB=>OPEN, D=>nx150, CLK=>clk);
   ix746 : nor02_2x port map ( Y=>nx745, A0=>nx509, A1=>cnt_s_7);
   ix133 : nor03_2x port map ( Y=>nx132, A0=>nx751, A1=>nx509, A2=>nx846);
   reg_cnt_s_6 : dff port map ( Q=>cnt_s_6, QB=>nx748, D=>nx132, CLK=>clk);
   reg_cnt_s_5 : dff port map ( Q=>cnt_s_5, QB=>OPEN, D=>nx114, CLK=>clk);
   ix759 : nor02_2x port map ( Y=>nx758, A0=>nx505, A1=>cnt_s_5);
   ix97 : nor03_2x port map ( Y=>nx96, A0=>nx764, A1=>nx505, A2=>nx846);
   reg_cnt_s_4 : dff port map ( Q=>cnt_s_4, QB=>nx761, D=>nx96, CLK=>clk);
   ix79 : aoi21 port map ( Y=>nx78, A0=>nx771, A1=>nx799, B0=>nx801);
   ix772 : nand03 port map ( Y=>nx771, A0=>nx1016, A1=>nx1012, A2=>nx1014);
   ix61 : aoi21 port map ( Y=>nx60, A0=>nx775, A1=>nx795, B0=>nx797);
   ix776 : nand02 port map ( Y=>nx775, A0=>nx1012, A1=>nx1014);
   reg_cnt_s_1 : dff port map ( Q=>cnt_s_1, QB=>OPEN, D=>nx42, CLK=>clk);
   ix780 : nor02_2x port map ( Y=>nx779, A0=>nx1014, A1=>nx1012);
   reg_cnt_s_0 : dff port map ( Q=>cnt_s_0, QB=>OPEN, D=>nx26, CLK=>clk);
   ix11 : nor02_2x port map ( Y=>nx10, A0=>res, A1=>nx787);
   ix788 : aoi21 port map ( Y=>nx787, A0=>trigger, A1=>nx784, B0=>nx892);
   reg_STATE : dff port map ( Q=>OPEN, QB=>nx784, D=>nx10, CLK=>clk);
   reg_cnt_s_2 : dff port map ( Q=>cnt_s_2, QB=>nx795, D=>nx60, CLK=>clk);
   ix798 : nand02 port map ( Y=>nx797, A0=>nx771, A1=>nx892);
   reg_cnt_s_3 : dff port map ( Q=>cnt_s_3, QB=>nx799, D=>nx78, CLK=>clk);
   ix802 : nand02 port map ( Y=>nx801, A0=>nx767, A1=>nx892);
   ix845 : inv04 port map ( Y=>nx846, A=>nx892);
   ix847 : inv04 port map ( Y=>nx848, A=>nx892);
   ix849 : inv04 port map ( Y=>nx850, A=>nx892);
   ix851 : inv04 port map ( Y=>nx852, A=>nx858);
   ix855 : inv02 port map ( Y=>nx856, A=>nx1022);
   ix547 : and03 port map ( Y=>nx546, A0=>nx864, A1=>nx929, A2=>nx858);
   ix511 : and03 port map ( Y=>nx510, A0=>nx866, A1=>nx945, A2=>nx858);
   ix865 : inv01 port map ( Y=>nx866, A=>nx583);
   ix592 : and02 port map ( Y=>nx591, A0=>nx586, A1=>nx595);
   ix475 : and03 port map ( Y=>nx474, A0=>nx868, A1=>nx962, A2=>nx858);
   ix610 : and02 port map ( Y=>nx609, A0=>nx605, A1=>nx613);
   ix439 : and03 port map ( Y=>nx438, A0=>nx870, A1=>nx613, A2=>nx858);
   ix869 : inv01 port map ( Y=>nx870, A=>nx619);
   ix628 : and02 port map ( Y=>nx627, A0=>nx623, A1=>nx631);
   ix403 : and03 port map ( Y=>nx402, A0=>nx872, A1=>nx976, A2=>nx894);
   ix871 : inv01 port map ( Y=>nx872, A=>nx637);
   ix646 : and02 port map ( Y=>nx645, A0=>nx641, A1=>nx649);
   ix367 : and03 port map ( Y=>nx366, A0=>nx874, A1=>nx649, A2=>nx894);
   ix873 : inv01 port map ( Y=>nx874, A=>nx655);
   ix664 : and02 port map ( Y=>nx663, A0=>nx659, A1=>nx667);
   ix331 : and03 port map ( Y=>nx330, A0=>nx876, A1=>nx667, A2=>nx894);
   ix875 : inv01 port map ( Y=>nx876, A=>nx673);
   ix682 : and02 port map ( Y=>nx681, A0=>nx677, A1=>nx685);
   ix295 : and03 port map ( Y=>nx294, A0=>nx878, A1=>nx685, A2=>nx894);
   ix877 : inv01 port map ( Y=>nx878, A=>nx691);
   ix700 : and02 port map ( Y=>nx699, A0=>nx695, A1=>nx702);
   ix259 : and03 port map ( Y=>nx258, A0=>nx880, A1=>nx702, A2=>nx894);
   ix879 : inv01 port map ( Y=>nx880, A=>nx706);
   ix713 : and02 port map ( Y=>nx712, A0=>nx709, A1=>nx715);
   ix223 : and03 port map ( Y=>nx222, A0=>nx882, A1=>nx715, A2=>nx894);
   ix881 : inv01 port map ( Y=>nx882, A=>nx719);
   ix726 : and02 port map ( Y=>nx725, A0=>nx722, A1=>nx920);
   ix187 : and03 port map ( Y=>nx186, A0=>nx884, A1=>nx920, A2=>nx894);
   ix883 : inv01 port map ( Y=>nx884, A=>nx732);
   ix739 : and02 port map ( Y=>nx738, A0=>nx735, A1=>nx741);
   ix151 : and03 port map ( Y=>nx150, A0=>nx886, A1=>nx741, A2=>nx856);
   ix885 : inv01 port map ( Y=>nx886, A=>nx745);
   ix752 : and02 port map ( Y=>nx751, A0=>nx748, A1=>nx754);
   ix115 : and03 port map ( Y=>nx114, A0=>nx888, A1=>nx754, A2=>nx856);
   ix887 : inv01 port map ( Y=>nx888, A=>nx758);
   ix765 : and02 port map ( Y=>nx764, A0=>nx761, A1=>nx767);
   ix43 : and03 port map ( Y=>nx42, A0=>nx890, A1=>nx775, A2=>nx856);
   ix889 : inv01 port map ( Y=>nx890, A=>nx779);
   ix27 : nor02ii port map ( Y=>nx26, A0=>nx1014, A1=>nx856);
   ix790 : or02 port map ( Y=>nx500, A0=>cnt_rdy_EXMPLR, A1=>nx784);
   ix893 : inv02 port map ( Y=>nx894, A=>nx1022);
   ix177 : nor02ii port map ( Y=>nx512, A0=>nx741, A1=>cnt_s_8);
   reg_cnt_s_8 : dff port map ( Q=>cnt_s_8, QB=>nx735, D=>nx168, CLK=>clk);
   reg_cnt_s_9 : dff port map ( Q=>cnt_s_9, QB=>OPEN, D=>nx186, CLK=>clk);
   ix1024 : buf02 port map ( Y=>nx920, A=>nx728);
   ix1025 : inv02 port map ( Y=>nx921, A=>cnt_s_31);
   ix1026 : and02 port map ( Y=>nx922, A0=>cnt_s_30, A1=>cnt_s_28);
   reg_nx858 : inv02 port map ( Y=>nx858, A=>nx1022);
   ix1027 : nand04_2x port map ( Y=>nx923, A0=>nx922, A1=>nx858, A2=>
      cnt_s_29, A3=>nx921);
   ix1028 : nand03_2x port map ( Y=>nx924, A0=>cnt_s_30, A1=>cnt_s_29, A2=>
      cnt_s_28);
   ix1029 : nor02_2x port map ( Y=>nx925, A0=>nx921, A1=>nx1022);
   ix1030 : nand02_2x port map ( Y=>nx926, A0=>nx924, A1=>nx925);
   reg_nx578 : oai321 port map ( Y=>nx578, A0=>NOT_nx579, A1=>nx921, A2=>
      nx1023, B0=>nx946, B1=>nx923, C0=>nx926);
   ix1031 : inv02 port map ( Y=>nx927, A=>cnt_s_29);
   ix1032 : inv02 port map ( Y=>nx928, A=>cnt_s_28);
   ix1033 : inv01 port map ( Y=>nx929, A=>NOT_nx563);
   ix1034 : inv02 port map ( Y=>nx930, A=>nx534);
   ix1035 : or02 port map ( Y=>nx931, A0=>nx927, A1=>nx928);
   ix1036 : inv02 port map ( Y=>nx932, A=>nx559);
   ix1037 : inv02 port map ( Y=>nx933, A=>cnt_s_27);
   ix1038 : or03 port map ( Y=>nx934, A0=>nx1023, A1=>nx932, A2=>nx933);
   ix1039 : inv01 port map ( Y=>nx935, A=>nx928);
   ix1040 : nand02_2x port map ( Y=>nx936, A0=>cnt_s_27, A1=>nx935);
   ix1041 : aoi22 port map ( Y=>nx937, A0=>nx927, A1=>nx932, B0=>nx936, B1=>
      nx932);
   reg_nx564 : oai332 port map ( Y=>nx564, A0=>nx930, A1=>nx931, A2=>nx934, 
      B0=>nx534, B1=>nx1023, B2=>nx559, C0=>nx1023, C1=>nx937);
   ix1042 : inv02 port map ( Y=>nx938, A=>nx927);
   ix1043 : nor02ii port map ( Y=>nx939, A0=>nx928, A1=>cnt_s_27);
   reg_nx892 : inv02 port map ( Y=>nx892, A=>nx1023);
   reg_nx754 : nand03_2x port map ( Y=>nx754, A0=>nx947, A1=>nx948, A2=>
      nx949);
   reg_nx505 : and04 port map ( Y=>nx505, A0=>nx1020, A1=>nx949, A2=>nx1018, 
      A3=>nx1016);
   reg_nx767 : nand04_2x port map ( Y=>nx767, A0=>nx1012, A1=>nx1014, A2=>
      nx1018, A3=>nx1016);
   ix1044 : inv01 port map ( Y=>nx940, A=>nx928);
   ix1045 : nand03_2x port map ( Y=>nx941, A0=>nx940, A1=>cnt_s_27, A2=>
      cnt_s_26);
   ix1046 : inv02 port map ( Y=>nx942, A=>cnt_s_29);
   reg_nx864 : oai21 port map ( Y=>nx864, A0=>nx963, A1=>nx941, B0=>nx942);
   ix1047 : inv02 port map ( Y=>nx943, A=>cnt_s_27);
   ix1048 : inv02 port map ( Y=>nx944, A=>cnt_s_26);
   reg_nx536 : nor04_2x port map ( Y=>nx536, A0=>nx995, A1=>nx928, A2=>nx943, 
      A3=>nx944);
   ix1049 : inv01 port map ( Y=>nx945, A=>NOT_nx579);
   ix1050 : inv01 port map ( Y=>nx946, A=>NOT_nx579);
   reg_nx741 : nand02_2x port map ( Y=>nx741, A0=>cnt_s_7, A1=>nx509);
   ix1051 : and02 port map ( Y=>nx947, A0=>nx1020, A1=>nx1016);
   ix1052 : and02 port map ( Y=>nx948, A0=>cnt_s_5, A1=>nx1018);
   ix1053 : and02 port map ( Y=>nx949, A0=>nx1012, A1=>nx1014);
   ix1054 : and02 port map ( Y=>nx950, A0=>nx938, A1=>nx939);
   ix1055 : inv02 port map ( Y=>nx951, A=>cnt_s_24);
   ix1056 : inv02 port map ( Y=>nx952, A=>cnt_s_25);
   ix1057 : inv02 port map ( Y=>nx953, A=>cnt_s_23);
   ix1058 : nor04_2x port map ( Y=>nx954, A0=>nx951, A1=>nx944, A2=>nx952, 
      A3=>nx953);
   reg_NOT_nx563 : and03 port map ( Y=>NOT_nx563, A0=>nx530, A1=>nx950, A2=>
      nx954);
   ix1059 : and02 port map ( Y=>nx955, A0=>cnt_s_25, A1=>cnt_s_23);
   reg_nx613 : nand02_2x port map ( Y=>nx613, A0=>cnt_s_23, A1=>nx530);
   ix1060 : nand03_2x port map ( Y=>nx956, A0=>cnt_s_6, A1=>nx1013, A2=>
      nx1015);
   ix1061 : nand04_2x port map ( Y=>nx957, A0=>nx1017, A1=>nx1018, A2=>
      nx1020, A3=>cnt_s_5);
   reg_nx509 : nor02_2x port map ( Y=>nx509, A0=>nx956, A1=>nx957);
   reg_nx728 : nand04_2x port map ( Y=>nx728, A0=>nx509, A1=>cnt_s_8, A2=>
      cnt_s_9, A3=>cnt_s_7);
   ix1062 : inv02 port map ( Y=>nx958, A=>nx571);
   ix1063 : nand03_2x port map ( Y=>nx959, A0=>nx955, A1=>cnt_s_24, A2=>
      cnt_s_22);
   ix1064 : nor03_2x port map ( Y=>nx960, A0=>nx959, A1=>nx943, A2=>nx944);
   reg_nx575 : oai22 port map ( Y=>nx575, A0=>nx958, A1=>nx997, B0=>nx958, 
      B1=>nx960);
   reg_NOT_nx579 : nor02ii port map ( Y=>NOT_nx579, A0=>nx977, A1=>nx960);
   ix1065 : and03 port map ( Y=>nx961, A0=>nx955, A1=>cnt_s_24, A2=>cnt_s_22
   );
   reg_nx595 : inv01 port map ( Y=>nx595, A=>nx996);
   ix1066 : inv01 port map ( Y=>nx962, A=>nx996);
   ix1067 : inv01 port map ( Y=>nx963, A=>nx996);
   ix1068 : inv02 port map ( Y=>nx964, A=>cnt_s_22);
   reg_nx514 : and04 port map ( Y=>nx514, A0=>nx969, A1=>nx968, A2=>cnt_s_10, 
      A3=>nx970);
   reg_nx715 : nand02_2x port map ( Y=>nx715, A0=>cnt_s_11, A1=>nx514);
   ix1069 : and02 port map ( Y=>nx965, A0=>nx1013, A1=>nx1015);
   ix1070 : nand04_2x port map ( Y=>nx966, A0=>cnt_s_8, A1=>nx965, A2=>
      cnt_s_12, A3=>cnt_s_6);
   ix1071 : nand02_2x port map ( Y=>nx967, A0=>nx979, A1=>nx990);
   reg_nx516 : nor02_2x port map ( Y=>nx516, A0=>nx966, A1=>nx967);
   reg_nx702 : nand02_2x port map ( Y=>nx702, A0=>cnt_s_13, A1=>nx516);
   ix1072 : and04 port map ( Y=>nx968, A0=>cnt_s_7, A1=>cnt_s_5, A2=>nx1017, 
      A3=>nx1013);
   ix1073 : and04 port map ( Y=>nx969, A0=>cnt_s_8, A1=>cnt_s_6, A2=>cnt_s_9, 
      A3=>nx1020);
   ix1074 : and02 port map ( Y=>nx970, A0=>nx1019, A1=>nx1015);
   ix1075 : inv02 port map ( Y=>nx971, A=>nx649);
   ix1076 : inv01 port map ( Y=>nx972, A=>nx954);
   ix1077 : inv02 port map ( Y=>nx973, A=>cnt_s_21);
   ix1078 : inv02 port map ( Y=>nx974, A=>cnt_s_20);
   ix1079 : nor04_2x port map ( Y=>nx975, A0=>nx972, A1=>nx964, A2=>nx973, 
      A3=>nx974);
   reg_nx583 : oai22 port map ( Y=>nx583, A0=>nx971, A1=>cnt_s_27, B0=>nx975, 
      B1=>cnt_s_27);
   reg_nx534 : nor02ii port map ( Y=>nx534, A0=>nx649, A1=>nx975);
   reg_nx631 : inv02 port map ( Y=>nx631, A=>nx997);
   ix1080 : inv02 port map ( Y=>nx976, A=>nx997);
   ix1081 : inv01 port map ( Y=>nx977, A=>nx997);
   reg_nx527 : nor02_2x port map ( Y=>nx527, A0=>nx974, A1=>nx649);
   ix1082 : and03 port map ( Y=>nx978, A0=>cnt_s_14, A1=>nx1013, A2=>nx1015
   );
   reg_nx518 : and04 port map ( Y=>nx518, A0=>nx990, A1=>nx978, A2=>nx991, 
      A3=>nx992);
   reg_nx685 : nand02_2x port map ( Y=>nx685, A0=>cnt_s_15, A1=>nx518);
   ix1083 : and04 port map ( Y=>nx979, A0=>cnt_s_9, A1=>nx1021, A2=>cnt_s_11, 
      A3=>cnt_s_10);
   ix1084 : and04 port map ( Y=>nx980, A0=>cnt_s_15, A1=>cnt_s_13, A2=>
      cnt_s_8, A3=>cnt_s_10);
   ix1085 : and04 port map ( Y=>nx981, A0=>cnt_s_6, A1=>cnt_s_11, A2=>
      cnt_s_7, A3=>cnt_s_5);
   ix1086 : nand02_2x port map ( Y=>nx982, A0=>nx980, A1=>nx981);
   ix1087 : nand04_2x port map ( Y=>nx983, A0=>cnt_s_14, A1=>cnt_s_16, A2=>
      cnt_s_17, A3=>cnt_s_12);
   ix1088 : and02 port map ( Y=>nx984, A0=>nx1013, A1=>nx1015);
   ix1089 : and02 port map ( Y=>nx985, A0=>nx1017, A1=>nx1019);
   ix1090 : and02 port map ( Y=>nx986, A0=>cnt_s_9, A1=>nx1021);
   ix1091 : nand04_2x port map ( Y=>nx987, A0=>cnt_s_18, A1=>nx984, A2=>
      nx985, A3=>nx986);
   reg_nx523 : nor03_2x port map ( Y=>nx523, A0=>nx982, A1=>nx983, A2=>nx987
   );
   ix1092 : and04 port map ( Y=>nx988, A0=>cnt_s_16, A1=>nx984, A2=>cnt_s_14, 
      A3=>cnt_s_12);
   ix1093 : and04 port map ( Y=>nx989, A0=>nx1017, A1=>nx1019, A2=>cnt_s_9, 
      A3=>nx1021);
   reg_nx521 : and04 port map ( Y=>nx521, A0=>nx980, A1=>nx988, A2=>nx981, 
      A3=>nx989);
   reg_nx667 : nand02_2x port map ( Y=>nx667, A0=>cnt_s_17, A1=>nx521);
   ix1094 : and04 port map ( Y=>nx990, A0=>cnt_s_7, A1=>cnt_s_5, A2=>nx1017, 
      A3=>nx1019);
   ix1095 : and04 port map ( Y=>nx991, A0=>cnt_s_9, A1=>nx1021, A2=>cnt_s_8, 
      A3=>cnt_s_6);
   ix1096 : and04 port map ( Y=>nx992, A0=>cnt_s_10, A1=>cnt_s_11, A2=>
      cnt_s_12, A3=>cnt_s_13);
   ix1097 : nor02ii port map ( Y=>nx993, A0=>nx974, A1=>cnt_s_19);
   ix1098 : inv01 port map ( Y=>nx994, A=>nx973);
   ix1099 : nand04_2x port map ( Y=>nx995, A0=>nx1131, A1=>nx993, A2=>nx961, 
      A3=>nx994);
   ix1100 : and04 port map ( Y=>nx996, A0=>nx1131, A1=>nx993, A2=>nx961, A3
      =>nx994);
   ix1101 : and03 port map ( Y=>nx997, A0=>nx993, A1=>nx1131, A2=>nx994);
   ix1102 : inv02 port map ( Y=>nx998, A=>cnt_s_19);
   ix1103 : nor04_2x port map ( Y=>nx999, A0=>nx998, A1=>nx974, A2=>nx964, 
      A3=>nx973);
   reg_nx532 : and04 port map ( Y=>nx532, A0=>nx999, A1=>nx1131, A2=>
      cnt_s_24, A3=>cnt_s_23);
   reg_nx868 : or02 port map ( Y=>nx868, A0=>nx532, A1=>cnt_s_25);
   ix1104 : nor02_2x port map ( Y=>nx1000, A0=>nx964, A1=>nx973);
   ix1105 : nor02ii port map ( Y=>nx1001, A0=>nx974, A1=>cnt_s_19);
   reg_nx530 : and03 port map ( Y=>nx530, A0=>nx1000, A1=>nx1131, A2=>nx1001
   );
   reg_nx649 : nand02_2x port map ( Y=>nx649, A0=>cnt_s_19, A1=>nx1133);
   ix1106 : nor04_2x port map ( Y=>nx1002, A0=>cnt_s_25, A1=>cnt_s_21, A2=>
      cnt_s_26, A3=>cnt_s_16);
   ix1107 : nor04_2x port map ( Y=>nx1003, A0=>cnt_s_15, A1=>cnt_s_14, A2=>
      cnt_s_28, A3=>cnt_s_22);
   ix1108 : nor04_2x port map ( Y=>nx1004, A0=>cnt_s_19, A1=>cnt_s_17, A2=>
      cnt_s_24, A3=>cnt_s_13);
   ix1109 : nor04_2x port map ( Y=>nx1005, A0=>cnt_s_27, A1=>cnt_s_12, A2=>
      cnt_s_29, A3=>cnt_s_23);
   ix1110 : nor04_2x port map ( Y=>nx1006, A0=>nx795, A1=>nx1015, A2=>nx1019, 
      A3=>nx1013);
   ix1111 : nor04_2x port map ( Y=>nx1007, A0=>cnt_s_30, A1=>cnt_s_18, A2=>
      cnt_s_31, A3=>cnt_s_20);
   ix1112 : nor04_2x port map ( Y=>nx1008, A0=>cnt_s_9, A1=>nx735, A2=>
      cnt_s_11, A3=>cnt_s_10);
   ix1113 : and04 port map ( Y=>nx1009, A0=>cnt_s_5, A1=>nx1021, A2=>cnt_s_7, 
      A3=>cnt_s_6);
   ix1114 : nand04_2x port map ( Y=>nx1010, A0=>nx1006, A1=>nx1009, A2=>
      nx1005, A3=>nx1008);
   ix1115 : nand04_2x port map ( Y=>nx1011, A0=>nx1003, A1=>nx1004, A2=>
      nx1002, A3=>nx1007);
   reg_cnt_rdy : nor02_2x port map ( Y=>cnt_rdy_EXMPLR, A0=>nx1010, A1=>
      nx1011);
   ix1116 : buf16 port map ( Y=>nx1012, A=>cnt_s_1);
   ix1117 : buf16 port map ( Y=>nx1013, A=>cnt_s_1);
   ix1118 : buf16 port map ( Y=>nx1014, A=>cnt_s_0);
   ix1119 : buf16 port map ( Y=>nx1015, A=>cnt_s_0);
   ix1120 : buf16 port map ( Y=>nx1016, A=>cnt_s_2);
   ix1121 : buf16 port map ( Y=>nx1017, A=>cnt_s_2);
   ix1122 : buf16 port map ( Y=>nx1018, A=>cnt_s_3);
   ix1123 : buf16 port map ( Y=>nx1019, A=>cnt_s_3);
   ix1124 : buf16 port map ( Y=>nx1020, A=>cnt_s_4);
   ix1125 : buf16 port map ( Y=>nx1021, A=>cnt_s_4);
   ix1126 : buf16 port map ( Y=>nx1022, A=>nx500);
   ix1127 : buf16 port map ( Y=>nx1023, A=>nx500);
   ix1128 : buf02 port map ( Y=>nx1129, A=>nx564);
   ix1130 : buf02 port map ( Y=>nx1131, A=>nx523);
   ix1132 : buf02 port map ( Y=>nx1133, A=>nx523);
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
   signal flags_2_dp_rb_PRE_GURU_en_EXMPLR, flags_2_mem_cg_sel_0_EXMPLR, 
      flags_2_dp_alu_ctrl_EXMPLR, flags_2_dp_rb_out_sel_1_EXMPLR, 
      flags_2_mem_cg_sel_1_EXMPLR, STATE_8, STATE_3, nx8, nx20, STATE_2, 
      STATE_1, STATE_0, STATE_9, nx30, nx40, nx44, nx56, nx66, nx84, nx96, 
      nx108, nx124, nx138, nx64, nx73, nx79, nx81, nx87, nx89, nx93, nx101, 
      nx104, nx107, nx113, nx115, nx116, nx152, nx155, nx157: std_logic ;

begin
   flags_2_dp_ng_cte_incr <= flags_2_dp_alu_ctrl_EXMPLR ;
   flags_2_dp_ng_rand_zero <= flags_2_mem_cg_sel_1_EXMPLR ;
   flags_2_dp_alu_ctrl <= flags_2_dp_alu_ctrl_EXMPLR ;
   flags_2_dp_rb_GURU_en <= flags_2_dp_rb_PRE_GURU_en_EXMPLR ;
   flags_2_dp_rb_PRE_GURU_en <= flags_2_dp_rb_PRE_GURU_en_EXMPLR ;
   flags_2_dp_rb_out_sel_4 <= flags_2_mem_cg_sel_1_EXMPLR ;
   flags_2_dp_rb_out_sel_3 <= flags_2_mem_cg_sel_1_EXMPLR ;
   flags_2_dp_rb_out_sel_1 <= flags_2_dp_rb_out_sel_1_EXMPLR ;
   flags_2_dp_rb_out_sel_0 <= flags_2_mem_cg_sel_1_EXMPLR ;
   flags_2_dp_cg_sel_0 <= flags_2_mem_cg_sel_0_EXMPLR ;
   flags_2_mem_cg_sel_1 <= flags_2_mem_cg_sel_1_EXMPLR ;
   flags_2_mem_cg_sel_0 <= flags_2_mem_cg_sel_0_EXMPLR ;
   ix65 : fake_vcc port map ( Y=>nx64);
   ix52 : fake_gnd port map ( Y=>flags_2_mem_cg_sel_1_EXMPLR);
   reg_STATE_9 : dff port map ( Q=>STATE_9, QB=>OPEN, D=>nx30, CLK=>clk);
   ix31 : and04 port map ( Y=>nx30, A0=>nx73, A1=>STATE_8, A2=>go_guru, A3=>
      end_of_guru);
   ix74 : inv01 port map ( Y=>nx73, A=>res);
   reg_STATE_8 : dff port map ( Q=>STATE_8, QB=>OPEN, D=>nx108, CLK=>clk);
   ix109 : oai22 port map ( Y=>nx108, A0=>go_guru, A1=>nx79, B0=>res, B1=>
      nx81);
   ix80 : nand02 port map ( Y=>nx79, A0=>nx73, A1=>STATE_8);
   reg_STATE_4 : dff port map ( Q=>OPEN, QB=>nx81, D=>nx96, CLK=>clk);
   ix97 : and03 port map ( Y=>nx96, A0=>STATE_3, A1=>nx73, A2=>cnt_guru_rdy
   );
   reg_STATE_3 : dff port map ( Q=>STATE_3, QB=>OPEN, D=>nx84, CLK=>clk);
   ix85 : aoi21 port map ( Y=>nx84, A0=>nx87, A1=>nx104, B0=>res);
   ix88 : aoi21 port map ( Y=>nx87, A0=>nx89, A1=>STATE_3, B0=>STATE_2);
   ix90 : inv01 port map ( Y=>nx89, A=>cnt_guru_rdy);
   reg_STATE_2 : dff port map ( Q=>STATE_2, QB=>OPEN, D=>nx66, CLK=>clk);
   reg_STATE_1 : dff port map ( Q=>STATE_1, QB=>nx93, D=>nx56, CLK=>clk);
   ix45 : or03 port map ( Y=>nx44, A0=>nx40, A1=>STATE_9, A2=>res);
   reg_STATE_0 : dff port map ( Q=>STATE_0, QB=>nx101, D=>nx44, CLK=>clk);
   reg_STATE_10 : dff port map ( Q=>OPEN, QB=>nx104, D=>nx20, CLK=>clk);
   ix21 : aoi21 port map ( Y=>nx20, A0=>nx107, A1=>nx116, B0=>res);
   reg_STATE_6 : dff port map ( Q=>flags_2_dp_cg_sel_1, QB=>nx107, D=>nx8, 
      CLK=>clk);
   reg_STATE_5 : dff port map ( Q=>OPEN, QB=>nx115, D=>nx124, CLK=>clk);
   ix125 : nor03_2x port map ( Y=>nx124, A0=>nx79, A1=>nx113, A2=>
      end_of_guru);
   ix114 : inv01 port map ( Y=>nx113, A=>go_guru);
   reg_STATE_7 : dff port map ( Q=>OPEN, QB=>nx116, D=>nx138, CLK=>clk);
   ix139 : nor03_2x port map ( Y=>nx138, A0=>nx115, A1=>res, A2=>duo_formed
   );
   ix169 : nor04 port map ( Y=>flags_2_dp_alu_ctrl_EXMPLR, A0=>STATE_3, A1=>
      STATE_2, A2=>STATE_1, A3=>STATE_0);
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
   ix149 : inv01 port map ( Y=>flags_2_dp_rb_out_sel_2, A=>
      flags_2_dp_rb_out_sel_1_EXMPLR);
   ix70 : nor02ii port map ( Y=>flags_2_dp_rb_out_sel_1_EXMPLR, A0=>STATE_9, 
      A1=>nx104);
   ix67 : nor02ii port map ( Y=>nx66, A0=>res, A1=>STATE_1);
   ix57 : nor03_2x port map ( Y=>nx56, A0=>nx101, A1=>res, A2=>nx152);
   ix151 : inv01 port map ( Y=>nx152, A=>fsm_sg_start);
   ix41 : nor02ii port map ( Y=>nx40, A0=>fsm_sg_start, A1=>STATE_0);
   ix9 : nor03_2x port map ( Y=>nx8, A0=>nx115, A1=>res, A2=>nx155);
   ix154 : inv01 port map ( Y=>nx155, A=>duo_formed);
   ix175 : and02 port map ( Y=>flags_2_mem_cg_sel_0_EXMPLR, A0=>nx101, A1=>
      flags_2_dp_rb_out_sel_1_EXMPLR);
   ix153 : nand04 port map ( Y=>flags_2_mem_mem_wr_en, A0=>nx107, A1=>
      flags_2_dp_rb_out_sel_1_EXMPLR, A2=>nx157, A3=>nx116);
   ix156 : inv01 port map ( Y=>nx157, A=>STATE_2);
   ix177 : nand02 port map ( Y=>flags_2_dp_rb_PRE_GURU_en_EXMPLR, A0=>nx93, 
      A1=>nx81);
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
      ctrl_2_dp_ng_cte_incr_EXMPLR, ctrl_2_dp_ng_rand_zero_EXMPLR, 
      ctrl_2_mem_cg_sel_1_EXMPLR, ctrl_2_mem_cg_sel_0_EXMPLR, 
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
      ctrl_2_dp_rb_out_sel_3_EXMPLR, init_2_dp_s_ng_cte_incr, nx499, 
      init_STATE_0, nx14, nx24, nx28, nx44, nx240, nx501, nx266, nx270, 
      main_STATE_3, nx292, nx296, nx502, nx320, nx505, nx511, nx513, nx519, 
      nx521, nx523, nx528, nx531, nx536, nx540, nx542, nx546, nx553, nx555, 
      nx609, nx611, nx619, nx623, nx625, nx631, nx633, nx635, nx637, nx639: 
   std_logic ;
   
   signal DANGLING : std_logic_vector (7 downto 0 );

begin
   en_cnt_step <= en_cnt_step_EXMPLR ;
   start_step <= start_step_EXMPLR ;
   ctrl_2_dp_ng_cte_incr <= ctrl_2_dp_ng_cte_incr_EXMPLR ;
   ctrl_2_dp_ng_rand_zero <= ctrl_2_dp_ng_rand_zero_EXMPLR ;
   ctrl_2_dp_rb_out_sel_4 <= ctrl_2_dp_rb_out_sel_3_EXMPLR ;
   ctrl_2_dp_rb_out_sel_3 <= ctrl_2_dp_rb_out_sel_3_EXMPLR ;
   ctrl_2_dp_rb_out_sel_0 <= ctrl_2_dp_rb_out_sel_0_EXMPLR ;
   ctrl_2_mem_cg_sel_1 <= ctrl_2_mem_cg_sel_1_EXMPLR ;
   ctrl_2_mem_cg_sel_0 <= ctrl_2_mem_cg_sel_0_EXMPLR ;
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
   main_reg_STATE_5 : dff port map ( Q=>cnt_start_i_s, QB=>OPEN, D=>nx240, 
      CLK=>clk);
   ix241 : nor02_2x port map ( Y=>nx240, A0=>res, A1=>nx511);
   ix512 : aoi21 port map ( Y=>nx511, A0=>nx513, A1=>cnt_start_i_s, B0=>
      start_step_EXMPLR);
   ix514 : inv01 port map ( Y=>nx513, A=>cnt_start_f_s);
   main_reg_STATE_1 : dff port map ( Q=>start_step_EXMPLR, QB=>OPEN, D=>
      nx502, CLK=>clk);
   main_reg_STATE_4 : dff port map ( Q=>cnt_prepare_i_s, QB=>OPEN, D=>nx320, 
      CLK=>clk);
   ix321 : oai32 port map ( Y=>nx320, A0=>nx519, A1=>ref_2_base(1), A2=>
      nx521, B0=>res, B1=>nx536);
   ix520 : inv01 port map ( Y=>nx519, A=>dp_2_ctrl(1));
   ix522 : oai21 port map ( Y=>nx521, A0=>nx523, A1=>disc_2_base(0), B0=>
      nx501);
   ix524 : inv01 port map ( Y=>nx523, A=>en_disc);
   ix281 : nor02ii port map ( Y=>nx501, A0=>res, A1=>en_cnt_step_EXMPLR);
   main_reg_STATE_2 : dff port map ( Q=>en_cnt_step_EXMPLR, QB=>OPEN, D=>
      nx270, CLK=>clk);
   ix271 : ao32 port map ( Y=>nx270, A0=>cnt_start_i_s, A1=>nx528, A2=>
      cnt_start_f_s, B0=>nx501, B1=>nx266);
   ix529 : inv01 port map ( Y=>nx528, A=>res);
   ix267 : nand02 port map ( Y=>nx266, A0=>nx531, A1=>dp_2_ctrl(1));
   ix537 : aoi321 port map ( Y=>nx536, A0=>init_STATE_0, A1=>
      init_2_dp_s_ng_cte_incr, A2=>nx619, B0=>nx555, B1=>cnt_prepare_i_s, C0
      =>main_STATE_3);
   ix15 : nor02_2x port map ( Y=>nx14, A0=>res, A1=>nx540);
   ix541 : aoi32 port map ( Y=>nx540, A0=>nx542, A1=>dp_2_ctrl(0), A2=>
      init_2_dp_s_ng_cte_incr, B0=>nx619, B1=>nx553);
   init_reg_STATE_0 : dff port map ( Q=>init_STATE_0, QB=>nx542, D=>nx14, 
      CLK=>clk);
   init_reg_STATE_1 : dff port map ( Q=>init_2_dp_s_ng_cte_incr, QB=>OPEN, D
      =>nx28, CLK=>clk);
   ix29 : nor02_2x port map ( Y=>nx28, A0=>res, A1=>nx546);
   ix547 : oai21 port map ( Y=>nx546, A0=>init_STATE_0, A1=>
      init_2_dp_s_ng_cte_incr, B0=>nx499);
   ix41 : nand02 port map ( Y=>nx499, A0=>init_STATE_0, A1=>
      init_2_dp_s_ng_cte_incr);
   main_reg_STATE_0 : dff port map ( Q=>ctrl_2_dp_rb_out_sel_0_EXMPLR, QB=>
      OPEN, D=>nx44, CLK=>clk);
   ix45 : ao21 port map ( Y=>nx44, A0=>nx499, A1=>nx619, B0=>res);
   ix556 : nand03 port map ( Y=>nx555, A0=>cnt_prepare_i_s, A1=>nx528, A2=>
      cnt_prepare_f_s);
   main_reg_STATE_3 : dff port map ( Q=>main_STATE_3, QB=>OPEN, D=>nx296, 
      CLK=>clk);
   ix297 : and03 port map ( Y=>nx296, A0=>nx292, A1=>ref_2_base(1), A2=>
      nx501);
   ix293 : and03 port map ( Y=>nx292, A0=>en_disc, A1=>disc_2_base(0), A2=>
      dp_2_ctrl(1));
   init_tri_flags_2_mem_data_a_0 : tri01 port map ( Y=>init_2_mem_s_data_a_0, 
      A=>nx505, E=>ctrl_2_dp_rb_out_sel_3_EXMPLR);
   init_tri_flags_2_mem_data_a_1 : tri01 port map ( Y=>init_2_mem_s_data_a_1, 
      A=>nx505, E=>ctrl_2_dp_rb_out_sel_3_EXMPLR);
   init_tri_flags_2_mem_data_a_2 : tri01 port map ( Y=>init_2_mem_s_data_a_2, 
      A=>nx505, E=>ctrl_2_dp_rb_out_sel_3_EXMPLR);
   init_tri_flags_2_mem_data_a_3 : tri01 port map ( Y=>init_2_mem_s_data_a_3, 
      A=>nx505, E=>ctrl_2_dp_rb_out_sel_3_EXMPLR);
   init_tri_flags_2_mem_data_a_4 : tri01 port map ( Y=>init_2_mem_s_data_a_4, 
      A=>nx505, E=>ctrl_2_dp_rb_out_sel_3_EXMPLR);
   init_tri_flags_2_mem_data_a_5 : tri01 port map ( Y=>init_2_mem_s_data_a_5, 
      A=>nx505, E=>ctrl_2_dp_rb_out_sel_3_EXMPLR);
   init_tri_flags_2_mem_data_a_6 : tri01 port map ( Y=>init_2_mem_s_data_a_6, 
      A=>nx505, E=>ctrl_2_dp_rb_out_sel_3_EXMPLR);
   init_tri_flags_2_mem_data_a_7 : tri01 port map ( Y=>init_2_mem_s_data_a_7, 
      A=>nx505, E=>ctrl_2_dp_rb_out_sel_3_EXMPLR);
   ix125 : ao22 port map ( Y=>ctrl_2_mem_mem_wr_en, A0=>
      guru_2_mem_s_mem_wr_en, A1=>nx633, B0=>nx24, B1=>
      ctrl_2_dp_ng_rand_zero_EXMPLR);
   init_tri_flags_2_mem_mem_a_addr_0 : tri01 port map ( Y=>
      init_2_mem_s_mem_a_addr_0, A=>nx505, E=>ctrl_2_dp_rb_out_sel_3_EXMPLR
   );
   init_tri_flags_2_mem_mem_a_addr_1 : tri01 port map ( Y=>
      init_2_mem_s_mem_a_addr_1, A=>nx505, E=>ctrl_2_dp_rb_out_sel_3_EXMPLR
   );
   init_tri_flags_2_mem_mem_a_addr_2 : tri01 port map ( Y=>
      init_2_mem_s_mem_a_addr_2, A=>nx505, E=>ctrl_2_dp_rb_out_sel_3_EXMPLR
   );
   init_tri_flags_2_mem_mem_a_addr_3 : tri01 port map ( Y=>
      init_2_mem_s_mem_a_addr_3, A=>nx505, E=>ctrl_2_dp_rb_out_sel_3_EXMPLR
   );
   init_tri_flags_2_mem_mem_a_addr_4 : tri01 port map ( Y=>
      init_2_mem_s_mem_a_addr_4, A=>nx505, E=>ctrl_2_dp_rb_out_sel_3_EXMPLR
   );
   init_tri_flags_2_mem_mem_a_addr_5 : tri01 port map ( Y=>
      init_2_mem_s_mem_a_addr_5, A=>nx505, E=>ctrl_2_dp_rb_out_sel_3_EXMPLR
   );
   ix181 : ao21 port map ( Y=>ctrl_2_dp_cg_sel_0, A0=>init_2_dp_s_cg_sel_0, 
      A1=>nx623, B0=>ctrl_2_mem_cg_sel_0_EXMPLR);
   init_tri_flags_2_dp_cg_sel_0 : tri01 port map ( Y=>init_2_dp_s_cg_sel_0, 
      A=>nx505, E=>ctrl_2_dp_rb_out_sel_3_EXMPLR);
   ix189 : ao21 port map ( Y=>ctrl_2_dp_cg_sel_1, A0=>init_2_dp_s_cg_sel_1, 
      A1=>nx625, B0=>ctrl_2_mem_cg_sel_1_EXMPLR);
   init_tri_flags_2_dp_cg_sel_1 : tri01 port map ( Y=>init_2_dp_s_cg_sel_1, 
      A=>nx505, E=>ctrl_2_dp_rb_out_sel_3_EXMPLR);
   init_tri_flags_2_dp_rb_PRE_GURU_en : tri01 port map ( Y=>
      init_2_dp_s_rb_PRE_GURU_en, A=>nx505, E=>ctrl_2_dp_rb_out_sel_3_EXMPLR
   );
   init_tri_flags_2_dp_rb_GURU_en : tri01 port map ( Y=>
      init_2_dp_s_rb_GURU_en, A=>nx505, E=>ctrl_2_dp_rb_out_sel_3_EXMPLR);
   ix213 : ao22 port map ( Y=>ctrl_2_dp_rb_INIT_en, A0=>
      guru_2_dp_s_rb_INIT_en, A1=>nx633, B0=>nx24, B1=>
      ctrl_2_dp_ng_rand_zero_EXMPLR);
   ix227 : aoi21 port map ( Y=>ctrl_2_dp_alu_ctrl, A0=>nx625, A1=>nx609, B0
      =>nx611);
   ix333 : inv01 port map ( Y=>nx502, A=>nx555);
   ix25 : inv01 port map ( Y=>nx24, A=>nx546);
   ix610 : inv01 port map ( Y=>nx609, A=>nx499);
   ix612 : inv01 port map ( Y=>nx611, A=>ctrl_2_dp_ng_cte_incr_EXMPLR);
   ix618 : inv02 port map ( Y=>nx619, A=>nx633);
   ix622 : inv02 port map ( Y=>nx623, A=>nx633);
   ix624 : inv02 port map ( Y=>nx625, A=>nx633);
   ix532 : mux21_ni port map ( Y=>nx531, A0=>nx631, A1=>disc_2_base(0), S0=>
      en_disc);
   ix630 : inv01 port map ( Y=>nx631, A=>ref_2_base(1));
   ix554 : nor02ii port map ( Y=>nx553, A0=>init_2_dp_s_ng_cte_incr, A1=>
      nx542);
   ix177 : and02 port map ( Y=>ctrl_2_mem_cg_sel_0_EXMPLR, A0=>nx633, A1=>
      guru_2_dp_s_cg_sel_0);
   ix185 : and02 port map ( Y=>ctrl_2_mem_cg_sel_1_EXMPLR, A0=>nx633, A1=>
      guru_2_dp_s_cg_sel_1);
   ix59 : mux21_ni port map ( Y=>ctrl_2_mem_data_a_0, A0=>
      init_2_mem_s_data_a_0, A1=>guru_2_mem_s_data_a_0, S0=>nx635);
   ix67 : mux21_ni port map ( Y=>ctrl_2_mem_data_a_1, A0=>
      init_2_mem_s_data_a_1, A1=>guru_2_mem_s_data_a_1, S0=>nx635);
   ix75 : mux21_ni port map ( Y=>ctrl_2_mem_data_a_2, A0=>
      init_2_mem_s_data_a_2, A1=>guru_2_mem_s_data_a_2, S0=>nx635);
   ix83 : mux21_ni port map ( Y=>ctrl_2_mem_data_a_3, A0=>
      init_2_mem_s_data_a_3, A1=>guru_2_mem_s_data_a_3, S0=>nx635);
   ix91 : mux21_ni port map ( Y=>ctrl_2_mem_data_a_4, A0=>
      init_2_mem_s_data_a_4, A1=>guru_2_mem_s_data_a_4, S0=>nx635);
   ix99 : mux21_ni port map ( Y=>ctrl_2_mem_data_a_5, A0=>
      init_2_mem_s_data_a_5, A1=>guru_2_mem_s_data_a_5, S0=>nx635);
   ix107 : mux21_ni port map ( Y=>ctrl_2_mem_data_a_6, A0=>
      init_2_mem_s_data_a_6, A1=>guru_2_mem_s_data_a_6, S0=>nx635);
   ix115 : mux21_ni port map ( Y=>ctrl_2_mem_data_a_7, A0=>
      init_2_mem_s_data_a_7, A1=>guru_2_mem_s_data_a_7, S0=>nx637);
   ix121 : nor02_2x port map ( Y=>ctrl_2_dp_ng_rand_zero_EXMPLR, A0=>nx553, 
      A1=>nx637);
   ix133 : mux21_ni port map ( Y=>ctrl_2_mem_mem_a_addr_0, A0=>
      init_2_mem_s_mem_a_addr_0, A1=>guru_2_mem_s_mem_a_addr_0, S0=>nx637);
   ix141 : mux21_ni port map ( Y=>ctrl_2_mem_mem_a_addr_1, A0=>
      init_2_mem_s_mem_a_addr_1, A1=>guru_2_mem_s_mem_a_addr_1, S0=>nx637);
   ix149 : mux21_ni port map ( Y=>ctrl_2_mem_mem_a_addr_2, A0=>
      init_2_mem_s_mem_a_addr_2, A1=>guru_2_mem_s_mem_a_addr_2, S0=>nx637);
   ix157 : mux21_ni port map ( Y=>ctrl_2_mem_mem_a_addr_3, A0=>
      init_2_mem_s_mem_a_addr_3, A1=>guru_2_mem_s_mem_a_addr_3, S0=>nx637);
   ix165 : mux21_ni port map ( Y=>ctrl_2_mem_mem_a_addr_4, A0=>
      init_2_mem_s_mem_a_addr_4, A1=>guru_2_mem_s_mem_a_addr_4, S0=>nx637);
   ix173 : mux21_ni port map ( Y=>ctrl_2_mem_mem_a_addr_5, A0=>
      init_2_mem_s_mem_a_addr_5, A1=>guru_2_mem_s_mem_a_addr_5, S0=>nx639);
   ix343 : nor02ii port map ( Y=>ctrl_2_dp_rb_out_sel_1, A0=>
      guru_2_dp_s_rb_out_sel_2, A1=>nx639);
   ix347 : nor02ii port map ( Y=>ctrl_2_dp_rb_out_sel_2, A0=>
      guru_2_dp_s_rb_out_sel_1, A1=>nx639);
   ix197 : mux21_ni port map ( Y=>ctrl_2_dp_rb_PRE_GURU_en, A0=>
      init_2_dp_s_rb_PRE_GURU_en, A1=>guru_2_dp_s_rb_GURU_en, S0=>nx639);
   ix205 : mux21_ni port map ( Y=>ctrl_2_dp_rb_GURU_en, A0=>
      init_2_dp_s_rb_GURU_en, A1=>guru_2_dp_s_rb_GURU_en, S0=>nx639);
   ix221 : mux21_ni port map ( Y=>ctrl_2_dp_ng_cte_incr_EXMPLR, A0=>
      init_2_dp_s_ng_cte_incr, A1=>guru_2_dp_s_ng_cte_incr, S0=>nx639);
   ix632 : inv02 port map ( Y=>nx633, A=>ctrl_2_dp_rb_out_sel_0_EXMPLR);
   ix634 : inv02 port map ( Y=>nx635, A=>ctrl_2_dp_rb_out_sel_0_EXMPLR);
   ix636 : inv02 port map ( Y=>nx637, A=>ctrl_2_dp_rb_out_sel_0_EXMPLR);
   ix638 : inv02 port map ( Y=>nx639, A=>ctrl_2_dp_rb_out_sel_0_EXMPLR);

end arch ;

