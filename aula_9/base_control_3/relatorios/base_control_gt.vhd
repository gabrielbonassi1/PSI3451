
-- 
-- Definition of  base_control
-- 
--      05/25/23 10:01:19
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
   signal cnt_s_30, cnt_s_29, cnt_s_28, cnt_s_27, cnt_s_26, cnt_s_25, 
      cnt_s_24, cnt_s_23, cnt_s_22, cnt_s_21, cnt_s_17, cnt_s_15, cnt_s_11, 
      cnt_s_10, cnt_s_9, cnt_s_8, cnt_s_7, cnt_s_6, cnt_s_5, cnt_s_4, 
      cnt_s_3, cnt_s_2, cnt_s_1, cnt_s_0, STATE, nx10, nx26, nx501, nx42, 
      nx503, nx60, nx70, nx504, nx78, nx88, nx505, nx96, nx114, nx509, nx132, 
      nx150, nx512, nx168, nx513, nx186, nx514, nx204, nx222, nx240, nx258, 
      nx276, nx294, nx348, nx366, nx384, nx402, nx438, nx456, nx474, nx492, 
      nx510, nx528, nx537, nx546, nx564, nx614, nx644, nx674, nx694, nx550, 
      nx553, nx555, nx563, nx567, nx571, nx582, nx586, nx599, nx623, nx635, 
      nx659, nx671, nx677, nx683, nx695, nx701, nx705, nx708, nx711, nx714, 
      nx717, nx724, nx727, nx730, nx734, nx739, nx742, nx744, nx746, nx748, 
      nx752, nx758, nx763, nx765, nx773, nx775, nx777, nx779, nx782, nx786, 
      nx788, nx791, nx793, nx797, nx802, nx805, nx810, nx812, nx814, nx816, 
      nx818, nx821, nx824, nx829, nx832, nx834, nx836, nx844, nx847, nx849, 
      nx851, nx854, nx857, nx859, nx861, nx864, nx866, nx868, nx870, nx872, 
      nx874, nx877, nx879, nx882, nx884, nx886, nx888, nx892, nx894, nx901, 
      nx905, nx909, nx919, nx921, nx923, nx943, cnt_s_14, nx767, cnt_s_13, 
      nx769, cnt_s_12, nx771, cnt_s_16, nx760, cnt_s_20, nx750, cnt_s_19, 
      nx754, cnt_s_18, nx756, nx951, nx952, nx953, nx954, nx955, nx956, 
      nx957, nx958, nx578, nx577, nx959, nx960, nx961, nx507, nx689, nx720, 
      nx962, nx963, nx964, nx965, nx966, nx967, nx968, nx969, nx515, nx653, 
      nx970, nx533, nx971, nx605, nx972, nx973, nx974, nx975, nx529, nx976, 
      nx977, nx978, nx979, nx531, nx617, nx980, nx981, nx982, nx983, nx984, 
      nx985, nx986, nx987, nx988, nx989, nx522, nx990, nx991, nx629, nx992, 
      nx500, nx993, nx994, nx995, nx996, nx903, nx826, nx997, nx998, nx999, 
      nx420, nx1000, nx312, nx1001, nx593, nx907, nx1002, nx1003, nx1004, 
      nx1005, nx1006, nx330, nx1007, nx641, nx519, nx1008, nx1009, nx1010, 
      nx1011, nx1012, nx1013, nx535, nx929, nx665, nx1014, nx1015, nx1016, 
      nx1017, nx1018, nx1019, nx1020, nx1021, nx1022, nx1023, nx1024, nx1025
   : std_logic ;

begin
   ix699 : nor02 port map ( Y=>cnt_rdy, A0=>nx550, A1=>nx894);
   ix551 : nand02 port map ( Y=>nx550, A0=>nx614, A1=>nx644);
   ix615 : nor02 port map ( Y=>nx614, A0=>nx553, A1=>nx892);
   ix554 : nand04 port map ( Y=>nx553, A0=>nx555, A1=>nx563, A2=>nx882, A3=>
      nx877);
   cnt_s_31 : dff port map ( Q=>OPEN, QB=>nx555, D=>nx578, CLK=>clk);
   ix565 : aoi21 port map ( Y=>nx564, A0=>nx567, A1=>nx563, B0=>nx886);
   ix568 : nand03 port map ( Y=>nx567, A0=>cnt_s_29, A1=>cnt_s_28, A2=>nx535
   );
   ix547 : aoi21 port map ( Y=>nx546, A0=>nx571, A1=>nx882, B0=>nx884);
   ix572 : nand02 port map ( Y=>nx571, A0=>cnt_s_28, A1=>nx535);
   ix529 : aoi21 port map ( Y=>nx528, A0=>nx577, A1=>nx877, B0=>nx879);
   ix511 : aoi21 port map ( Y=>nx510, A0=>nx582, A1=>nx872, B0=>nx874);
   ix583 : nand04 port map ( Y=>nx582, A0=>cnt_s_26, A1=>cnt_s_25, A2=>
      cnt_s_24, A3=>nx531);
   ix496 : aoi21 port map ( Y=>nx492, A0=>nx586, A1=>nx868, B0=>nx870);
   ix588 : nand03 port map ( Y=>nx586, A0=>cnt_s_25, A1=>cnt_s_24, A2=>nx531
   );
   ix475 : aoi21 port map ( Y=>nx474, A0=>nx593, A1=>nx864, B0=>nx866);
   ix457 : aoi21 port map ( Y=>nx456, A0=>nx599, A1=>nx859, B0=>nx861);
   ix600 : nand03 port map ( Y=>nx599, A0=>cnt_s_23, A1=>cnt_s_22, A2=>nx529
   );
   ix439 : aoi21 port map ( Y=>nx438, A0=>nx605, A1=>nx744, B0=>nx857);
   ix403 : aoi21 port map ( Y=>nx402, A0=>nx953, A1=>nx748, B0=>nx851);
   ix385 : aoi21 port map ( Y=>nx384, A0=>nx623, A1=>nx750, B0=>nx849);
   ix624 : nand03 port map ( Y=>nx623, A0=>cnt_s_19, A1=>cnt_s_18, A2=>nx522
   );
   ix367 : aoi21 port map ( Y=>nx366, A0=>nx952, A1=>nx754, B0=>nx847);
   ix349 : aoi21 port map ( Y=>nx348, A0=>nx635, A1=>nx756, B0=>nx844);
   ix636 : nand03 port map ( Y=>nx635, A0=>cnt_s_17, A1=>nx1014, A2=>nx519);
   ix295 : aoi21 port map ( Y=>nx294, A0=>nx951, A1=>nx765, B0=>nx836);
   ix277 : aoi21 port map ( Y=>nx276, A0=>nx659, A1=>nx767, B0=>nx834);
   ix660 : nand03 port map ( Y=>nx659, A0=>cnt_s_13, A1=>nx1016, A2=>nx515);
   ix259 : aoi21 port map ( Y=>nx258, A0=>nx665, A1=>nx769, B0=>nx832);
   ix241 : aoi21 port map ( Y=>nx240, A0=>nx671, A1=>nx771, B0=>nx829);
   ix672 : nand02 port map ( Y=>nx671, A0=>cnt_s_11, A1=>nx514);
   ix223 : aoi21 port map ( Y=>nx222, A0=>nx677, A1=>nx775, B0=>nx824);
   ix678 : nand02 port map ( Y=>nx677, A0=>cnt_s_10, A1=>nx513);
   ix205 : aoi21 port map ( Y=>nx204, A0=>nx683, A1=>nx777, B0=>nx821);
   ix684 : nand02 port map ( Y=>nx683, A0=>cnt_s_9, A1=>nx512);
   ix187 : aoi21 port map ( Y=>nx186, A0=>nx689, A1=>nx779, B0=>nx818);
   ix169 : aoi21 port map ( Y=>nx168, A0=>nx695, A1=>nx814, B0=>nx816);
   ix696 : nand03 port map ( Y=>nx695, A0=>cnt_s_7, A1=>nx1018, A2=>nx507);
   ix151 : aoi21 port map ( Y=>nx150, A0=>nx701, A1=>nx810, B0=>nx812);
   ix702 : nand02 port map ( Y=>nx701, A0=>nx1018, A1=>nx507);
   ix133 : nor03 port map ( Y=>nx132, A0=>nx705, A1=>nx509, A2=>nx903);
   ix706 : nor02 port map ( Y=>nx705, A0=>nx507, A1=>nx1018);
   ix115 : nor03 port map ( Y=>nx114, A0=>nx711, A1=>nx507, A2=>nx901);
   ix712 : nor02 port map ( Y=>nx711, A0=>nx505, A1=>cnt_s_5);
   ix105 : nor03 port map ( Y=>nx505, A0=>nx714, A1=>nx788, A2=>nx805);
   ix97 : nor03 port map ( Y=>nx96, A0=>nx717, A1=>nx505, A2=>nx901);
   ix718 : inv01 port map ( Y=>nx717, A=>nx88);
   ix89 : nand02 port map ( Y=>nx88, A0=>nx720, A1=>nx714);
   ix79 : nor03 port map ( Y=>nx78, A0=>nx724, A1=>nx504, A2=>nx901);
   ix725 : inv01 port map ( Y=>nx724, A=>nx70);
   ix71 : oai21 port map ( Y=>nx70, A0=>nx727, A1=>nx802, B0=>nx788);
   ix61 : nor03 port map ( Y=>nx60, A0=>nx730, A1=>nx503, A2=>nx901);
   ix731 : aoi21 port map ( Y=>nx730, A0=>cnt_s_1, A1=>nx1020, B0=>cnt_s_2);
   ix43 : nor03 port map ( Y=>nx42, A0=>nx734, A1=>nx501, A2=>nx901);
   ix735 : nor02 port map ( Y=>nx734, A0=>nx1020, A1=>cnt_s_1);
   ix27 : nor02 port map ( Y=>nx26, A0=>nx1020, A1=>nx901);
   ix740 : nand04 port map ( Y=>nx739, A0=>nx614, A1=>nx644, A2=>nx674, A3=>
      nx694);
   ix645 : nor02 port map ( Y=>nx644, A0=>nx742, A1=>nx752);
   ix743 : nand04 port map ( Y=>nx742, A0=>nx744, A1=>nx746, A2=>nx748, A3=>
      nx750);
   reg_cnt_s_23 : dff port map ( Q=>cnt_s_23, QB=>nx744, D=>nx438, CLK=>clk
   );
   reg_cnt_s_22 : dff port map ( Q=>cnt_s_22, QB=>nx746, D=>nx420, CLK=>clk
   );
   reg_cnt_s_21 : dff port map ( Q=>cnt_s_21, QB=>nx748, D=>nx402, CLK=>clk
   );
   ix753 : nand04 port map ( Y=>nx752, A0=>nx754, A1=>nx756, A2=>nx758, A3=>
      nx760);
   reg_cnt_s_17 : dff port map ( Q=>cnt_s_17, QB=>nx758, D=>nx330, CLK=>clk
   );
   ix675 : nor02 port map ( Y=>nx674, A0=>nx763, A1=>nx773);
   ix764 : nand04 port map ( Y=>nx763, A0=>nx765, A1=>nx767, A2=>nx769, A3=>
      nx771);
   reg_cnt_s_15 : dff port map ( Q=>cnt_s_15, QB=>nx765, D=>nx294, CLK=>clk
   );
   ix774 : nand04 port map ( Y=>nx773, A0=>nx775, A1=>nx777, A2=>nx779, A3=>
      cnt_s_8);
   reg_cnt_s_11 : dff port map ( Q=>cnt_s_11, QB=>nx775, D=>nx222, CLK=>clk
   );
   reg_cnt_s_10 : dff port map ( Q=>cnt_s_10, QB=>nx777, D=>nx204, CLK=>clk
   );
   reg_cnt_s_9 : dff port map ( Q=>cnt_s_9, QB=>nx779, D=>nx186, CLK=>clk);
   ix695 : nor02 port map ( Y=>nx694, A0=>nx782, A1=>nx786);
   ix783 : nand04 port map ( Y=>nx782, A0=>cnt_s_7, A1=>nx1018, A2=>cnt_s_5, 
      A3=>cnt_s_4);
   reg_cnt_s_5 : dff port map ( Q=>cnt_s_5, QB=>nx708, D=>nx114, CLK=>clk);
   reg_cnt_s_4 : dff port map ( Q=>cnt_s_4, QB=>nx714, D=>nx96, CLK=>clk);
   ix787 : nand04 port map ( Y=>nx786, A0=>nx788, A1=>cnt_s_2, A2=>nx791, A3
      =>nx793);
   reg_cnt_s_3 : dff port map ( Q=>cnt_s_3, QB=>nx788, D=>nx78, CLK=>clk);
   reg_cnt_s_2 : dff port map ( Q=>cnt_s_2, QB=>nx727, D=>nx60, CLK=>clk);
   reg_cnt_s_1 : dff port map ( Q=>cnt_s_1, QB=>nx791, D=>nx42, CLK=>clk);
   reg_cnt_s_0 : dff port map ( Q=>cnt_s_0, QB=>nx793, D=>nx26, CLK=>clk);
   reg_STATE : dff port map ( Q=>STATE, QB=>OPEN, D=>nx10, CLK=>clk);
   ix11 : nor02 port map ( Y=>nx10, A0=>res, A1=>nx797);
   ix798 : mux21 port map ( Y=>nx797, A0=>trigger, A1=>nx1022, S0=>nx1024);
   ix51 : nor02 port map ( Y=>nx501, A0=>nx791, A1=>nx793);
   ix69 : nor02 port map ( Y=>nx503, A0=>nx727, A1=>nx802);
   ix803 : nand02 port map ( Y=>nx802, A0=>cnt_s_1, A1=>nx1020);
   ix87 : nor02 port map ( Y=>nx504, A0=>nx788, A1=>nx805);
   ix806 : nand03 port map ( Y=>nx805, A0=>cnt_s_2, A1=>cnt_s_1, A2=>nx1021
   );
   reg_cnt_s_6 : dff port map ( Q=>cnt_s_6, QB=>OPEN, D=>nx132, CLK=>clk);
   reg_cnt_s_7 : dff port map ( Q=>cnt_s_7, QB=>nx810, D=>nx150, CLK=>clk);
   ix813 : nand03 port map ( Y=>nx812, A0=>nx695, A1=>nx1022, A2=>nx1024);
   reg_cnt_s_8 : dff port map ( Q=>cnt_s_8, QB=>nx814, D=>nx168, CLK=>clk);
   ix817 : nand03 port map ( Y=>nx816, A0=>nx689, A1=>nx1022, A2=>nx1024);
   ix819 : nand03 port map ( Y=>nx818, A0=>nx683, A1=>nx1022, A2=>nx1024);
   ix177 : nor03 port map ( Y=>nx512, A0=>nx814, A1=>nx810, A2=>nx701);
   ix822 : nand03 port map ( Y=>nx821, A0=>nx677, A1=>nx1023, A2=>nx1025);
   ix825 : nand02 port map ( Y=>nx824, A0=>nx671, A1=>nx905);
   ix830 : nand02 port map ( Y=>nx829, A0=>nx665, A1=>nx905);
   ix833 : oai21 port map ( Y=>nx832, A0=>nx769, A1=>nx665, B0=>nx905);
   ix835 : nand02 port map ( Y=>nx834, A0=>nx951, A1=>nx905);
   ix837 : oai21 port map ( Y=>nx836, A0=>nx765, A1=>nx951, B0=>nx905);
   ix845 : nand02 port map ( Y=>nx844, A0=>nx952, A1=>nx907);
   ix848 : oai21 port map ( Y=>nx847, A0=>nx754, A1=>nx952, B0=>nx907);
   ix850 : nand02 port map ( Y=>nx849, A0=>nx953, A1=>nx907);
   ix852 : oai21 port map ( Y=>nx851, A0=>nx748, A1=>nx617, B0=>nx907);
   ix855 : nand02 port map ( Y=>nx854, A0=>nx972, A1=>nx907);
   ix858 : oai21 port map ( Y=>nx857, A0=>nx744, A1=>nx1009, B0=>nx909);
   reg_cnt_s_24 : dff port map ( Q=>cnt_s_24, QB=>nx859, D=>nx456, CLK=>clk
   );
   ix862 : nand02 port map ( Y=>nx861, A0=>nx593, A1=>nx909);
   reg_cnt_s_25 : dff port map ( Q=>cnt_s_25, QB=>nx864, D=>nx474, CLK=>clk
   );
   ix867 : oai21 port map ( Y=>nx866, A0=>nx864, A1=>nx593, B0=>nx909);
   reg_cnt_s_26 : dff port map ( Q=>cnt_s_26, QB=>nx868, D=>nx492, CLK=>clk
   );
   ix871 : nand02 port map ( Y=>nx870, A0=>nx582, A1=>nx909);
   reg_cnt_s_27 : dff port map ( Q=>cnt_s_27, QB=>nx872, D=>nx510, CLK=>clk
   );
   ix875 : oai21 port map ( Y=>nx874, A0=>nx872, A1=>nx582, B0=>nx909);
   reg_cnt_s_28 : dff port map ( Q=>cnt_s_28, QB=>nx877, D=>nx528, CLK=>clk
   );
   ix880 : nand02 port map ( Y=>nx879, A0=>nx571, A1=>nx909);
   reg_cnt_s_29 : dff port map ( Q=>cnt_s_29, QB=>nx882, D=>nx546, CLK=>clk
   );
   ix885 : oai21 port map ( Y=>nx884, A0=>nx882, A1=>nx571, B0=>nx826);
   ix887 : nand02 port map ( Y=>nx886, A0=>nx888, A1=>nx826);
   ix889 : nand02 port map ( Y=>nx888, A0=>cnt_s_30, A1=>nx537);
   reg_cnt_s_30 : dff port map ( Q=>cnt_s_30, QB=>nx563, D=>nx564, CLK=>clk
   );
   ix893 : nand04 port map ( Y=>nx892, A0=>nx872, A1=>nx868, A2=>nx864, A3=>
      nx859);
   ix895 : nand02 port map ( Y=>nx894, A0=>nx674, A1=>nx694);
   ix900 : inv01 port map ( Y=>nx901, A=>nx826);
   ix904 : inv01 port map ( Y=>nx905, A=>nx500);
   ix908 : inv01 port map ( Y=>nx909, A=>nx500);
   ix141 : and04 port map ( Y=>nx509, A0=>nx1019, A1=>cnt_s_5, A2=>cnt_s_4, 
      A3=>nx919);
   ix918 : inv01 port map ( Y=>nx919, A=>nx720);
   ix195 : and04 port map ( Y=>nx513, A0=>cnt_s_9, A1=>cnt_s_8, A2=>cnt_s_7, 
      A3=>nx921);
   ix920 : inv01 port map ( Y=>nx921, A=>nx701);
   ix213 : and04 port map ( Y=>nx514, A0=>cnt_s_10, A1=>cnt_s_9, A2=>cnt_s_8, 
      A3=>nx923);
   ix922 : inv01 port map ( Y=>nx923, A=>nx695);
   ix555 : and04 port map ( Y=>nx537, A0=>cnt_s_29, A1=>cnt_s_28, A2=>
      cnt_s_27, A3=>nx943);
   ix942 : inv01 port map ( Y=>nx943, A=>nx582);
   reg_cnt_s_14 : dff port map ( Q=>cnt_s_14, QB=>nx767, D=>nx276, CLK=>clk
   );
   reg_cnt_s_13 : dff port map ( Q=>cnt_s_13, QB=>nx769, D=>nx258, CLK=>clk
   );
   reg_cnt_s_12 : dff port map ( Q=>cnt_s_12, QB=>nx771, D=>nx240, CLK=>clk
   );
   reg_cnt_s_16 : dff port map ( Q=>cnt_s_16, QB=>nx760, D=>nx312, CLK=>clk
   );
   reg_cnt_s_20 : dff port map ( Q=>cnt_s_20, QB=>nx750, D=>nx384, CLK=>clk
   );
   reg_cnt_s_19 : dff port map ( Q=>cnt_s_19, QB=>nx754, D=>nx366, CLK=>clk
   );
   reg_cnt_s_18 : dff port map ( Q=>cnt_s_18, QB=>nx756, D=>nx348, CLK=>clk
   );
   ix1026 : buf04 port map ( Y=>nx951, A=>nx653);
   ix1027 : buf04 port map ( Y=>nx952, A=>nx629);
   ix1028 : buf04 port map ( Y=>nx953, A=>nx617);
   ix1029 : inv02 port map ( Y=>nx954, A=>cnt_s_28);
   ix1030 : inv02 port map ( Y=>nx955, A=>nx555);
   ix1031 : nand02_2x port map ( Y=>nx956, A0=>cnt_s_30, A1=>cnt_s_29);
   ix1032 : aoi22 port map ( Y=>nx957, A0=>nx954, A1=>nx955, B0=>nx956, B1=>
      nx955);
   ix1033 : and04 port map ( Y=>nx958, A0=>cnt_s_29, A1=>cnt_s_28, A2=>nx555, 
      A3=>cnt_s_30);
   reg_nx578 : oai321 port map ( Y=>nx578, A0=>nx996, A1=>nx903, A2=>nx555, 
      B0=>nx957, B1=>nx903, C0=>nx995);
   reg_nx577 : nand03_2x port map ( Y=>nx577, A0=>nx533, A1=>cnt_s_27, A2=>
      cnt_s_26);
   ix1034 : nand04_2x port map ( Y=>nx959, A0=>cnt_s_7, A1=>cnt_s_1, A2=>
      cnt_s_3, A3=>cnt_s_2);
   ix1035 : nor02_2x port map ( Y=>nx960, A0=>nx708, A1=>nx714);
   ix1036 : and02 port map ( Y=>nx961, A0=>cnt_s_3, A1=>cnt_s_2);
   reg_nx507 : and04 port map ( Y=>nx507, A0=>nx961, A1=>nx960, A2=>cnt_s_1, 
      A3=>nx1021);
   reg_nx689 : nand04_2x port map ( Y=>nx689, A0=>nx507, A1=>nx1019, A2=>
      cnt_s_8, A3=>cnt_s_7);
   reg_nx720 : nand04_2x port map ( Y=>nx720, A0=>cnt_s_3, A1=>cnt_s_2, A2=>
      cnt_s_1, A3=>nx1021);
   ix1037 : and04 port map ( Y=>nx962, A0=>nx1019, A1=>nx1021, A2=>cnt_s_13, 
      A3=>cnt_s_8);
   ix1038 : inv02 port map ( Y=>nx963, A=>cnt_s_11);
   ix1039 : inv02 port map ( Y=>nx964, A=>cnt_s_10);
   ix1040 : inv02 port map ( Y=>nx965, A=>nx1019);
   ix1041 : inv01 port map ( Y=>nx966, A=>cnt_s_8);
   ix1042 : inv02 port map ( Y=>nx967, A=>nx1021);
   ix1043 : nor04_2x port map ( Y=>nx968, A0=>nx965, A1=>nx966, A2=>nx967, 
      A3=>nx959);
   ix1044 : and02 port map ( Y=>nx969, A0=>cnt_s_11, A1=>cnt_s_10);
   reg_nx515 : and04 port map ( Y=>nx515, A0=>nx968, A1=>nx969, A2=>cnt_s_9, 
      A3=>nx960);
   reg_nx653 : nand04_2x port map ( Y=>nx653, A0=>nx515, A1=>cnt_s_13, A2=>
      cnt_s_14, A3=>nx1016);
   ix1045 : nand04_2x port map ( Y=>nx970, A0=>cnt_s_25, A1=>cnt_s_24, A2=>
      cnt_s_21, A3=>cnt_s_20);
   reg_nx533 : nor02_2x port map ( Y=>nx533, A0=>nx991, A1=>nx970);
   ix1046 : nand04_2x port map ( Y=>nx971, A0=>cnt_s_20, A1=>cnt_s_19, A2=>
      cnt_s_22, A3=>cnt_s_21);
   reg_nx605 : inv02 port map ( Y=>nx605, A=>nx1008);
   ix1047 : inv02 port map ( Y=>nx972, A=>nx1008);
   ix1048 : inv02 port map ( Y=>nx973, A=>cnt_s_19);
   ix1049 : inv02 port map ( Y=>nx974, A=>cnt_s_21);
   ix1050 : inv02 port map ( Y=>nx975, A=>cnt_s_20);
   reg_nx529 : nor04_2x port map ( Y=>nx529, A0=>nx629, A1=>nx973, A2=>nx974, 
      A3=>nx975);
   ix1051 : nand02_2x port map ( Y=>nx976, A0=>cnt_s_19, A1=>nx984);
   ix1052 : nand03_2x port map ( Y=>nx977, A0=>nx992, A1=>cnt_s_17, A2=>
      nx1014);
   ix1053 : nand04_2x port map ( Y=>nx978, A0=>cnt_s_21, A1=>cnt_s_20, A2=>
      cnt_s_22, A3=>cnt_s_18);
   ix1054 : nand03_2x port map ( Y=>nx979, A0=>nx962, A1=>cnt_s_23, A2=>
      cnt_s_15);
   reg_nx531 : nor04_2x port map ( Y=>nx531, A0=>nx976, A1=>nx977, A2=>nx978, 
      A3=>nx979);
   reg_nx617 : nand04_2x port map ( Y=>nx617, A0=>nx522, A1=>cnt_s_19, A2=>
      cnt_s_20, A3=>cnt_s_18);
   ix1055 : and04 port map ( Y=>nx980, A0=>cnt_s_9, A1=>cnt_s_14, A2=>
      cnt_s_15, A3=>cnt_s_17);
   ix1056 : nand04_2x port map ( Y=>nx981, A0=>nx980, A1=>nx962, A2=>nx1014, 
      A3=>nx960);
   ix1057 : nand02_2x port map ( Y=>nx982, A0=>cnt_s_18, A1=>nx1016);
   ix1058 : inv02 port map ( Y=>nx983, A=>nx992);
   ix1059 : and04 port map ( Y=>nx984, A0=>cnt_s_9, A1=>nx960, A2=>nx1016, 
      A3=>cnt_s_14);
   ix1060 : inv02 port map ( Y=>nx985, A=>nx959);
   ix1061 : nand04_2x port map ( Y=>nx986, A0=>nx1014, A1=>nx960, A2=>nx1017, 
      A3=>nx985);
   ix1062 : inv02 port map ( Y=>nx987, A=>nx964);
   ix1063 : inv02 port map ( Y=>nx988, A=>nx963);
   ix1064 : nand04_2x port map ( Y=>nx989, A0=>nx962, A1=>nx987, A2=>nx980, 
      A3=>nx988);
   reg_nx522 : nor02_2x port map ( Y=>nx522, A0=>nx986, A1=>nx989);
   ix1065 : and02 port map ( Y=>nx990, A0=>cnt_s_23, A1=>cnt_s_22);
   ix1066 : nand04_2x port map ( Y=>nx991, A0=>nx522, A1=>nx990, A2=>
      cnt_s_19, A3=>cnt_s_18);
   reg_nx629 : nand02_2x port map ( Y=>nx629, A0=>cnt_s_18, A1=>nx522);
   ix1067 : nor03_2x port map ( Y=>nx992, A0=>nx964, A1=>nx959, A2=>nx963);
   reg_nx500 : nand02_2x port map ( Y=>nx500, A0=>nx1023, A1=>nx1025);
   ix1068 : and02 port map ( Y=>nx993, A0=>cnt_s_27, A1=>cnt_s_26);
   ix1069 : and02 port map ( Y=>nx994, A0=>nx1023, A1=>nx993);
   ix1070 : nand04_2x port map ( Y=>nx995, A0=>nx994, A1=>nx533, A2=>nx958, 
      A3=>nx1025);
   ix1071 : and02 port map ( Y=>nx996, A0=>nx533, A1=>nx993);
   reg_nx903 : nand02_2x port map ( Y=>nx903, A0=>nx1023, A1=>nx1025);
   reg_nx826 : and02 port map ( Y=>nx826, A0=>nx1023, A1=>nx1025);
   ix1072 : nand03_2x port map ( Y=>nx997, A0=>nx519, A1=>cnt_s_20, A2=>
      cnt_s_19);
   ix1073 : nand04_2x port map ( Y=>nx998, A0=>cnt_s_17, A1=>nx1015, A2=>
      cnt_s_21, A3=>cnt_s_18);
   ix1074 : oai21 port map ( Y=>nx999, A0=>nx997, A1=>nx998, B0=>nx746);
   reg_nx420 : nor02ii port map ( Y=>nx420, A0=>nx854, A1=>nx999);
   ix1075 : nand02_2x port map ( Y=>nx1000, A0=>nx641, A1=>nx905);
   reg_nx312 : aoi21 port map ( Y=>nx312, A0=>nx760, A1=>nx1001, B0=>nx1000
   );
   ix1076 : nand04_2x port map ( Y=>nx1001, A0=>nx1012, A1=>cnt_s_11, A2=>
      cnt_s_15, A3=>cnt_s_13);
   reg_nx593 : nand02_2x port map ( Y=>nx593, A0=>cnt_s_24, A1=>nx531);
   reg_nx907 : inv02 port map ( Y=>nx907, A=>nx500);
   ix1077 : and03 port map ( Y=>nx1002, A0=>cnt_s_13, A1=>cnt_s_15, A2=>
      cnt_s_14);
   ix1078 : oai22 port map ( Y=>nx1003, A0=>nx1015, A1=>nx758, B0=>nx1002, 
      B1=>nx758);
   ix1079 : nand03_2x port map ( Y=>nx1004, A0=>nx929, A1=>cnt_s_14, A2=>
      cnt_s_13);
   ix1080 : nand03_2x port map ( Y=>nx1005, A0=>nx1015, A1=>nx758, A2=>
      cnt_s_15);
   ix1081 : oai22 port map ( Y=>nx1006, A0=>nx929, A1=>nx758, B0=>nx1004, B1
      =>nx1005);
   reg_nx330 : ao22 port map ( Y=>nx330, A0=>nx907, A1=>nx1003, B0=>nx907, 
      B1=>nx1006);
   ix1082 : and02 port map ( Y=>nx1007, A0=>cnt_s_15, A1=>cnt_s_14);
   reg_nx641 : nand04_2x port map ( Y=>nx641, A0=>nx929, A1=>nx1007, A2=>
      nx1015, A3=>cnt_s_13);
   reg_nx519 : and02 port map ( Y=>nx519, A0=>nx929, A1=>nx1002);
   ix1083 : nor04_2x port map ( Y=>nx1008, A0=>nx982, A1=>nx971, A2=>nx981, 
      A3=>nx983);
   ix1084 : inv01 port map ( Y=>nx1009, A=>nx1008);
   ix1085 : inv02 port map ( Y=>nx1010, A=>cnt_s_14);
   ix1086 : inv02 port map ( Y=>nx1011, A=>nx1017);
   ix1087 : nor03_2x port map ( Y=>nx1012, A0=>nx677, A1=>nx1010, A2=>nx1011
   );
   ix1088 : and04 port map ( Y=>nx1013, A0=>cnt_s_25, A1=>cnt_s_24, A2=>
      cnt_s_27, A3=>cnt_s_26);
   reg_nx535 : and02 port map ( Y=>nx535, A0=>nx531, A1=>nx1013);
   reg_nx929 : and02 port map ( Y=>nx929, A0=>nx1017, A1=>nx515);
   reg_nx665 : nand02_2x port map ( Y=>nx665, A0=>nx1017, A1=>nx515);
   ix1089 : buf16 port map ( Y=>nx1014, A=>cnt_s_16);
   ix1090 : buf16 port map ( Y=>nx1015, A=>cnt_s_16);
   ix1091 : buf16 port map ( Y=>nx1016, A=>cnt_s_12);
   ix1092 : buf16 port map ( Y=>nx1017, A=>cnt_s_12);
   ix1093 : buf16 port map ( Y=>nx1018, A=>cnt_s_6);
   ix1094 : buf16 port map ( Y=>nx1019, A=>cnt_s_6);
   ix1095 : buf16 port map ( Y=>nx1020, A=>cnt_s_0);
   ix1096 : buf16 port map ( Y=>nx1021, A=>cnt_s_0);
   ix1097 : buf16 port map ( Y=>nx1022, A=>nx739);
   ix1098 : buf16 port map ( Y=>nx1023, A=>nx739);
   ix1099 : buf16 port map ( Y=>nx1024, A=>STATE);
   ix1100 : buf16 port map ( Y=>nx1025, A=>STATE);
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
   signal flags_2_mem_cg_sel_1_EXMPLR, flags_2_dp_rb_PRE_GURU_en_EXMPLR, 
      flags_2_mem_cg_sel_0_EXMPLR, flags_2_dp_alu_ctrl_EXMPLR, 
      flags_2_dp_rb_out_sel_2_EXMPLR, flags_2_dp_ng_rand_zero_EXMPLR, 
      STATE_7, STATE_8, STATE_3, STATE_10, nx8, nx20, STATE_2, STATE_0, 
      STATE_9, nx30, nx44, nx56, nx66, nx84, nx96, nx108, nx124, nx138, nx64, 
      nx73, nx77, nx79, nx83, nx87, nx97, nx100, nx103, nx105, nx109, nx111, 
      nx115, nx119, nx123, nx125, nx127, nx133, nx134, nx137, nx142, nx147, 
      nx149, nx182, nx184: std_logic ;

begin
   flags_2_dp_ng_cte_incr <= flags_2_dp_alu_ctrl_EXMPLR ;
   flags_2_dp_ng_rand_zero <= flags_2_dp_ng_rand_zero_EXMPLR ;
   flags_2_dp_alu_ctrl <= flags_2_dp_alu_ctrl_EXMPLR ;
   flags_2_dp_rb_GURU_en <= flags_2_dp_rb_PRE_GURU_en_EXMPLR ;
   flags_2_dp_rb_PRE_GURU_en <= flags_2_dp_rb_PRE_GURU_en_EXMPLR ;
   flags_2_dp_rb_out_sel_4 <= flags_2_dp_ng_rand_zero_EXMPLR ;
   flags_2_dp_rb_out_sel_3 <= flags_2_dp_ng_rand_zero_EXMPLR ;
   flags_2_dp_rb_out_sel_2 <= flags_2_dp_rb_out_sel_2_EXMPLR ;
   flags_2_dp_rb_out_sel_0 <= flags_2_dp_ng_rand_zero_EXMPLR ;
   flags_2_dp_cg_sel_1 <= flags_2_mem_cg_sel_1_EXMPLR ;
   flags_2_dp_cg_sel_0 <= flags_2_mem_cg_sel_0_EXMPLR ;
   flags_2_mem_cg_sel_1 <= flags_2_dp_ng_rand_zero_EXMPLR ;
   flags_2_mem_cg_sel_0 <= flags_2_mem_cg_sel_0_EXMPLR ;
   ix65 : fake_vcc port map ( Y=>nx64);
   ix52 : fake_gnd port map ( Y=>flags_2_dp_ng_rand_zero_EXMPLR);
   ix70 : nor02 port map ( Y=>flags_2_dp_rb_out_sel_1, A0=>STATE_9, A1=>
      STATE_10);
   ix31 : nor03 port map ( Y=>nx30, A0=>res, A1=>nx73, A2=>nx137);
   ix109 : oai22 port map ( Y=>nx108, A0=>go_guru, A1=>nx77, B0=>res, B1=>
      nx83);
   ix78 : nand02 port map ( Y=>nx77, A0=>nx79, A1=>STATE_8);
   ix80 : inv01 port map ( Y=>nx79, A=>res);
   reg_STATE_8 : dff port map ( Q=>STATE_8, QB=>nx73, D=>nx108, CLK=>clk);
   reg_STATE_4 : dff port map ( Q=>OPEN, QB=>nx83, D=>nx96, CLK=>clk);
   ix97 : nor02 port map ( Y=>nx96, A0=>nx87, A1=>nx134);
   reg_STATE_3 : dff port map ( Q=>STATE_3, QB=>nx87, D=>nx84, CLK=>clk);
   reg_STATE_2 : dff port map ( Q=>STATE_2, QB=>OPEN, D=>nx66, CLK=>clk);
   ix67 : nor02 port map ( Y=>nx66, A0=>res, A1=>nx97);
   reg_STATE_1 : dff port map ( Q=>OPEN, QB=>nx97, D=>nx56, CLK=>clk);
   ix57 : nor02 port map ( Y=>nx56, A0=>nx100, A1=>nx111);
   ix45 : nand03 port map ( Y=>nx44, A0=>nx103, A1=>nx109, A2=>nx79);
   ix104 : nand02 port map ( Y=>nx103, A0=>nx105, A1=>STATE_0);
   ix106 : inv01 port map ( Y=>nx105, A=>fsm_sg_start);
   reg_STATE_0 : dff port map ( Q=>STATE_0, QB=>nx100, D=>nx44, CLK=>clk);
   reg_STATE_9 : dff port map ( Q=>STATE_9, QB=>nx109, D=>nx30, CLK=>clk);
   ix112 : nand02 port map ( Y=>nx111, A0=>nx79, A1=>fsm_sg_start);
   reg_STATE_10 : dff port map ( Q=>STATE_10, QB=>nx133, D=>nx20, CLK=>clk);
   ix21 : nor02 port map ( Y=>nx20, A0=>res, A1=>nx115);
   ix116 : nor02 port map ( Y=>nx115, A0=>flags_2_mem_cg_sel_1_EXMPLR, A1=>
      STATE_7);
   reg_STATE_6 : dff port map ( Q=>flags_2_mem_cg_sel_1_EXMPLR, QB=>OPEN, D
      =>nx8, CLK=>clk);
   ix9 : nor02 port map ( Y=>nx8, A0=>nx119, A1=>nx127);
   reg_STATE_5 : dff port map ( Q=>OPEN, QB=>nx119, D=>nx124, CLK=>clk);
   ix125 : nor02 port map ( Y=>nx124, A0=>nx77, A1=>nx123);
   ix124 : nand02 port map ( Y=>nx123, A0=>go_guru, A1=>nx125);
   ix126 : inv01 port map ( Y=>nx125, A=>end_of_guru);
   ix128 : nand02 port map ( Y=>nx127, A0=>nx79, A1=>duo_formed);
   reg_STATE_7 : dff port map ( Q=>STATE_7, QB=>OPEN, D=>nx138, CLK=>clk);
   ix139 : nor03 port map ( Y=>nx138, A0=>nx119, A1=>res, A2=>duo_formed);
   ix136 : nand02 port map ( Y=>nx134, A0=>nx79, A1=>cnt_guru_rdy);
   ix138 : nand02 port map ( Y=>nx137, A0=>go_guru, A1=>end_of_guru);
   ix149 : nand02 port map ( Y=>flags_2_dp_rb_out_sel_2_EXMPLR, A0=>nx109, 
      A1=>nx133);
   ix169 : nor03 port map ( Y=>flags_2_dp_alu_ctrl_EXMPLR, A0=>STATE_3, A1=>
      STATE_2, A2=>nx142);
   ix143 : nand02 port map ( Y=>nx142, A0=>nx97, A1=>nx100);
   ix175 : nor02 port map ( Y=>flags_2_mem_cg_sel_0_EXMPLR, A0=>STATE_0, A1
      =>flags_2_dp_rb_out_sel_2_EXMPLR);
   ix153 : nand02 port map ( Y=>flags_2_mem_mem_wr_en, A0=>nx147, A1=>nx149
   );
   ix148 : nor02 port map ( Y=>nx147, A0=>flags_2_mem_cg_sel_1_EXMPLR, A1=>
      flags_2_dp_rb_out_sel_2_EXMPLR);
   ix150 : nor02 port map ( Y=>nx149, A0=>STATE_2, A1=>STATE_7);
   ix177 : nand02 port map ( Y=>flags_2_dp_rb_PRE_GURU_en_EXMPLR, A0=>nx97, 
      A1=>nx83);
   tri_flags_2_mem_data_a_0 : tri01 port map ( Y=>flags_2_mem_data_a_0, A=>
      nx64, E=>flags_2_dp_ng_rand_zero_EXMPLR);
   tri_flags_2_mem_data_a_1 : tri01 port map ( Y=>flags_2_mem_data_a_1, A=>
      nx64, E=>flags_2_dp_ng_rand_zero_EXMPLR);
   tri_flags_2_mem_data_a_2 : tri01 port map ( Y=>flags_2_mem_data_a_2, A=>
      nx64, E=>flags_2_dp_ng_rand_zero_EXMPLR);
   tri_flags_2_mem_data_a_3 : tri01 port map ( Y=>flags_2_mem_data_a_3, A=>
      nx64, E=>flags_2_dp_ng_rand_zero_EXMPLR);
   tri_flags_2_mem_data_a_4 : tri01 port map ( Y=>flags_2_mem_data_a_4, A=>
      nx64, E=>flags_2_dp_ng_rand_zero_EXMPLR);
   tri_flags_2_mem_data_a_5 : tri01 port map ( Y=>flags_2_mem_data_a_5, A=>
      nx64, E=>flags_2_dp_ng_rand_zero_EXMPLR);
   tri_flags_2_mem_data_a_6 : tri01 port map ( Y=>flags_2_mem_data_a_6, A=>
      nx64, E=>flags_2_dp_ng_rand_zero_EXMPLR);
   tri_flags_2_mem_data_a_7 : tri01 port map ( Y=>flags_2_mem_data_a_7, A=>
      nx64, E=>flags_2_dp_ng_rand_zero_EXMPLR);
   tri_flags_2_mem_mem_a_addr_0 : tri01 port map ( Y=>
      flags_2_mem_mem_a_addr_0, A=>nx64, E=>flags_2_dp_ng_rand_zero_EXMPLR);
   tri_flags_2_mem_mem_a_addr_1 : tri01 port map ( Y=>
      flags_2_mem_mem_a_addr_1, A=>nx64, E=>flags_2_dp_ng_rand_zero_EXMPLR);
   tri_flags_2_mem_mem_a_addr_2 : tri01 port map ( Y=>
      flags_2_mem_mem_a_addr_2, A=>nx64, E=>flags_2_dp_ng_rand_zero_EXMPLR);
   tri_flags_2_mem_mem_a_addr_3 : tri01 port map ( Y=>
      flags_2_mem_mem_a_addr_3, A=>nx64, E=>flags_2_dp_ng_rand_zero_EXMPLR);
   tri_flags_2_mem_mem_a_addr_4 : tri01 port map ( Y=>
      flags_2_mem_mem_a_addr_4, A=>nx64, E=>flags_2_dp_ng_rand_zero_EXMPLR);
   tri_flags_2_mem_mem_a_addr_5 : tri01 port map ( Y=>
      flags_2_mem_mem_a_addr_5, A=>nx64, E=>flags_2_dp_ng_rand_zero_EXMPLR);
   tri_flags_2_dp_rb_INIT_en : tri01 port map ( Y=>flags_2_dp_rb_INIT_en, A
      =>nx64, E=>flags_2_dp_ng_rand_zero_EXMPLR);
   ix91 : aoi21 port map ( Y=>nx84, A0=>nx182, A1=>nx133, B0=>res);
   ix79 : aoi21 port map ( Y=>nx182, A0=>nx184, A1=>STATE_3, B0=>STATE_2);
   ix183 : inv01 port map ( Y=>nx184, A=>cnt_guru_rdy);
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
      ctrl_2_dp_ng_cte_incr_EXMPLR, ctrl_2_dp_rb_out_sel_0_EXMPLR, 
      cnt_prepare_i_s, cnt_start_i_s, cnt_prepare_f_s, cnt_start_f_s, 
      init_2_dp_s_rb_GURU_en, init_2_dp_s_rb_PRE_GURU_en, 
      init_2_dp_s_cg_sel_1, init_2_dp_s_cg_sel_0, guru_2_dp_s_ng_cte_incr, 
      guru_2_dp_s_rb_INIT_en, guru_2_dp_s_rb_GURU_en, 
      guru_2_dp_s_rb_out_sel_2, guru_2_dp_s_rb_out_sel_1, 
      guru_2_dp_s_cg_sel_1, guru_2_dp_s_cg_sel_0, init_2_mem_s_mem_a_addr_5, 
      init_2_mem_s_mem_a_addr_4, init_2_mem_s_mem_a_addr_3, 
      init_2_mem_s_mem_a_addr_2, init_2_mem_s_mem_a_addr_1, 
      init_2_mem_s_mem_a_addr_0, init_2_mem_s_data_a_7, 
      init_2_mem_s_data_a_6, init_2_mem_s_data_a_5, init_2_mem_s_data_a_4, 
      init_2_mem_s_data_a_3, init_2_mem_s_data_a_2, init_2_mem_s_data_a_1, 
      init_2_mem_s_data_a_0, guru_2_mem_s_mem_a_addr_5, 
      guru_2_mem_s_mem_a_addr_4, guru_2_mem_s_mem_a_addr_3, 
      guru_2_mem_s_mem_a_addr_2, guru_2_mem_s_mem_a_addr_1, 
      guru_2_mem_s_mem_a_addr_0, guru_2_mem_s_mem_wr_en, 
      guru_2_mem_s_data_a_7, guru_2_mem_s_data_a_6, guru_2_mem_s_data_a_5, 
      guru_2_mem_s_data_a_4, guru_2_mem_s_data_a_3, guru_2_mem_s_data_a_2, 
      guru_2_mem_s_data_a_1, guru_2_mem_s_data_a_0, 
      ctrl_2_dp_rb_out_sel_4_EXMPLR, init_2_dp_s_ng_cte_incr, nx499, 
      init_STATE_0, nx500, nx14, nx28, nx44, nx224, nx230, nx240, nx501, 
      nx266, nx270, nx284, nx296, nx502, nx314, nx320, nx505, nx511, nx513, 
      nx515, nx518, nx521, nx523, nx526, nx528, nx531, nx535, nx539, nx544, 
      nx546, nx548, nx550, nx552, nx555, nx557, nx561, nx564, nx567, nx569, 
      nx571, nx573, nx575, nx577, nx583, nx587, nx590, nx593, nx596, nx599, 
      nx602, nx605, nx608, nx611, nx614, nx617, nx620, nx623, nx626, nx629, 
      nx632, nx635, nx638, nx641, nx644, nx647, nx650, nx653, nx656, nx659, 
      nx662, nx665, nx668, nx671, nx674, nx677, nx680, nx683, nx687, nx691, 
      nx694, nx697, nx700, nx703, nx706, nx709, nx711, nx714, nx717, nx719, 
      nx723, nx730, nx732, nx734, nx736, nx738, nx740, nx742, nx744, nx746, 
      nx748: std_logic ;
   
   signal DANGLING : std_logic_vector (7 downto 0 );

begin
   en_cnt_step <= en_cnt_step_EXMPLR ;
   start_step <= start_step_EXMPLR ;
   ctrl_2_dp_ng_cte_incr <= ctrl_2_dp_ng_cte_incr_EXMPLR ;
   ctrl_2_dp_rb_out_sel_4 <= ctrl_2_dp_rb_out_sel_4_EXMPLR ;
   ctrl_2_dp_rb_out_sel_3 <= ctrl_2_dp_rb_out_sel_4_EXMPLR ;
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
   ix444 : fake_gnd port map ( Y=>ctrl_2_dp_rb_out_sel_4_EXMPLR);
   main_reg_STATE_5 : dff port map ( Q=>cnt_start_i_s, QB=>OPEN, D=>nx240, 
      CLK=>clk);
   ix241 : aoi21 port map ( Y=>nx240, A0=>nx511, A1=>nx515, B0=>res);
   ix512 : nand02 port map ( Y=>nx511, A0=>nx513, A1=>cnt_start_i_s);
   ix514 : inv01 port map ( Y=>nx513, A=>cnt_start_f_s);
   main_reg_STATE_1 : dff port map ( Q=>start_step_EXMPLR, QB=>nx515, D=>
      nx502, CLK=>clk);
   ix333 : nor02 port map ( Y=>nx502, A0=>nx518, A1=>nx583);
   ix321 : nand02 port map ( Y=>nx320, A0=>nx521, A1=>nx577);
   ix522 : nand02 port map ( Y=>nx521, A0=>nx523, A1=>nx314);
   ix524 : inv01 port map ( Y=>nx523, A=>res);
   ix315 : nand03 port map ( Y=>nx314, A0=>nx526, A1=>nx531, A2=>nx552);
   ix527 : oai21 port map ( Y=>nx526, A0=>res, A1=>nx528, B0=>
      cnt_prepare_i_s);
   ix529 : inv01 port map ( Y=>nx528, A=>cnt_prepare_f_s);
   main_reg_STATE_4 : dff port map ( Q=>cnt_prepare_i_s, QB=>nx518, D=>nx320, 
      CLK=>clk);
   ix532 : nand03 port map ( Y=>nx531, A0=>init_STATE_0, A1=>
      init_2_dp_s_ng_cte_incr, A2=>nx730);
   ix15 : aoi21 port map ( Y=>nx14, A0=>nx535, A1=>nx550, B0=>res);
   ix536 : nand03 port map ( Y=>nx535, A0=>nx730, A1=>nx548, A2=>nx546);
   main_reg_STATE_0 : dff port map ( Q=>ctrl_2_dp_rb_out_sel_0_EXMPLR, QB=>
      OPEN, D=>nx44, CLK=>clk);
   ix45 : nand02 port map ( Y=>nx44, A0=>nx539, A1=>nx523);
   ix540 : nand02 port map ( Y=>nx539, A0=>nx499, A1=>nx730);
   ix41 : nand02 port map ( Y=>nx499, A0=>init_STATE_0, A1=>
      init_2_dp_s_ng_cte_incr);
   init_reg_STATE_1 : dff port map ( Q=>init_2_dp_s_ng_cte_incr, QB=>nx546, 
      D=>nx28, CLK=>clk);
   ix29 : nor02 port map ( Y=>nx28, A0=>res, A1=>nx544);
   init_reg_STATE_0 : dff port map ( Q=>init_STATE_0, QB=>nx548, D=>nx14, 
      CLK=>clk);
   ix551 : nand03 port map ( Y=>nx550, A0=>nx548, A1=>dp_2_ctrl(0), A2=>
      init_2_dp_s_ng_cte_incr);
   main_reg_STATE_3 : dff port map ( Q=>OPEN, QB=>nx552, D=>nx296, CLK=>clk
   );
   ix297 : nor02 port map ( Y=>nx296, A0=>nx555, A1=>nx557);
   ix556 : nand03 port map ( Y=>nx555, A0=>en_disc, A1=>disc_2_base(0), A2=>
      dp_2_ctrl(1));
   ix558 : nand03 port map ( Y=>nx557, A0=>ref_2_base(1), A1=>nx523, A2=>
      en_cnt_step_EXMPLR);
   ix271 : nand02 port map ( Y=>nx270, A0=>nx561, A1=>nx575);
   ix562 : nand02 port map ( Y=>nx561, A0=>nx501, A1=>nx266);
   ix281 : nor02 port map ( Y=>nx501, A0=>res, A1=>nx564);
   main_reg_STATE_2 : dff port map ( Q=>en_cnt_step_EXMPLR, QB=>nx564, D=>
      nx270, CLK=>clk);
   ix267 : nand03 port map ( Y=>nx266, A0=>nx567, A1=>nx571, A2=>
      dp_2_ctrl(1));
   ix568 : nand02 port map ( Y=>nx567, A0=>nx569, A1=>en_disc);
   ix570 : inv01 port map ( Y=>nx569, A=>disc_2_base(0));
   ix572 : nand02 port map ( Y=>nx571, A0=>nx573, A1=>ref_2_base(1));
   ix574 : inv01 port map ( Y=>nx573, A=>en_disc);
   ix576 : nand03 port map ( Y=>nx575, A0=>cnt_start_i_s, A1=>nx523, A2=>
      cnt_start_f_s);
   ix578 : nand03 port map ( Y=>nx577, A0=>nx230, A1=>nx501, A2=>nx284);
   ix285 : nand02 port map ( Y=>nx284, A0=>en_disc, A1=>nx569);
   ix584 : nand02 port map ( Y=>nx583, A0=>nx523, A1=>cnt_prepare_f_s);
   ix177 : inv01 port map ( Y=>ctrl_2_mem_cg_sel_0, A=>nx587);
   ix588 : nand02 port map ( Y=>nx587, A0=>guru_2_dp_s_cg_sel_0, A1=>nx740);
   ix185 : inv01 port map ( Y=>ctrl_2_mem_cg_sel_1, A=>nx590);
   ix591 : nand02 port map ( Y=>nx590, A0=>guru_2_dp_s_cg_sel_1, A1=>nx740);
   ix59 : nand02 port map ( Y=>ctrl_2_mem_data_a_0, A0=>nx593, A1=>nx596);
   ix594 : nand02 port map ( Y=>nx593, A0=>init_2_mem_s_data_a_0, A1=>nx730
   );
   init_tri_flags_2_mem_data_a_0 : tri01 port map ( Y=>init_2_mem_s_data_a_0, 
      A=>nx505, E=>ctrl_2_dp_rb_out_sel_4_EXMPLR);
   ix597 : nand02 port map ( Y=>nx596, A0=>guru_2_mem_s_data_a_0, A1=>nx740
   );
   ix67 : nand02 port map ( Y=>ctrl_2_mem_data_a_1, A0=>nx599, A1=>nx602);
   ix600 : nand02 port map ( Y=>nx599, A0=>init_2_mem_s_data_a_1, A1=>nx730
   );
   init_tri_flags_2_mem_data_a_1 : tri01 port map ( Y=>init_2_mem_s_data_a_1, 
      A=>nx505, E=>ctrl_2_dp_rb_out_sel_4_EXMPLR);
   ix603 : nand02 port map ( Y=>nx602, A0=>guru_2_mem_s_data_a_1, A1=>nx740
   );
   ix75 : nand02 port map ( Y=>ctrl_2_mem_data_a_2, A0=>nx605, A1=>nx608);
   ix606 : nand02 port map ( Y=>nx605, A0=>init_2_mem_s_data_a_2, A1=>nx730
   );
   init_tri_flags_2_mem_data_a_2 : tri01 port map ( Y=>init_2_mem_s_data_a_2, 
      A=>nx505, E=>ctrl_2_dp_rb_out_sel_4_EXMPLR);
   ix609 : nand02 port map ( Y=>nx608, A0=>guru_2_mem_s_data_a_2, A1=>nx740
   );
   ix83 : nand02 port map ( Y=>ctrl_2_mem_data_a_3, A0=>nx611, A1=>nx614);
   ix612 : nand02 port map ( Y=>nx611, A0=>init_2_mem_s_data_a_3, A1=>nx732
   );
   init_tri_flags_2_mem_data_a_3 : tri01 port map ( Y=>init_2_mem_s_data_a_3, 
      A=>nx505, E=>ctrl_2_dp_rb_out_sel_4_EXMPLR);
   ix615 : nand02 port map ( Y=>nx614, A0=>guru_2_mem_s_data_a_3, A1=>nx740
   );
   ix91 : nand02 port map ( Y=>ctrl_2_mem_data_a_4, A0=>nx617, A1=>nx620);
   ix618 : nand02 port map ( Y=>nx617, A0=>init_2_mem_s_data_a_4, A1=>nx732
   );
   init_tri_flags_2_mem_data_a_4 : tri01 port map ( Y=>init_2_mem_s_data_a_4, 
      A=>nx505, E=>ctrl_2_dp_rb_out_sel_4_EXMPLR);
   ix621 : nand02 port map ( Y=>nx620, A0=>guru_2_mem_s_data_a_4, A1=>nx742
   );
   ix99 : nand02 port map ( Y=>ctrl_2_mem_data_a_5, A0=>nx623, A1=>nx626);
   ix624 : nand02 port map ( Y=>nx623, A0=>init_2_mem_s_data_a_5, A1=>nx732
   );
   init_tri_flags_2_mem_data_a_5 : tri01 port map ( Y=>init_2_mem_s_data_a_5, 
      A=>nx505, E=>ctrl_2_dp_rb_out_sel_4_EXMPLR);
   ix627 : nand02 port map ( Y=>nx626, A0=>guru_2_mem_s_data_a_5, A1=>nx742
   );
   ix107 : nand02 port map ( Y=>ctrl_2_mem_data_a_6, A0=>nx629, A1=>nx632);
   ix630 : nand02 port map ( Y=>nx629, A0=>init_2_mem_s_data_a_6, A1=>nx732
   );
   init_tri_flags_2_mem_data_a_6 : tri01 port map ( Y=>init_2_mem_s_data_a_6, 
      A=>nx505, E=>ctrl_2_dp_rb_out_sel_4_EXMPLR);
   ix633 : nand02 port map ( Y=>nx632, A0=>guru_2_mem_s_data_a_6, A1=>nx742
   );
   ix115 : nand02 port map ( Y=>ctrl_2_mem_data_a_7, A0=>nx635, A1=>nx638);
   ix636 : nand02 port map ( Y=>nx635, A0=>init_2_mem_s_data_a_7, A1=>nx732
   );
   init_tri_flags_2_mem_data_a_7 : tri01 port map ( Y=>init_2_mem_s_data_a_7, 
      A=>nx505, E=>ctrl_2_dp_rb_out_sel_4_EXMPLR);
   ix639 : nand02 port map ( Y=>nx638, A0=>guru_2_mem_s_data_a_7, A1=>nx742
   );
   ix125 : nand02 port map ( Y=>ctrl_2_mem_mem_wr_en, A0=>nx641, A1=>nx644);
   ix642 : nand03 port map ( Y=>nx641, A0=>nx499, A1=>nx500, A2=>nx732);
   ix23 : nand02 port map ( Y=>nx500, A0=>nx548, A1=>nx546);
   ix645 : nand02 port map ( Y=>nx644, A0=>guru_2_mem_s_mem_wr_en, A1=>nx742
   );
   ix133 : nand02 port map ( Y=>ctrl_2_mem_mem_a_addr_0, A0=>nx647, A1=>
      nx650);
   ix648 : nand02 port map ( Y=>nx647, A0=>init_2_mem_s_mem_a_addr_0, A1=>
      nx734);
   init_tri_flags_2_mem_mem_a_addr_0 : tri01 port map ( Y=>
      init_2_mem_s_mem_a_addr_0, A=>nx505, E=>ctrl_2_dp_rb_out_sel_4_EXMPLR
   );
   ix651 : nand02 port map ( Y=>nx650, A0=>guru_2_mem_s_mem_a_addr_0, A1=>
      nx742);
   ix141 : nand02 port map ( Y=>ctrl_2_mem_mem_a_addr_1, A0=>nx653, A1=>
      nx656);
   ix654 : nand02 port map ( Y=>nx653, A0=>init_2_mem_s_mem_a_addr_1, A1=>
      nx734);
   init_tri_flags_2_mem_mem_a_addr_1 : tri01 port map ( Y=>
      init_2_mem_s_mem_a_addr_1, A=>nx505, E=>ctrl_2_dp_rb_out_sel_4_EXMPLR
   );
   ix657 : nand02 port map ( Y=>nx656, A0=>guru_2_mem_s_mem_a_addr_1, A1=>
      nx744);
   ix149 : nand02 port map ( Y=>ctrl_2_mem_mem_a_addr_2, A0=>nx659, A1=>
      nx662);
   ix660 : nand02 port map ( Y=>nx659, A0=>init_2_mem_s_mem_a_addr_2, A1=>
      nx734);
   init_tri_flags_2_mem_mem_a_addr_2 : tri01 port map ( Y=>
      init_2_mem_s_mem_a_addr_2, A=>nx505, E=>ctrl_2_dp_rb_out_sel_4_EXMPLR
   );
   ix663 : nand02 port map ( Y=>nx662, A0=>guru_2_mem_s_mem_a_addr_2, A1=>
      nx744);
   ix157 : nand02 port map ( Y=>ctrl_2_mem_mem_a_addr_3, A0=>nx665, A1=>
      nx668);
   ix666 : nand02 port map ( Y=>nx665, A0=>init_2_mem_s_mem_a_addr_3, A1=>
      nx734);
   init_tri_flags_2_mem_mem_a_addr_3 : tri01 port map ( Y=>
      init_2_mem_s_mem_a_addr_3, A=>nx505, E=>ctrl_2_dp_rb_out_sel_4_EXMPLR
   );
   ix669 : nand02 port map ( Y=>nx668, A0=>guru_2_mem_s_mem_a_addr_3, A1=>
      nx744);
   ix165 : nand02 port map ( Y=>ctrl_2_mem_mem_a_addr_4, A0=>nx671, A1=>
      nx674);
   ix672 : nand02 port map ( Y=>nx671, A0=>init_2_mem_s_mem_a_addr_4, A1=>
      nx734);
   init_tri_flags_2_mem_mem_a_addr_4 : tri01 port map ( Y=>
      init_2_mem_s_mem_a_addr_4, A=>nx505, E=>ctrl_2_dp_rb_out_sel_4_EXMPLR
   );
   ix675 : nand02 port map ( Y=>nx674, A0=>guru_2_mem_s_mem_a_addr_4, A1=>
      nx744);
   ix173 : nand02 port map ( Y=>ctrl_2_mem_mem_a_addr_5, A0=>nx677, A1=>
      nx680);
   ix678 : nand02 port map ( Y=>nx677, A0=>init_2_mem_s_mem_a_addr_5, A1=>
      nx734);
   init_tri_flags_2_mem_mem_a_addr_5 : tri01 port map ( Y=>
      init_2_mem_s_mem_a_addr_5, A=>nx505, E=>ctrl_2_dp_rb_out_sel_4_EXMPLR
   );
   ix681 : nand02 port map ( Y=>nx680, A0=>guru_2_mem_s_mem_a_addr_5, A1=>
      nx744);
   ix181 : nand02 port map ( Y=>ctrl_2_dp_cg_sel_0, A0=>nx683, A1=>nx587);
   ix684 : nand02 port map ( Y=>nx683, A0=>init_2_dp_s_cg_sel_0, A1=>nx736);
   init_tri_flags_2_dp_cg_sel_0 : tri01 port map ( Y=>init_2_dp_s_cg_sel_0, 
      A=>nx505, E=>ctrl_2_dp_rb_out_sel_4_EXMPLR);
   ix189 : nand02 port map ( Y=>ctrl_2_dp_cg_sel_1, A0=>nx687, A1=>nx590);
   ix688 : nand02 port map ( Y=>nx687, A0=>init_2_dp_s_cg_sel_1, A1=>nx736);
   init_tri_flags_2_dp_cg_sel_1 : tri01 port map ( Y=>init_2_dp_s_cg_sel_1, 
      A=>nx505, E=>ctrl_2_dp_rb_out_sel_4_EXMPLR);
   ix343 : inv01 port map ( Y=>ctrl_2_dp_rb_out_sel_1, A=>nx691);
   ix692 : nand02 port map ( Y=>nx691, A0=>guru_2_dp_s_rb_out_sel_1, A1=>
      nx744);
   ix347 : inv01 port map ( Y=>ctrl_2_dp_rb_out_sel_2, A=>nx694);
   ix695 : nand02 port map ( Y=>nx694, A0=>guru_2_dp_s_rb_out_sel_2, A1=>
      nx746);
   ix197 : nand02 port map ( Y=>ctrl_2_dp_rb_PRE_GURU_en, A0=>nx697, A1=>
      nx700);
   ix698 : nand02 port map ( Y=>nx697, A0=>init_2_dp_s_rb_PRE_GURU_en, A1=>
      nx736);
   init_tri_flags_2_dp_rb_PRE_GURU_en : tri01 port map ( Y=>
      init_2_dp_s_rb_PRE_GURU_en, A=>nx505, E=>ctrl_2_dp_rb_out_sel_4_EXMPLR
   );
   ix701 : nand02 port map ( Y=>nx700, A0=>guru_2_dp_s_rb_GURU_en, A1=>nx746
   );
   ix205 : nand02 port map ( Y=>ctrl_2_dp_rb_GURU_en, A0=>nx703, A1=>nx706);
   ix704 : nand02 port map ( Y=>nx703, A0=>init_2_dp_s_rb_GURU_en, A1=>nx736
   );
   init_tri_flags_2_dp_rb_GURU_en : tri01 port map ( Y=>
      init_2_dp_s_rb_GURU_en, A=>nx505, E=>ctrl_2_dp_rb_out_sel_4_EXMPLR);
   ix707 : nand02 port map ( Y=>nx706, A0=>guru_2_dp_s_rb_GURU_en, A1=>nx746
   );
   ix213 : nand02 port map ( Y=>ctrl_2_dp_rb_INIT_en, A0=>nx709, A1=>nx711);
   ix710 : nand03 port map ( Y=>nx709, A0=>nx499, A1=>nx500, A2=>nx736);
   ix712 : nand02 port map ( Y=>nx711, A0=>guru_2_dp_s_rb_INIT_en, A1=>nx746
   );
   ix227 : inv01 port map ( Y=>ctrl_2_dp_alu_ctrl, A=>nx714);
   ix715 : nand02 port map ( Y=>nx714, A0=>ctrl_2_dp_ng_cte_incr_EXMPLR, A1
      =>nx224);
   ix221 : nand02 port map ( Y=>ctrl_2_dp_ng_cte_incr_EXMPLR, A0=>nx717, A1
      =>nx719);
   ix718 : nand02 port map ( Y=>nx717, A0=>init_2_dp_s_ng_cte_incr, A1=>
      nx736);
   ix720 : nand02 port map ( Y=>nx719, A0=>guru_2_dp_s_ng_cte_incr, A1=>
      nx746);
   ix225 : nand03 port map ( Y=>nx224, A0=>nx738, A1=>init_STATE_0, A2=>
      init_2_dp_s_ng_cte_incr);
   ix121 : nor02 port map ( Y=>ctrl_2_dp_ng_rand_zero, A0=>nx746, A1=>nx723
   );
   ix724 : nor02 port map ( Y=>nx723, A0=>init_STATE_0, A1=>
      init_2_dp_s_ng_cte_incr);
   ix729 : inv01 port map ( Y=>nx730, A=>nx748);
   ix731 : inv01 port map ( Y=>nx732, A=>nx748);
   ix733 : inv01 port map ( Y=>nx734, A=>nx748);
   ix735 : inv01 port map ( Y=>nx736, A=>nx748);
   ix737 : inv01 port map ( Y=>nx738, A=>nx748);
   ix739 : inv01 port map ( Y=>nx740, A=>ctrl_2_dp_rb_out_sel_0_EXMPLR);
   ix741 : inv01 port map ( Y=>nx742, A=>ctrl_2_dp_rb_out_sel_0_EXMPLR);
   ix743 : inv01 port map ( Y=>nx744, A=>ctrl_2_dp_rb_out_sel_0_EXMPLR);
   ix745 : inv01 port map ( Y=>nx746, A=>ctrl_2_dp_rb_out_sel_0_EXMPLR);
   ix747 : inv01 port map ( Y=>nx748, A=>ctrl_2_dp_rb_out_sel_0_EXMPLR);
   ix545 : xnor2 port map ( Y=>nx544, A0=>nx548, A1=>nx546);
   ix231 : nor02ii port map ( Y=>nx230, A0=>ref_2_base(1), A1=>dp_2_ctrl(1)
   );
end arch ;

