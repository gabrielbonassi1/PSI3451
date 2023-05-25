
-- 
-- Definition of  base_control
-- 
--      05/25/23 10:06:10
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
   signal cnt_rdy_EXMPLR, cnt_s_31, cnt_s_30, cnt_s_29, cnt_s_28, cnt_s_27, 
      cnt_s_26, cnt_s_25, cnt_s_24, cnt_s_23, cnt_s_22, cnt_s_21, cnt_s_20, 
      cnt_s_19, cnt_s_18, cnt_s_17, cnt_s_16, cnt_s_15, cnt_s_14, cnt_s_13, 
      cnt_s_12, cnt_s_11, cnt_s_10, cnt_s_9, cnt_s_8, cnt_s_7, cnt_s_6, 
      cnt_s_5, cnt_s_4, cnt_s_3, cnt_s_2, cnt_s_1, cnt_s_0, STATE, nx500, 
      nx10, nx26, nx501, nx42, nx503, nx60, nx70, nx504, nx78, nx88, nx505, 
      nx96, nx507, nx114, nx509, nx132, nx511, nx150, nx168, nx513, nx186, 
      nx204, nx515, nx222, nx516, nx240, nx258, nx518, nx276, nx294, nx521, 
      nx312, nx522, nx330, nx348, nx525, nx366, nx384, nx529, nx402, nx530, 
      nx420, nx438, nx532, nx456, nx474, nx534, nx492, nx535, nx510, nx528, 
      nx546, nx564, nx578, nx598, nx604, nx610, nx614, nx628, nx634, nx640, 
      nx644, nx674, nx694, nx550, nx555, nx559, nx563, nx568, nx572, nx579, 
      nx583, nx587, nx593, nx599, nx605, nx611, nx617, nx623, nx629, nx635, 
      nx641, nx647, nx653, nx659, nx665, nx671, nx677, nx683, nx689, nx695, 
      nx699, nx702, nx705, nx708, nx711, nx714, nx717, nx720, nx723, nx727, 
      nx731, nx736, nx739, nx741, nx743, nx745, nx747, nx749, nx751, nx753, 
      nx755, nx758, nx760, nx762, nx764, nx766, nx768, nx770, nx772, nx774, 
      nx776, nx779, nx781, nx783, nx785, nx787, nx789, nx791, nx793, nx795, 
      nx798, nx803, nx805, nx807, nx811, nx813, nx816, nx818, nx821, nx824, 
      nx826, nx828, nx830, nx832, nx834, nx839, nx843, nx846, nx848, nx851, 
      nx854, nx856, nx859, nx861, nx864, nx867, nx869, nx872, nx874, nx877, 
      nx880, nx882, nx885, nx887, nx890, nx892, nx896, nx899, nx903, nx910, 
      nx912, nx914, nx916, nx918, nx920, nx926, nx928, nx930, nx932, nx934, 
      nx936, nx938, nx940, nx942, nx944, nx946, nx948, nx950, nx952, nx954, 
      nx956, nx958: std_logic ;

begin
   cnt_rdy <= cnt_rdy_EXMPLR ;
   ix699 : nor03 port map ( Y=>cnt_rdy_EXMPLR, A0=>nx550, A1=>nx896, A2=>
      nx903);
   ix551 : nand03 port map ( Y=>nx550, A0=>nx598, A1=>nx604, A2=>nx610);
   ix599 : nor03 port map ( Y=>nx598, A0=>cnt_s_31, A1=>cnt_s_30, A2=>nx892
   );
   ix579 : nor02 port map ( Y=>nx578, A0=>nx555, A1=>nx500);
   reg_cnt_s_30 : dff port map ( Q=>cnt_s_30, QB=>nx559, D=>nx564, CLK=>clk
   );
   ix565 : aoi21 port map ( Y=>nx564, A0=>nx563, A1=>nx559, B0=>nx890);
   ix564 : nand03 port map ( Y=>nx563, A0=>cnt_s_29, A1=>cnt_s_28, A2=>nx535
   );
   ix547 : aoi21 port map ( Y=>nx546, A0=>nx568, A1=>nx743, B0=>nx887);
   ix569 : nand03 port map ( Y=>nx568, A0=>cnt_s_28, A1=>cnt_s_27, A2=>nx534
   );
   ix529 : aoi21 port map ( Y=>nx528, A0=>nx572, A1=>nx745, B0=>nx885);
   ix574 : nand02 port map ( Y=>nx572, A0=>cnt_s_27, A1=>nx534);
   ix511 : aoi21 port map ( Y=>nx510, A0=>nx579, A1=>nx749, B0=>nx882);
   ix580 : nand03 port map ( Y=>nx579, A0=>cnt_s_26, A1=>cnt_s_25, A2=>nx532
   );
   ix496 : aoi21 port map ( Y=>nx492, A0=>nx583, A1=>nx751, B0=>nx880);
   ix584 : nand02 port map ( Y=>nx583, A0=>cnt_s_25, A1=>nx532);
   ix475 : aoi21 port map ( Y=>nx474, A0=>nx587, A1=>nx753, B0=>nx877);
   ix588 : nand03 port map ( Y=>nx587, A0=>cnt_s_24, A1=>cnt_s_23, A2=>nx530
   );
   ix457 : aoi21 port map ( Y=>nx456, A0=>nx593, A1=>nx755, B0=>nx874);
   ix594 : nand03 port map ( Y=>nx593, A0=>cnt_s_23, A1=>cnt_s_22, A2=>nx529
   );
   ix439 : aoi21 port map ( Y=>nx438, A0=>nx599, A1=>nx760, B0=>nx872);
   ix600 : nand02 port map ( Y=>nx599, A0=>cnt_s_22, A1=>nx529);
   ix421 : aoi21 port map ( Y=>nx420, A0=>nx605, A1=>nx762, B0=>nx869);
   ix606 : nand03 port map ( Y=>nx605, A0=>cnt_s_21, A1=>cnt_s_20, A2=>nx525
   );
   ix403 : aoi21 port map ( Y=>nx402, A0=>nx611, A1=>nx764, B0=>nx867);
   ix612 : nand02 port map ( Y=>nx611, A0=>cnt_s_20, A1=>nx525);
   ix385 : aoi21 port map ( Y=>nx384, A0=>nx617, A1=>nx766, B0=>nx864);
   ix618 : nand03 port map ( Y=>nx617, A0=>cnt_s_19, A1=>cnt_s_18, A2=>nx522
   );
   ix367 : aoi21 port map ( Y=>nx366, A0=>nx623, A1=>nx770, B0=>nx861);
   ix624 : nand03 port map ( Y=>nx623, A0=>cnt_s_18, A1=>cnt_s_17, A2=>nx521
   );
   ix349 : aoi21 port map ( Y=>nx348, A0=>nx629, A1=>nx772, B0=>nx859);
   ix630 : nand02 port map ( Y=>nx629, A0=>cnt_s_17, A1=>nx521);
   ix331 : aoi21 port map ( Y=>nx330, A0=>nx635, A1=>nx774, B0=>nx856);
   ix636 : nand03 port map ( Y=>nx635, A0=>cnt_s_16, A1=>cnt_s_15, A2=>nx518
   );
   ix313 : aoi21 port map ( Y=>nx312, A0=>nx641, A1=>nx776, B0=>nx854);
   ix642 : nand02 port map ( Y=>nx641, A0=>cnt_s_15, A1=>nx518);
   ix295 : aoi21 port map ( Y=>nx294, A0=>nx647, A1=>nx781, B0=>nx851);
   ix648 : nand03 port map ( Y=>nx647, A0=>cnt_s_14, A1=>cnt_s_13, A2=>nx516
   );
   ix277 : aoi21 port map ( Y=>nx276, A0=>nx653, A1=>nx783, B0=>nx848);
   ix654 : nand03 port map ( Y=>nx653, A0=>cnt_s_13, A1=>cnt_s_12, A2=>nx515
   );
   ix259 : aoi21 port map ( Y=>nx258, A0=>nx659, A1=>nx785, B0=>nx846);
   ix660 : nand02 port map ( Y=>nx659, A0=>cnt_s_12, A1=>nx515);
   ix241 : aoi21 port map ( Y=>nx240, A0=>nx665, A1=>nx787, B0=>nx843);
   ix666 : nand03 port map ( Y=>nx665, A0=>cnt_s_11, A1=>cnt_s_10, A2=>nx513
   );
   ix223 : aoi21 port map ( Y=>nx222, A0=>nx671, A1=>nx791, B0=>nx839);
   ix672 : nand02 port map ( Y=>nx671, A0=>cnt_s_10, A1=>nx513);
   ix205 : aoi21 port map ( Y=>nx204, A0=>nx677, A1=>nx793, B0=>nx834);
   ix678 : nand04 port map ( Y=>nx677, A0=>cnt_s_9, A1=>cnt_s_8, A2=>cnt_s_7, 
      A3=>nx509);
   ix187 : aoi21 port map ( Y=>nx186, A0=>nx683, A1=>nx795, B0=>nx832);
   ix684 : nand03 port map ( Y=>nx683, A0=>cnt_s_8, A1=>cnt_s_7, A2=>nx509);
   ix169 : aoi21 port map ( Y=>nx168, A0=>nx689, A1=>nx828, B0=>nx830);
   ix690 : nand03 port map ( Y=>nx689, A0=>cnt_s_7, A1=>cnt_s_6, A2=>nx507);
   ix151 : nor03 port map ( Y=>nx150, A0=>nx695, A1=>nx511, A2=>nx500);
   ix696 : nor02 port map ( Y=>nx695, A0=>nx509, A1=>cnt_s_7);
   ix133 : nor03 port map ( Y=>nx132, A0=>nx702, A1=>nx509, A2=>nx500);
   ix703 : nor02 port map ( Y=>nx702, A0=>nx507, A1=>cnt_s_6);
   ix123 : nor03 port map ( Y=>nx507, A0=>nx705, A1=>nx711, A2=>nx821);
   ix115 : nor03 port map ( Y=>nx114, A0=>nx708, A1=>nx507, A2=>nx910);
   ix709 : nor02 port map ( Y=>nx708, A0=>nx505, A1=>cnt_s_5);
   ix105 : nor03 port map ( Y=>nx505, A0=>nx711, A1=>nx717, A2=>nx723);
   ix97 : nor03 port map ( Y=>nx96, A0=>nx714, A1=>nx505, A2=>nx910);
   ix715 : inv01 port map ( Y=>nx714, A=>nx88);
   ix89 : oai21 port map ( Y=>nx88, A0=>nx717, A1=>nx723, B0=>nx711);
   reg_cnt_s_3 : dff port map ( Q=>cnt_s_3, QB=>nx717, D=>nx78, CLK=>clk);
   ix79 : nor03 port map ( Y=>nx78, A0=>nx720, A1=>nx504, A2=>nx910);
   ix721 : inv01 port map ( Y=>nx720, A=>nx70);
   ix71 : nand02 port map ( Y=>nx70, A0=>nx723, A1=>nx717);
   ix724 : nand03 port map ( Y=>nx723, A0=>cnt_s_2, A1=>cnt_s_1, A2=>cnt_s_0
   );
   ix61 : nor03 port map ( Y=>nx60, A0=>nx727, A1=>nx503, A2=>nx910);
   ix728 : aoi21 port map ( Y=>nx727, A0=>cnt_s_1, A1=>cnt_s_0, B0=>cnt_s_2
   );
   ix43 : nor03 port map ( Y=>nx42, A0=>nx731, A1=>nx501, A2=>nx910);
   ix732 : nor02 port map ( Y=>nx731, A0=>cnt_s_0, A1=>cnt_s_1);
   ix27 : nor02 port map ( Y=>nx26, A0=>cnt_s_0, A1=>nx910);
   ix21 : nand02 port map ( Y=>nx500, A0=>nx736, A1=>STATE);
   ix737 : nand04 port map ( Y=>nx736, A0=>nx614, A1=>nx644, A2=>nx674, A3=>
      nx694);
   ix615 : nor02 port map ( Y=>nx614, A0=>nx739, A1=>nx747);
   ix740 : nand04 port map ( Y=>nx739, A0=>nx741, A1=>nx559, A2=>nx743, A3=>
      nx745);
   reg_cnt_s_31 : dff port map ( Q=>cnt_s_31, QB=>nx741, D=>nx578, CLK=>clk
   );
   reg_cnt_s_29 : dff port map ( Q=>cnt_s_29, QB=>nx743, D=>nx546, CLK=>clk
   );
   reg_cnt_s_28 : dff port map ( Q=>cnt_s_28, QB=>nx745, D=>nx528, CLK=>clk
   );
   ix748 : nand04 port map ( Y=>nx747, A0=>nx749, A1=>nx751, A2=>nx753, A3=>
      nx755);
   reg_cnt_s_27 : dff port map ( Q=>cnt_s_27, QB=>nx749, D=>nx510, CLK=>clk
   );
   reg_cnt_s_26 : dff port map ( Q=>cnt_s_26, QB=>nx751, D=>nx492, CLK=>clk
   );
   reg_cnt_s_25 : dff port map ( Q=>cnt_s_25, QB=>nx753, D=>nx474, CLK=>clk
   );
   reg_cnt_s_24 : dff port map ( Q=>cnt_s_24, QB=>nx755, D=>nx456, CLK=>clk
   );
   ix645 : nor02 port map ( Y=>nx644, A0=>nx758, A1=>nx768);
   ix759 : nand04 port map ( Y=>nx758, A0=>nx760, A1=>nx762, A2=>nx764, A3=>
      nx766);
   reg_cnt_s_23 : dff port map ( Q=>cnt_s_23, QB=>nx760, D=>nx438, CLK=>clk
   );
   reg_cnt_s_22 : dff port map ( Q=>cnt_s_22, QB=>nx762, D=>nx420, CLK=>clk
   );
   reg_cnt_s_21 : dff port map ( Q=>cnt_s_21, QB=>nx764, D=>nx402, CLK=>clk
   );
   reg_cnt_s_20 : dff port map ( Q=>cnt_s_20, QB=>nx766, D=>nx384, CLK=>clk
   );
   ix769 : nand04 port map ( Y=>nx768, A0=>nx770, A1=>nx772, A2=>nx774, A3=>
      nx776);
   reg_cnt_s_19 : dff port map ( Q=>cnt_s_19, QB=>nx770, D=>nx366, CLK=>clk
   );
   reg_cnt_s_18 : dff port map ( Q=>cnt_s_18, QB=>nx772, D=>nx348, CLK=>clk
   );
   reg_cnt_s_17 : dff port map ( Q=>cnt_s_17, QB=>nx774, D=>nx330, CLK=>clk
   );
   reg_cnt_s_16 : dff port map ( Q=>cnt_s_16, QB=>nx776, D=>nx312, CLK=>clk
   );
   ix675 : nor02 port map ( Y=>nx674, A0=>nx779, A1=>nx789);
   ix780 : nand04 port map ( Y=>nx779, A0=>nx781, A1=>nx783, A2=>nx785, A3=>
      nx787);
   reg_cnt_s_15 : dff port map ( Q=>cnt_s_15, QB=>nx781, D=>nx294, CLK=>clk
   );
   reg_cnt_s_14 : dff port map ( Q=>cnt_s_14, QB=>nx783, D=>nx276, CLK=>clk
   );
   reg_cnt_s_13 : dff port map ( Q=>cnt_s_13, QB=>nx785, D=>nx258, CLK=>clk
   );
   reg_cnt_s_12 : dff port map ( Q=>cnt_s_12, QB=>nx787, D=>nx240, CLK=>clk
   );
   ix790 : nand04 port map ( Y=>nx789, A0=>nx791, A1=>nx793, A2=>nx795, A3=>
      cnt_s_8);
   reg_cnt_s_11 : dff port map ( Q=>cnt_s_11, QB=>nx791, D=>nx222, CLK=>clk
   );
   reg_cnt_s_10 : dff port map ( Q=>cnt_s_10, QB=>nx793, D=>nx204, CLK=>clk
   );
   reg_cnt_s_9 : dff port map ( Q=>cnt_s_9, QB=>nx795, D=>nx186, CLK=>clk);
   ix695 : nor02 port map ( Y=>nx694, A0=>nx798, A1=>nx803);
   ix799 : nand04 port map ( Y=>nx798, A0=>cnt_s_7, A1=>cnt_s_6, A2=>cnt_s_5, 
      A3=>cnt_s_4);
   reg_cnt_s_6 : dff port map ( Q=>cnt_s_6, QB=>nx699, D=>nx132, CLK=>clk);
   reg_cnt_s_5 : dff port map ( Q=>cnt_s_5, QB=>nx705, D=>nx114, CLK=>clk);
   reg_cnt_s_4 : dff port map ( Q=>cnt_s_4, QB=>nx711, D=>nx96, CLK=>clk);
   ix804 : nand04 port map ( Y=>nx803, A0=>nx717, A1=>cnt_s_2, A2=>nx805, A3
      =>nx807);
   reg_cnt_s_1 : dff port map ( Q=>cnt_s_1, QB=>nx805, D=>nx42, CLK=>clk);
   reg_cnt_s_0 : dff port map ( Q=>cnt_s_0, QB=>nx807, D=>nx26, CLK=>clk);
   reg_STATE : dff port map ( Q=>STATE, QB=>nx813, D=>nx10, CLK=>clk);
   ix11 : nor02 port map ( Y=>nx10, A0=>res, A1=>nx811);
   ix51 : nor02 port map ( Y=>nx501, A0=>nx805, A1=>nx807);
   ix69 : nor02 port map ( Y=>nx503, A0=>nx816, A1=>nx818);
   reg_cnt_s_2 : dff port map ( Q=>cnt_s_2, QB=>nx816, D=>nx60, CLK=>clk);
   ix819 : nand02 port map ( Y=>nx818, A0=>cnt_s_1, A1=>cnt_s_0);
   ix87 : nor02 port map ( Y=>nx504, A0=>nx717, A1=>nx723);
   ix822 : nand04 port map ( Y=>nx821, A0=>cnt_s_3, A1=>cnt_s_2, A2=>cnt_s_1, 
      A3=>cnt_s_0);
   ix159 : nor03 port map ( Y=>nx511, A0=>nx824, A1=>nx699, A2=>nx826);
   reg_cnt_s_7 : dff port map ( Q=>cnt_s_7, QB=>nx824, D=>nx150, CLK=>clk);
   ix827 : nand02 port map ( Y=>nx826, A0=>cnt_s_5, A1=>nx505);
   reg_cnt_s_8 : dff port map ( Q=>cnt_s_8, QB=>nx828, D=>nx168, CLK=>clk);
   ix831 : nand03 port map ( Y=>nx830, A0=>nx683, A1=>nx736, A2=>STATE);
   ix833 : nand03 port map ( Y=>nx832, A0=>nx677, A1=>nx736, A2=>STATE);
   ix835 : nand03 port map ( Y=>nx834, A0=>nx671, A1=>nx736, A2=>STATE);
   ix840 : nand02 port map ( Y=>nx839, A0=>nx665, A1=>nx914);
   ix844 : nand02 port map ( Y=>nx843, A0=>nx659, A1=>nx914);
   ix847 : nand02 port map ( Y=>nx846, A0=>nx653, A1=>nx914);
   ix849 : oai21 port map ( Y=>nx848, A0=>nx783, A1=>nx653, B0=>nx914);
   ix852 : oai21 port map ( Y=>nx851, A0=>nx781, A1=>nx647, B0=>nx914);
   ix855 : nand02 port map ( Y=>nx854, A0=>nx635, A1=>nx914);
   ix857 : oai21 port map ( Y=>nx856, A0=>nx774, A1=>nx635, B0=>nx916);
   ix860 : nand02 port map ( Y=>nx859, A0=>nx623, A1=>nx916);
   ix862 : oai21 port map ( Y=>nx861, A0=>nx770, A1=>nx623, B0=>nx916);
   ix865 : oai21 port map ( Y=>nx864, A0=>nx766, A1=>nx617, B0=>nx916);
   ix868 : nand02 port map ( Y=>nx867, A0=>nx605, A1=>nx916);
   ix870 : oai21 port map ( Y=>nx869, A0=>nx762, A1=>nx605, B0=>nx916);
   ix873 : nand02 port map ( Y=>nx872, A0=>nx593, A1=>nx918);
   ix875 : oai21 port map ( Y=>nx874, A0=>nx755, A1=>nx593, B0=>nx918);
   ix878 : oai21 port map ( Y=>nx877, A0=>nx753, A1=>nx587, B0=>nx918);
   ix881 : nand02 port map ( Y=>nx880, A0=>nx579, A1=>nx918);
   ix883 : oai21 port map ( Y=>nx882, A0=>nx749, A1=>nx579, B0=>nx918);
   ix886 : nand02 port map ( Y=>nx885, A0=>nx568, A1=>nx918);
   ix888 : oai21 port map ( Y=>nx887, A0=>nx743, A1=>nx568, B0=>nx920);
   ix891 : oai21 port map ( Y=>nx890, A0=>nx559, A1=>nx563, B0=>nx920);
   ix893 : nand02 port map ( Y=>nx892, A0=>nx743, A1=>nx745);
   ix605 : nor02 port map ( Y=>nx604, A0=>cnt_s_27, A1=>cnt_s_26);
   ix611 : nor02 port map ( Y=>nx610, A0=>cnt_s_25, A1=>cnt_s_24);
   ix897 : nand03 port map ( Y=>nx896, A0=>nx628, A1=>nx634, A2=>nx640);
   ix629 : nor03 port map ( Y=>nx628, A0=>cnt_s_23, A1=>cnt_s_22, A2=>nx899
   );
   ix900 : nand02 port map ( Y=>nx899, A0=>nx764, A1=>nx766);
   ix635 : nor02 port map ( Y=>nx634, A0=>cnt_s_19, A1=>cnt_s_18);
   ix641 : nor02 port map ( Y=>nx640, A0=>cnt_s_17, A1=>cnt_s_16);
   ix904 : nand02 port map ( Y=>nx903, A0=>nx674, A1=>nx694);
   ix909 : nand02 port map ( Y=>nx910, A0=>nx736, A1=>STATE);
   ix913 : inv01 port map ( Y=>nx914, A=>nx912);
   ix915 : inv01 port map ( Y=>nx916, A=>nx912);
   ix917 : inv01 port map ( Y=>nx918, A=>nx912);
   ix919 : inv01 port map ( Y=>nx920, A=>nx912);
   ix556 : xnor2 port map ( Y=>nx555, A0=>nx741, A1=>nx926);
   ix573 : nand03 port map ( Y=>nx926, A0=>cnt_s_30, A1=>cnt_s_29, A2=>nx928
   );
   ix927 : inv01 port map ( Y=>nx928, A=>nx568);
   ix141 : and04 port map ( Y=>nx509, A0=>cnt_s_6, A1=>cnt_s_5, A2=>cnt_s_4, 
      A3=>nx930);
   ix929 : inv01 port map ( Y=>nx930, A=>nx821);
   ix812 : mux21 port map ( Y=>nx811, A0=>nx736, A1=>trigger, S0=>nx813);
   ix195 : and04 port map ( Y=>nx513, A0=>cnt_s_9, A1=>cnt_s_8, A2=>cnt_s_7, 
      A3=>nx932);
   ix838 : nor03 port map ( Y=>nx932, A0=>nx699, A1=>nx705, A2=>nx934);
   ix933 : inv01 port map ( Y=>nx934, A=>nx505);
   ix842 : nand02 port map ( Y=>nx912, A0=>nx936, A1=>STATE);
   ix935 : inv01 port map ( Y=>nx936, A=>cnt_rdy_EXMPLR);
   ix231 : and04 port map ( Y=>nx515, A0=>cnt_s_11, A1=>cnt_s_10, A2=>
      cnt_s_9, A3=>nx938);
   ix937 : inv01 port map ( Y=>nx938, A=>nx683);
   ix249 : and04 port map ( Y=>nx516, A0=>cnt_s_12, A1=>cnt_s_11, A2=>
      cnt_s_10, A3=>nx940);
   ix939 : inv01 port map ( Y=>nx940, A=>nx677);
   ix285 : and04 port map ( Y=>nx518, A0=>cnt_s_14, A1=>cnt_s_13, A2=>
      cnt_s_12, A3=>nx942);
   ix941 : inv01 port map ( Y=>nx942, A=>nx665);
   ix321 : and04 port map ( Y=>nx521, A0=>cnt_s_16, A1=>cnt_s_15, A2=>
      cnt_s_14, A3=>nx944);
   ix943 : inv01 port map ( Y=>nx944, A=>nx653);
   ix339 : and04 port map ( Y=>nx522, A0=>cnt_s_17, A1=>cnt_s_16, A2=>
      cnt_s_15, A3=>nx946);
   ix945 : inv01 port map ( Y=>nx946, A=>nx647);
   ix375 : and04 port map ( Y=>nx525, A0=>cnt_s_19, A1=>cnt_s_18, A2=>
      cnt_s_17, A3=>nx948);
   ix947 : inv01 port map ( Y=>nx948, A=>nx635);
   ix411 : and04 port map ( Y=>nx529, A0=>cnt_s_21, A1=>cnt_s_20, A2=>
      cnt_s_19, A3=>nx950);
   ix949 : inv01 port map ( Y=>nx950, A=>nx623);
   ix429 : and04 port map ( Y=>nx530, A0=>cnt_s_22, A1=>cnt_s_21, A2=>
      cnt_s_20, A3=>nx952);
   ix951 : inv01 port map ( Y=>nx952, A=>nx617);
   ix465 : and04 port map ( Y=>nx532, A0=>cnt_s_24, A1=>cnt_s_23, A2=>
      cnt_s_22, A3=>nx954);
   ix953 : inv01 port map ( Y=>nx954, A=>nx605);
   ix501 : and04 port map ( Y=>nx534, A0=>cnt_s_26, A1=>cnt_s_25, A2=>
      cnt_s_24, A3=>nx956);
   ix955 : inv01 port map ( Y=>nx956, A=>nx593);
   ix519 : and04 port map ( Y=>nx535, A0=>cnt_s_27, A1=>cnt_s_26, A2=>
      cnt_s_25, A3=>nx958);
   ix957 : inv01 port map ( Y=>nx958, A=>nx587);
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
      nx73, nx77, nx79, nx83, nx87, nx90, nx92, nx99, nx102, nx105, nx107, 
      nx111, nx114, nx117, nx121, nx125, nx127, nx129, nx131, nx134, nx141, 
      nx145, nx147: std_logic ;

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
   ix31 : nor03 port map ( Y=>nx30, A0=>res, A1=>nx73, A2=>nx134);
   ix109 : oai22 port map ( Y=>nx108, A0=>go_guru, A1=>nx77, B0=>res, B1=>
      nx83);
   ix78 : nand02 port map ( Y=>nx77, A0=>nx79, A1=>STATE_8);
   ix80 : inv01 port map ( Y=>nx79, A=>res);
   reg_STATE_8 : dff port map ( Q=>STATE_8, QB=>nx73, D=>nx108, CLK=>clk);
   reg_STATE_4 : dff port map ( Q=>OPEN, QB=>nx83, D=>nx96, CLK=>clk);
   ix97 : nor03 port map ( Y=>nx96, A0=>nx87, A1=>res, A2=>nx92);
   ix85 : aoi21 port map ( Y=>nx84, A0=>nx90, A1=>nx114, B0=>res);
   ix91 : aoi21 port map ( Y=>nx90, A0=>nx92, A1=>STATE_3, B0=>STATE_2);
   ix93 : inv01 port map ( Y=>nx92, A=>cnt_guru_rdy);
   reg_STATE_3 : dff port map ( Q=>STATE_3, QB=>nx87, D=>nx84, CLK=>clk);
   reg_STATE_2 : dff port map ( Q=>STATE_2, QB=>OPEN, D=>nx66, CLK=>clk);
   ix67 : nor02 port map ( Y=>nx66, A0=>res, A1=>nx99);
   reg_STATE_1 : dff port map ( Q=>OPEN, QB=>nx99, D=>nx56, CLK=>clk);
   ix57 : nor03 port map ( Y=>nx56, A0=>nx102, A1=>res, A2=>nx107);
   ix45 : nand03 port map ( Y=>nx44, A0=>nx105, A1=>nx111, A2=>nx79);
   ix106 : nand02 port map ( Y=>nx105, A0=>nx107, A1=>STATE_0);
   ix108 : inv01 port map ( Y=>nx107, A=>fsm_sg_start);
   reg_STATE_0 : dff port map ( Q=>STATE_0, QB=>nx102, D=>nx44, CLK=>clk);
   reg_STATE_9 : dff port map ( Q=>STATE_9, QB=>nx111, D=>nx30, CLK=>clk);
   reg_STATE_10 : dff port map ( Q=>STATE_10, QB=>nx114, D=>nx20, CLK=>clk);
   ix21 : aoi21 port map ( Y=>nx20, A0=>nx117, A1=>nx131, B0=>res);
   reg_STATE_6 : dff port map ( Q=>flags_2_mem_cg_sel_1_EXMPLR, QB=>nx117, D
      =>nx8, CLK=>clk);
   ix9 : nor03 port map ( Y=>nx8, A0=>nx121, A1=>res, A2=>nx129);
   reg_STATE_5 : dff port map ( Q=>OPEN, QB=>nx121, D=>nx124, CLK=>clk);
   ix125 : nor02 port map ( Y=>nx124, A0=>nx77, A1=>nx125);
   ix126 : nand02 port map ( Y=>nx125, A0=>go_guru, A1=>nx127);
   ix128 : inv01 port map ( Y=>nx127, A=>end_of_guru);
   ix130 : inv01 port map ( Y=>nx129, A=>duo_formed);
   reg_STATE_7 : dff port map ( Q=>STATE_7, QB=>nx131, D=>nx138, CLK=>clk);
   ix139 : nor03 port map ( Y=>nx138, A0=>nx121, A1=>res, A2=>duo_formed);
   ix136 : nand02 port map ( Y=>nx134, A0=>go_guru, A1=>end_of_guru);
   ix149 : nand02 port map ( Y=>flags_2_dp_rb_out_sel_2_EXMPLR, A0=>nx111, 
      A1=>nx114);
   ix169 : nor03 port map ( Y=>flags_2_dp_alu_ctrl_EXMPLR, A0=>STATE_3, A1=>
      STATE_2, A2=>nx141);
   ix142 : nand02 port map ( Y=>nx141, A0=>nx99, A1=>nx102);
   ix175 : nor02 port map ( Y=>flags_2_mem_cg_sel_0_EXMPLR, A0=>STATE_0, A1
      =>flags_2_dp_rb_out_sel_2_EXMPLR);
   ix153 : nand02 port map ( Y=>flags_2_mem_mem_wr_en, A0=>nx145, A1=>nx147
   );
   ix146 : nor02 port map ( Y=>nx145, A0=>flags_2_mem_cg_sel_1_EXMPLR, A1=>
      flags_2_dp_rb_out_sel_2_EXMPLR);
   ix148 : nor02 port map ( Y=>nx147, A0=>STATE_2, A1=>STATE_7);
   ix177 : nand02 port map ( Y=>flags_2_dp_rb_PRE_GURU_en_EXMPLR, A0=>nx99, 
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
      ctrl_2_dp_rb_out_sel_4_EXMPLR, init_2_dp_s_ng_cte_incr, init_STATE_0, 
      nx14, nx28, nx44, nx240, nx501, nx262, nx270, nx284, nx296, nx502, 
      nx314, nx320, nx505, nx511, nx513, nx517, nx520, nx523, nx525, nx528, 
      nx532, nx536, nx538, nx540, nx543, nx546, nx549, nx551, nx554, nx556, 
      nx560, nx563, nx565, nx568, nx570, nx572, nx574, nx577, nx582, nx585, 
      nx588, nx590, nx594, nx596, nx600, nx602, nx606, nx608, nx612, nx614, 
      nx618, nx620, nx624, nx626, nx630, nx632, nx636, nx638, nx641, nx643, 
      nx647, nx649, nx653, nx655, nx659, nx661, nx665, nx667, nx671, nx673, 
      nx677, nx681, nx685, nx688, nx691, nx693, nx697, nx701, nx704, nx706, 
      nx710, nx717, nx719, nx721, nx723, nx725, nx727, nx729, nx735, nx737, 
      nx739, nx741: std_logic ;
   
   signal DANGLING : std_logic_vector (7 downto 0 );

begin
   en_cnt_step <= en_cnt_step_EXMPLR ;
   start_step <= start_step_EXMPLR ;
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
   ix241 : nor02 port map ( Y=>nx240, A0=>res, A1=>nx511);
   ix512 : aoi21 port map ( Y=>nx511, A0=>nx513, A1=>cnt_start_i_s, B0=>
      start_step_EXMPLR);
   ix514 : inv01 port map ( Y=>nx513, A=>cnt_start_f_s);
   main_reg_STATE_1 : dff port map ( Q=>start_step_EXMPLR, QB=>OPEN, D=>
      nx502, CLK=>clk);
   ix333 : nor03 port map ( Y=>nx502, A0=>nx517, A1=>res, A2=>nx525);
   ix321 : oai22 port map ( Y=>nx320, A0=>res, A1=>nx520, B0=>nx572, B1=>
      nx574);
   ix521 : inv01 port map ( Y=>nx520, A=>nx314);
   ix315 : nand03 port map ( Y=>nx314, A0=>nx523, A1=>nx528, A2=>nx551);
   ix524 : oai21 port map ( Y=>nx523, A0=>res, A1=>nx525, B0=>
      cnt_prepare_i_s);
   ix526 : inv01 port map ( Y=>nx525, A=>cnt_prepare_f_s);
   main_reg_STATE_4 : dff port map ( Q=>cnt_prepare_i_s, QB=>nx517, D=>nx320, 
      CLK=>clk);
   ix529 : nand03 port map ( Y=>nx528, A0=>init_STATE_0, A1=>
      init_2_dp_s_ng_cte_incr, A2=>nx717);
   ix15 : aoi21 port map ( Y=>nx14, A0=>nx532, A1=>nx549, B0=>res);
   ix533 : nand03 port map ( Y=>nx532, A0=>nx717, A1=>nx538, A2=>nx540);
   main_reg_STATE_0 : dff port map ( Q=>ctrl_2_dp_rb_out_sel_0_EXMPLR, QB=>
      OPEN, D=>nx44, CLK=>clk);
   ix45 : nand02 port map ( Y=>nx44, A0=>nx536, A1=>nx546);
   ix537 : oai21 port map ( Y=>nx536, A0=>nx538, A1=>nx540, B0=>nx717);
   init_reg_STATE_0 : dff port map ( Q=>init_STATE_0, QB=>nx538, D=>nx14, 
      CLK=>clk);
   ix29 : nor02 port map ( Y=>nx28, A0=>res, A1=>nx543);
   init_reg_STATE_1 : dff port map ( Q=>init_2_dp_s_ng_cte_incr, QB=>nx540, 
      D=>nx28, CLK=>clk);
   ix547 : inv01 port map ( Y=>nx546, A=>res);
   ix550 : nand03 port map ( Y=>nx549, A0=>nx538, A1=>dp_2_ctrl(0), A2=>
      init_2_dp_s_ng_cte_incr);
   main_reg_STATE_3 : dff port map ( Q=>OPEN, QB=>nx551, D=>nx296, CLK=>clk
   );
   ix297 : nor02 port map ( Y=>nx296, A0=>nx554, A1=>nx556);
   ix555 : nand03 port map ( Y=>nx554, A0=>en_disc, A1=>disc_2_base(0), A2=>
      dp_2_ctrl(1));
   ix557 : nand03 port map ( Y=>nx556, A0=>ref_2_base(1), A1=>nx546, A2=>
      en_cnt_step_EXMPLR);
   ix271 : nand02 port map ( Y=>nx270, A0=>nx560, A1=>nx570);
   ix561 : oai21 port map ( Y=>nx560, A0=>nx262, A1=>nx565, B0=>nx501);
   ix263 : mux21 port map ( Y=>nx262, A0=>nx563, A1=>disc_2_base(0), S0=>
      en_disc);
   ix564 : inv01 port map ( Y=>nx563, A=>ref_2_base(1));
   ix566 : inv01 port map ( Y=>nx565, A=>dp_2_ctrl(1));
   ix281 : nor02 port map ( Y=>nx501, A0=>res, A1=>nx568);
   main_reg_STATE_2 : dff port map ( Q=>en_cnt_step_EXMPLR, QB=>nx568, D=>
      nx270, CLK=>clk);
   ix571 : nand03 port map ( Y=>nx570, A0=>cnt_start_i_s, A1=>nx546, A2=>
      cnt_start_f_s);
   ix573 : nand02 port map ( Y=>nx572, A0=>dp_2_ctrl(1), A1=>nx563);
   ix575 : nand02 port map ( Y=>nx574, A0=>nx501, A1=>nx284);
   ix285 : nand02 port map ( Y=>nx284, A0=>en_disc, A1=>nx577);
   ix578 : inv01 port map ( Y=>nx577, A=>disc_2_base(0));
   ix177 : inv01 port map ( Y=>ctrl_2_mem_cg_sel_0, A=>nx582);
   ix583 : nand02 port map ( Y=>nx582, A0=>guru_2_dp_s_cg_sel_0, A1=>nx735);
   ix185 : inv01 port map ( Y=>ctrl_2_mem_cg_sel_1, A=>nx585);
   ix586 : nand02 port map ( Y=>nx585, A0=>guru_2_dp_s_cg_sel_1, A1=>nx735);
   ix589 : inv01 port map ( Y=>nx588, A=>guru_2_mem_s_data_a_0);
   ix591 : inv01 port map ( Y=>nx590, A=>init_2_mem_s_data_a_0);
   init_tri_flags_2_mem_data_a_0 : tri01 port map ( Y=>init_2_mem_s_data_a_0, 
      A=>nx505, E=>ctrl_2_dp_rb_out_sel_4_EXMPLR);
   ix595 : inv01 port map ( Y=>nx594, A=>guru_2_mem_s_data_a_1);
   ix597 : inv01 port map ( Y=>nx596, A=>init_2_mem_s_data_a_1);
   init_tri_flags_2_mem_data_a_1 : tri01 port map ( Y=>init_2_mem_s_data_a_1, 
      A=>nx505, E=>ctrl_2_dp_rb_out_sel_4_EXMPLR);
   ix601 : inv01 port map ( Y=>nx600, A=>guru_2_mem_s_data_a_2);
   ix603 : inv01 port map ( Y=>nx602, A=>init_2_mem_s_data_a_2);
   init_tri_flags_2_mem_data_a_2 : tri01 port map ( Y=>init_2_mem_s_data_a_2, 
      A=>nx505, E=>ctrl_2_dp_rb_out_sel_4_EXMPLR);
   ix607 : inv01 port map ( Y=>nx606, A=>guru_2_mem_s_data_a_3);
   ix609 : inv01 port map ( Y=>nx608, A=>init_2_mem_s_data_a_3);
   init_tri_flags_2_mem_data_a_3 : tri01 port map ( Y=>init_2_mem_s_data_a_3, 
      A=>nx505, E=>ctrl_2_dp_rb_out_sel_4_EXMPLR);
   ix613 : inv01 port map ( Y=>nx612, A=>guru_2_mem_s_data_a_4);
   ix615 : inv01 port map ( Y=>nx614, A=>init_2_mem_s_data_a_4);
   init_tri_flags_2_mem_data_a_4 : tri01 port map ( Y=>init_2_mem_s_data_a_4, 
      A=>nx505, E=>ctrl_2_dp_rb_out_sel_4_EXMPLR);
   ix619 : inv01 port map ( Y=>nx618, A=>guru_2_mem_s_data_a_5);
   ix621 : inv01 port map ( Y=>nx620, A=>init_2_mem_s_data_a_5);
   init_tri_flags_2_mem_data_a_5 : tri01 port map ( Y=>init_2_mem_s_data_a_5, 
      A=>nx505, E=>ctrl_2_dp_rb_out_sel_4_EXMPLR);
   ix625 : inv01 port map ( Y=>nx624, A=>guru_2_mem_s_data_a_6);
   ix627 : inv01 port map ( Y=>nx626, A=>init_2_mem_s_data_a_6);
   init_tri_flags_2_mem_data_a_6 : tri01 port map ( Y=>init_2_mem_s_data_a_6, 
      A=>nx505, E=>ctrl_2_dp_rb_out_sel_4_EXMPLR);
   ix631 : inv01 port map ( Y=>nx630, A=>guru_2_mem_s_data_a_7);
   ix633 : inv01 port map ( Y=>nx632, A=>init_2_mem_s_data_a_7);
   init_tri_flags_2_mem_data_a_7 : tri01 port map ( Y=>init_2_mem_s_data_a_7, 
      A=>nx505, E=>ctrl_2_dp_rb_out_sel_4_EXMPLR);
   ix125 : oai22 port map ( Y=>ctrl_2_mem_mem_wr_en, A0=>nx543, A1=>nx636, 
      B0=>nx638, B1=>nx721);
   ix637 : oai21 port map ( Y=>nx636, A0=>init_STATE_0, A1=>
      init_2_dp_s_ng_cte_incr, B0=>nx719);
   ix639 : inv01 port map ( Y=>nx638, A=>guru_2_mem_s_mem_wr_en);
   ix642 : inv01 port map ( Y=>nx641, A=>guru_2_mem_s_mem_a_addr_0);
   ix644 : inv01 port map ( Y=>nx643, A=>init_2_mem_s_mem_a_addr_0);
   init_tri_flags_2_mem_mem_a_addr_0 : tri01 port map ( Y=>
      init_2_mem_s_mem_a_addr_0, A=>nx505, E=>ctrl_2_dp_rb_out_sel_4_EXMPLR
   );
   ix648 : inv01 port map ( Y=>nx647, A=>guru_2_mem_s_mem_a_addr_1);
   ix650 : inv01 port map ( Y=>nx649, A=>init_2_mem_s_mem_a_addr_1);
   init_tri_flags_2_mem_mem_a_addr_1 : tri01 port map ( Y=>
      init_2_mem_s_mem_a_addr_1, A=>nx505, E=>ctrl_2_dp_rb_out_sel_4_EXMPLR
   );
   ix654 : inv01 port map ( Y=>nx653, A=>guru_2_mem_s_mem_a_addr_2);
   ix656 : inv01 port map ( Y=>nx655, A=>init_2_mem_s_mem_a_addr_2);
   init_tri_flags_2_mem_mem_a_addr_2 : tri01 port map ( Y=>
      init_2_mem_s_mem_a_addr_2, A=>nx505, E=>ctrl_2_dp_rb_out_sel_4_EXMPLR
   );
   ix660 : inv01 port map ( Y=>nx659, A=>guru_2_mem_s_mem_a_addr_3);
   ix662 : inv01 port map ( Y=>nx661, A=>init_2_mem_s_mem_a_addr_3);
   init_tri_flags_2_mem_mem_a_addr_3 : tri01 port map ( Y=>
      init_2_mem_s_mem_a_addr_3, A=>nx505, E=>ctrl_2_dp_rb_out_sel_4_EXMPLR
   );
   ix666 : inv01 port map ( Y=>nx665, A=>guru_2_mem_s_mem_a_addr_4);
   ix668 : inv01 port map ( Y=>nx667, A=>init_2_mem_s_mem_a_addr_4);
   init_tri_flags_2_mem_mem_a_addr_4 : tri01 port map ( Y=>
      init_2_mem_s_mem_a_addr_4, A=>nx505, E=>ctrl_2_dp_rb_out_sel_4_EXMPLR
   );
   ix672 : inv01 port map ( Y=>nx671, A=>guru_2_mem_s_mem_a_addr_5);
   ix674 : inv01 port map ( Y=>nx673, A=>init_2_mem_s_mem_a_addr_5);
   init_tri_flags_2_mem_mem_a_addr_5 : tri01 port map ( Y=>
      init_2_mem_s_mem_a_addr_5, A=>nx505, E=>ctrl_2_dp_rb_out_sel_4_EXMPLR
   );
   ix181 : nand02 port map ( Y=>ctrl_2_dp_cg_sel_0, A0=>nx677, A1=>nx582);
   ix678 : nand02 port map ( Y=>nx677, A0=>init_2_dp_s_cg_sel_0, A1=>nx723);
   init_tri_flags_2_dp_cg_sel_0 : tri01 port map ( Y=>init_2_dp_s_cg_sel_0, 
      A=>nx505, E=>ctrl_2_dp_rb_out_sel_4_EXMPLR);
   ix189 : nand02 port map ( Y=>ctrl_2_dp_cg_sel_1, A0=>nx681, A1=>nx585);
   ix682 : nand02 port map ( Y=>nx681, A0=>init_2_dp_s_cg_sel_1, A1=>nx723);
   init_tri_flags_2_dp_cg_sel_1 : tri01 port map ( Y=>init_2_dp_s_cg_sel_1, 
      A=>nx505, E=>ctrl_2_dp_rb_out_sel_4_EXMPLR);
   ix343 : inv01 port map ( Y=>ctrl_2_dp_rb_out_sel_1, A=>nx685);
   ix686 : nand02 port map ( Y=>nx685, A0=>guru_2_dp_s_rb_out_sel_1, A1=>
      nx735);
   ix347 : inv01 port map ( Y=>ctrl_2_dp_rb_out_sel_2, A=>nx688);
   ix689 : nand02 port map ( Y=>nx688, A0=>guru_2_dp_s_rb_out_sel_2, A1=>
      nx735);
   ix692 : inv01 port map ( Y=>nx691, A=>guru_2_dp_s_rb_GURU_en);
   ix694 : inv01 port map ( Y=>nx693, A=>init_2_dp_s_rb_PRE_GURU_en);
   init_tri_flags_2_dp_rb_PRE_GURU_en : tri01 port map ( Y=>
      init_2_dp_s_rb_PRE_GURU_en, A=>nx505, E=>ctrl_2_dp_rb_out_sel_4_EXMPLR
   );
   ix698 : inv01 port map ( Y=>nx697, A=>init_2_dp_s_rb_GURU_en);
   init_tri_flags_2_dp_rb_GURU_en : tri01 port map ( Y=>
      init_2_dp_s_rb_GURU_en, A=>nx505, E=>ctrl_2_dp_rb_out_sel_4_EXMPLR);
   ix213 : oai22 port map ( Y=>ctrl_2_dp_rb_INIT_en, A0=>nx543, A1=>nx636, 
      B0=>nx701, B1=>nx723);
   ix702 : inv01 port map ( Y=>nx701, A=>guru_2_dp_s_rb_INIT_en);
   ix227 : aoi21 port map ( Y=>ctrl_2_dp_alu_ctrl, A0=>nx725, A1=>nx704, B0
      =>nx706);
   ix705 : nor02 port map ( Y=>nx704, A0=>nx538, A1=>nx540);
   ix121 : aoi21 port map ( Y=>ctrl_2_dp_ng_rand_zero, A0=>nx538, A1=>nx540, 
      B0=>nx735);
   ix711 : inv01 port map ( Y=>nx710, A=>guru_2_dp_s_ng_cte_incr);
   ix716 : inv01 port map ( Y=>nx717, A=>nx735);
   ix718 : inv01 port map ( Y=>nx719, A=>nx737);
   ix720 : inv01 port map ( Y=>nx721, A=>nx737);
   ix722 : inv01 port map ( Y=>nx723, A=>nx737);
   ix724 : inv01 port map ( Y=>nx725, A=>nx737);
   ix726 : inv01 port map ( Y=>nx727, A=>ctrl_2_dp_rb_out_sel_0_EXMPLR);
   ix728 : inv01 port map ( Y=>nx729, A=>ctrl_2_dp_rb_out_sel_0_EXMPLR);
   ix544 : xnor2 port map ( Y=>nx543, A0=>nx538, A1=>nx540);
   ix59 : mux21 port map ( Y=>ctrl_2_mem_data_a_0, A0=>nx590, A1=>nx588, S0
      =>nx727);
   ix67 : mux21 port map ( Y=>ctrl_2_mem_data_a_1, A0=>nx596, A1=>nx594, S0
      =>nx727);
   ix75 : mux21 port map ( Y=>ctrl_2_mem_data_a_2, A0=>nx602, A1=>nx600, S0
      =>nx727);
   ix83 : mux21 port map ( Y=>ctrl_2_mem_data_a_3, A0=>nx608, A1=>nx606, S0
      =>nx737);
   ix91 : mux21 port map ( Y=>ctrl_2_mem_data_a_4, A0=>nx614, A1=>nx612, S0
      =>nx737);
   ix99 : mux21 port map ( Y=>ctrl_2_mem_data_a_5, A0=>nx620, A1=>nx618, S0
      =>nx739);
   ix107 : mux21 port map ( Y=>ctrl_2_mem_data_a_6, A0=>nx626, A1=>nx624, S0
      =>nx739);
   ix115 : mux21 port map ( Y=>ctrl_2_mem_data_a_7, A0=>nx632, A1=>nx630, S0
      =>nx739);
   ix133 : mux21 port map ( Y=>ctrl_2_mem_mem_a_addr_0, A0=>nx643, A1=>nx641, 
      S0=>nx739);
   ix141 : mux21 port map ( Y=>ctrl_2_mem_mem_a_addr_1, A0=>nx649, A1=>nx647, 
      S0=>nx739);
   ix149 : mux21 port map ( Y=>ctrl_2_mem_mem_a_addr_2, A0=>nx655, A1=>nx653, 
      S0=>nx739);
   ix157 : mux21 port map ( Y=>ctrl_2_mem_mem_a_addr_3, A0=>nx661, A1=>nx659, 
      S0=>nx741);
   ix165 : mux21 port map ( Y=>ctrl_2_mem_mem_a_addr_4, A0=>nx667, A1=>nx665, 
      S0=>nx741);
   ix173 : mux21 port map ( Y=>ctrl_2_mem_mem_a_addr_5, A0=>nx673, A1=>nx671, 
      S0=>nx741);
   ix197 : mux21 port map ( Y=>ctrl_2_dp_rb_PRE_GURU_en, A0=>nx693, A1=>
      nx691, S0=>nx741);
   ix205 : mux21 port map ( Y=>ctrl_2_dp_rb_GURU_en, A0=>nx697, A1=>nx691, 
      S0=>nx741);
   ix707 : mux21 port map ( Y=>nx706, A0=>init_2_dp_s_ng_cte_incr, A1=>
      guru_2_dp_s_ng_cte_incr, S0=>nx741);
   ix221 : mux21 port map ( Y=>ctrl_2_dp_ng_cte_incr, A0=>nx540, A1=>nx710, 
      S0=>nx729);
   ix734 : inv01 port map ( Y=>nx735, A=>ctrl_2_dp_rb_out_sel_0_EXMPLR);
   ix736 : inv01 port map ( Y=>nx737, A=>ctrl_2_dp_rb_out_sel_0_EXMPLR);
   ix738 : inv01 port map ( Y=>nx739, A=>ctrl_2_dp_rb_out_sel_0_EXMPLR);
   ix740 : inv01 port map ( Y=>nx741, A=>ctrl_2_dp_rb_out_sel_0_EXMPLR);

end arch ;

