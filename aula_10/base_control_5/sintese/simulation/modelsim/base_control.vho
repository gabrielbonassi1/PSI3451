-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition"

-- DATE "06/01/2023 10:29:07"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	base_control IS
    PORT (
	clk : IN std_logic;
	res : IN std_logic;
	en_disc : IN std_logic;
	cnt_guru_rdy : IN std_logic;
	\dp_2_ctrl.ovf_of_y\ : IN std_logic;
	\dp_2_ctrl.end_of_guru\ : IN std_logic;
	\disc_2_base.end_of_disc\ : IN std_logic;
	\ref_2_base.go_guru\ : IN std_logic;
	\ref_2_base.duo_formed\ : IN std_logic;
	en_cnt_step : BUFFER std_logic;
	start_step : BUFFER std_logic;
	\ctrl_2_dp.cg_sel.DUO\ : BUFFER std_logic;
	\ctrl_2_dp.cg_sel.DISC\ : BUFFER std_logic;
	\ctrl_2_dp.cg_sel.GURU\ : BUFFER std_logic;
	\ctrl_2_dp.cg_sel.BLANK\ : BUFFER std_logic;
	\ctrl_2_dp.rb_out_sel.DISC_PREV_OUT\ : BUFFER std_logic;
	\ctrl_2_dp.rb_out_sel.DISC_OUT\ : BUFFER std_logic;
	\ctrl_2_dp.rb_out_sel.GURU_PREV_OUT\ : BUFFER std_logic;
	\ctrl_2_dp.rb_out_sel.GURU_OUT\ : BUFFER std_logic;
	\ctrl_2_dp.rb_out_sel.INIT_OUT\ : BUFFER std_logic;
	\ctrl_2_dp.rb_PRE_GURU_en\ : BUFFER std_logic;
	\ctrl_2_dp.rb_GURU_en\ : BUFFER std_logic;
	\ctrl_2_dp.rb_INIT_en\ : BUFFER std_logic;
	\ctrl_2_dp.alu_ctrl\ : BUFFER std_logic;
	\ctrl_2_dp.ng_rand_zero\ : BUFFER std_logic;
	\ctrl_2_dp.ng_cte_incr\ : BUFFER std_logic;
	\ctrl_2_mem.cg_sel.DUO\ : BUFFER std_logic;
	\ctrl_2_mem.cg_sel.DISC\ : BUFFER std_logic;
	\ctrl_2_mem.cg_sel.GURU\ : BUFFER std_logic;
	\ctrl_2_mem.cg_sel.BLANK\ : BUFFER std_logic;
	\ctrl_2_mem.data_a\ : BUFFER std_logic_vector(7 DOWNTO 0);
	\ctrl_2_mem.mem_wr_en\ : BUFFER std_logic;
	\ctrl_2_mem.mem_a_addr\ : BUFFER std_logic_vector(5 DOWNTO 0)
	);
END base_control;

-- Design Ports Information
-- en_cnt_step	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_step	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_2_dp.cg_sel.DUO	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_2_dp.cg_sel.DISC	=>  Location: PIN_AJ21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_2_dp.cg_sel.GURU	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_2_dp.cg_sel.BLANK	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_2_dp.rb_out_sel.DISC_PREV_OUT	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_2_dp.rb_out_sel.DISC_OUT	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_2_dp.rb_out_sel.GURU_PREV_OUT	=>  Location: PIN_AJ26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_2_dp.rb_out_sel.GURU_OUT	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_2_dp.rb_out_sel.INIT_OUT	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_2_dp.rb_PRE_GURU_en	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_2_dp.rb_GURU_en	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_2_dp.rb_INIT_en	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_2_dp.alu_ctrl	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_2_dp.ng_rand_zero	=>  Location: PIN_AJ22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_2_dp.ng_cte_incr	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_2_mem.cg_sel.DUO	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_2_mem.cg_sel.DISC	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_2_mem.cg_sel.GURU	=>  Location: PIN_AK21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_2_mem.cg_sel.BLANK	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_2_mem.data_a[0]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_2_mem.data_a[1]	=>  Location: PIN_AK19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_2_mem.data_a[2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_2_mem.data_a[3]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_2_mem.data_a[4]	=>  Location: PIN_AK4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_2_mem.data_a[5]	=>  Location: PIN_AJ27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_2_mem.data_a[6]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_2_mem.data_a[7]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_2_mem.mem_wr_en	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_2_mem.mem_a_addr[0]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_2_mem.mem_a_addr[1]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_2_mem.mem_a_addr[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_2_mem.mem_a_addr[3]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_2_mem.mem_a_addr[4]	=>  Location: PIN_AJ11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_2_mem.mem_a_addr[5]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_disc	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_2_ctrl.end_of_guru	=>  Location: PIN_AJ25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disc_2_base.end_of_disc	=>  Location: PIN_AK24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ref_2_base.duo_formed	=>  Location: PIN_AK23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- res	=>  Location: PIN_AK22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ref_2_base.go_guru	=>  Location: PIN_AK26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_guru_rdy	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_2_ctrl.ovf_of_y	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF base_control IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_res : std_logic;
SIGNAL ww_en_disc : std_logic;
SIGNAL ww_cnt_guru_rdy : std_logic;
SIGNAL \ww_dp_2_ctrl.ovf_of_y\ : std_logic;
SIGNAL \ww_dp_2_ctrl.end_of_guru\ : std_logic;
SIGNAL \ww_disc_2_base.end_of_disc\ : std_logic;
SIGNAL \ww_ref_2_base.go_guru\ : std_logic;
SIGNAL \ww_ref_2_base.duo_formed\ : std_logic;
SIGNAL ww_en_cnt_step : std_logic;
SIGNAL ww_start_step : std_logic;
SIGNAL \ww_ctrl_2_dp.cg_sel.DUO\ : std_logic;
SIGNAL \ww_ctrl_2_dp.cg_sel.DISC\ : std_logic;
SIGNAL \ww_ctrl_2_dp.cg_sel.GURU\ : std_logic;
SIGNAL \ww_ctrl_2_dp.cg_sel.BLANK\ : std_logic;
SIGNAL \ww_ctrl_2_dp.rb_out_sel.DISC_PREV_OUT\ : std_logic;
SIGNAL \ww_ctrl_2_dp.rb_out_sel.DISC_OUT\ : std_logic;
SIGNAL \ww_ctrl_2_dp.rb_out_sel.GURU_PREV_OUT\ : std_logic;
SIGNAL \ww_ctrl_2_dp.rb_out_sel.GURU_OUT\ : std_logic;
SIGNAL \ww_ctrl_2_dp.rb_out_sel.INIT_OUT\ : std_logic;
SIGNAL \ww_ctrl_2_dp.rb_PRE_GURU_en\ : std_logic;
SIGNAL \ww_ctrl_2_dp.rb_GURU_en\ : std_logic;
SIGNAL \ww_ctrl_2_dp.rb_INIT_en\ : std_logic;
SIGNAL \ww_ctrl_2_dp.alu_ctrl\ : std_logic;
SIGNAL \ww_ctrl_2_dp.ng_rand_zero\ : std_logic;
SIGNAL \ww_ctrl_2_dp.ng_cte_incr\ : std_logic;
SIGNAL \ww_ctrl_2_mem.cg_sel.DUO\ : std_logic;
SIGNAL \ww_ctrl_2_mem.cg_sel.DISC\ : std_logic;
SIGNAL \ww_ctrl_2_mem.cg_sel.GURU\ : std_logic;
SIGNAL \ww_ctrl_2_mem.cg_sel.BLANK\ : std_logic;
SIGNAL \ww_ctrl_2_mem.data_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ww_ctrl_2_mem.mem_wr_en\ : std_logic;
SIGNAL \ww_ctrl_2_mem.mem_a_addr\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \dp_2_ctrl.end_of_guru~input_o\ : std_logic;
SIGNAL \disc_2_base.end_of_disc~input_o\ : std_logic;
SIGNAL \res~input_o\ : std_logic;
SIGNAL \ref_2_base.duo_formed~input_o\ : std_logic;
SIGNAL \en_disc~input_o\ : std_logic;
SIGNAL \main|Selector1~0_combout\ : std_logic;
SIGNAL \main|STATE~10_combout\ : std_logic;
SIGNAL \main|STATE.HIT_POINT~q\ : std_logic;
SIGNAL \dp_2_ctrl.ovf_of_y~input_o\ : std_logic;
SIGNAL \init|STATE~7_combout\ : std_logic;
SIGNAL \init|STATE.IDLE~q\ : std_logic;
SIGNAL \init|STATE~8_combout\ : std_logic;
SIGNAL \init|STATE.ZERO~q\ : std_logic;
SIGNAL \init|Selector1~0_combout\ : std_logic;
SIGNAL \init|STATE.MEM_WALK~q\ : std_logic;
SIGNAL \init|STATE~6_combout\ : std_logic;
SIGNAL \init|STATE.DONE~q\ : std_logic;
SIGNAL \main|STATE~9_combout\ : std_logic;
SIGNAL \main|STATE.INIT_ACTIVATION~q\ : std_logic;
SIGNAL \cnt_prep|NEXT_STATE~0_combout\ : std_logic;
SIGNAL \cnt_prep|STATE~q\ : std_logic;
SIGNAL \cnt_prep|cnt_s[0]_OTERM61\ : std_logic;
SIGNAL \cnt_prep|Add0~86\ : std_logic;
SIGNAL \cnt_prep|Add0~57_sumout\ : std_logic;
SIGNAL \cnt_prep|cnt_s[18]~0_combout\ : std_logic;
SIGNAL \cnt_prep|cnt_s[1]_OTERM39\ : std_logic;
SIGNAL \cnt_prep|Add0~58\ : std_logic;
SIGNAL \cnt_prep|Add0~33_sumout\ : std_logic;
SIGNAL \cnt_prep|cnt_s[2]_OTERM27\ : std_logic;
SIGNAL \cnt_prep|Add0~34\ : std_logic;
SIGNAL \cnt_prep|Add0~77_sumout\ : std_logic;
SIGNAL \cnt_prep|cnt_s[3]_OTERM29\ : std_logic;
SIGNAL \cnt_prep|Add0~78\ : std_logic;
SIGNAL \cnt_prep|Add0~73_sumout\ : std_logic;
SIGNAL \cnt_prep|cnt_s[4]_OTERM31\ : std_logic;
SIGNAL \cnt_prep|Add0~74\ : std_logic;
SIGNAL \cnt_prep|Add0~69_sumout\ : std_logic;
SIGNAL \cnt_prep|cnt_s[5]_OTERM33\ : std_logic;
SIGNAL \cnt_prep|Add0~70\ : std_logic;
SIGNAL \cnt_prep|Add0~65_sumout\ : std_logic;
SIGNAL \cnt_prep|cnt_s[6]_OTERM35\ : std_logic;
SIGNAL \cnt_prep|Add0~66\ : std_logic;
SIGNAL \cnt_prep|Add0~61_sumout\ : std_logic;
SIGNAL \cnt_prep|cnt_s[7]_OTERM37\ : std_logic;
SIGNAL \cnt_prep|Equal0~3_combout\ : std_logic;
SIGNAL \cnt_prep|cnt_s[30]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_prep|Add0~62\ : std_logic;
SIGNAL \cnt_prep|Add0~125_sumout\ : std_logic;
SIGNAL \cnt_prep|cnt_s[8]_OTERM41\ : std_logic;
SIGNAL \cnt_prep|Add0~126\ : std_logic;
SIGNAL \cnt_prep|Add0~121_sumout\ : std_logic;
SIGNAL \cnt_prep|cnt_s[9]_OTERM43\ : std_logic;
SIGNAL \cnt_prep|cnt_s[9]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_prep|Add0~122\ : std_logic;
SIGNAL \cnt_prep|Add0~117_sumout\ : std_logic;
SIGNAL \cnt_prep|cnt_s[10]_OTERM45\ : std_logic;
SIGNAL \cnt_prep|Add0~118\ : std_logic;
SIGNAL \cnt_prep|Add0~113_sumout\ : std_logic;
SIGNAL \cnt_prep|cnt_s[11]_OTERM47\ : std_logic;
SIGNAL \cnt_prep|Add0~114\ : std_logic;
SIGNAL \cnt_prep|Add0~109_sumout\ : std_logic;
SIGNAL \cnt_prep|cnt_s[12]_OTERM49\ : std_logic;
SIGNAL \cnt_prep|Add0~110\ : std_logic;
SIGNAL \cnt_prep|Add0~105_sumout\ : std_logic;
SIGNAL \cnt_prep|cnt_s[13]_OTERM51\ : std_logic;
SIGNAL \cnt_prep|cnt_s[13]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_prep|Add0~106\ : std_logic;
SIGNAL \cnt_prep|Add0~101_sumout\ : std_logic;
SIGNAL \cnt_prep|cnt_s[14]_OTERM53\ : std_logic;
SIGNAL \cnt_prep|cnt_s[14]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_prep|Add0~102\ : std_logic;
SIGNAL \cnt_prep|Add0~97_sumout\ : std_logic;
SIGNAL \cnt_prep|cnt_s[15]_OTERM55\ : std_logic;
SIGNAL \cnt_prep|cnt_s[15]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_prep|Add0~98\ : std_logic;
SIGNAL \cnt_prep|Add0~93_sumout\ : std_logic;
SIGNAL \cnt_prep|cnt_s[16]_OTERM57\ : std_logic;
SIGNAL \cnt_prep|cnt_s[16]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_prep|Add0~94\ : std_logic;
SIGNAL \cnt_prep|Add0~89_sumout\ : std_logic;
SIGNAL \cnt_prep|cnt_s[17]_OTERM59\ : std_logic;
SIGNAL \cnt_prep|Add0~90\ : std_logic;
SIGNAL \cnt_prep|Add0~81_sumout\ : std_logic;
SIGNAL \cnt_prep|cnt_s[18]_OTERM63\ : std_logic;
SIGNAL \cnt_prep|cnt_s[18]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_prep|Add0~82\ : std_logic;
SIGNAL \cnt_prep|Add0~5_sumout\ : std_logic;
SIGNAL \cnt_prep|cnt_s[19]_OTERM3\ : std_logic;
SIGNAL \cnt_prep|Add0~6\ : std_logic;
SIGNAL \cnt_prep|Add0~1_sumout\ : std_logic;
SIGNAL \cnt_prep|cnt_s[20]_OTERM1\ : std_logic;
SIGNAL \cnt_prep|Add0~2\ : std_logic;
SIGNAL \cnt_prep|Add0~29_sumout\ : std_logic;
SIGNAL \cnt_prep|cnt_s[21]_OTERM5\ : std_logic;
SIGNAL \cnt_prep|Add0~30\ : std_logic;
SIGNAL \cnt_prep|Add0~25_sumout\ : std_logic;
SIGNAL \cnt_prep|cnt_s[22]_OTERM7\ : std_logic;
SIGNAL \cnt_prep|Add0~26\ : std_logic;
SIGNAL \cnt_prep|Add0~21_sumout\ : std_logic;
SIGNAL \cnt_prep|cnt_s[23]_OTERM9\ : std_logic;
SIGNAL \cnt_prep|cnt_s[23]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_prep|Add0~22\ : std_logic;
SIGNAL \cnt_prep|Add0~17_sumout\ : std_logic;
SIGNAL \cnt_prep|cnt_s[24]_OTERM11\ : std_logic;
SIGNAL \cnt_prep|cnt_s[24]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_prep|Add0~18\ : std_logic;
SIGNAL \cnt_prep|Add0~13_sumout\ : std_logic;
SIGNAL \cnt_prep|cnt_s[25]_OTERM13\ : std_logic;
SIGNAL \cnt_prep|cnt_s[25]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_prep|Add0~14\ : std_logic;
SIGNAL \cnt_prep|Add0~9_sumout\ : std_logic;
SIGNAL \cnt_prep|cnt_s[26]_OTERM15\ : std_logic;
SIGNAL \cnt_prep|cnt_s[26]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_prep|Add0~10\ : std_logic;
SIGNAL \cnt_prep|Add0~53_sumout\ : std_logic;
SIGNAL \cnt_prep|cnt_s[27]_OTERM17\ : std_logic;
SIGNAL \cnt_prep|Add0~54\ : std_logic;
SIGNAL \cnt_prep|Add0~49_sumout\ : std_logic;
SIGNAL \cnt_prep|cnt_s[28]_OTERM19\ : std_logic;
SIGNAL \cnt_prep|Add0~50\ : std_logic;
SIGNAL \cnt_prep|Add0~45_sumout\ : std_logic;
SIGNAL \cnt_prep|cnt_s[29]_OTERM21\ : std_logic;
SIGNAL \cnt_prep|cnt_s[29]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_prep|Add0~46\ : std_logic;
SIGNAL \cnt_prep|Add0~41_sumout\ : std_logic;
SIGNAL \cnt_prep|cnt_s[30]_OTERM23\ : std_logic;
SIGNAL \cnt_prep|Add0~42\ : std_logic;
SIGNAL \cnt_prep|Add0~37_sumout\ : std_logic;
SIGNAL \cnt_prep|cnt_s[31]_OTERM25\ : std_logic;
SIGNAL \cnt_prep|cnt_s[2]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_prep|Equal0~2_combout\ : std_logic;
SIGNAL \cnt_prep|cnt_s[0]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_prep|Equal0~4_combout\ : std_logic;
SIGNAL \cnt_prep|Equal0~1_combout\ : std_logic;
SIGNAL \cnt_prep|Equal0~0_combout\ : std_logic;
SIGNAL \cnt_prep|Equal0~5_combout\ : std_logic;
SIGNAL \cnt_prep|Equal0~6_combout\ : std_logic;
SIGNAL \main|Selector1~1_combout\ : std_logic;
SIGNAL \main|STATE.CNT_PREPARE~q\ : std_logic;
SIGNAL \main|STATE~8_combout\ : std_logic;
SIGNAL \main|STATE.STEP_ACTIVATION~q\ : std_logic;
SIGNAL \cnt_strat|NEXT_STATE~0_combout\ : std_logic;
SIGNAL \cnt_strat|STATE~q\ : std_logic;
SIGNAL \cnt_strat|cnt_s[0]_OTERM119\ : std_logic;
SIGNAL \cnt_strat|Add0~98\ : std_logic;
SIGNAL \cnt_strat|Add0~93_sumout\ : std_logic;
SIGNAL \cnt_strat|cnt_s[1]_OTERM121\ : std_logic;
SIGNAL \cnt_strat|Add0~94\ : std_logic;
SIGNAL \cnt_strat|Add0~89_sumout\ : std_logic;
SIGNAL \cnt_strat|cnt_s[2]_OTERM123\ : std_logic;
SIGNAL \cnt_strat|Add0~90\ : std_logic;
SIGNAL \cnt_strat|Add0~85_sumout\ : std_logic;
SIGNAL \cnt_strat|cnt_s[3]_OTERM125\ : std_logic;
SIGNAL \cnt_strat|Add0~86\ : std_logic;
SIGNAL \cnt_strat|Add0~81_sumout\ : std_logic;
SIGNAL \cnt_strat|cnt_s[4]_OTERM127\ : std_logic;
SIGNAL \cnt_strat|Add0~82\ : std_logic;
SIGNAL \cnt_strat|Add0~5_sumout\ : std_logic;
SIGNAL \cnt_strat|cnt_s[5]_OTERM67\ : std_logic;
SIGNAL \cnt_strat|Add0~6\ : std_logic;
SIGNAL \cnt_strat|Add0~1_sumout\ : std_logic;
SIGNAL \cnt_strat|cnt_s[6]_OTERM65\ : std_logic;
SIGNAL \cnt_strat|Add0~2\ : std_logic;
SIGNAL \cnt_strat|Add0~29_sumout\ : std_logic;
SIGNAL \cnt_strat|cnt_s[7]_OTERM69\ : std_logic;
SIGNAL \cnt_strat|cnt_s[7]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_strat|Add0~30\ : std_logic;
SIGNAL \cnt_strat|Add0~25_sumout\ : std_logic;
SIGNAL \cnt_strat|cnt_s[8]_OTERM71\ : std_logic;
SIGNAL \cnt_strat|Add0~26\ : std_logic;
SIGNAL \cnt_strat|Add0~21_sumout\ : std_logic;
SIGNAL \cnt_strat|cnt_s[9]_OTERM73\ : std_logic;
SIGNAL \cnt_strat|Add0~22\ : std_logic;
SIGNAL \cnt_strat|Add0~17_sumout\ : std_logic;
SIGNAL \cnt_strat|cnt_s[10]_OTERM75\ : std_logic;
SIGNAL \cnt_strat|Add0~18\ : std_logic;
SIGNAL \cnt_strat|Add0~13_sumout\ : std_logic;
SIGNAL \cnt_strat|cnt_s[11]_OTERM77\ : std_logic;
SIGNAL \cnt_strat|Add0~14\ : std_logic;
SIGNAL \cnt_strat|Add0~9_sumout\ : std_logic;
SIGNAL \cnt_strat|cnt_s[12]_OTERM79\ : std_logic;
SIGNAL \cnt_strat|Add0~10\ : std_logic;
SIGNAL \cnt_strat|Add0~53_sumout\ : std_logic;
SIGNAL \cnt_strat|cnt_s[13]_OTERM81\ : std_logic;
SIGNAL \cnt_strat|cnt_s[13]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_strat|Add0~54\ : std_logic;
SIGNAL \cnt_strat|Add0~49_sumout\ : std_logic;
SIGNAL \cnt_strat|cnt_s[14]_OTERM83\ : std_logic;
SIGNAL \cnt_strat|Add0~50\ : std_logic;
SIGNAL \cnt_strat|Add0~45_sumout\ : std_logic;
SIGNAL \cnt_strat|cnt_s[15]_OTERM85\ : std_logic;
SIGNAL \cnt_strat|Add0~46\ : std_logic;
SIGNAL \cnt_strat|Add0~41_sumout\ : std_logic;
SIGNAL \cnt_strat|cnt_s[16]_OTERM87\ : std_logic;
SIGNAL \cnt_strat|Add0~42\ : std_logic;
SIGNAL \cnt_strat|Add0~37_sumout\ : std_logic;
SIGNAL \cnt_strat|cnt_s[17]_OTERM89\ : std_logic;
SIGNAL \cnt_strat|Add0~38\ : std_logic;
SIGNAL \cnt_strat|Add0~101_sumout\ : std_logic;
SIGNAL \cnt_strat|cnt_s[18]_OTERM117\ : std_logic;
SIGNAL \cnt_strat|Add0~102\ : std_logic;
SIGNAL \cnt_strat|Add0~105_sumout\ : std_logic;
SIGNAL \cnt_strat|cnt_s[19]_OTERM115\ : std_logic;
SIGNAL \cnt_strat|cnt_s[19]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_strat|Add0~106\ : std_logic;
SIGNAL \cnt_strat|Add0~109_sumout\ : std_logic;
SIGNAL \cnt_strat|cnt_s[20]_OTERM113\ : std_logic;
SIGNAL \cnt_strat|Add0~110\ : std_logic;
SIGNAL \cnt_strat|Add0~33_sumout\ : std_logic;
SIGNAL \cnt_strat|cnt_s[21]_OTERM91\ : std_logic;
SIGNAL \cnt_strat|Equal0~2_combout\ : std_logic;
SIGNAL \cnt_strat|cnt_s[27]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_strat|Add0~34\ : std_logic;
SIGNAL \cnt_strat|Add0~113_sumout\ : std_logic;
SIGNAL \cnt_strat|cnt_s[22]_OTERM111\ : std_logic;
SIGNAL \cnt_strat|Add0~114\ : std_logic;
SIGNAL \cnt_strat|Add0~117_sumout\ : std_logic;
SIGNAL \cnt_strat|cnt_s[23]_OTERM109\ : std_logic;
SIGNAL \cnt_strat|Add0~118\ : std_logic;
SIGNAL \cnt_strat|Add0~121_sumout\ : std_logic;
SIGNAL \cnt_strat|cnt_s[24]_OTERM107\ : std_logic;
SIGNAL \cnt_strat|Add0~122\ : std_logic;
SIGNAL \cnt_strat|Add0~125_sumout\ : std_logic;
SIGNAL \cnt_strat|cnt_s[25]_OTERM105\ : std_logic;
SIGNAL \cnt_strat|Add0~126\ : std_logic;
SIGNAL \cnt_strat|Add0~57_sumout\ : std_logic;
SIGNAL \cnt_strat|cnt_s[26]_OTERM103\ : std_logic;
SIGNAL \cnt_strat|cnt_s[26]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_strat|Add0~58\ : std_logic;
SIGNAL \cnt_strat|Add0~61_sumout\ : std_logic;
SIGNAL \cnt_strat|cnt_s[27]_OTERM101\ : std_logic;
SIGNAL \cnt_strat|Add0~62\ : std_logic;
SIGNAL \cnt_strat|Add0~65_sumout\ : std_logic;
SIGNAL \cnt_strat|cnt_s[28]_OTERM99\ : std_logic;
SIGNAL \cnt_strat|Add0~66\ : std_logic;
SIGNAL \cnt_strat|Add0~69_sumout\ : std_logic;
SIGNAL \cnt_strat|cnt_s[29]_OTERM97\ : std_logic;
SIGNAL \cnt_strat|Add0~70\ : std_logic;
SIGNAL \cnt_strat|Add0~73_sumout\ : std_logic;
SIGNAL \cnt_strat|cnt_s[30]_OTERM95\ : std_logic;
SIGNAL \cnt_strat|cnt_s[31]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_strat|Add0~74\ : std_logic;
SIGNAL \cnt_strat|Add0~77_sumout\ : std_logic;
SIGNAL \cnt_strat|cnt_s[31]_OTERM93\ : std_logic;
SIGNAL \cnt_strat|Equal0~3_combout\ : std_logic;
SIGNAL \cnt_strat|Equal0~0_combout\ : std_logic;
SIGNAL \cnt_strat|Equal0~5_combout\ : std_logic;
SIGNAL \cnt_strat|Equal0~1_combout\ : std_logic;
SIGNAL \cnt_strat|Equal0~4_combout\ : std_logic;
SIGNAL \cnt_strat|Equal0~6_combout\ : std_logic;
SIGNAL \main|Selector2~0_combout\ : std_logic;
SIGNAL \main|STATE.CNT_START~q\ : std_logic;
SIGNAL \main|Selector0~0_combout\ : std_logic;
SIGNAL \main|STATE.CHECK_END~q\ : std_logic;
SIGNAL \ref_2_base.go_guru~input_o\ : std_logic;
SIGNAL \cnt_guru_rdy~input_o\ : std_logic;
SIGNAL \guru|STATE~15_combout\ : std_logic;
SIGNAL \guru|STATE.LAST~q\ : std_logic;
SIGNAL \guru|STATE~14_combout\ : std_logic;
SIGNAL \guru|STATE.START_WALKING~q\ : std_logic;
SIGNAL \guru|STATE~16_combout\ : std_logic;
SIGNAL \guru|STATE.RAND~q\ : std_logic;
SIGNAL \guru|STATE~18_combout\ : std_logic;
SIGNAL \guru|STATE.WRITE_RAND~q\ : std_logic;
SIGNAL \guru|STATE~19_combout\ : std_logic;
SIGNAL \guru|STATE.WRITE_GURU~q\ : std_logic;
SIGNAL \guru|NEXT_STATE.CLEAR_PREV~0_combout\ : std_logic;
SIGNAL \guru|STATE.CLEAR_PREV~q\ : std_logic;
SIGNAL \guru|Selector1~0_combout\ : std_logic;
SIGNAL \guru|STATE.WAIT_COUNT_GURU~q\ : std_logic;
SIGNAL \guru|STATE~17_combout\ : std_logic;
SIGNAL \guru|STATE.INCR~q\ : std_logic;
SIGNAL \guru|STATE~21_combout\ : std_logic;
SIGNAL \guru|STATE.CHECK_LAST~q\ : std_logic;
SIGNAL \guru|STATE~20_combout\ : std_logic;
SIGNAL \guru|STATE.CHECK_SAME_ADDR~q\ : std_logic;
SIGNAL \guru|STATE~13_combout\ : std_logic;
SIGNAL \guru|STATE.WRITE_DUO~q\ : std_logic;
SIGNAL \ctrl_2_dp~0_combout\ : std_logic;
SIGNAL \ctrl_2_dp~1_combout\ : std_logic;
SIGNAL \ctrl_2_dp~2_combout\ : std_logic;
SIGNAL \ctrl_2_dp~3_combout\ : std_logic;
SIGNAL \ctrl_2_dp~4_combout\ : std_logic;
SIGNAL \ctrl_2_dp~5_combout\ : std_logic;
SIGNAL \ctrl_2_dp~6_combout\ : std_logic;
SIGNAL \ctrl_2_dp~7_combout\ : std_logic;
SIGNAL \ctrl_2_dp~8_combout\ : std_logic;
SIGNAL \ctrl_2_dp~9_combout\ : std_logic;
SIGNAL \ctrl_2_dp~10_combout\ : std_logic;
SIGNAL \ctrl_2_mem~0_combout\ : std_logic;
SIGNAL \cnt_strat|cnt_s\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \cnt_prep|cnt_s\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \cnt_prep|ALT_INV_cnt_s[9]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_cnt_s[13]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_cnt_s[14]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_cnt_s[15]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_cnt_s[16]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_cnt_s[0]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_cnt_s[18]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_cnt_s[29]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_cnt_s[30]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_cnt_s[2]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_cnt_s[23]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_cnt_s[24]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_cnt_s[25]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_cnt_s[26]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_strat|ALT_INV_cnt_s[19]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_strat|ALT_INV_cnt_s[31]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_strat|ALT_INV_cnt_s[27]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_strat|ALT_INV_cnt_s[26]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_strat|ALT_INV_cnt_s[13]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_strat|ALT_INV_cnt_s[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_dp_2_ctrl.ovf_of_y~input_o\ : std_logic;
SIGNAL \ALT_INV_cnt_guru_rdy~input_o\ : std_logic;
SIGNAL \ALT_INV_ref_2_base.go_guru~input_o\ : std_logic;
SIGNAL \ALT_INV_res~input_o\ : std_logic;
SIGNAL \ALT_INV_ref_2_base.duo_formed~input_o\ : std_logic;
SIGNAL \ALT_INV_disc_2_base.end_of_disc~input_o\ : std_logic;
SIGNAL \ALT_INV_dp_2_ctrl.end_of_guru~input_o\ : std_logic;
SIGNAL \ALT_INV_en_disc~input_o\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_cnt_s[18]~0_combout\ : std_logic;
SIGNAL \main|ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \main|ALT_INV_STATE.HIT_POINT~q\ : std_logic;
SIGNAL \guru|ALT_INV_STATE.CHECK_SAME_ADDR~q\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \cnt_strat|ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \cnt_strat|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \cnt_strat|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \cnt_strat|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \cnt_strat|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \cnt_strat|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \cnt_strat|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \guru|ALT_INV_NEXT_STATE.CLEAR_PREV~0_combout\ : std_logic;
SIGNAL \guru|ALT_INV_STATE.WRITE_GURU~q\ : std_logic;
SIGNAL \init|ALT_INV_STATE.ZERO~q\ : std_logic;
SIGNAL \ALT_INV_ctrl_2_dp~9_combout\ : std_logic;
SIGNAL \ALT_INV_ctrl_2_dp~8_combout\ : std_logic;
SIGNAL \guru|ALT_INV_STATE.WRITE_RAND~q\ : std_logic;
SIGNAL \ALT_INV_ctrl_2_dp~6_combout\ : std_logic;
SIGNAL \init|ALT_INV_STATE.IDLE~q\ : std_logic;
SIGNAL \init|ALT_INV_STATE.DONE~q\ : std_logic;
SIGNAL \guru|ALT_INV_STATE.INCR~q\ : std_logic;
SIGNAL \guru|ALT_INV_STATE.RAND~q\ : std_logic;
SIGNAL \ALT_INV_ctrl_2_dp~2_combout\ : std_logic;
SIGNAL \guru|ALT_INV_STATE.LAST~q\ : std_logic;
SIGNAL \guru|ALT_INV_STATE.START_WALKING~q\ : std_logic;
SIGNAL \main|ALT_INV_STATE.INIT_ACTIVATION~q\ : std_logic;
SIGNAL \guru|ALT_INV_STATE.WRITE_DUO~q\ : std_logic;
SIGNAL \main|ALT_INV_STATE.STEP_ACTIVATION~q\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_Add0~125_sumout\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_STATE~q\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \cnt_strat|ALT_INV_Add0~125_sumout\ : std_logic;
SIGNAL \cnt_strat|ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \cnt_strat|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \cnt_strat|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \cnt_strat|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \cnt_strat|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \cnt_strat|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \cnt_strat|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \cnt_strat|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \cnt_strat|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \cnt_strat|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \cnt_strat|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \cnt_strat|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \cnt_strat|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \cnt_strat|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \cnt_strat|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \cnt_strat|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \cnt_strat|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \cnt_strat|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \cnt_strat|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \cnt_strat|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \cnt_strat|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \cnt_strat|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \cnt_strat|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \cnt_strat|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \cnt_strat|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \cnt_strat|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \cnt_strat|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \cnt_strat|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \cnt_strat|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \cnt_strat|ALT_INV_STATE~q\ : std_logic;
SIGNAL \cnt_strat|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \guru|ALT_INV_STATE.CHECK_LAST~q\ : std_logic;
SIGNAL \cnt_prep|ALT_INV_cnt_s\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \main|ALT_INV_STATE.CNT_PREPARE~q\ : std_logic;
SIGNAL \cnt_strat|ALT_INV_cnt_s\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \main|ALT_INV_STATE.CNT_START~q\ : std_logic;
SIGNAL \guru|ALT_INV_STATE.WAIT_COUNT_GURU~q\ : std_logic;
SIGNAL \init|ALT_INV_STATE.MEM_WALK~q\ : std_logic;
SIGNAL \guru|ALT_INV_STATE.CLEAR_PREV~q\ : std_logic;
SIGNAL \main|ALT_INV_STATE.CHECK_END~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_res <= res;
ww_en_disc <= en_disc;
ww_cnt_guru_rdy <= cnt_guru_rdy;
\ww_dp_2_ctrl.ovf_of_y\ <= \dp_2_ctrl.ovf_of_y\;
\ww_dp_2_ctrl.end_of_guru\ <= \dp_2_ctrl.end_of_guru\;
\ww_disc_2_base.end_of_disc\ <= \disc_2_base.end_of_disc\;
\ww_ref_2_base.go_guru\ <= \ref_2_base.go_guru\;
\ww_ref_2_base.duo_formed\ <= \ref_2_base.duo_formed\;
en_cnt_step <= ww_en_cnt_step;
start_step <= ww_start_step;
\ctrl_2_dp.cg_sel.DUO\ <= \ww_ctrl_2_dp.cg_sel.DUO\;
\ctrl_2_dp.cg_sel.DISC\ <= \ww_ctrl_2_dp.cg_sel.DISC\;
\ctrl_2_dp.cg_sel.GURU\ <= \ww_ctrl_2_dp.cg_sel.GURU\;
\ctrl_2_dp.cg_sel.BLANK\ <= \ww_ctrl_2_dp.cg_sel.BLANK\;
\ctrl_2_dp.rb_out_sel.DISC_PREV_OUT\ <= \ww_ctrl_2_dp.rb_out_sel.DISC_PREV_OUT\;
\ctrl_2_dp.rb_out_sel.DISC_OUT\ <= \ww_ctrl_2_dp.rb_out_sel.DISC_OUT\;
\ctrl_2_dp.rb_out_sel.GURU_PREV_OUT\ <= \ww_ctrl_2_dp.rb_out_sel.GURU_PREV_OUT\;
\ctrl_2_dp.rb_out_sel.GURU_OUT\ <= \ww_ctrl_2_dp.rb_out_sel.GURU_OUT\;
\ctrl_2_dp.rb_out_sel.INIT_OUT\ <= \ww_ctrl_2_dp.rb_out_sel.INIT_OUT\;
\ctrl_2_dp.rb_PRE_GURU_en\ <= \ww_ctrl_2_dp.rb_PRE_GURU_en\;
\ctrl_2_dp.rb_GURU_en\ <= \ww_ctrl_2_dp.rb_GURU_en\;
\ctrl_2_dp.rb_INIT_en\ <= \ww_ctrl_2_dp.rb_INIT_en\;
\ctrl_2_dp.alu_ctrl\ <= \ww_ctrl_2_dp.alu_ctrl\;
\ctrl_2_dp.ng_rand_zero\ <= \ww_ctrl_2_dp.ng_rand_zero\;
\ctrl_2_dp.ng_cte_incr\ <= \ww_ctrl_2_dp.ng_cte_incr\;
\ctrl_2_mem.cg_sel.DUO\ <= \ww_ctrl_2_mem.cg_sel.DUO\;
\ctrl_2_mem.cg_sel.DISC\ <= \ww_ctrl_2_mem.cg_sel.DISC\;
\ctrl_2_mem.cg_sel.GURU\ <= \ww_ctrl_2_mem.cg_sel.GURU\;
\ctrl_2_mem.cg_sel.BLANK\ <= \ww_ctrl_2_mem.cg_sel.BLANK\;
\ctrl_2_mem.data_a\ <= \ww_ctrl_2_mem.data_a\;
\ctrl_2_mem.mem_wr_en\ <= \ww_ctrl_2_mem.mem_wr_en\;
\ctrl_2_mem.mem_a_addr\ <= \ww_ctrl_2_mem.mem_a_addr\;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\cnt_prep|ALT_INV_cnt_s[9]~DUPLICATE_q\ <= NOT \cnt_prep|cnt_s[9]~DUPLICATE_q\;
\cnt_prep|ALT_INV_cnt_s[13]~DUPLICATE_q\ <= NOT \cnt_prep|cnt_s[13]~DUPLICATE_q\;
\cnt_prep|ALT_INV_cnt_s[14]~DUPLICATE_q\ <= NOT \cnt_prep|cnt_s[14]~DUPLICATE_q\;
\cnt_prep|ALT_INV_cnt_s[15]~DUPLICATE_q\ <= NOT \cnt_prep|cnt_s[15]~DUPLICATE_q\;
\cnt_prep|ALT_INV_cnt_s[16]~DUPLICATE_q\ <= NOT \cnt_prep|cnt_s[16]~DUPLICATE_q\;
\cnt_prep|ALT_INV_cnt_s[0]~DUPLICATE_q\ <= NOT \cnt_prep|cnt_s[0]~DUPLICATE_q\;
\cnt_prep|ALT_INV_cnt_s[18]~DUPLICATE_q\ <= NOT \cnt_prep|cnt_s[18]~DUPLICATE_q\;
\cnt_prep|ALT_INV_cnt_s[29]~DUPLICATE_q\ <= NOT \cnt_prep|cnt_s[29]~DUPLICATE_q\;
\cnt_prep|ALT_INV_cnt_s[30]~DUPLICATE_q\ <= NOT \cnt_prep|cnt_s[30]~DUPLICATE_q\;
\cnt_prep|ALT_INV_cnt_s[2]~DUPLICATE_q\ <= NOT \cnt_prep|cnt_s[2]~DUPLICATE_q\;
\cnt_prep|ALT_INV_cnt_s[23]~DUPLICATE_q\ <= NOT \cnt_prep|cnt_s[23]~DUPLICATE_q\;
\cnt_prep|ALT_INV_cnt_s[24]~DUPLICATE_q\ <= NOT \cnt_prep|cnt_s[24]~DUPLICATE_q\;
\cnt_prep|ALT_INV_cnt_s[25]~DUPLICATE_q\ <= NOT \cnt_prep|cnt_s[25]~DUPLICATE_q\;
\cnt_prep|ALT_INV_cnt_s[26]~DUPLICATE_q\ <= NOT \cnt_prep|cnt_s[26]~DUPLICATE_q\;
\cnt_strat|ALT_INV_cnt_s[19]~DUPLICATE_q\ <= NOT \cnt_strat|cnt_s[19]~DUPLICATE_q\;
\cnt_strat|ALT_INV_cnt_s[31]~DUPLICATE_q\ <= NOT \cnt_strat|cnt_s[31]~DUPLICATE_q\;
\cnt_strat|ALT_INV_cnt_s[27]~DUPLICATE_q\ <= NOT \cnt_strat|cnt_s[27]~DUPLICATE_q\;
\cnt_strat|ALT_INV_cnt_s[26]~DUPLICATE_q\ <= NOT \cnt_strat|cnt_s[26]~DUPLICATE_q\;
\cnt_strat|ALT_INV_cnt_s[13]~DUPLICATE_q\ <= NOT \cnt_strat|cnt_s[13]~DUPLICATE_q\;
\cnt_strat|ALT_INV_cnt_s[7]~DUPLICATE_q\ <= NOT \cnt_strat|cnt_s[7]~DUPLICATE_q\;
\ALT_INV_dp_2_ctrl.ovf_of_y~input_o\ <= NOT \dp_2_ctrl.ovf_of_y~input_o\;
\ALT_INV_cnt_guru_rdy~input_o\ <= NOT \cnt_guru_rdy~input_o\;
\ALT_INV_ref_2_base.go_guru~input_o\ <= NOT \ref_2_base.go_guru~input_o\;
\ALT_INV_res~input_o\ <= NOT \res~input_o\;
\ALT_INV_ref_2_base.duo_formed~input_o\ <= NOT \ref_2_base.duo_formed~input_o\;
\ALT_INV_disc_2_base.end_of_disc~input_o\ <= NOT \disc_2_base.end_of_disc~input_o\;
\ALT_INV_dp_2_ctrl.end_of_guru~input_o\ <= NOT \dp_2_ctrl.end_of_guru~input_o\;
\ALT_INV_en_disc~input_o\ <= NOT \en_disc~input_o\;
\cnt_prep|ALT_INV_cnt_s[18]~0_combout\ <= NOT \cnt_prep|cnt_s[18]~0_combout\;
\main|ALT_INV_Selector1~0_combout\ <= NOT \main|Selector1~0_combout\;
\main|ALT_INV_STATE.HIT_POINT~q\ <= NOT \main|STATE.HIT_POINT~q\;
\guru|ALT_INV_STATE.CHECK_SAME_ADDR~q\ <= NOT \guru|STATE.CHECK_SAME_ADDR~q\;
\cnt_prep|ALT_INV_Equal0~6_combout\ <= NOT \cnt_prep|Equal0~6_combout\;
\cnt_prep|ALT_INV_Equal0~5_combout\ <= NOT \cnt_prep|Equal0~5_combout\;
\cnt_prep|ALT_INV_Equal0~4_combout\ <= NOT \cnt_prep|Equal0~4_combout\;
\cnt_prep|ALT_INV_Equal0~3_combout\ <= NOT \cnt_prep|Equal0~3_combout\;
\cnt_prep|ALT_INV_Equal0~2_combout\ <= NOT \cnt_prep|Equal0~2_combout\;
\cnt_prep|ALT_INV_Equal0~1_combout\ <= NOT \cnt_prep|Equal0~1_combout\;
\cnt_prep|ALT_INV_Equal0~0_combout\ <= NOT \cnt_prep|Equal0~0_combout\;
\cnt_strat|ALT_INV_Equal0~6_combout\ <= NOT \cnt_strat|Equal0~6_combout\;
\cnt_strat|ALT_INV_Equal0~5_combout\ <= NOT \cnt_strat|Equal0~5_combout\;
\cnt_strat|ALT_INV_Equal0~4_combout\ <= NOT \cnt_strat|Equal0~4_combout\;
\cnt_strat|ALT_INV_Equal0~3_combout\ <= NOT \cnt_strat|Equal0~3_combout\;
\cnt_strat|ALT_INV_Equal0~2_combout\ <= NOT \cnt_strat|Equal0~2_combout\;
\cnt_strat|ALT_INV_Equal0~1_combout\ <= NOT \cnt_strat|Equal0~1_combout\;
\cnt_strat|ALT_INV_Equal0~0_combout\ <= NOT \cnt_strat|Equal0~0_combout\;
\guru|ALT_INV_NEXT_STATE.CLEAR_PREV~0_combout\ <= NOT \guru|NEXT_STATE.CLEAR_PREV~0_combout\;
\guru|ALT_INV_STATE.WRITE_GURU~q\ <= NOT \guru|STATE.WRITE_GURU~q\;
\init|ALT_INV_STATE.ZERO~q\ <= NOT \init|STATE.ZERO~q\;
\ALT_INV_ctrl_2_dp~9_combout\ <= NOT \ctrl_2_dp~9_combout\;
\ALT_INV_ctrl_2_dp~8_combout\ <= NOT \ctrl_2_dp~8_combout\;
\guru|ALT_INV_STATE.WRITE_RAND~q\ <= NOT \guru|STATE.WRITE_RAND~q\;
\ALT_INV_ctrl_2_dp~6_combout\ <= NOT \ctrl_2_dp~6_combout\;
\init|ALT_INV_STATE.IDLE~q\ <= NOT \init|STATE.IDLE~q\;
\init|ALT_INV_STATE.DONE~q\ <= NOT \init|STATE.DONE~q\;
\guru|ALT_INV_STATE.INCR~q\ <= NOT \guru|STATE.INCR~q\;
\guru|ALT_INV_STATE.RAND~q\ <= NOT \guru|STATE.RAND~q\;
\ALT_INV_ctrl_2_dp~2_combout\ <= NOT \ctrl_2_dp~2_combout\;
\guru|ALT_INV_STATE.LAST~q\ <= NOT \guru|STATE.LAST~q\;
\guru|ALT_INV_STATE.START_WALKING~q\ <= NOT \guru|STATE.START_WALKING~q\;
\main|ALT_INV_STATE.INIT_ACTIVATION~q\ <= NOT \main|STATE.INIT_ACTIVATION~q\;
\guru|ALT_INV_STATE.WRITE_DUO~q\ <= NOT \guru|STATE.WRITE_DUO~q\;
\main|ALT_INV_STATE.STEP_ACTIVATION~q\ <= NOT \main|STATE.STEP_ACTIVATION~q\;
\cnt_prep|ALT_INV_Add0~125_sumout\ <= NOT \cnt_prep|Add0~125_sumout\;
\cnt_prep|ALT_INV_Add0~121_sumout\ <= NOT \cnt_prep|Add0~121_sumout\;
\cnt_prep|ALT_INV_Add0~117_sumout\ <= NOT \cnt_prep|Add0~117_sumout\;
\cnt_prep|ALT_INV_Add0~113_sumout\ <= NOT \cnt_prep|Add0~113_sumout\;
\cnt_prep|ALT_INV_Add0~109_sumout\ <= NOT \cnt_prep|Add0~109_sumout\;
\cnt_prep|ALT_INV_Add0~105_sumout\ <= NOT \cnt_prep|Add0~105_sumout\;
\cnt_prep|ALT_INV_Add0~101_sumout\ <= NOT \cnt_prep|Add0~101_sumout\;
\cnt_prep|ALT_INV_Add0~97_sumout\ <= NOT \cnt_prep|Add0~97_sumout\;
\cnt_prep|ALT_INV_Add0~93_sumout\ <= NOT \cnt_prep|Add0~93_sumout\;
\cnt_prep|ALT_INV_Add0~89_sumout\ <= NOT \cnt_prep|Add0~89_sumout\;
\cnt_prep|ALT_INV_Add0~81_sumout\ <= NOT \cnt_prep|Add0~81_sumout\;
\cnt_prep|ALT_INV_Add0~77_sumout\ <= NOT \cnt_prep|Add0~77_sumout\;
\cnt_prep|ALT_INV_Add0~73_sumout\ <= NOT \cnt_prep|Add0~73_sumout\;
\cnt_prep|ALT_INV_Add0~69_sumout\ <= NOT \cnt_prep|Add0~69_sumout\;
\cnt_prep|ALT_INV_Add0~65_sumout\ <= NOT \cnt_prep|Add0~65_sumout\;
\cnt_prep|ALT_INV_Add0~61_sumout\ <= NOT \cnt_prep|Add0~61_sumout\;
\cnt_prep|ALT_INV_Add0~57_sumout\ <= NOT \cnt_prep|Add0~57_sumout\;
\cnt_prep|ALT_INV_Add0~53_sumout\ <= NOT \cnt_prep|Add0~53_sumout\;
\cnt_prep|ALT_INV_Add0~49_sumout\ <= NOT \cnt_prep|Add0~49_sumout\;
\cnt_prep|ALT_INV_Add0~45_sumout\ <= NOT \cnt_prep|Add0~45_sumout\;
\cnt_prep|ALT_INV_Add0~41_sumout\ <= NOT \cnt_prep|Add0~41_sumout\;
\cnt_prep|ALT_INV_Add0~37_sumout\ <= NOT \cnt_prep|Add0~37_sumout\;
\cnt_prep|ALT_INV_Add0~33_sumout\ <= NOT \cnt_prep|Add0~33_sumout\;
\cnt_prep|ALT_INV_Add0~29_sumout\ <= NOT \cnt_prep|Add0~29_sumout\;
\cnt_prep|ALT_INV_Add0~25_sumout\ <= NOT \cnt_prep|Add0~25_sumout\;
\cnt_prep|ALT_INV_Add0~21_sumout\ <= NOT \cnt_prep|Add0~21_sumout\;
\cnt_prep|ALT_INV_Add0~17_sumout\ <= NOT \cnt_prep|Add0~17_sumout\;
\cnt_prep|ALT_INV_Add0~13_sumout\ <= NOT \cnt_prep|Add0~13_sumout\;
\cnt_prep|ALT_INV_Add0~9_sumout\ <= NOT \cnt_prep|Add0~9_sumout\;
\cnt_prep|ALT_INV_Add0~5_sumout\ <= NOT \cnt_prep|Add0~5_sumout\;
\cnt_prep|ALT_INV_STATE~q\ <= NOT \cnt_prep|STATE~q\;
\cnt_prep|ALT_INV_Add0~1_sumout\ <= NOT \cnt_prep|Add0~1_sumout\;
\cnt_strat|ALT_INV_Add0~125_sumout\ <= NOT \cnt_strat|Add0~125_sumout\;
\cnt_strat|ALT_INV_Add0~121_sumout\ <= NOT \cnt_strat|Add0~121_sumout\;
\cnt_strat|ALT_INV_Add0~117_sumout\ <= NOT \cnt_strat|Add0~117_sumout\;
\cnt_strat|ALT_INV_Add0~113_sumout\ <= NOT \cnt_strat|Add0~113_sumout\;
\cnt_strat|ALT_INV_Add0~109_sumout\ <= NOT \cnt_strat|Add0~109_sumout\;
\cnt_strat|ALT_INV_Add0~105_sumout\ <= NOT \cnt_strat|Add0~105_sumout\;
\cnt_strat|ALT_INV_Add0~101_sumout\ <= NOT \cnt_strat|Add0~101_sumout\;
\cnt_strat|ALT_INV_Add0~93_sumout\ <= NOT \cnt_strat|Add0~93_sumout\;
\cnt_strat|ALT_INV_Add0~89_sumout\ <= NOT \cnt_strat|Add0~89_sumout\;
\cnt_strat|ALT_INV_Add0~85_sumout\ <= NOT \cnt_strat|Add0~85_sumout\;
\cnt_strat|ALT_INV_Add0~81_sumout\ <= NOT \cnt_strat|Add0~81_sumout\;
\cnt_strat|ALT_INV_Add0~77_sumout\ <= NOT \cnt_strat|Add0~77_sumout\;
\cnt_strat|ALT_INV_Add0~73_sumout\ <= NOT \cnt_strat|Add0~73_sumout\;
\cnt_strat|ALT_INV_Add0~69_sumout\ <= NOT \cnt_strat|Add0~69_sumout\;
\cnt_strat|ALT_INV_Add0~65_sumout\ <= NOT \cnt_strat|Add0~65_sumout\;
\cnt_strat|ALT_INV_Add0~61_sumout\ <= NOT \cnt_strat|Add0~61_sumout\;
\cnt_strat|ALT_INV_Add0~57_sumout\ <= NOT \cnt_strat|Add0~57_sumout\;
\cnt_strat|ALT_INV_Add0~53_sumout\ <= NOT \cnt_strat|Add0~53_sumout\;
\cnt_strat|ALT_INV_Add0~49_sumout\ <= NOT \cnt_strat|Add0~49_sumout\;
\cnt_strat|ALT_INV_Add0~45_sumout\ <= NOT \cnt_strat|Add0~45_sumout\;
\cnt_strat|ALT_INV_Add0~41_sumout\ <= NOT \cnt_strat|Add0~41_sumout\;
\cnt_strat|ALT_INV_Add0~37_sumout\ <= NOT \cnt_strat|Add0~37_sumout\;
\cnt_strat|ALT_INV_Add0~33_sumout\ <= NOT \cnt_strat|Add0~33_sumout\;
\cnt_strat|ALT_INV_Add0~29_sumout\ <= NOT \cnt_strat|Add0~29_sumout\;
\cnt_strat|ALT_INV_Add0~25_sumout\ <= NOT \cnt_strat|Add0~25_sumout\;
\cnt_strat|ALT_INV_Add0~21_sumout\ <= NOT \cnt_strat|Add0~21_sumout\;
\cnt_strat|ALT_INV_Add0~17_sumout\ <= NOT \cnt_strat|Add0~17_sumout\;
\cnt_strat|ALT_INV_Add0~13_sumout\ <= NOT \cnt_strat|Add0~13_sumout\;
\cnt_strat|ALT_INV_Add0~9_sumout\ <= NOT \cnt_strat|Add0~9_sumout\;
\cnt_strat|ALT_INV_Add0~5_sumout\ <= NOT \cnt_strat|Add0~5_sumout\;
\cnt_strat|ALT_INV_STATE~q\ <= NOT \cnt_strat|STATE~q\;
\cnt_strat|ALT_INV_Add0~1_sumout\ <= NOT \cnt_strat|Add0~1_sumout\;
\guru|ALT_INV_STATE.CHECK_LAST~q\ <= NOT \guru|STATE.CHECK_LAST~q\;
\cnt_prep|ALT_INV_cnt_s\(8) <= NOT \cnt_prep|cnt_s\(8);
\cnt_prep|ALT_INV_cnt_s\(9) <= NOT \cnt_prep|cnt_s\(9);
\cnt_prep|ALT_INV_cnt_s\(10) <= NOT \cnt_prep|cnt_s\(10);
\cnt_prep|ALT_INV_cnt_s\(11) <= NOT \cnt_prep|cnt_s\(11);
\cnt_prep|ALT_INV_cnt_s\(12) <= NOT \cnt_prep|cnt_s\(12);
\cnt_prep|ALT_INV_cnt_s\(13) <= NOT \cnt_prep|cnt_s\(13);
\cnt_prep|ALT_INV_cnt_s\(14) <= NOT \cnt_prep|cnt_s\(14);
\cnt_prep|ALT_INV_cnt_s\(15) <= NOT \cnt_prep|cnt_s\(15);
\cnt_prep|ALT_INV_cnt_s\(16) <= NOT \cnt_prep|cnt_s\(16);
\cnt_prep|ALT_INV_cnt_s\(17) <= NOT \cnt_prep|cnt_s\(17);
\cnt_prep|ALT_INV_cnt_s\(0) <= NOT \cnt_prep|cnt_s\(0);
\cnt_prep|ALT_INV_cnt_s\(18) <= NOT \cnt_prep|cnt_s\(18);
\cnt_prep|ALT_INV_cnt_s\(3) <= NOT \cnt_prep|cnt_s\(3);
\cnt_prep|ALT_INV_cnt_s\(4) <= NOT \cnt_prep|cnt_s\(4);
\cnt_prep|ALT_INV_cnt_s\(5) <= NOT \cnt_prep|cnt_s\(5);
\cnt_prep|ALT_INV_cnt_s\(6) <= NOT \cnt_prep|cnt_s\(6);
\cnt_prep|ALT_INV_cnt_s\(7) <= NOT \cnt_prep|cnt_s\(7);
\cnt_prep|ALT_INV_cnt_s\(1) <= NOT \cnt_prep|cnt_s\(1);
\cnt_prep|ALT_INV_cnt_s\(27) <= NOT \cnt_prep|cnt_s\(27);
\cnt_prep|ALT_INV_cnt_s\(28) <= NOT \cnt_prep|cnt_s\(28);
\cnt_prep|ALT_INV_cnt_s\(29) <= NOT \cnt_prep|cnt_s\(29);
\cnt_prep|ALT_INV_cnt_s\(30) <= NOT \cnt_prep|cnt_s\(30);
\cnt_prep|ALT_INV_cnt_s\(31) <= NOT \cnt_prep|cnt_s\(31);
\cnt_prep|ALT_INV_cnt_s\(2) <= NOT \cnt_prep|cnt_s\(2);
\cnt_prep|ALT_INV_cnt_s\(21) <= NOT \cnt_prep|cnt_s\(21);
\cnt_prep|ALT_INV_cnt_s\(22) <= NOT \cnt_prep|cnt_s\(22);
\cnt_prep|ALT_INV_cnt_s\(23) <= NOT \cnt_prep|cnt_s\(23);
\cnt_prep|ALT_INV_cnt_s\(24) <= NOT \cnt_prep|cnt_s\(24);
\cnt_prep|ALT_INV_cnt_s\(25) <= NOT \cnt_prep|cnt_s\(25);
\cnt_prep|ALT_INV_cnt_s\(26) <= NOT \cnt_prep|cnt_s\(26);
\cnt_prep|ALT_INV_cnt_s\(19) <= NOT \cnt_prep|cnt_s\(19);
\cnt_prep|ALT_INV_cnt_s\(20) <= NOT \cnt_prep|cnt_s\(20);
\main|ALT_INV_STATE.CNT_PREPARE~q\ <= NOT \main|STATE.CNT_PREPARE~q\;
\cnt_strat|ALT_INV_cnt_s\(25) <= NOT \cnt_strat|cnt_s\(25);
\cnt_strat|ALT_INV_cnt_s\(24) <= NOT \cnt_strat|cnt_s\(24);
\cnt_strat|ALT_INV_cnt_s\(23) <= NOT \cnt_strat|cnt_s\(23);
\cnt_strat|ALT_INV_cnt_s\(22) <= NOT \cnt_strat|cnt_s\(22);
\cnt_strat|ALT_INV_cnt_s\(20) <= NOT \cnt_strat|cnt_s\(20);
\cnt_strat|ALT_INV_cnt_s\(19) <= NOT \cnt_strat|cnt_s\(19);
\cnt_strat|ALT_INV_cnt_s\(18) <= NOT \cnt_strat|cnt_s\(18);
\cnt_strat|ALT_INV_cnt_s\(0) <= NOT \cnt_strat|cnt_s\(0);
\cnt_strat|ALT_INV_cnt_s\(1) <= NOT \cnt_strat|cnt_s\(1);
\cnt_strat|ALT_INV_cnt_s\(2) <= NOT \cnt_strat|cnt_s\(2);
\cnt_strat|ALT_INV_cnt_s\(3) <= NOT \cnt_strat|cnt_s\(3);
\cnt_strat|ALT_INV_cnt_s\(4) <= NOT \cnt_strat|cnt_s\(4);
\cnt_strat|ALT_INV_cnt_s\(31) <= NOT \cnt_strat|cnt_s\(31);
\cnt_strat|ALT_INV_cnt_s\(30) <= NOT \cnt_strat|cnt_s\(30);
\cnt_strat|ALT_INV_cnt_s\(29) <= NOT \cnt_strat|cnt_s\(29);
\cnt_strat|ALT_INV_cnt_s\(28) <= NOT \cnt_strat|cnt_s\(28);
\cnt_strat|ALT_INV_cnt_s\(27) <= NOT \cnt_strat|cnt_s\(27);
\cnt_strat|ALT_INV_cnt_s\(26) <= NOT \cnt_strat|cnt_s\(26);
\cnt_strat|ALT_INV_cnt_s\(13) <= NOT \cnt_strat|cnt_s\(13);
\cnt_strat|ALT_INV_cnt_s\(14) <= NOT \cnt_strat|cnt_s\(14);
\cnt_strat|ALT_INV_cnt_s\(15) <= NOT \cnt_strat|cnt_s\(15);
\cnt_strat|ALT_INV_cnt_s\(16) <= NOT \cnt_strat|cnt_s\(16);
\cnt_strat|ALT_INV_cnt_s\(17) <= NOT \cnt_strat|cnt_s\(17);
\cnt_strat|ALT_INV_cnt_s\(21) <= NOT \cnt_strat|cnt_s\(21);
\cnt_strat|ALT_INV_cnt_s\(7) <= NOT \cnt_strat|cnt_s\(7);
\cnt_strat|ALT_INV_cnt_s\(8) <= NOT \cnt_strat|cnt_s\(8);
\cnt_strat|ALT_INV_cnt_s\(9) <= NOT \cnt_strat|cnt_s\(9);
\cnt_strat|ALT_INV_cnt_s\(10) <= NOT \cnt_strat|cnt_s\(10);
\cnt_strat|ALT_INV_cnt_s\(11) <= NOT \cnt_strat|cnt_s\(11);
\cnt_strat|ALT_INV_cnt_s\(12) <= NOT \cnt_strat|cnt_s\(12);
\cnt_strat|ALT_INV_cnt_s\(5) <= NOT \cnt_strat|cnt_s\(5);
\cnt_strat|ALT_INV_cnt_s\(6) <= NOT \cnt_strat|cnt_s\(6);
\main|ALT_INV_STATE.CNT_START~q\ <= NOT \main|STATE.CNT_START~q\;
\guru|ALT_INV_STATE.WAIT_COUNT_GURU~q\ <= NOT \guru|STATE.WAIT_COUNT_GURU~q\;
\init|ALT_INV_STATE.MEM_WALK~q\ <= NOT \init|STATE.MEM_WALK~q\;
\guru|ALT_INV_STATE.CLEAR_PREV~q\ <= NOT \guru|STATE.CLEAR_PREV~q\;
\main|ALT_INV_STATE.CHECK_END~q\ <= NOT \main|STATE.CHECK_END~q\;

-- Location: IOOBUF_X72_Y0_N2
\en_cnt_step~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \main|STATE.CHECK_END~q\,
	devoe => ww_devoe,
	o => ww_en_cnt_step);

-- Location: IOOBUF_X76_Y0_N19
\start_step~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \main|STATE.STEP_ACTIVATION~q\,
	devoe => ww_devoe,
	o => ww_start_step);

-- Location: IOOBUF_X66_Y0_N76
\ctrl_2_dp.cg_sel.DUO~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrl_2_dp~0_combout\,
	devoe => ww_devoe,
	o => \ww_ctrl_2_dp.cg_sel.DUO\);

-- Location: IOOBUF_X62_Y0_N53
\ctrl_2_dp.cg_sel.DISC~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_ctrl_2_dp.cg_sel.DISC\);

-- Location: IOOBUF_X68_Y0_N2
\ctrl_2_dp.cg_sel.GURU~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrl_2_dp~1_combout\,
	devoe => ww_devoe,
	o => \ww_ctrl_2_dp.cg_sel.GURU\);

-- Location: IOOBUF_X74_Y0_N59
\ctrl_2_dp.cg_sel.BLANK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ctrl_2_dp~2_combout\,
	devoe => ww_devoe,
	o => \ww_ctrl_2_dp.cg_sel.BLANK\);

-- Location: IOOBUF_X84_Y0_N19
\ctrl_2_dp.rb_out_sel.DISC_PREV_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_ctrl_2_dp.rb_out_sel.DISC_PREV_OUT\);

-- Location: IOOBUF_X16_Y0_N2
\ctrl_2_dp.rb_out_sel.DISC_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_ctrl_2_dp.rb_out_sel.DISC_OUT\);

-- Location: IOOBUF_X76_Y0_N36
\ctrl_2_dp.rb_out_sel.GURU_PREV_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrl_2_dp~3_combout\,
	devoe => ww_devoe,
	o => \ww_ctrl_2_dp.rb_out_sel.GURU_PREV_OUT\);

-- Location: IOOBUF_X66_Y0_N59
\ctrl_2_dp.rb_out_sel.GURU_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrl_2_dp~4_combout\,
	devoe => ww_devoe,
	o => \ww_ctrl_2_dp.rb_out_sel.GURU_OUT\);

-- Location: IOOBUF_X74_Y0_N76
\ctrl_2_dp.rb_out_sel.INIT_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	devoe => ww_devoe,
	o => \ww_ctrl_2_dp.rb_out_sel.INIT_OUT\);

-- Location: IOOBUF_X78_Y0_N19
\ctrl_2_dp.rb_PRE_GURU_en~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrl_2_dp~5_combout\,
	devoe => ww_devoe,
	o => \ww_ctrl_2_dp.rb_PRE_GURU_en\);

-- Location: IOOBUF_X78_Y0_N2
\ctrl_2_dp.rb_GURU_en~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrl_2_dp~5_combout\,
	devoe => ww_devoe,
	o => \ww_ctrl_2_dp.rb_GURU_en\);

-- Location: IOOBUF_X70_Y0_N19
\ctrl_2_dp.rb_INIT_en~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ctrl_2_dp~6_combout\,
	devoe => ww_devoe,
	o => \ww_ctrl_2_dp.rb_INIT_en\);

-- Location: IOOBUF_X70_Y0_N36
\ctrl_2_dp.alu_ctrl~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrl_2_dp~7_combout\,
	devoe => ww_devoe,
	o => \ww_ctrl_2_dp.alu_ctrl\);

-- Location: IOOBUF_X70_Y0_N53
\ctrl_2_dp.ng_rand_zero~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrl_2_dp~8_combout\,
	devoe => ww_devoe,
	o => \ww_ctrl_2_dp.ng_rand_zero\);

-- Location: IOOBUF_X66_Y0_N93
\ctrl_2_dp.ng_cte_incr~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrl_2_dp~10_combout\,
	devoe => ww_devoe,
	o => \ww_ctrl_2_dp.ng_cte_incr\);

-- Location: IOOBUF_X66_Y0_N42
\ctrl_2_mem.cg_sel.DUO~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrl_2_dp~0_combout\,
	devoe => ww_devoe,
	o => \ww_ctrl_2_mem.cg_sel.DUO\);

-- Location: IOOBUF_X10_Y0_N59
\ctrl_2_mem.cg_sel.DISC~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_ctrl_2_mem.cg_sel.DISC\);

-- Location: IOOBUF_X68_Y0_N36
\ctrl_2_mem.cg_sel.GURU~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrl_2_dp~1_combout\,
	devoe => ww_devoe,
	o => \ww_ctrl_2_mem.cg_sel.GURU\);

-- Location: IOOBUF_X74_Y0_N42
\ctrl_2_mem.cg_sel.BLANK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ctrl_2_dp~2_combout\,
	devoe => ww_devoe,
	o => \ww_ctrl_2_mem.cg_sel.BLANK\);

-- Location: IOOBUF_X62_Y0_N2
\ctrl_2_mem.data_a[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_ctrl_2_mem.data_a\(0));

-- Location: IOOBUF_X60_Y0_N53
\ctrl_2_mem.data_a[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_ctrl_2_mem.data_a\(1));

-- Location: IOOBUF_X40_Y0_N2
\ctrl_2_mem.data_a[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_ctrl_2_mem.data_a\(2));

-- Location: IOOBUF_X84_Y0_N2
\ctrl_2_mem.data_a[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_ctrl_2_mem.data_a\(3));

-- Location: IOOBUF_X22_Y0_N53
\ctrl_2_mem.data_a[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_ctrl_2_mem.data_a\(4));

-- Location: IOOBUF_X80_Y0_N36
\ctrl_2_mem.data_a[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_ctrl_2_mem.data_a\(5));

-- Location: IOOBUF_X18_Y0_N76
\ctrl_2_mem.data_a[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_ctrl_2_mem.data_a\(6));

-- Location: IOOBUF_X89_Y8_N56
\ctrl_2_mem.data_a[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_ctrl_2_mem.data_a\(7));

-- Location: IOOBUF_X70_Y0_N2
\ctrl_2_mem.mem_wr_en~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrl_2_mem~0_combout\,
	devoe => ww_devoe,
	o => \ww_ctrl_2_mem.mem_wr_en\);

-- Location: IOOBUF_X89_Y20_N62
\ctrl_2_mem.mem_a_addr[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_ctrl_2_mem.mem_a_addr\(0));

-- Location: IOOBUF_X10_Y0_N93
\ctrl_2_mem.mem_a_addr[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_ctrl_2_mem.mem_a_addr\(1));

-- Location: IOOBUF_X20_Y81_N19
\ctrl_2_mem.mem_a_addr[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_ctrl_2_mem.mem_a_addr\(2));

-- Location: IOOBUF_X88_Y0_N20
\ctrl_2_mem.mem_a_addr[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_ctrl_2_mem.mem_a_addr\(3));

-- Location: IOOBUF_X34_Y0_N42
\ctrl_2_mem.mem_a_addr[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_ctrl_2_mem.mem_a_addr\(4));

-- Location: IOOBUF_X52_Y0_N53
\ctrl_2_mem.mem_a_addr[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_ctrl_2_mem.mem_a_addr\(5));

-- Location: IOIBUF_X89_Y25_N21
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X74_Y0_N92
\dp_2_ctrl.end_of_guru~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_dp_2_ctrl.end_of_guru\,
	o => \dp_2_ctrl.end_of_guru~input_o\);

-- Location: IOIBUF_X72_Y0_N52
\disc_2_base.end_of_disc~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_disc_2_base.end_of_disc\,
	o => \disc_2_base.end_of_disc~input_o\);

-- Location: IOIBUF_X68_Y0_N52
\res~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_res,
	o => \res~input_o\);

-- Location: IOIBUF_X72_Y0_N35
\ref_2_base.duo_formed~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_ref_2_base.duo_formed\,
	o => \ref_2_base.duo_formed~input_o\);

-- Location: IOIBUF_X89_Y4_N95
\en_disc~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en_disc,
	o => \en_disc~input_o\);

-- Location: LABCELL_X71_Y4_N24
\main|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \main|Selector1~0_combout\ = ( \en_disc~input_o\ & ( \main|STATE.CHECK_END~q\ & ( (\dp_2_ctrl.end_of_guru~input_o\ & (!\ref_2_base.duo_formed~input_o\ & \disc_2_base.end_of_disc~input_o\)) ) ) ) # ( !\en_disc~input_o\ & ( \main|STATE.CHECK_END~q\ & ( 
-- (\dp_2_ctrl.end_of_guru~input_o\ & !\ref_2_base.duo_formed~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dp_2_ctrl.end_of_guru~input_o\,
	datab => \ALT_INV_ref_2_base.duo_formed~input_o\,
	datac => \ALT_INV_disc_2_base.end_of_disc~input_o\,
	datae => \ALT_INV_en_disc~input_o\,
	dataf => \main|ALT_INV_STATE.CHECK_END~q\,
	combout => \main|Selector1~0_combout\);

-- Location: LABCELL_X71_Y4_N54
\main|STATE~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \main|STATE~10_combout\ = ( \en_disc~input_o\ & ( \main|STATE.CHECK_END~q\ & ( (\dp_2_ctrl.end_of_guru~input_o\ & (\ref_2_base.duo_formed~input_o\ & (\disc_2_base.end_of_disc~input_o\ & !\res~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dp_2_ctrl.end_of_guru~input_o\,
	datab => \ALT_INV_ref_2_base.duo_formed~input_o\,
	datac => \ALT_INV_disc_2_base.end_of_disc~input_o\,
	datad => \ALT_INV_res~input_o\,
	datae => \ALT_INV_en_disc~input_o\,
	dataf => \main|ALT_INV_STATE.CHECK_END~q\,
	combout => \main|STATE~10_combout\);

-- Location: FF_X71_Y4_N55
\main|STATE.HIT_POINT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \main|STATE~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main|STATE.HIT_POINT~q\);

-- Location: IOIBUF_X72_Y0_N18
\dp_2_ctrl.ovf_of_y~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_dp_2_ctrl.ovf_of_y\,
	o => \dp_2_ctrl.ovf_of_y~input_o\);

-- Location: LABCELL_X70_Y4_N36
\init|STATE~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \init|STATE~7_combout\ = ( !\init|STATE.DONE~q\ & ( (!\res~input_o\ & ((!\main|STATE.INIT_ACTIVATION~q\) # (\init|STATE.IDLE~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011110000110000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	datac => \ALT_INV_res~input_o\,
	datad => \init|ALT_INV_STATE.IDLE~q\,
	dataf => \init|ALT_INV_STATE.DONE~q\,
	combout => \init|STATE~7_combout\);

-- Location: FF_X70_Y4_N38
\init|STATE.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \init|STATE~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init|STATE.IDLE~q\);

-- Location: LABCELL_X70_Y4_N48
\init|STATE~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \init|STATE~8_combout\ = (!\main|STATE.INIT_ACTIVATION~q\ & (!\res~input_o\ & !\init|STATE.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	datac => \ALT_INV_res~input_o\,
	datad => \init|ALT_INV_STATE.IDLE~q\,
	combout => \init|STATE~8_combout\);

-- Location: FF_X70_Y4_N50
\init|STATE.ZERO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \init|STATE~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init|STATE.ZERO~q\);

-- Location: LABCELL_X70_Y4_N0
\init|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \init|Selector1~0_combout\ = ( \init|STATE.ZERO~q\ ) # ( !\init|STATE.ZERO~q\ & ( (!\dp_2_ctrl.ovf_of_y~input_o\ & \init|STATE.MEM_WALK~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_dp_2_ctrl.ovf_of_y~input_o\,
	datad => \init|ALT_INV_STATE.MEM_WALK~q\,
	dataf => \init|ALT_INV_STATE.ZERO~q\,
	combout => \init|Selector1~0_combout\);

-- Location: FF_X70_Y4_N2
\init|STATE.MEM_WALK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \init|Selector1~0_combout\,
	sclr => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init|STATE.MEM_WALK~q\);

-- Location: LABCELL_X70_Y4_N3
\init|STATE~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \init|STATE~6_combout\ = ( !\res~input_o\ & ( (\dp_2_ctrl.ovf_of_y~input_o\ & \init|STATE.MEM_WALK~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_dp_2_ctrl.ovf_of_y~input_o\,
	datad => \init|ALT_INV_STATE.MEM_WALK~q\,
	dataf => \ALT_INV_res~input_o\,
	combout => \init|STATE~6_combout\);

-- Location: FF_X70_Y4_N5
\init|STATE.DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \init|STATE~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init|STATE.DONE~q\);

-- Location: LABCELL_X74_Y4_N30
\main|STATE~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \main|STATE~9_combout\ = ( \main|STATE.INIT_ACTIVATION~q\ & ( \init|STATE.DONE~q\ & ( !\res~input_o\ ) ) ) # ( !\main|STATE.INIT_ACTIVATION~q\ & ( \init|STATE.DONE~q\ & ( !\res~input_o\ ) ) ) # ( \main|STATE.INIT_ACTIVATION~q\ & ( !\init|STATE.DONE~q\ & ( 
-- !\res~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_res~input_o\,
	datae => \main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	dataf => \init|ALT_INV_STATE.DONE~q\,
	combout => \main|STATE~9_combout\);

-- Location: FF_X74_Y4_N32
\main|STATE.INIT_ACTIVATION\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \main|STATE~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main|STATE.INIT_ACTIVATION~q\);

-- Location: LABCELL_X73_Y3_N42
\cnt_prep|NEXT_STATE~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|NEXT_STATE~0_combout\ = ( \cnt_prep|Equal0~6_combout\ & ( (\main|STATE.CNT_PREPARE~q\ & !\cnt_prep|STATE~q\) ) ) # ( !\cnt_prep|Equal0~6_combout\ & ( (\cnt_prep|STATE~q\) # (\main|STATE.CNT_PREPARE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111100110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \main|ALT_INV_STATE.CNT_PREPARE~q\,
	datad => \cnt_prep|ALT_INV_STATE~q\,
	dataf => \cnt_prep|ALT_INV_Equal0~6_combout\,
	combout => \cnt_prep|NEXT_STATE~0_combout\);

-- Location: FF_X73_Y3_N44
\cnt_prep|STATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_prep|NEXT_STATE~0_combout\,
	sclr => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_prep|STATE~q\);

-- Location: LABCELL_X71_Y4_N12
\cnt_prep|cnt_s[0]_NEW60\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|cnt_s[0]_OTERM61\ = ( !\cnt_prep|Equal0~6_combout\ & ( (\cnt_prep|STATE~q\ & !\cnt_prep|cnt_s\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cnt_prep|ALT_INV_STATE~q\,
	datad => \cnt_prep|ALT_INV_cnt_s\(0),
	dataf => \cnt_prep|ALT_INV_Equal0~6_combout\,
	combout => \cnt_prep|cnt_s[0]_OTERM61\);

-- Location: FF_X71_Y4_N13
\cnt_prep|cnt_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_prep|cnt_s[0]_OTERM61\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_prep|cnt_s\(0));

-- Location: MLABCELL_X72_Y4_N0
\cnt_prep|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|Add0~86\ = CARRY(( \cnt_prep|cnt_s\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt_prep|ALT_INV_cnt_s\(0),
	cin => GND,
	cout => \cnt_prep|Add0~86\);

-- Location: MLABCELL_X72_Y4_N3
\cnt_prep|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|Add0~57_sumout\ = SUM(( \cnt_prep|cnt_s\(1) ) + ( GND ) + ( \cnt_prep|Add0~86\ ))
-- \cnt_prep|Add0~58\ = CARRY(( \cnt_prep|cnt_s\(1) ) + ( GND ) + ( \cnt_prep|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cnt_prep|ALT_INV_cnt_s\(1),
	cin => \cnt_prep|Add0~86\,
	sumout => \cnt_prep|Add0~57_sumout\,
	cout => \cnt_prep|Add0~58\);

-- Location: LABCELL_X73_Y3_N27
\cnt_prep|cnt_s[18]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|cnt_s[18]~0_combout\ = ( \cnt_prep|STATE~q\ & ( \cnt_prep|Equal0~6_combout\ ) ) # ( !\cnt_prep|STATE~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_prep|ALT_INV_Equal0~6_combout\,
	dataf => \cnt_prep|ALT_INV_STATE~q\,
	combout => \cnt_prep|cnt_s[18]~0_combout\);

-- Location: LABCELL_X73_Y4_N24
\cnt_prep|cnt_s[1]_NEW38\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|cnt_s[1]_OTERM39\ = ( !\cnt_prep|cnt_s[18]~0_combout\ & ( \cnt_prep|Add0~57_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cnt_prep|ALT_INV_Add0~57_sumout\,
	dataf => \cnt_prep|ALT_INV_cnt_s[18]~0_combout\,
	combout => \cnt_prep|cnt_s[1]_OTERM39\);

-- Location: FF_X73_Y4_N26
\cnt_prep|cnt_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_prep|cnt_s[1]_OTERM39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_prep|cnt_s\(1));

-- Location: MLABCELL_X72_Y4_N6
\cnt_prep|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|Add0~33_sumout\ = SUM(( \cnt_prep|cnt_s\(2) ) + ( GND ) + ( \cnt_prep|Add0~58\ ))
-- \cnt_prep|Add0~34\ = CARRY(( \cnt_prep|cnt_s\(2) ) + ( GND ) + ( \cnt_prep|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt_prep|ALT_INV_cnt_s\(2),
	cin => \cnt_prep|Add0~58\,
	sumout => \cnt_prep|Add0~33_sumout\,
	cout => \cnt_prep|Add0~34\);

-- Location: LABCELL_X73_Y4_N42
\cnt_prep|cnt_s[2]_NEW26\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|cnt_s[2]_OTERM27\ = ( \cnt_prep|Add0~33_sumout\ & ( !\cnt_prep|cnt_s[18]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \cnt_prep|ALT_INV_Add0~33_sumout\,
	dataf => \cnt_prep|ALT_INV_cnt_s[18]~0_combout\,
	combout => \cnt_prep|cnt_s[2]_OTERM27\);

-- Location: FF_X73_Y4_N44
\cnt_prep|cnt_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_prep|cnt_s[2]_OTERM27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_prep|cnt_s\(2));

-- Location: MLABCELL_X72_Y4_N9
\cnt_prep|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|Add0~77_sumout\ = SUM(( \cnt_prep|cnt_s\(3) ) + ( GND ) + ( \cnt_prep|Add0~34\ ))
-- \cnt_prep|Add0~78\ = CARRY(( \cnt_prep|cnt_s\(3) ) + ( GND ) + ( \cnt_prep|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt_prep|ALT_INV_cnt_s\(3),
	cin => \cnt_prep|Add0~34\,
	sumout => \cnt_prep|Add0~77_sumout\,
	cout => \cnt_prep|Add0~78\);

-- Location: LABCELL_X73_Y4_N57
\cnt_prep|cnt_s[3]_NEW28\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|cnt_s[3]_OTERM29\ = ( !\cnt_prep|cnt_s[18]~0_combout\ & ( \cnt_prep|Add0~77_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt_prep|ALT_INV_Add0~77_sumout\,
	dataf => \cnt_prep|ALT_INV_cnt_s[18]~0_combout\,
	combout => \cnt_prep|cnt_s[3]_OTERM29\);

-- Location: FF_X73_Y4_N59
\cnt_prep|cnt_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_prep|cnt_s[3]_OTERM29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_prep|cnt_s\(3));

-- Location: MLABCELL_X72_Y4_N12
\cnt_prep|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|Add0~73_sumout\ = SUM(( \cnt_prep|cnt_s\(4) ) + ( GND ) + ( \cnt_prep|Add0~78\ ))
-- \cnt_prep|Add0~74\ = CARRY(( \cnt_prep|cnt_s\(4) ) + ( GND ) + ( \cnt_prep|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt_prep|ALT_INV_cnt_s\(4),
	cin => \cnt_prep|Add0~78\,
	sumout => \cnt_prep|Add0~73_sumout\,
	cout => \cnt_prep|Add0~74\);

-- Location: LABCELL_X73_Y4_N6
\cnt_prep|cnt_s[4]_NEW30\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|cnt_s[4]_OTERM31\ = ( \cnt_prep|Add0~73_sumout\ & ( !\cnt_prep|cnt_s[18]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \cnt_prep|ALT_INV_Add0~73_sumout\,
	dataf => \cnt_prep|ALT_INV_cnt_s[18]~0_combout\,
	combout => \cnt_prep|cnt_s[4]_OTERM31\);

-- Location: FF_X73_Y4_N8
\cnt_prep|cnt_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_prep|cnt_s[4]_OTERM31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_prep|cnt_s\(4));

-- Location: MLABCELL_X72_Y4_N15
\cnt_prep|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|Add0~69_sumout\ = SUM(( \cnt_prep|cnt_s\(5) ) + ( GND ) + ( \cnt_prep|Add0~74\ ))
-- \cnt_prep|Add0~70\ = CARRY(( \cnt_prep|cnt_s\(5) ) + ( GND ) + ( \cnt_prep|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt_prep|ALT_INV_cnt_s\(5),
	cin => \cnt_prep|Add0~74\,
	sumout => \cnt_prep|Add0~69_sumout\,
	cout => \cnt_prep|Add0~70\);

-- Location: LABCELL_X73_Y4_N15
\cnt_prep|cnt_s[5]_NEW32\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|cnt_s[5]_OTERM33\ = ( \cnt_prep|Add0~69_sumout\ & ( !\cnt_prep|cnt_s[18]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \cnt_prep|ALT_INV_Add0~69_sumout\,
	dataf => \cnt_prep|ALT_INV_cnt_s[18]~0_combout\,
	combout => \cnt_prep|cnt_s[5]_OTERM33\);

-- Location: FF_X73_Y4_N17
\cnt_prep|cnt_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_prep|cnt_s[5]_OTERM33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_prep|cnt_s\(5));

-- Location: MLABCELL_X72_Y4_N18
\cnt_prep|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|Add0~65_sumout\ = SUM(( \cnt_prep|cnt_s\(6) ) + ( GND ) + ( \cnt_prep|Add0~70\ ))
-- \cnt_prep|Add0~66\ = CARRY(( \cnt_prep|cnt_s\(6) ) + ( GND ) + ( \cnt_prep|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt_prep|ALT_INV_cnt_s\(6),
	cin => \cnt_prep|Add0~70\,
	sumout => \cnt_prep|Add0~65_sumout\,
	cout => \cnt_prep|Add0~66\);

-- Location: LABCELL_X73_Y4_N36
\cnt_prep|cnt_s[6]_NEW34\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|cnt_s[6]_OTERM35\ = ( !\cnt_prep|cnt_s[18]~0_combout\ & ( \cnt_prep|Add0~65_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cnt_prep|ALT_INV_Add0~65_sumout\,
	dataf => \cnt_prep|ALT_INV_cnt_s[18]~0_combout\,
	combout => \cnt_prep|cnt_s[6]_OTERM35\);

-- Location: FF_X73_Y4_N38
\cnt_prep|cnt_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_prep|cnt_s[6]_OTERM35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_prep|cnt_s\(6));

-- Location: MLABCELL_X72_Y4_N21
\cnt_prep|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|Add0~61_sumout\ = SUM(( \cnt_prep|cnt_s\(7) ) + ( GND ) + ( \cnt_prep|Add0~66\ ))
-- \cnt_prep|Add0~62\ = CARRY(( \cnt_prep|cnt_s\(7) ) + ( GND ) + ( \cnt_prep|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt_prep|ALT_INV_cnt_s\(7),
	cin => \cnt_prep|Add0~66\,
	sumout => \cnt_prep|Add0~61_sumout\,
	cout => \cnt_prep|Add0~62\);

-- Location: LABCELL_X73_Y4_N3
\cnt_prep|cnt_s[7]_NEW36\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|cnt_s[7]_OTERM37\ = ( \cnt_prep|Add0~61_sumout\ & ( !\cnt_prep|cnt_s[18]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \cnt_prep|ALT_INV_Add0~61_sumout\,
	dataf => \cnt_prep|ALT_INV_cnt_s[18]~0_combout\,
	combout => \cnt_prep|cnt_s[7]_OTERM37\);

-- Location: FF_X73_Y4_N5
\cnt_prep|cnt_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_prep|cnt_s[7]_OTERM37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_prep|cnt_s\(7));

-- Location: LABCELL_X73_Y4_N30
\cnt_prep|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|Equal0~3_combout\ = ( \cnt_prep|cnt_s\(6) & ( \cnt_prep|cnt_s\(5) & ( (\cnt_prep|cnt_s\(7) & (!\cnt_prep|cnt_s\(3) & (!\cnt_prep|cnt_s\(1) & \cnt_prep|cnt_s\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_prep|ALT_INV_cnt_s\(7),
	datab => \cnt_prep|ALT_INV_cnt_s\(3),
	datac => \cnt_prep|ALT_INV_cnt_s\(1),
	datad => \cnt_prep|ALT_INV_cnt_s\(4),
	datae => \cnt_prep|ALT_INV_cnt_s\(6),
	dataf => \cnt_prep|ALT_INV_cnt_s\(5),
	combout => \cnt_prep|Equal0~3_combout\);

-- Location: FF_X72_Y3_N41
\cnt_prep|cnt_s[30]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_prep|cnt_s[30]_OTERM23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_prep|cnt_s[30]~DUPLICATE_q\);

-- Location: MLABCELL_X72_Y4_N24
\cnt_prep|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|Add0~125_sumout\ = SUM(( \cnt_prep|cnt_s\(8) ) + ( GND ) + ( \cnt_prep|Add0~62\ ))
-- \cnt_prep|Add0~126\ = CARRY(( \cnt_prep|cnt_s\(8) ) + ( GND ) + ( \cnt_prep|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt_prep|ALT_INV_cnt_s\(8),
	cin => \cnt_prep|Add0~62\,
	sumout => \cnt_prep|Add0~125_sumout\,
	cout => \cnt_prep|Add0~126\);

-- Location: LABCELL_X73_Y4_N21
\cnt_prep|cnt_s[8]_NEW40\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|cnt_s[8]_OTERM41\ = ( !\cnt_prep|cnt_s[18]~0_combout\ & ( \cnt_prep|Add0~125_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cnt_prep|ALT_INV_Add0~125_sumout\,
	dataf => \cnt_prep|ALT_INV_cnt_s[18]~0_combout\,
	combout => \cnt_prep|cnt_s[8]_OTERM41\);

-- Location: FF_X73_Y4_N23
\cnt_prep|cnt_s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_prep|cnt_s[8]_OTERM41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_prep|cnt_s\(8));

-- Location: MLABCELL_X72_Y4_N27
\cnt_prep|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|Add0~121_sumout\ = SUM(( \cnt_prep|cnt_s[9]~DUPLICATE_q\ ) + ( GND ) + ( \cnt_prep|Add0~126\ ))
-- \cnt_prep|Add0~122\ = CARRY(( \cnt_prep|cnt_s[9]~DUPLICATE_q\ ) + ( GND ) + ( \cnt_prep|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt_prep|ALT_INV_cnt_s[9]~DUPLICATE_q\,
	cin => \cnt_prep|Add0~126\,
	sumout => \cnt_prep|Add0~121_sumout\,
	cout => \cnt_prep|Add0~122\);

-- Location: LABCELL_X73_Y3_N6
\cnt_prep|cnt_s[9]_NEW42\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|cnt_s[9]_OTERM43\ = ( !\cnt_prep|cnt_s[18]~0_combout\ & ( \cnt_prep|Add0~121_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt_prep|ALT_INV_Add0~121_sumout\,
	dataf => \cnt_prep|ALT_INV_cnt_s[18]~0_combout\,
	combout => \cnt_prep|cnt_s[9]_OTERM43\);

-- Location: FF_X73_Y3_N7
\cnt_prep|cnt_s[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_prep|cnt_s[9]_OTERM43\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_prep|cnt_s[9]~DUPLICATE_q\);

-- Location: MLABCELL_X72_Y4_N30
\cnt_prep|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|Add0~117_sumout\ = SUM(( \cnt_prep|cnt_s\(10) ) + ( GND ) + ( \cnt_prep|Add0~122\ ))
-- \cnt_prep|Add0~118\ = CARRY(( \cnt_prep|cnt_s\(10) ) + ( GND ) + ( \cnt_prep|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt_prep|ALT_INV_cnt_s\(10),
	cin => \cnt_prep|Add0~122\,
	sumout => \cnt_prep|Add0~117_sumout\,
	cout => \cnt_prep|Add0~118\);

-- Location: LABCELL_X73_Y3_N45
\cnt_prep|cnt_s[10]_NEW44\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|cnt_s[10]_OTERM45\ = ( !\cnt_prep|cnt_s[18]~0_combout\ & ( \cnt_prep|Add0~117_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt_prep|ALT_INV_Add0~117_sumout\,
	dataf => \cnt_prep|ALT_INV_cnt_s[18]~0_combout\,
	combout => \cnt_prep|cnt_s[10]_OTERM45\);

-- Location: FF_X73_Y3_N46
\cnt_prep|cnt_s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_prep|cnt_s[10]_OTERM45\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_prep|cnt_s\(10));

-- Location: MLABCELL_X72_Y4_N33
\cnt_prep|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|Add0~113_sumout\ = SUM(( \cnt_prep|cnt_s\(11) ) + ( GND ) + ( \cnt_prep|Add0~118\ ))
-- \cnt_prep|Add0~114\ = CARRY(( \cnt_prep|cnt_s\(11) ) + ( GND ) + ( \cnt_prep|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt_prep|ALT_INV_cnt_s\(11),
	cin => \cnt_prep|Add0~118\,
	sumout => \cnt_prep|Add0~113_sumout\,
	cout => \cnt_prep|Add0~114\);

-- Location: LABCELL_X73_Y3_N54
\cnt_prep|cnt_s[11]_NEW46\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|cnt_s[11]_OTERM47\ = ( !\cnt_prep|cnt_s[18]~0_combout\ & ( \cnt_prep|Add0~113_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt_prep|ALT_INV_Add0~113_sumout\,
	dataf => \cnt_prep|ALT_INV_cnt_s[18]~0_combout\,
	combout => \cnt_prep|cnt_s[11]_OTERM47\);

-- Location: FF_X73_Y3_N56
\cnt_prep|cnt_s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_prep|cnt_s[11]_OTERM47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_prep|cnt_s\(11));

-- Location: MLABCELL_X72_Y4_N36
\cnt_prep|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|Add0~109_sumout\ = SUM(( \cnt_prep|cnt_s\(12) ) + ( GND ) + ( \cnt_prep|Add0~114\ ))
-- \cnt_prep|Add0~110\ = CARRY(( \cnt_prep|cnt_s\(12) ) + ( GND ) + ( \cnt_prep|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt_prep|ALT_INV_cnt_s\(12),
	cin => \cnt_prep|Add0~114\,
	sumout => \cnt_prep|Add0~109_sumout\,
	cout => \cnt_prep|Add0~110\);

-- Location: LABCELL_X73_Y3_N36
\cnt_prep|cnt_s[12]_NEW48\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|cnt_s[12]_OTERM49\ = ( !\cnt_prep|cnt_s[18]~0_combout\ & ( \cnt_prep|Add0~109_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cnt_prep|ALT_INV_Add0~109_sumout\,
	dataf => \cnt_prep|ALT_INV_cnt_s[18]~0_combout\,
	combout => \cnt_prep|cnt_s[12]_OTERM49\);

-- Location: FF_X73_Y3_N37
\cnt_prep|cnt_s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_prep|cnt_s[12]_OTERM49\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_prep|cnt_s\(12));

-- Location: MLABCELL_X72_Y4_N39
\cnt_prep|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|Add0~105_sumout\ = SUM(( \cnt_prep|cnt_s[13]~DUPLICATE_q\ ) + ( GND ) + ( \cnt_prep|Add0~110\ ))
-- \cnt_prep|Add0~106\ = CARRY(( \cnt_prep|cnt_s[13]~DUPLICATE_q\ ) + ( GND ) + ( \cnt_prep|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt_prep|ALT_INV_cnt_s[13]~DUPLICATE_q\,
	cin => \cnt_prep|Add0~110\,
	sumout => \cnt_prep|Add0~105_sumout\,
	cout => \cnt_prep|Add0~106\);

-- Location: LABCELL_X73_Y3_N3
\cnt_prep|cnt_s[13]_NEW50\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|cnt_s[13]_OTERM51\ = ( !\cnt_prep|cnt_s[18]~0_combout\ & ( \cnt_prep|Add0~105_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt_prep|ALT_INV_Add0~105_sumout\,
	dataf => \cnt_prep|ALT_INV_cnt_s[18]~0_combout\,
	combout => \cnt_prep|cnt_s[13]_OTERM51\);

-- Location: FF_X73_Y3_N5
\cnt_prep|cnt_s[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_prep|cnt_s[13]_OTERM51\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_prep|cnt_s[13]~DUPLICATE_q\);

-- Location: MLABCELL_X72_Y4_N42
\cnt_prep|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|Add0~101_sumout\ = SUM(( \cnt_prep|cnt_s[14]~DUPLICATE_q\ ) + ( GND ) + ( \cnt_prep|Add0~106\ ))
-- \cnt_prep|Add0~102\ = CARRY(( \cnt_prep|cnt_s[14]~DUPLICATE_q\ ) + ( GND ) + ( \cnt_prep|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cnt_prep|ALT_INV_cnt_s[14]~DUPLICATE_q\,
	cin => \cnt_prep|Add0~106\,
	sumout => \cnt_prep|Add0~101_sumout\,
	cout => \cnt_prep|Add0~102\);

-- Location: LABCELL_X71_Y4_N39
\cnt_prep|cnt_s[14]_NEW52\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|cnt_s[14]_OTERM53\ = ( \cnt_prep|Add0~101_sumout\ & ( !\cnt_prep|cnt_s[18]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_prep|ALT_INV_cnt_s[18]~0_combout\,
	dataf => \cnt_prep|ALT_INV_Add0~101_sumout\,
	combout => \cnt_prep|cnt_s[14]_OTERM53\);

-- Location: FF_X71_Y4_N40
\cnt_prep|cnt_s[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_prep|cnt_s[14]_OTERM53\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_prep|cnt_s[14]~DUPLICATE_q\);

-- Location: MLABCELL_X72_Y4_N45
\cnt_prep|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|Add0~97_sumout\ = SUM(( \cnt_prep|cnt_s[15]~DUPLICATE_q\ ) + ( GND ) + ( \cnt_prep|Add0~102\ ))
-- \cnt_prep|Add0~98\ = CARRY(( \cnt_prep|cnt_s[15]~DUPLICATE_q\ ) + ( GND ) + ( \cnt_prep|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cnt_prep|ALT_INV_cnt_s[15]~DUPLICATE_q\,
	cin => \cnt_prep|Add0~102\,
	sumout => \cnt_prep|Add0~97_sumout\,
	cout => \cnt_prep|Add0~98\);

-- Location: LABCELL_X71_Y4_N3
\cnt_prep|cnt_s[15]_NEW54\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|cnt_s[15]_OTERM55\ = ( \cnt_prep|Add0~97_sumout\ & ( !\cnt_prep|cnt_s[18]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \cnt_prep|ALT_INV_Add0~97_sumout\,
	dataf => \cnt_prep|ALT_INV_cnt_s[18]~0_combout\,
	combout => \cnt_prep|cnt_s[15]_OTERM55\);

-- Location: FF_X71_Y4_N4
\cnt_prep|cnt_s[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_prep|cnt_s[15]_OTERM55\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_prep|cnt_s[15]~DUPLICATE_q\);

-- Location: MLABCELL_X72_Y4_N48
\cnt_prep|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|Add0~93_sumout\ = SUM(( \cnt_prep|cnt_s[16]~DUPLICATE_q\ ) + ( GND ) + ( \cnt_prep|Add0~98\ ))
-- \cnt_prep|Add0~94\ = CARRY(( \cnt_prep|cnt_s[16]~DUPLICATE_q\ ) + ( GND ) + ( \cnt_prep|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cnt_prep|ALT_INV_cnt_s[16]~DUPLICATE_q\,
	cin => \cnt_prep|Add0~98\,
	sumout => \cnt_prep|Add0~93_sumout\,
	cout => \cnt_prep|Add0~94\);

-- Location: LABCELL_X71_Y4_N6
\cnt_prep|cnt_s[16]_NEW56\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|cnt_s[16]_OTERM57\ = ( !\cnt_prep|cnt_s[18]~0_combout\ & ( \cnt_prep|Add0~93_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt_prep|ALT_INV_Add0~93_sumout\,
	dataf => \cnt_prep|ALT_INV_cnt_s[18]~0_combout\,
	combout => \cnt_prep|cnt_s[16]_OTERM57\);

-- Location: FF_X71_Y4_N7
\cnt_prep|cnt_s[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_prep|cnt_s[16]_OTERM57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_prep|cnt_s[16]~DUPLICATE_q\);

-- Location: MLABCELL_X72_Y4_N51
\cnt_prep|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|Add0~89_sumout\ = SUM(( \cnt_prep|cnt_s\(17) ) + ( GND ) + ( \cnt_prep|Add0~94\ ))
-- \cnt_prep|Add0~90\ = CARRY(( \cnt_prep|cnt_s\(17) ) + ( GND ) + ( \cnt_prep|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cnt_prep|ALT_INV_cnt_s\(17),
	cin => \cnt_prep|Add0~94\,
	sumout => \cnt_prep|Add0~89_sumout\,
	cout => \cnt_prep|Add0~90\);

-- Location: LABCELL_X71_Y4_N42
\cnt_prep|cnt_s[17]_NEW58\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|cnt_s[17]_OTERM59\ = ( \cnt_prep|Add0~89_sumout\ & ( !\cnt_prep|cnt_s[18]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cnt_prep|ALT_INV_cnt_s[18]~0_combout\,
	dataf => \cnt_prep|ALT_INV_Add0~89_sumout\,
	combout => \cnt_prep|cnt_s[17]_OTERM59\);

-- Location: FF_X71_Y4_N43
\cnt_prep|cnt_s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_prep|cnt_s[17]_OTERM59\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_prep|cnt_s\(17));

-- Location: MLABCELL_X72_Y4_N54
\cnt_prep|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|Add0~81_sumout\ = SUM(( \cnt_prep|cnt_s[18]~DUPLICATE_q\ ) + ( GND ) + ( \cnt_prep|Add0~90\ ))
-- \cnt_prep|Add0~82\ = CARRY(( \cnt_prep|cnt_s[18]~DUPLICATE_q\ ) + ( GND ) + ( \cnt_prep|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt_prep|ALT_INV_cnt_s[18]~DUPLICATE_q\,
	cin => \cnt_prep|Add0~90\,
	sumout => \cnt_prep|Add0~81_sumout\,
	cout => \cnt_prep|Add0~82\);

-- Location: LABCELL_X71_Y4_N33
\cnt_prep|cnt_s[18]_NEW62\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|cnt_s[18]_OTERM63\ = ( !\cnt_prep|cnt_s[18]~0_combout\ & ( \cnt_prep|Add0~81_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt_prep|ALT_INV_Add0~81_sumout\,
	dataf => \cnt_prep|ALT_INV_cnt_s[18]~0_combout\,
	combout => \cnt_prep|cnt_s[18]_OTERM63\);

-- Location: FF_X71_Y4_N34
\cnt_prep|cnt_s[18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_prep|cnt_s[18]_OTERM63\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_prep|cnt_s[18]~DUPLICATE_q\);

-- Location: MLABCELL_X72_Y4_N57
\cnt_prep|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|Add0~5_sumout\ = SUM(( \cnt_prep|cnt_s\(19) ) + ( GND ) + ( \cnt_prep|Add0~82\ ))
-- \cnt_prep|Add0~6\ = CARRY(( \cnt_prep|cnt_s\(19) ) + ( GND ) + ( \cnt_prep|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cnt_prep|ALT_INV_cnt_s\(19),
	cin => \cnt_prep|Add0~82\,
	sumout => \cnt_prep|Add0~5_sumout\,
	cout => \cnt_prep|Add0~6\);

-- Location: LABCELL_X73_Y4_N18
\cnt_prep|cnt_s[19]_NEW2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|cnt_s[19]_OTERM3\ = ( !\cnt_prep|cnt_s[18]~0_combout\ & ( \cnt_prep|Add0~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt_prep|ALT_INV_Add0~5_sumout\,
	dataf => \cnt_prep|ALT_INV_cnt_s[18]~0_combout\,
	combout => \cnt_prep|cnt_s[19]_OTERM3\);

-- Location: FF_X73_Y4_N20
\cnt_prep|cnt_s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_prep|cnt_s[19]_OTERM3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_prep|cnt_s\(19));

-- Location: MLABCELL_X72_Y3_N0
\cnt_prep|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|Add0~1_sumout\ = SUM(( \cnt_prep|cnt_s\(20) ) + ( GND ) + ( \cnt_prep|Add0~6\ ))
-- \cnt_prep|Add0~2\ = CARRY(( \cnt_prep|cnt_s\(20) ) + ( GND ) + ( \cnt_prep|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cnt_prep|ALT_INV_cnt_s\(20),
	cin => \cnt_prep|Add0~6\,
	sumout => \cnt_prep|Add0~1_sumout\,
	cout => \cnt_prep|Add0~2\);

-- Location: LABCELL_X73_Y3_N24
\cnt_prep|cnt_s[20]_NEW0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|cnt_s[20]_OTERM1\ = ( !\cnt_prep|cnt_s[18]~0_combout\ & ( \cnt_prep|Add0~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cnt_prep|ALT_INV_Add0~1_sumout\,
	dataf => \cnt_prep|ALT_INV_cnt_s[18]~0_combout\,
	combout => \cnt_prep|cnt_s[20]_OTERM1\);

-- Location: FF_X73_Y3_N26
\cnt_prep|cnt_s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_prep|cnt_s[20]_OTERM1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_prep|cnt_s\(20));

-- Location: MLABCELL_X72_Y3_N3
\cnt_prep|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|Add0~29_sumout\ = SUM(( \cnt_prep|cnt_s\(21) ) + ( GND ) + ( \cnt_prep|Add0~2\ ))
-- \cnt_prep|Add0~30\ = CARRY(( \cnt_prep|cnt_s\(21) ) + ( GND ) + ( \cnt_prep|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt_prep|ALT_INV_cnt_s\(21),
	cin => \cnt_prep|Add0~2\,
	sumout => \cnt_prep|Add0~29_sumout\,
	cout => \cnt_prep|Add0~30\);

-- Location: LABCELL_X73_Y3_N0
\cnt_prep|cnt_s[21]_NEW4\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|cnt_s[21]_OTERM5\ = ( !\cnt_prep|cnt_s[18]~0_combout\ & ( \cnt_prep|Add0~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cnt_prep|ALT_INV_Add0~29_sumout\,
	dataf => \cnt_prep|ALT_INV_cnt_s[18]~0_combout\,
	combout => \cnt_prep|cnt_s[21]_OTERM5\);

-- Location: FF_X73_Y3_N2
\cnt_prep|cnt_s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_prep|cnt_s[21]_OTERM5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_prep|cnt_s\(21));

-- Location: MLABCELL_X72_Y3_N6
\cnt_prep|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|Add0~25_sumout\ = SUM(( \cnt_prep|cnt_s\(22) ) + ( GND ) + ( \cnt_prep|Add0~30\ ))
-- \cnt_prep|Add0~26\ = CARRY(( \cnt_prep|cnt_s\(22) ) + ( GND ) + ( \cnt_prep|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cnt_prep|ALT_INV_cnt_s\(22),
	cin => \cnt_prep|Add0~30\,
	sumout => \cnt_prep|Add0~25_sumout\,
	cout => \cnt_prep|Add0~26\);

-- Location: LABCELL_X73_Y3_N9
\cnt_prep|cnt_s[22]_NEW6\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|cnt_s[22]_OTERM7\ = ( !\cnt_prep|cnt_s[18]~0_combout\ & ( \cnt_prep|Add0~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt_prep|ALT_INV_Add0~25_sumout\,
	dataf => \cnt_prep|ALT_INV_cnt_s[18]~0_combout\,
	combout => \cnt_prep|cnt_s[22]_OTERM7\);

-- Location: FF_X73_Y3_N11
\cnt_prep|cnt_s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_prep|cnt_s[22]_OTERM7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_prep|cnt_s\(22));

-- Location: MLABCELL_X72_Y3_N9
\cnt_prep|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|Add0~21_sumout\ = SUM(( \cnt_prep|cnt_s[23]~DUPLICATE_q\ ) + ( GND ) + ( \cnt_prep|Add0~26\ ))
-- \cnt_prep|Add0~22\ = CARRY(( \cnt_prep|cnt_s[23]~DUPLICATE_q\ ) + ( GND ) + ( \cnt_prep|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_prep|ALT_INV_cnt_s[23]~DUPLICATE_q\,
	cin => \cnt_prep|Add0~26\,
	sumout => \cnt_prep|Add0~21_sumout\,
	cout => \cnt_prep|Add0~22\);

-- Location: MLABCELL_X72_Y3_N48
\cnt_prep|cnt_s[23]_NEW8\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|cnt_s[23]_OTERM9\ = ( \cnt_prep|Add0~21_sumout\ & ( !\cnt_prep|cnt_s[18]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt_prep|ALT_INV_cnt_s[18]~0_combout\,
	dataf => \cnt_prep|ALT_INV_Add0~21_sumout\,
	combout => \cnt_prep|cnt_s[23]_OTERM9\);

-- Location: FF_X72_Y3_N50
\cnt_prep|cnt_s[23]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_prep|cnt_s[23]_OTERM9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_prep|cnt_s[23]~DUPLICATE_q\);

-- Location: MLABCELL_X72_Y3_N12
\cnt_prep|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|Add0~17_sumout\ = SUM(( \cnt_prep|cnt_s[24]~DUPLICATE_q\ ) + ( GND ) + ( \cnt_prep|Add0~22\ ))
-- \cnt_prep|Add0~18\ = CARRY(( \cnt_prep|cnt_s[24]~DUPLICATE_q\ ) + ( GND ) + ( \cnt_prep|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cnt_prep|ALT_INV_cnt_s[24]~DUPLICATE_q\,
	cin => \cnt_prep|Add0~22\,
	sumout => \cnt_prep|Add0~17_sumout\,
	cout => \cnt_prep|Add0~18\);

-- Location: MLABCELL_X72_Y3_N54
\cnt_prep|cnt_s[24]_NEW10\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|cnt_s[24]_OTERM11\ = ( \cnt_prep|Add0~17_sumout\ & ( !\cnt_prep|cnt_s[18]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt_prep|ALT_INV_cnt_s[18]~0_combout\,
	dataf => \cnt_prep|ALT_INV_Add0~17_sumout\,
	combout => \cnt_prep|cnt_s[24]_OTERM11\);

-- Location: FF_X72_Y3_N56
\cnt_prep|cnt_s[24]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_prep|cnt_s[24]_OTERM11\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_prep|cnt_s[24]~DUPLICATE_q\);

-- Location: MLABCELL_X72_Y3_N15
\cnt_prep|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|Add0~13_sumout\ = SUM(( \cnt_prep|cnt_s[25]~DUPLICATE_q\ ) + ( GND ) + ( \cnt_prep|Add0~18\ ))
-- \cnt_prep|Add0~14\ = CARRY(( \cnt_prep|cnt_s[25]~DUPLICATE_q\ ) + ( GND ) + ( \cnt_prep|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cnt_prep|ALT_INV_cnt_s[25]~DUPLICATE_q\,
	cin => \cnt_prep|Add0~18\,
	sumout => \cnt_prep|Add0~13_sumout\,
	cout => \cnt_prep|Add0~14\);

-- Location: MLABCELL_X72_Y3_N57
\cnt_prep|cnt_s[25]_NEW12\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|cnt_s[25]_OTERM13\ = ( \cnt_prep|Add0~13_sumout\ & ( !\cnt_prep|cnt_s[18]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt_prep|ALT_INV_cnt_s[18]~0_combout\,
	dataf => \cnt_prep|ALT_INV_Add0~13_sumout\,
	combout => \cnt_prep|cnt_s[25]_OTERM13\);

-- Location: FF_X72_Y3_N59
\cnt_prep|cnt_s[25]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_prep|cnt_s[25]_OTERM13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_prep|cnt_s[25]~DUPLICATE_q\);

-- Location: MLABCELL_X72_Y3_N18
\cnt_prep|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|Add0~9_sumout\ = SUM(( \cnt_prep|cnt_s[26]~DUPLICATE_q\ ) + ( GND ) + ( \cnt_prep|Add0~14\ ))
-- \cnt_prep|Add0~10\ = CARRY(( \cnt_prep|cnt_s[26]~DUPLICATE_q\ ) + ( GND ) + ( \cnt_prep|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cnt_prep|ALT_INV_cnt_s[26]~DUPLICATE_q\,
	cin => \cnt_prep|Add0~14\,
	sumout => \cnt_prep|Add0~9_sumout\,
	cout => \cnt_prep|Add0~10\);

-- Location: MLABCELL_X72_Y3_N36
\cnt_prep|cnt_s[26]_NEW14\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|cnt_s[26]_OTERM15\ = ( \cnt_prep|Add0~9_sumout\ & ( !\cnt_prep|cnt_s[18]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt_prep|ALT_INV_cnt_s[18]~0_combout\,
	dataf => \cnt_prep|ALT_INV_Add0~9_sumout\,
	combout => \cnt_prep|cnt_s[26]_OTERM15\);

-- Location: FF_X72_Y3_N38
\cnt_prep|cnt_s[26]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_prep|cnt_s[26]_OTERM15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_prep|cnt_s[26]~DUPLICATE_q\);

-- Location: MLABCELL_X72_Y3_N21
\cnt_prep|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|Add0~53_sumout\ = SUM(( \cnt_prep|cnt_s\(27) ) + ( GND ) + ( \cnt_prep|Add0~10\ ))
-- \cnt_prep|Add0~54\ = CARRY(( \cnt_prep|cnt_s\(27) ) + ( GND ) + ( \cnt_prep|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cnt_prep|ALT_INV_cnt_s\(27),
	cin => \cnt_prep|Add0~10\,
	sumout => \cnt_prep|Add0~53_sumout\,
	cout => \cnt_prep|Add0~54\);

-- Location: MLABCELL_X72_Y3_N42
\cnt_prep|cnt_s[27]_NEW16\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|cnt_s[27]_OTERM17\ = ( \cnt_prep|Add0~53_sumout\ & ( !\cnt_prep|cnt_s[18]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_prep|ALT_INV_cnt_s[18]~0_combout\,
	dataf => \cnt_prep|ALT_INV_Add0~53_sumout\,
	combout => \cnt_prep|cnt_s[27]_OTERM17\);

-- Location: FF_X72_Y3_N43
\cnt_prep|cnt_s[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_prep|cnt_s[27]_OTERM17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_prep|cnt_s\(27));

-- Location: MLABCELL_X72_Y3_N24
\cnt_prep|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|Add0~49_sumout\ = SUM(( \cnt_prep|cnt_s\(28) ) + ( GND ) + ( \cnt_prep|Add0~54\ ))
-- \cnt_prep|Add0~50\ = CARRY(( \cnt_prep|cnt_s\(28) ) + ( GND ) + ( \cnt_prep|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt_prep|ALT_INV_cnt_s\(28),
	cin => \cnt_prep|Add0~54\,
	sumout => \cnt_prep|Add0~49_sumout\,
	cout => \cnt_prep|Add0~50\);

-- Location: LABCELL_X73_Y3_N57
\cnt_prep|cnt_s[28]_NEW18\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|cnt_s[28]_OTERM19\ = ( \cnt_prep|Add0~49_sumout\ & ( !\cnt_prep|cnt_s[18]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt_prep|ALT_INV_cnt_s[18]~0_combout\,
	dataf => \cnt_prep|ALT_INV_Add0~49_sumout\,
	combout => \cnt_prep|cnt_s[28]_OTERM19\);

-- Location: FF_X73_Y3_N59
\cnt_prep|cnt_s[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_prep|cnt_s[28]_OTERM19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_prep|cnt_s\(28));

-- Location: MLABCELL_X72_Y3_N27
\cnt_prep|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|Add0~45_sumout\ = SUM(( \cnt_prep|cnt_s[29]~DUPLICATE_q\ ) + ( GND ) + ( \cnt_prep|Add0~50\ ))
-- \cnt_prep|Add0~46\ = CARRY(( \cnt_prep|cnt_s[29]~DUPLICATE_q\ ) + ( GND ) + ( \cnt_prep|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cnt_prep|ALT_INV_cnt_s[29]~DUPLICATE_q\,
	cin => \cnt_prep|Add0~50\,
	sumout => \cnt_prep|Add0~45_sumout\,
	cout => \cnt_prep|Add0~46\);

-- Location: MLABCELL_X72_Y3_N45
\cnt_prep|cnt_s[29]_NEW20\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|cnt_s[29]_OTERM21\ = ( \cnt_prep|Add0~45_sumout\ & ( !\cnt_prep|cnt_s[18]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt_prep|ALT_INV_cnt_s[18]~0_combout\,
	dataf => \cnt_prep|ALT_INV_Add0~45_sumout\,
	combout => \cnt_prep|cnt_s[29]_OTERM21\);

-- Location: FF_X72_Y3_N47
\cnt_prep|cnt_s[29]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_prep|cnt_s[29]_OTERM21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_prep|cnt_s[29]~DUPLICATE_q\);

-- Location: MLABCELL_X72_Y3_N30
\cnt_prep|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|Add0~41_sumout\ = SUM(( \cnt_prep|cnt_s[30]~DUPLICATE_q\ ) + ( GND ) + ( \cnt_prep|Add0~46\ ))
-- \cnt_prep|Add0~42\ = CARRY(( \cnt_prep|cnt_s[30]~DUPLICATE_q\ ) + ( GND ) + ( \cnt_prep|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cnt_prep|ALT_INV_cnt_s[30]~DUPLICATE_q\,
	cin => \cnt_prep|Add0~46\,
	sumout => \cnt_prep|Add0~41_sumout\,
	cout => \cnt_prep|Add0~42\);

-- Location: MLABCELL_X72_Y3_N39
\cnt_prep|cnt_s[30]_NEW22\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|cnt_s[30]_OTERM23\ = ( \cnt_prep|Add0~41_sumout\ & ( !\cnt_prep|cnt_s[18]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt_prep|ALT_INV_cnt_s[18]~0_combout\,
	dataf => \cnt_prep|ALT_INV_Add0~41_sumout\,
	combout => \cnt_prep|cnt_s[30]_OTERM23\);

-- Location: FF_X72_Y3_N40
\cnt_prep|cnt_s[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_prep|cnt_s[30]_OTERM23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_prep|cnt_s\(30));

-- Location: FF_X72_Y3_N46
\cnt_prep|cnt_s[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_prep|cnt_s[29]_OTERM21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_prep|cnt_s\(29));

-- Location: MLABCELL_X72_Y3_N33
\cnt_prep|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|Add0~37_sumout\ = SUM(( \cnt_prep|cnt_s\(31) ) + ( GND ) + ( \cnt_prep|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cnt_prep|ALT_INV_cnt_s\(31),
	cin => \cnt_prep|Add0~42\,
	sumout => \cnt_prep|Add0~37_sumout\);

-- Location: MLABCELL_X72_Y3_N51
\cnt_prep|cnt_s[31]_NEW24\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|cnt_s[31]_OTERM25\ = ( \cnt_prep|Add0~37_sumout\ & ( !\cnt_prep|cnt_s[18]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt_prep|ALT_INV_cnt_s[18]~0_combout\,
	dataf => \cnt_prep|ALT_INV_Add0~37_sumout\,
	combout => \cnt_prep|cnt_s[31]_OTERM25\);

-- Location: FF_X72_Y3_N52
\cnt_prep|cnt_s[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_prep|cnt_s[31]_OTERM25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_prep|cnt_s\(31));

-- Location: FF_X73_Y4_N43
\cnt_prep|cnt_s[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_prep|cnt_s[2]_OTERM27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_prep|cnt_s[2]~DUPLICATE_q\);

-- Location: LABCELL_X73_Y3_N12
\cnt_prep|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|Equal0~2_combout\ = ( !\cnt_prep|cnt_s\(27) & ( \cnt_prep|cnt_s[2]~DUPLICATE_q\ & ( (!\cnt_prep|cnt_s\(30) & (!\cnt_prep|cnt_s\(29) & (!\cnt_prep|cnt_s\(31) & !\cnt_prep|cnt_s\(28)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_prep|ALT_INV_cnt_s\(30),
	datab => \cnt_prep|ALT_INV_cnt_s\(29),
	datac => \cnt_prep|ALT_INV_cnt_s\(31),
	datad => \cnt_prep|ALT_INV_cnt_s\(28),
	datae => \cnt_prep|ALT_INV_cnt_s\(27),
	dataf => \cnt_prep|ALT_INV_cnt_s[2]~DUPLICATE_q\,
	combout => \cnt_prep|Equal0~2_combout\);

-- Location: FF_X71_Y4_N35
\cnt_prep|cnt_s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_prep|cnt_s[18]_OTERM63\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_prep|cnt_s\(18));

-- Location: FF_X71_Y4_N41
\cnt_prep|cnt_s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_prep|cnt_s[14]_OTERM53\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_prep|cnt_s\(14));

-- Location: FF_X71_Y4_N5
\cnt_prep|cnt_s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_prep|cnt_s[15]_OTERM55\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_prep|cnt_s\(15));

-- Location: FF_X71_Y4_N14
\cnt_prep|cnt_s[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_prep|cnt_s[0]_OTERM61\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_prep|cnt_s[0]~DUPLICATE_q\);

-- Location: FF_X71_Y4_N8
\cnt_prep|cnt_s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_prep|cnt_s[16]_OTERM57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_prep|cnt_s\(16));

-- Location: LABCELL_X71_Y4_N48
\cnt_prep|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|Equal0~4_combout\ = ( !\cnt_prep|cnt_s\(17) & ( !\cnt_prep|cnt_s\(16) & ( (!\cnt_prep|cnt_s\(18) & (!\cnt_prep|cnt_s\(14) & (!\cnt_prep|cnt_s\(15) & !\cnt_prep|cnt_s[0]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_prep|ALT_INV_cnt_s\(18),
	datab => \cnt_prep|ALT_INV_cnt_s\(14),
	datac => \cnt_prep|ALT_INV_cnt_s\(15),
	datad => \cnt_prep|ALT_INV_cnt_s[0]~DUPLICATE_q\,
	datae => \cnt_prep|ALT_INV_cnt_s\(17),
	dataf => \cnt_prep|ALT_INV_cnt_s\(16),
	combout => \cnt_prep|Equal0~4_combout\);

-- Location: FF_X72_Y3_N37
\cnt_prep|cnt_s[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_prep|cnt_s[26]_OTERM15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_prep|cnt_s\(26));

-- Location: FF_X72_Y3_N49
\cnt_prep|cnt_s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_prep|cnt_s[23]_OTERM9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_prep|cnt_s\(23));

-- Location: FF_X72_Y3_N55
\cnt_prep|cnt_s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_prep|cnt_s[24]_OTERM11\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_prep|cnt_s\(24));

-- Location: FF_X72_Y3_N58
\cnt_prep|cnt_s[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_prep|cnt_s[25]_OTERM13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_prep|cnt_s\(25));

-- Location: LABCELL_X73_Y3_N30
\cnt_prep|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|Equal0~1_combout\ = ( !\cnt_prep|cnt_s\(21) & ( !\cnt_prep|cnt_s\(22) & ( (!\cnt_prep|cnt_s\(26) & (!\cnt_prep|cnt_s\(23) & (!\cnt_prep|cnt_s\(24) & !\cnt_prep|cnt_s\(25)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_prep|ALT_INV_cnt_s\(26),
	datab => \cnt_prep|ALT_INV_cnt_s\(23),
	datac => \cnt_prep|ALT_INV_cnt_s\(24),
	datad => \cnt_prep|ALT_INV_cnt_s\(25),
	datae => \cnt_prep|ALT_INV_cnt_s\(21),
	dataf => \cnt_prep|ALT_INV_cnt_s\(22),
	combout => \cnt_prep|Equal0~1_combout\);

-- Location: LABCELL_X73_Y4_N51
\cnt_prep|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|Equal0~0_combout\ = ( !\cnt_prep|cnt_s\(19) & ( !\cnt_prep|cnt_s\(20) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt_prep|ALT_INV_cnt_s\(20),
	dataf => \cnt_prep|ALT_INV_cnt_s\(19),
	combout => \cnt_prep|Equal0~0_combout\);

-- Location: FF_X73_Y3_N8
\cnt_prep|cnt_s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_prep|cnt_s[9]_OTERM43\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_prep|cnt_s\(9));

-- Location: FF_X73_Y3_N4
\cnt_prep|cnt_s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_prep|cnt_s[13]_OTERM51\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_prep|cnt_s\(13));

-- Location: LABCELL_X73_Y3_N48
\cnt_prep|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|Equal0~5_combout\ = ( !\cnt_prep|cnt_s\(13) & ( \cnt_prep|cnt_s\(8) & ( (!\cnt_prep|cnt_s\(12) & (!\cnt_prep|cnt_s\(10) & (!\cnt_prep|cnt_s\(11) & !\cnt_prep|cnt_s\(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_prep|ALT_INV_cnt_s\(12),
	datab => \cnt_prep|ALT_INV_cnt_s\(10),
	datac => \cnt_prep|ALT_INV_cnt_s\(11),
	datad => \cnt_prep|ALT_INV_cnt_s\(9),
	datae => \cnt_prep|ALT_INV_cnt_s\(13),
	dataf => \cnt_prep|ALT_INV_cnt_s\(8),
	combout => \cnt_prep|Equal0~5_combout\);

-- Location: LABCELL_X73_Y3_N18
\cnt_prep|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_prep|Equal0~6_combout\ = ( \cnt_prep|Equal0~0_combout\ & ( \cnt_prep|Equal0~5_combout\ & ( (\cnt_prep|Equal0~3_combout\ & (\cnt_prep|Equal0~2_combout\ & (\cnt_prep|Equal0~4_combout\ & \cnt_prep|Equal0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_prep|ALT_INV_Equal0~3_combout\,
	datab => \cnt_prep|ALT_INV_Equal0~2_combout\,
	datac => \cnt_prep|ALT_INV_Equal0~4_combout\,
	datad => \cnt_prep|ALT_INV_Equal0~1_combout\,
	datae => \cnt_prep|ALT_INV_Equal0~0_combout\,
	dataf => \cnt_prep|ALT_INV_Equal0~5_combout\,
	combout => \cnt_prep|Equal0~6_combout\);

-- Location: LABCELL_X74_Y4_N51
\main|Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \main|Selector1~1_combout\ = ( \main|STATE.CNT_PREPARE~q\ & ( \cnt_prep|Equal0~6_combout\ & ( (((!\main|STATE.INIT_ACTIVATION~q\ & \init|STATE.DONE~q\)) # (\main|STATE.HIT_POINT~q\)) # (\main|Selector1~0_combout\) ) ) ) # ( !\main|STATE.CNT_PREPARE~q\ & ( 
-- \cnt_prep|Equal0~6_combout\ & ( (((!\main|STATE.INIT_ACTIVATION~q\ & \init|STATE.DONE~q\)) # (\main|STATE.HIT_POINT~q\)) # (\main|Selector1~0_combout\) ) ) ) # ( \main|STATE.CNT_PREPARE~q\ & ( !\cnt_prep|Equal0~6_combout\ ) ) # ( 
-- !\main|STATE.CNT_PREPARE~q\ & ( !\cnt_prep|Equal0~6_combout\ & ( (((!\main|STATE.INIT_ACTIVATION~q\ & \init|STATE.DONE~q\)) # (\main|STATE.HIT_POINT~q\)) # (\main|Selector1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011111110111111111111111111101110111111101110111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main|ALT_INV_Selector1~0_combout\,
	datab => \main|ALT_INV_STATE.HIT_POINT~q\,
	datac => \main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	datad => \init|ALT_INV_STATE.DONE~q\,
	datae => \main|ALT_INV_STATE.CNT_PREPARE~q\,
	dataf => \cnt_prep|ALT_INV_Equal0~6_combout\,
	combout => \main|Selector1~1_combout\);

-- Location: FF_X74_Y4_N53
\main|STATE.CNT_PREPARE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \main|Selector1~1_combout\,
	sclr => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main|STATE.CNT_PREPARE~q\);

-- Location: LABCELL_X73_Y3_N39
\main|STATE~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \main|STATE~8_combout\ = ( \cnt_prep|Equal0~6_combout\ & ( (!\res~input_o\ & \main|STATE.CNT_PREPARE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_res~input_o\,
	datac => \main|ALT_INV_STATE.CNT_PREPARE~q\,
	dataf => \cnt_prep|ALT_INV_Equal0~6_combout\,
	combout => \main|STATE~8_combout\);

-- Location: FF_X73_Y3_N41
\main|STATE.STEP_ACTIVATION\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \main|STATE~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main|STATE.STEP_ACTIVATION~q\);

-- Location: LABCELL_X68_Y1_N36
\cnt_strat|NEXT_STATE~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|NEXT_STATE~0_combout\ = ( \cnt_strat|Equal0~6_combout\ & ( (\cnt_strat|STATE~q\) # (\main|STATE.CNT_START~q\) ) ) # ( !\cnt_strat|Equal0~6_combout\ & ( (\main|STATE.CNT_START~q\ & !\cnt_strat|STATE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \main|ALT_INV_STATE.CNT_START~q\,
	datad => \cnt_strat|ALT_INV_STATE~q\,
	dataf => \cnt_strat|ALT_INV_Equal0~6_combout\,
	combout => \cnt_strat|NEXT_STATE~0_combout\);

-- Location: FF_X68_Y1_N38
\cnt_strat|STATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_strat|NEXT_STATE~0_combout\,
	sclr => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_strat|STATE~q\);

-- Location: LABCELL_X68_Y2_N18
\cnt_strat|cnt_s[0]_NEW118\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|cnt_s[0]_OTERM119\ = ( \cnt_strat|Equal0~6_combout\ & ( (\cnt_strat|STATE~q\ & !\cnt_strat|cnt_s\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_strat|ALT_INV_STATE~q\,
	datad => \cnt_strat|ALT_INV_cnt_s\(0),
	dataf => \cnt_strat|ALT_INV_Equal0~6_combout\,
	combout => \cnt_strat|cnt_s[0]_OTERM119\);

-- Location: FF_X67_Y2_N20
\cnt_strat|cnt_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cnt_strat|cnt_s[0]_OTERM119\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_strat|cnt_s\(0));

-- Location: LABCELL_X67_Y2_N0
\cnt_strat|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|Add0~98\ = CARRY(( \cnt_strat|cnt_s\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cnt_strat|ALT_INV_cnt_s\(0),
	cin => GND,
	cout => \cnt_strat|Add0~98\);

-- Location: LABCELL_X67_Y2_N3
\cnt_strat|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|Add0~93_sumout\ = SUM(( \cnt_strat|cnt_s\(1) ) + ( GND ) + ( \cnt_strat|Add0~98\ ))
-- \cnt_strat|Add0~94\ = CARRY(( \cnt_strat|cnt_s\(1) ) + ( GND ) + ( \cnt_strat|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt_strat|ALT_INV_cnt_s\(1),
	cin => \cnt_strat|Add0~98\,
	sumout => \cnt_strat|Add0~93_sumout\,
	cout => \cnt_strat|Add0~94\);

-- Location: LABCELL_X68_Y2_N45
\cnt_strat|cnt_s[1]_NEW120\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|cnt_s[1]_OTERM121\ = ( \cnt_strat|Equal0~6_combout\ & ( (\cnt_strat|STATE~q\ & \cnt_strat|Add0~93_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_strat|ALT_INV_STATE~q\,
	datac => \cnt_strat|ALT_INV_Add0~93_sumout\,
	dataf => \cnt_strat|ALT_INV_Equal0~6_combout\,
	combout => \cnt_strat|cnt_s[1]_OTERM121\);

-- Location: FF_X67_Y2_N23
\cnt_strat|cnt_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cnt_strat|cnt_s[1]_OTERM121\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_strat|cnt_s\(1));

-- Location: LABCELL_X67_Y2_N6
\cnt_strat|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|Add0~89_sumout\ = SUM(( \cnt_strat|cnt_s\(2) ) + ( GND ) + ( \cnt_strat|Add0~94\ ))
-- \cnt_strat|Add0~90\ = CARRY(( \cnt_strat|cnt_s\(2) ) + ( GND ) + ( \cnt_strat|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cnt_strat|ALT_INV_cnt_s\(2),
	cin => \cnt_strat|Add0~94\,
	sumout => \cnt_strat|Add0~89_sumout\,
	cout => \cnt_strat|Add0~90\);

-- Location: LABCELL_X68_Y2_N39
\cnt_strat|cnt_s[2]_NEW122\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|cnt_s[2]_OTERM123\ = ( \cnt_strat|Equal0~6_combout\ & ( (\cnt_strat|STATE~q\ & \cnt_strat|Add0~89_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_strat|ALT_INV_STATE~q\,
	datad => \cnt_strat|ALT_INV_Add0~89_sumout\,
	dataf => \cnt_strat|ALT_INV_Equal0~6_combout\,
	combout => \cnt_strat|cnt_s[2]_OTERM123\);

-- Location: FF_X67_Y2_N11
\cnt_strat|cnt_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cnt_strat|cnt_s[2]_OTERM123\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_strat|cnt_s\(2));

-- Location: LABCELL_X67_Y2_N9
\cnt_strat|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|Add0~85_sumout\ = SUM(( \cnt_strat|cnt_s\(3) ) + ( GND ) + ( \cnt_strat|Add0~90\ ))
-- \cnt_strat|Add0~86\ = CARRY(( \cnt_strat|cnt_s\(3) ) + ( GND ) + ( \cnt_strat|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt_strat|ALT_INV_cnt_s\(3),
	cin => \cnt_strat|Add0~90\,
	sumout => \cnt_strat|Add0~85_sumout\,
	cout => \cnt_strat|Add0~86\);

-- Location: LABCELL_X68_Y2_N33
\cnt_strat|cnt_s[3]_NEW124\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|cnt_s[3]_OTERM125\ = ( \cnt_strat|Equal0~6_combout\ & ( (\cnt_strat|STATE~q\ & \cnt_strat|Add0~85_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_strat|ALT_INV_STATE~q\,
	datac => \cnt_strat|ALT_INV_Add0~85_sumout\,
	dataf => \cnt_strat|ALT_INV_Equal0~6_combout\,
	combout => \cnt_strat|cnt_s[3]_OTERM125\);

-- Location: FF_X67_Y2_N38
\cnt_strat|cnt_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cnt_strat|cnt_s[3]_OTERM125\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_strat|cnt_s\(3));

-- Location: LABCELL_X67_Y2_N12
\cnt_strat|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|Add0~81_sumout\ = SUM(( \cnt_strat|cnt_s\(4) ) + ( GND ) + ( \cnt_strat|Add0~86\ ))
-- \cnt_strat|Add0~82\ = CARRY(( \cnt_strat|cnt_s\(4) ) + ( GND ) + ( \cnt_strat|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cnt_strat|ALT_INV_cnt_s\(4),
	cin => \cnt_strat|Add0~86\,
	sumout => \cnt_strat|Add0~81_sumout\,
	cout => \cnt_strat|Add0~82\);

-- Location: LABCELL_X68_Y2_N12
\cnt_strat|cnt_s[4]_NEW126\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|cnt_s[4]_OTERM127\ = ( \cnt_strat|Equal0~6_combout\ & ( (\cnt_strat|STATE~q\ & \cnt_strat|Add0~81_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_strat|ALT_INV_STATE~q\,
	datad => \cnt_strat|ALT_INV_Add0~81_sumout\,
	dataf => \cnt_strat|ALT_INV_Equal0~6_combout\,
	combout => \cnt_strat|cnt_s[4]_OTERM127\);

-- Location: FF_X67_Y2_N50
\cnt_strat|cnt_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cnt_strat|cnt_s[4]_OTERM127\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_strat|cnt_s\(4));

-- Location: LABCELL_X67_Y2_N15
\cnt_strat|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|Add0~5_sumout\ = SUM(( \cnt_strat|cnt_s\(5) ) + ( GND ) + ( \cnt_strat|Add0~82\ ))
-- \cnt_strat|Add0~6\ = CARRY(( \cnt_strat|cnt_s\(5) ) + ( GND ) + ( \cnt_strat|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt_strat|ALT_INV_cnt_s\(5),
	cin => \cnt_strat|Add0~82\,
	sumout => \cnt_strat|Add0~5_sumout\,
	cout => \cnt_strat|Add0~6\);

-- Location: LABCELL_X68_Y2_N54
\cnt_strat|cnt_s[5]_NEW66\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|cnt_s[5]_OTERM67\ = ( \cnt_strat|Equal0~6_combout\ & ( (\cnt_strat|STATE~q\ & \cnt_strat|Add0~5_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_strat|ALT_INV_STATE~q\,
	datad => \cnt_strat|ALT_INV_Add0~5_sumout\,
	dataf => \cnt_strat|ALT_INV_Equal0~6_combout\,
	combout => \cnt_strat|cnt_s[5]_OTERM67\);

-- Location: FF_X67_Y2_N56
\cnt_strat|cnt_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cnt_strat|cnt_s[5]_OTERM67\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_strat|cnt_s\(5));

-- Location: LABCELL_X67_Y2_N18
\cnt_strat|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|Add0~1_sumout\ = SUM(( \cnt_strat|cnt_s\(6) ) + ( GND ) + ( \cnt_strat|Add0~6\ ))
-- \cnt_strat|Add0~2\ = CARRY(( \cnt_strat|cnt_s\(6) ) + ( GND ) + ( \cnt_strat|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt_strat|ALT_INV_cnt_s\(6),
	cin => \cnt_strat|Add0~6\,
	sumout => \cnt_strat|Add0~1_sumout\,
	cout => \cnt_strat|Add0~2\);

-- Location: LABCELL_X68_Y1_N39
\cnt_strat|cnt_s[6]_NEW64\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|cnt_s[6]_OTERM65\ = ( \cnt_strat|Equal0~6_combout\ & ( (\cnt_strat|Add0~1_sumout\ & \cnt_strat|STATE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cnt_strat|ALT_INV_Add0~1_sumout\,
	datad => \cnt_strat|ALT_INV_STATE~q\,
	dataf => \cnt_strat|ALT_INV_Equal0~6_combout\,
	combout => \cnt_strat|cnt_s[6]_OTERM65\);

-- Location: FF_X68_Y1_N41
\cnt_strat|cnt_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_strat|cnt_s[6]_OTERM65\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_strat|cnt_s\(6));

-- Location: LABCELL_X67_Y2_N21
\cnt_strat|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|Add0~29_sumout\ = SUM(( \cnt_strat|cnt_s[7]~DUPLICATE_q\ ) + ( GND ) + ( \cnt_strat|Add0~2\ ))
-- \cnt_strat|Add0~30\ = CARRY(( \cnt_strat|cnt_s[7]~DUPLICATE_q\ ) + ( GND ) + ( \cnt_strat|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt_strat|ALT_INV_cnt_s[7]~DUPLICATE_q\,
	cin => \cnt_strat|Add0~2\,
	sumout => \cnt_strat|Add0~29_sumout\,
	cout => \cnt_strat|Add0~30\);

-- Location: LABCELL_X68_Y2_N21
\cnt_strat|cnt_s[7]_NEW68\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|cnt_s[7]_OTERM69\ = ( \cnt_strat|Equal0~6_combout\ & ( (\cnt_strat|STATE~q\ & \cnt_strat|Add0~29_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_strat|ALT_INV_STATE~q\,
	datad => \cnt_strat|ALT_INV_Add0~29_sumout\,
	dataf => \cnt_strat|ALT_INV_Equal0~6_combout\,
	combout => \cnt_strat|cnt_s[7]_OTERM69\);

-- Location: FF_X68_Y2_N23
\cnt_strat|cnt_s[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_strat|cnt_s[7]_OTERM69\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_strat|cnt_s[7]~DUPLICATE_q\);

-- Location: LABCELL_X67_Y2_N24
\cnt_strat|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|Add0~25_sumout\ = SUM(( \cnt_strat|cnt_s\(8) ) + ( GND ) + ( \cnt_strat|Add0~30\ ))
-- \cnt_strat|Add0~26\ = CARRY(( \cnt_strat|cnt_s\(8) ) + ( GND ) + ( \cnt_strat|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cnt_strat|ALT_INV_cnt_s\(8),
	cin => \cnt_strat|Add0~30\,
	sumout => \cnt_strat|Add0~25_sumout\,
	cout => \cnt_strat|Add0~26\);

-- Location: LABCELL_X68_Y2_N24
\cnt_strat|cnt_s[8]_NEW70\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|cnt_s[8]_OTERM71\ = ( \cnt_strat|Equal0~6_combout\ & ( (\cnt_strat|Add0~25_sumout\ & \cnt_strat|STATE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cnt_strat|ALT_INV_Add0~25_sumout\,
	datac => \cnt_strat|ALT_INV_STATE~q\,
	dataf => \cnt_strat|ALT_INV_Equal0~6_combout\,
	combout => \cnt_strat|cnt_s[8]_OTERM71\);

-- Location: FF_X67_Y2_N53
\cnt_strat|cnt_s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cnt_strat|cnt_s[8]_OTERM71\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_strat|cnt_s\(8));

-- Location: LABCELL_X67_Y2_N27
\cnt_strat|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|Add0~21_sumout\ = SUM(( \cnt_strat|cnt_s\(9) ) + ( GND ) + ( \cnt_strat|Add0~26\ ))
-- \cnt_strat|Add0~22\ = CARRY(( \cnt_strat|cnt_s\(9) ) + ( GND ) + ( \cnt_strat|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt_strat|ALT_INV_cnt_s\(9),
	cin => \cnt_strat|Add0~26\,
	sumout => \cnt_strat|Add0~21_sumout\,
	cout => \cnt_strat|Add0~22\);

-- Location: LABCELL_X68_Y2_N3
\cnt_strat|cnt_s[9]_NEW72\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|cnt_s[9]_OTERM73\ = ( \cnt_strat|Equal0~6_combout\ & ( (\cnt_strat|STATE~q\ & \cnt_strat|Add0~21_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_strat|ALT_INV_STATE~q\,
	datad => \cnt_strat|ALT_INV_Add0~21_sumout\,
	dataf => \cnt_strat|ALT_INV_Equal0~6_combout\,
	combout => \cnt_strat|cnt_s[9]_OTERM73\);

-- Location: FF_X68_Y2_N5
\cnt_strat|cnt_s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_strat|cnt_s[9]_OTERM73\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_strat|cnt_s\(9));

-- Location: LABCELL_X67_Y2_N30
\cnt_strat|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|Add0~17_sumout\ = SUM(( \cnt_strat|cnt_s\(10) ) + ( GND ) + ( \cnt_strat|Add0~22\ ))
-- \cnt_strat|Add0~18\ = CARRY(( \cnt_strat|cnt_s\(10) ) + ( GND ) + ( \cnt_strat|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt_strat|ALT_INV_cnt_s\(10),
	cin => \cnt_strat|Add0~22\,
	sumout => \cnt_strat|Add0~17_sumout\,
	cout => \cnt_strat|Add0~18\);

-- Location: LABCELL_X68_Y2_N36
\cnt_strat|cnt_s[10]_NEW74\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|cnt_s[10]_OTERM75\ = ( \cnt_strat|Equal0~6_combout\ & ( (\cnt_strat|STATE~q\ & \cnt_strat|Add0~17_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_strat|ALT_INV_STATE~q\,
	datac => \cnt_strat|ALT_INV_Add0~17_sumout\,
	dataf => \cnt_strat|ALT_INV_Equal0~6_combout\,
	combout => \cnt_strat|cnt_s[10]_OTERM75\);

-- Location: FF_X68_Y2_N38
\cnt_strat|cnt_s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_strat|cnt_s[10]_OTERM75\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_strat|cnt_s\(10));

-- Location: LABCELL_X67_Y2_N33
\cnt_strat|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|Add0~13_sumout\ = SUM(( \cnt_strat|cnt_s\(11) ) + ( GND ) + ( \cnt_strat|Add0~18\ ))
-- \cnt_strat|Add0~14\ = CARRY(( \cnt_strat|cnt_s\(11) ) + ( GND ) + ( \cnt_strat|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt_strat|ALT_INV_cnt_s\(11),
	cin => \cnt_strat|Add0~18\,
	sumout => \cnt_strat|Add0~13_sumout\,
	cout => \cnt_strat|Add0~14\);

-- Location: LABCELL_X68_Y2_N57
\cnt_strat|cnt_s[11]_NEW76\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|cnt_s[11]_OTERM77\ = ( \cnt_strat|Equal0~6_combout\ & ( (\cnt_strat|STATE~q\ & \cnt_strat|Add0~13_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_strat|ALT_INV_STATE~q\,
	datad => \cnt_strat|ALT_INV_Add0~13_sumout\,
	dataf => \cnt_strat|ALT_INV_Equal0~6_combout\,
	combout => \cnt_strat|cnt_s[11]_OTERM77\);

-- Location: FF_X68_Y2_N59
\cnt_strat|cnt_s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_strat|cnt_s[11]_OTERM77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_strat|cnt_s\(11));

-- Location: LABCELL_X67_Y2_N36
\cnt_strat|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|Add0~9_sumout\ = SUM(( \cnt_strat|cnt_s\(12) ) + ( GND ) + ( \cnt_strat|Add0~14\ ))
-- \cnt_strat|Add0~10\ = CARRY(( \cnt_strat|cnt_s\(12) ) + ( GND ) + ( \cnt_strat|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cnt_strat|ALT_INV_cnt_s\(12),
	cin => \cnt_strat|Add0~14\,
	sumout => \cnt_strat|Add0~9_sumout\,
	cout => \cnt_strat|Add0~10\);

-- Location: LABCELL_X68_Y2_N0
\cnt_strat|cnt_s[12]_NEW78\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|cnt_s[12]_OTERM79\ = ( \cnt_strat|Equal0~6_combout\ & ( (\cnt_strat|STATE~q\ & \cnt_strat|Add0~9_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_strat|ALT_INV_STATE~q\,
	datac => \cnt_strat|ALT_INV_Add0~9_sumout\,
	dataf => \cnt_strat|ALT_INV_Equal0~6_combout\,
	combout => \cnt_strat|cnt_s[12]_OTERM79\);

-- Location: FF_X68_Y2_N2
\cnt_strat|cnt_s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_strat|cnt_s[12]_OTERM79\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_strat|cnt_s\(12));

-- Location: LABCELL_X67_Y2_N39
\cnt_strat|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|Add0~53_sumout\ = SUM(( \cnt_strat|cnt_s[13]~DUPLICATE_q\ ) + ( GND ) + ( \cnt_strat|Add0~10\ ))
-- \cnt_strat|Add0~54\ = CARRY(( \cnt_strat|cnt_s[13]~DUPLICATE_q\ ) + ( GND ) + ( \cnt_strat|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt_strat|ALT_INV_cnt_s[13]~DUPLICATE_q\,
	cin => \cnt_strat|Add0~10\,
	sumout => \cnt_strat|Add0~53_sumout\,
	cout => \cnt_strat|Add0~54\);

-- Location: LABCELL_X68_Y1_N21
\cnt_strat|cnt_s[13]_NEW80\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|cnt_s[13]_OTERM81\ = ( \cnt_strat|Equal0~6_combout\ & ( (\cnt_strat|Add0~53_sumout\ & \cnt_strat|STATE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cnt_strat|ALT_INV_Add0~53_sumout\,
	datad => \cnt_strat|ALT_INV_STATE~q\,
	dataf => \cnt_strat|ALT_INV_Equal0~6_combout\,
	combout => \cnt_strat|cnt_s[13]_OTERM81\);

-- Location: FF_X68_Y1_N22
\cnt_strat|cnt_s[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_strat|cnt_s[13]_OTERM81\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_strat|cnt_s[13]~DUPLICATE_q\);

-- Location: LABCELL_X67_Y2_N42
\cnt_strat|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|Add0~49_sumout\ = SUM(( \cnt_strat|cnt_s\(14) ) + ( GND ) + ( \cnt_strat|Add0~54\ ))
-- \cnt_strat|Add0~50\ = CARRY(( \cnt_strat|cnt_s\(14) ) + ( GND ) + ( \cnt_strat|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cnt_strat|ALT_INV_cnt_s\(14),
	cin => \cnt_strat|Add0~54\,
	sumout => \cnt_strat|Add0~49_sumout\,
	cout => \cnt_strat|Add0~50\);

-- Location: LABCELL_X68_Y1_N48
\cnt_strat|cnt_s[14]_NEW82\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|cnt_s[14]_OTERM83\ = ( \cnt_strat|Equal0~6_combout\ & ( (\cnt_strat|Add0~49_sumout\ & \cnt_strat|STATE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cnt_strat|ALT_INV_Add0~49_sumout\,
	datad => \cnt_strat|ALT_INV_STATE~q\,
	dataf => \cnt_strat|ALT_INV_Equal0~6_combout\,
	combout => \cnt_strat|cnt_s[14]_OTERM83\);

-- Location: FF_X68_Y1_N50
\cnt_strat|cnt_s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_strat|cnt_s[14]_OTERM83\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_strat|cnt_s\(14));

-- Location: LABCELL_X67_Y2_N45
\cnt_strat|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|Add0~45_sumout\ = SUM(( \cnt_strat|cnt_s\(15) ) + ( GND ) + ( \cnt_strat|Add0~50\ ))
-- \cnt_strat|Add0~46\ = CARRY(( \cnt_strat|cnt_s\(15) ) + ( GND ) + ( \cnt_strat|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt_strat|ALT_INV_cnt_s\(15),
	cin => \cnt_strat|Add0~50\,
	sumout => \cnt_strat|Add0~45_sumout\,
	cout => \cnt_strat|Add0~46\);

-- Location: LABCELL_X68_Y2_N15
\cnt_strat|cnt_s[15]_NEW84\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|cnt_s[15]_OTERM85\ = ( \cnt_strat|Add0~45_sumout\ & ( (\cnt_strat|STATE~q\ & \cnt_strat|Equal0~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_strat|ALT_INV_STATE~q\,
	datac => \cnt_strat|ALT_INV_Equal0~6_combout\,
	dataf => \cnt_strat|ALT_INV_Add0~45_sumout\,
	combout => \cnt_strat|cnt_s[15]_OTERM85\);

-- Location: FF_X68_Y2_N17
\cnt_strat|cnt_s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_strat|cnt_s[15]_OTERM85\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_strat|cnt_s\(15));

-- Location: LABCELL_X67_Y2_N48
\cnt_strat|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|Add0~41_sumout\ = SUM(( \cnt_strat|cnt_s\(16) ) + ( GND ) + ( \cnt_strat|Add0~46\ ))
-- \cnt_strat|Add0~42\ = CARRY(( \cnt_strat|cnt_s\(16) ) + ( GND ) + ( \cnt_strat|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cnt_strat|ALT_INV_cnt_s\(16),
	cin => \cnt_strat|Add0~46\,
	sumout => \cnt_strat|Add0~41_sumout\,
	cout => \cnt_strat|Add0~42\);

-- Location: LABCELL_X68_Y1_N54
\cnt_strat|cnt_s[16]_NEW86\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|cnt_s[16]_OTERM87\ = ( \cnt_strat|Equal0~6_combout\ & ( (\cnt_strat|Add0~41_sumout\ & \cnt_strat|STATE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cnt_strat|ALT_INV_Add0~41_sumout\,
	datad => \cnt_strat|ALT_INV_STATE~q\,
	dataf => \cnt_strat|ALT_INV_Equal0~6_combout\,
	combout => \cnt_strat|cnt_s[16]_OTERM87\);

-- Location: FF_X68_Y1_N56
\cnt_strat|cnt_s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_strat|cnt_s[16]_OTERM87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_strat|cnt_s\(16));

-- Location: LABCELL_X67_Y2_N51
\cnt_strat|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|Add0~37_sumout\ = SUM(( \cnt_strat|cnt_s\(17) ) + ( GND ) + ( \cnt_strat|Add0~42\ ))
-- \cnt_strat|Add0~38\ = CARRY(( \cnt_strat|cnt_s\(17) ) + ( GND ) + ( \cnt_strat|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt_strat|ALT_INV_cnt_s\(17),
	cin => \cnt_strat|Add0~42\,
	sumout => \cnt_strat|Add0~37_sumout\,
	cout => \cnt_strat|Add0~38\);

-- Location: LABCELL_X68_Y1_N51
\cnt_strat|cnt_s[17]_NEW88\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|cnt_s[17]_OTERM89\ = ( \cnt_strat|Equal0~6_combout\ & ( (\cnt_strat|Add0~37_sumout\ & \cnt_strat|STATE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cnt_strat|ALT_INV_Add0~37_sumout\,
	datad => \cnt_strat|ALT_INV_STATE~q\,
	dataf => \cnt_strat|ALT_INV_Equal0~6_combout\,
	combout => \cnt_strat|cnt_s[17]_OTERM89\);

-- Location: FF_X68_Y1_N52
\cnt_strat|cnt_s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_strat|cnt_s[17]_OTERM89\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_strat|cnt_s\(17));

-- Location: LABCELL_X67_Y2_N54
\cnt_strat|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|Add0~101_sumout\ = SUM(( \cnt_strat|cnt_s\(18) ) + ( GND ) + ( \cnt_strat|Add0~38\ ))
-- \cnt_strat|Add0~102\ = CARRY(( \cnt_strat|cnt_s\(18) ) + ( GND ) + ( \cnt_strat|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cnt_strat|ALT_INV_cnt_s\(18),
	cin => \cnt_strat|Add0~38\,
	sumout => \cnt_strat|Add0~101_sumout\,
	cout => \cnt_strat|Add0~102\);

-- Location: LABCELL_X68_Y2_N42
\cnt_strat|cnt_s[18]_NEW116\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|cnt_s[18]_OTERM117\ = ( \cnt_strat|Add0~101_sumout\ & ( (\cnt_strat|STATE~q\ & \cnt_strat|Equal0~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_strat|ALT_INV_STATE~q\,
	datab => \cnt_strat|ALT_INV_Equal0~6_combout\,
	dataf => \cnt_strat|ALT_INV_Add0~101_sumout\,
	combout => \cnt_strat|cnt_s[18]_OTERM117\);

-- Location: FF_X68_Y2_N44
\cnt_strat|cnt_s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_strat|cnt_s[18]_OTERM117\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_strat|cnt_s\(18));

-- Location: LABCELL_X67_Y2_N57
\cnt_strat|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|Add0~105_sumout\ = SUM(( \cnt_strat|cnt_s[19]~DUPLICATE_q\ ) + ( GND ) + ( \cnt_strat|Add0~102\ ))
-- \cnt_strat|Add0~106\ = CARRY(( \cnt_strat|cnt_s[19]~DUPLICATE_q\ ) + ( GND ) + ( \cnt_strat|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cnt_strat|ALT_INV_cnt_s[19]~DUPLICATE_q\,
	cin => \cnt_strat|Add0~102\,
	sumout => \cnt_strat|Add0~105_sumout\,
	cout => \cnt_strat|Add0~106\);

-- Location: LABCELL_X68_Y1_N18
\cnt_strat|cnt_s[19]_NEW114\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|cnt_s[19]_OTERM115\ = ( \cnt_strat|Equal0~6_combout\ & ( (\cnt_strat|Add0~105_sumout\ & \cnt_strat|STATE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cnt_strat|ALT_INV_Add0~105_sumout\,
	datad => \cnt_strat|ALT_INV_STATE~q\,
	dataf => \cnt_strat|ALT_INV_Equal0~6_combout\,
	combout => \cnt_strat|cnt_s[19]_OTERM115\);

-- Location: FF_X68_Y1_N19
\cnt_strat|cnt_s[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_strat|cnt_s[19]_OTERM115\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_strat|cnt_s[19]~DUPLICATE_q\);

-- Location: LABCELL_X67_Y1_N0
\cnt_strat|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|Add0~109_sumout\ = SUM(( \cnt_strat|cnt_s\(20) ) + ( GND ) + ( \cnt_strat|Add0~106\ ))
-- \cnt_strat|Add0~110\ = CARRY(( \cnt_strat|cnt_s\(20) ) + ( GND ) + ( \cnt_strat|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cnt_strat|ALT_INV_cnt_s\(20),
	cin => \cnt_strat|Add0~106\,
	sumout => \cnt_strat|Add0~109_sumout\,
	cout => \cnt_strat|Add0~110\);

-- Location: LABCELL_X68_Y1_N9
\cnt_strat|cnt_s[20]_NEW112\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|cnt_s[20]_OTERM113\ = ( \cnt_strat|Equal0~6_combout\ & ( (\cnt_strat|Add0~109_sumout\ & \cnt_strat|STATE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cnt_strat|ALT_INV_Add0~109_sumout\,
	datad => \cnt_strat|ALT_INV_STATE~q\,
	dataf => \cnt_strat|ALT_INV_Equal0~6_combout\,
	combout => \cnt_strat|cnt_s[20]_OTERM113\);

-- Location: FF_X68_Y1_N11
\cnt_strat|cnt_s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_strat|cnt_s[20]_OTERM113\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_strat|cnt_s\(20));

-- Location: LABCELL_X67_Y1_N3
\cnt_strat|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|Add0~33_sumout\ = SUM(( \cnt_strat|cnt_s\(21) ) + ( GND ) + ( \cnt_strat|Add0~110\ ))
-- \cnt_strat|Add0~34\ = CARRY(( \cnt_strat|cnt_s\(21) ) + ( GND ) + ( \cnt_strat|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt_strat|ALT_INV_cnt_s\(21),
	cin => \cnt_strat|Add0~110\,
	sumout => \cnt_strat|Add0~33_sumout\,
	cout => \cnt_strat|Add0~34\);

-- Location: LABCELL_X68_Y1_N6
\cnt_strat|cnt_s[21]_NEW90\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|cnt_s[21]_OTERM91\ = ( \cnt_strat|Equal0~6_combout\ & ( (\cnt_strat|Add0~33_sumout\ & \cnt_strat|STATE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cnt_strat|ALT_INV_Add0~33_sumout\,
	datad => \cnt_strat|ALT_INV_STATE~q\,
	dataf => \cnt_strat|ALT_INV_Equal0~6_combout\,
	combout => \cnt_strat|cnt_s[21]_OTERM91\);

-- Location: FF_X68_Y1_N8
\cnt_strat|cnt_s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_strat|cnt_s[21]_OTERM91\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_strat|cnt_s\(21));

-- Location: FF_X68_Y1_N23
\cnt_strat|cnt_s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_strat|cnt_s[13]_OTERM81\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_strat|cnt_s\(13));

-- Location: LABCELL_X68_Y1_N24
\cnt_strat|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|Equal0~2_combout\ = ( !\cnt_strat|cnt_s\(13) & ( !\cnt_strat|cnt_s\(15) & ( (!\cnt_strat|cnt_s\(16) & (!\cnt_strat|cnt_s\(21) & (!\cnt_strat|cnt_s\(14) & !\cnt_strat|cnt_s\(17)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_strat|ALT_INV_cnt_s\(16),
	datab => \cnt_strat|ALT_INV_cnt_s\(21),
	datac => \cnt_strat|ALT_INV_cnt_s\(14),
	datad => \cnt_strat|ALT_INV_cnt_s\(17),
	datae => \cnt_strat|ALT_INV_cnt_s\(13),
	dataf => \cnt_strat|ALT_INV_cnt_s\(15),
	combout => \cnt_strat|Equal0~2_combout\);

-- Location: FF_X67_Y1_N47
\cnt_strat|cnt_s[27]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_strat|cnt_s[27]_OTERM101\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_strat|cnt_s[27]~DUPLICATE_q\);

-- Location: LABCELL_X67_Y1_N6
\cnt_strat|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|Add0~113_sumout\ = SUM(( \cnt_strat|cnt_s\(22) ) + ( GND ) + ( \cnt_strat|Add0~34\ ))
-- \cnt_strat|Add0~114\ = CARRY(( \cnt_strat|cnt_s\(22) ) + ( GND ) + ( \cnt_strat|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt_strat|ALT_INV_cnt_s\(22),
	cin => \cnt_strat|Add0~34\,
	sumout => \cnt_strat|Add0~113_sumout\,
	cout => \cnt_strat|Add0~114\);

-- Location: LABCELL_X68_Y1_N57
\cnt_strat|cnt_s[22]_NEW110\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|cnt_s[22]_OTERM111\ = ( \cnt_strat|Equal0~6_combout\ & ( (\cnt_strat|STATE~q\ & \cnt_strat|Add0~113_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_strat|ALT_INV_STATE~q\,
	datad => \cnt_strat|ALT_INV_Add0~113_sumout\,
	dataf => \cnt_strat|ALT_INV_Equal0~6_combout\,
	combout => \cnt_strat|cnt_s[22]_OTERM111\);

-- Location: FF_X68_Y1_N59
\cnt_strat|cnt_s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_strat|cnt_s[22]_OTERM111\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_strat|cnt_s\(22));

-- Location: LABCELL_X67_Y1_N9
\cnt_strat|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|Add0~117_sumout\ = SUM(( \cnt_strat|cnt_s\(23) ) + ( GND ) + ( \cnt_strat|Add0~114\ ))
-- \cnt_strat|Add0~118\ = CARRY(( \cnt_strat|cnt_s\(23) ) + ( GND ) + ( \cnt_strat|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cnt_strat|ALT_INV_cnt_s\(23),
	cin => \cnt_strat|Add0~114\,
	sumout => \cnt_strat|Add0~117_sumout\,
	cout => \cnt_strat|Add0~118\);

-- Location: LABCELL_X67_Y1_N51
\cnt_strat|cnt_s[23]_NEW108\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|cnt_s[23]_OTERM109\ = ( \cnt_strat|Add0~117_sumout\ & ( (\cnt_strat|Equal0~6_combout\ & \cnt_strat|STATE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_strat|ALT_INV_Equal0~6_combout\,
	datac => \cnt_strat|ALT_INV_STATE~q\,
	dataf => \cnt_strat|ALT_INV_Add0~117_sumout\,
	combout => \cnt_strat|cnt_s[23]_OTERM109\);

-- Location: FF_X67_Y1_N52
\cnt_strat|cnt_s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_strat|cnt_s[23]_OTERM109\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_strat|cnt_s\(23));

-- Location: LABCELL_X67_Y1_N12
\cnt_strat|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|Add0~121_sumout\ = SUM(( \cnt_strat|cnt_s\(24) ) + ( GND ) + ( \cnt_strat|Add0~118\ ))
-- \cnt_strat|Add0~122\ = CARRY(( \cnt_strat|cnt_s\(24) ) + ( GND ) + ( \cnt_strat|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cnt_strat|ALT_INV_cnt_s\(24),
	cin => \cnt_strat|Add0~118\,
	sumout => \cnt_strat|Add0~121_sumout\,
	cout => \cnt_strat|Add0~122\);

-- Location: LABCELL_X68_Y1_N3
\cnt_strat|cnt_s[24]_NEW106\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|cnt_s[24]_OTERM107\ = ( \cnt_strat|Equal0~6_combout\ & ( (\cnt_strat|STATE~q\ & \cnt_strat|Add0~121_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_strat|ALT_INV_STATE~q\,
	datad => \cnt_strat|ALT_INV_Add0~121_sumout\,
	dataf => \cnt_strat|ALT_INV_Equal0~6_combout\,
	combout => \cnt_strat|cnt_s[24]_OTERM107\);

-- Location: FF_X68_Y1_N5
\cnt_strat|cnt_s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_strat|cnt_s[24]_OTERM107\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_strat|cnt_s\(24));

-- Location: LABCELL_X67_Y1_N15
\cnt_strat|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|Add0~125_sumout\ = SUM(( \cnt_strat|cnt_s\(25) ) + ( GND ) + ( \cnt_strat|Add0~122\ ))
-- \cnt_strat|Add0~126\ = CARRY(( \cnt_strat|cnt_s\(25) ) + ( GND ) + ( \cnt_strat|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cnt_strat|ALT_INV_cnt_s\(25),
	cin => \cnt_strat|Add0~122\,
	sumout => \cnt_strat|Add0~125_sumout\,
	cout => \cnt_strat|Add0~126\);

-- Location: LABCELL_X67_Y1_N42
\cnt_strat|cnt_s[25]_NEW104\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|cnt_s[25]_OTERM105\ = ( \cnt_strat|Add0~125_sumout\ & ( (\cnt_strat|Equal0~6_combout\ & \cnt_strat|STATE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_strat|ALT_INV_Equal0~6_combout\,
	datad => \cnt_strat|ALT_INV_STATE~q\,
	dataf => \cnt_strat|ALT_INV_Add0~125_sumout\,
	combout => \cnt_strat|cnt_s[25]_OTERM105\);

-- Location: FF_X67_Y1_N43
\cnt_strat|cnt_s[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_strat|cnt_s[25]_OTERM105\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_strat|cnt_s\(25));

-- Location: LABCELL_X67_Y1_N18
\cnt_strat|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|Add0~57_sumout\ = SUM(( \cnt_strat|cnt_s[26]~DUPLICATE_q\ ) + ( GND ) + ( \cnt_strat|Add0~126\ ))
-- \cnt_strat|Add0~58\ = CARRY(( \cnt_strat|cnt_s[26]~DUPLICATE_q\ ) + ( GND ) + ( \cnt_strat|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cnt_strat|ALT_INV_cnt_s[26]~DUPLICATE_q\,
	cin => \cnt_strat|Add0~126\,
	sumout => \cnt_strat|Add0~57_sumout\,
	cout => \cnt_strat|Add0~58\);

-- Location: LABCELL_X67_Y1_N48
\cnt_strat|cnt_s[26]_NEW102\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|cnt_s[26]_OTERM103\ = ( \cnt_strat|Add0~57_sumout\ & ( (\cnt_strat|Equal0~6_combout\ & \cnt_strat|STATE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_strat|ALT_INV_Equal0~6_combout\,
	datad => \cnt_strat|ALT_INV_STATE~q\,
	dataf => \cnt_strat|ALT_INV_Add0~57_sumout\,
	combout => \cnt_strat|cnt_s[26]_OTERM103\);

-- Location: FF_X67_Y1_N50
\cnt_strat|cnt_s[26]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_strat|cnt_s[26]_OTERM103\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_strat|cnt_s[26]~DUPLICATE_q\);

-- Location: LABCELL_X67_Y1_N21
\cnt_strat|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|Add0~61_sumout\ = SUM(( \cnt_strat|cnt_s[27]~DUPLICATE_q\ ) + ( GND ) + ( \cnt_strat|Add0~58\ ))
-- \cnt_strat|Add0~62\ = CARRY(( \cnt_strat|cnt_s[27]~DUPLICATE_q\ ) + ( GND ) + ( \cnt_strat|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cnt_strat|ALT_INV_cnt_s[27]~DUPLICATE_q\,
	cin => \cnt_strat|Add0~58\,
	sumout => \cnt_strat|Add0~61_sumout\,
	cout => \cnt_strat|Add0~62\);

-- Location: LABCELL_X67_Y1_N45
\cnt_strat|cnt_s[27]_NEW100\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|cnt_s[27]_OTERM101\ = ( \cnt_strat|Add0~61_sumout\ & ( (\cnt_strat|Equal0~6_combout\ & \cnt_strat|STATE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_strat|ALT_INV_Equal0~6_combout\,
	datac => \cnt_strat|ALT_INV_STATE~q\,
	dataf => \cnt_strat|ALT_INV_Add0~61_sumout\,
	combout => \cnt_strat|cnt_s[27]_OTERM101\);

-- Location: FF_X67_Y1_N46
\cnt_strat|cnt_s[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_strat|cnt_s[27]_OTERM101\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_strat|cnt_s\(27));

-- Location: FF_X67_Y1_N49
\cnt_strat|cnt_s[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_strat|cnt_s[26]_OTERM103\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_strat|cnt_s\(26));

-- Location: LABCELL_X67_Y1_N24
\cnt_strat|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|Add0~65_sumout\ = SUM(( \cnt_strat|cnt_s\(28) ) + ( GND ) + ( \cnt_strat|Add0~62\ ))
-- \cnt_strat|Add0~66\ = CARRY(( \cnt_strat|cnt_s\(28) ) + ( GND ) + ( \cnt_strat|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cnt_strat|ALT_INV_cnt_s\(28),
	cin => \cnt_strat|Add0~62\,
	sumout => \cnt_strat|Add0~65_sumout\,
	cout => \cnt_strat|Add0~66\);

-- Location: LABCELL_X67_Y1_N39
\cnt_strat|cnt_s[28]_NEW98\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|cnt_s[28]_OTERM99\ = ( \cnt_strat|Add0~65_sumout\ & ( (\cnt_strat|Equal0~6_combout\ & \cnt_strat|STATE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_strat|ALT_INV_Equal0~6_combout\,
	datac => \cnt_strat|ALT_INV_STATE~q\,
	dataf => \cnt_strat|ALT_INV_Add0~65_sumout\,
	combout => \cnt_strat|cnt_s[28]_OTERM99\);

-- Location: FF_X67_Y1_N41
\cnt_strat|cnt_s[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_strat|cnt_s[28]_OTERM99\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_strat|cnt_s\(28));

-- Location: LABCELL_X67_Y1_N27
\cnt_strat|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|Add0~69_sumout\ = SUM(( \cnt_strat|cnt_s\(29) ) + ( GND ) + ( \cnt_strat|Add0~66\ ))
-- \cnt_strat|Add0~70\ = CARRY(( \cnt_strat|cnt_s\(29) ) + ( GND ) + ( \cnt_strat|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cnt_strat|ALT_INV_cnt_s\(29),
	cin => \cnt_strat|Add0~66\,
	sumout => \cnt_strat|Add0~69_sumout\,
	cout => \cnt_strat|Add0~70\);

-- Location: LABCELL_X67_Y1_N54
\cnt_strat|cnt_s[29]_NEW96\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|cnt_s[29]_OTERM97\ = ( \cnt_strat|Add0~69_sumout\ & ( (\cnt_strat|Equal0~6_combout\ & \cnt_strat|STATE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_strat|ALT_INV_Equal0~6_combout\,
	datad => \cnt_strat|ALT_INV_STATE~q\,
	dataf => \cnt_strat|ALT_INV_Add0~69_sumout\,
	combout => \cnt_strat|cnt_s[29]_OTERM97\);

-- Location: FF_X67_Y1_N55
\cnt_strat|cnt_s[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_strat|cnt_s[29]_OTERM97\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_strat|cnt_s\(29));

-- Location: LABCELL_X67_Y1_N30
\cnt_strat|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|Add0~73_sumout\ = SUM(( \cnt_strat|cnt_s\(30) ) + ( GND ) + ( \cnt_strat|Add0~70\ ))
-- \cnt_strat|Add0~74\ = CARRY(( \cnt_strat|cnt_s\(30) ) + ( GND ) + ( \cnt_strat|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cnt_strat|ALT_INV_cnt_s\(30),
	cin => \cnt_strat|Add0~70\,
	sumout => \cnt_strat|Add0~73_sumout\,
	cout => \cnt_strat|Add0~74\);

-- Location: LABCELL_X67_Y1_N57
\cnt_strat|cnt_s[30]_NEW94\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|cnt_s[30]_OTERM95\ = ( \cnt_strat|Add0~73_sumout\ & ( (\cnt_strat|Equal0~6_combout\ & \cnt_strat|STATE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_strat|ALT_INV_Equal0~6_combout\,
	datac => \cnt_strat|ALT_INV_STATE~q\,
	dataf => \cnt_strat|ALT_INV_Add0~73_sumout\,
	combout => \cnt_strat|cnt_s[30]_OTERM95\);

-- Location: FF_X67_Y1_N58
\cnt_strat|cnt_s[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_strat|cnt_s[30]_OTERM95\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_strat|cnt_s\(30));

-- Location: FF_X67_Y1_N38
\cnt_strat|cnt_s[31]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_strat|cnt_s[31]_OTERM93\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_strat|cnt_s[31]~DUPLICATE_q\);

-- Location: LABCELL_X67_Y1_N33
\cnt_strat|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|Add0~77_sumout\ = SUM(( \cnt_strat|cnt_s[31]~DUPLICATE_q\ ) + ( GND ) + ( \cnt_strat|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt_strat|ALT_INV_cnt_s[31]~DUPLICATE_q\,
	cin => \cnt_strat|Add0~74\,
	sumout => \cnt_strat|Add0~77_sumout\);

-- Location: LABCELL_X67_Y1_N36
\cnt_strat|cnt_s[31]_NEW92\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|cnt_s[31]_OTERM93\ = ( \cnt_strat|Add0~77_sumout\ & ( (\cnt_strat|Equal0~6_combout\ & \cnt_strat|STATE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_strat|ALT_INV_Equal0~6_combout\,
	datad => \cnt_strat|ALT_INV_STATE~q\,
	dataf => \cnt_strat|ALT_INV_Add0~77_sumout\,
	combout => \cnt_strat|cnt_s[31]_OTERM93\);

-- Location: FF_X67_Y1_N37
\cnt_strat|cnt_s[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_strat|cnt_s[31]_OTERM93\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_strat|cnt_s\(31));

-- Location: LABCELL_X68_Y1_N42
\cnt_strat|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|Equal0~3_combout\ = ( !\cnt_strat|cnt_s\(30) & ( !\cnt_strat|cnt_s\(31) & ( (!\cnt_strat|cnt_s\(27) & (!\cnt_strat|cnt_s\(26) & (!\cnt_strat|cnt_s\(29) & !\cnt_strat|cnt_s\(28)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_strat|ALT_INV_cnt_s\(27),
	datab => \cnt_strat|ALT_INV_cnt_s\(26),
	datac => \cnt_strat|ALT_INV_cnt_s\(29),
	datad => \cnt_strat|ALT_INV_cnt_s\(28),
	datae => \cnt_strat|ALT_INV_cnt_s\(30),
	dataf => \cnt_strat|ALT_INV_cnt_s\(31),
	combout => \cnt_strat|Equal0~3_combout\);

-- Location: LABCELL_X68_Y1_N0
\cnt_strat|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|Equal0~0_combout\ = ( \cnt_strat|cnt_s\(6) & ( \cnt_strat|cnt_s\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cnt_strat|ALT_INV_cnt_s\(5),
	dataf => \cnt_strat|ALT_INV_cnt_s\(6),
	combout => \cnt_strat|Equal0~0_combout\);

-- Location: FF_X68_Y1_N20
\cnt_strat|cnt_s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_strat|cnt_s[19]_OTERM115\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_strat|cnt_s\(19));

-- Location: LABCELL_X68_Y1_N12
\cnt_strat|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|Equal0~5_combout\ = ( !\cnt_strat|cnt_s\(22) & ( !\cnt_strat|cnt_s\(23) & ( (!\cnt_strat|cnt_s\(19) & (!\cnt_strat|cnt_s\(20) & (!\cnt_strat|cnt_s\(24) & !\cnt_strat|cnt_s\(25)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_strat|ALT_INV_cnt_s\(19),
	datab => \cnt_strat|ALT_INV_cnt_s\(20),
	datac => \cnt_strat|ALT_INV_cnt_s\(24),
	datad => \cnt_strat|ALT_INV_cnt_s\(25),
	datae => \cnt_strat|ALT_INV_cnt_s\(22),
	dataf => \cnt_strat|ALT_INV_cnt_s\(23),
	combout => \cnt_strat|Equal0~5_combout\);

-- Location: FF_X68_Y2_N22
\cnt_strat|cnt_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_strat|cnt_s[7]_OTERM69\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_strat|cnt_s\(7));

-- Location: LABCELL_X68_Y2_N48
\cnt_strat|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|Equal0~1_combout\ = ( !\cnt_strat|cnt_s\(9) & ( \cnt_strat|cnt_s\(8) & ( (!\cnt_strat|cnt_s\(12) & (!\cnt_strat|cnt_s\(11) & (!\cnt_strat|cnt_s\(10) & \cnt_strat|cnt_s\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_strat|ALT_INV_cnt_s\(12),
	datab => \cnt_strat|ALT_INV_cnt_s\(11),
	datac => \cnt_strat|ALT_INV_cnt_s\(10),
	datad => \cnt_strat|ALT_INV_cnt_s\(7),
	datae => \cnt_strat|ALT_INV_cnt_s\(9),
	dataf => \cnt_strat|ALT_INV_cnt_s\(8),
	combout => \cnt_strat|Equal0~1_combout\);

-- Location: LABCELL_X68_Y2_N6
\cnt_strat|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|Equal0~4_combout\ = ( !\cnt_strat|cnt_s\(0) & ( \cnt_strat|cnt_s\(2) & ( (\cnt_strat|cnt_s\(4) & (!\cnt_strat|cnt_s\(3) & (!\cnt_strat|cnt_s\(1) & !\cnt_strat|cnt_s\(18)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_strat|ALT_INV_cnt_s\(4),
	datab => \cnt_strat|ALT_INV_cnt_s\(3),
	datac => \cnt_strat|ALT_INV_cnt_s\(1),
	datad => \cnt_strat|ALT_INV_cnt_s\(18),
	datae => \cnt_strat|ALT_INV_cnt_s\(0),
	dataf => \cnt_strat|ALT_INV_cnt_s\(2),
	combout => \cnt_strat|Equal0~4_combout\);

-- Location: LABCELL_X68_Y1_N30
\cnt_strat|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_strat|Equal0~6_combout\ = ( \cnt_strat|Equal0~1_combout\ & ( \cnt_strat|Equal0~4_combout\ & ( (!\cnt_strat|Equal0~2_combout\) # ((!\cnt_strat|Equal0~3_combout\) # ((!\cnt_strat|Equal0~0_combout\) # (!\cnt_strat|Equal0~5_combout\))) ) ) ) # ( 
-- !\cnt_strat|Equal0~1_combout\ & ( \cnt_strat|Equal0~4_combout\ ) ) # ( \cnt_strat|Equal0~1_combout\ & ( !\cnt_strat|Equal0~4_combout\ ) ) # ( !\cnt_strat|Equal0~1_combout\ & ( !\cnt_strat|Equal0~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_strat|ALT_INV_Equal0~2_combout\,
	datab => \cnt_strat|ALT_INV_Equal0~3_combout\,
	datac => \cnt_strat|ALT_INV_Equal0~0_combout\,
	datad => \cnt_strat|ALT_INV_Equal0~5_combout\,
	datae => \cnt_strat|ALT_INV_Equal0~1_combout\,
	dataf => \cnt_strat|ALT_INV_Equal0~4_combout\,
	combout => \cnt_strat|Equal0~6_combout\);

-- Location: LABCELL_X71_Y1_N39
\main|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \main|Selector2~0_combout\ = ( \main|STATE.CNT_START~q\ & ( \cnt_strat|Equal0~6_combout\ ) ) # ( !\main|STATE.CNT_START~q\ & ( \cnt_strat|Equal0~6_combout\ & ( \main|STATE.STEP_ACTIVATION~q\ ) ) ) # ( \main|STATE.CNT_START~q\ & ( 
-- !\cnt_strat|Equal0~6_combout\ & ( \main|STATE.STEP_ACTIVATION~q\ ) ) ) # ( !\main|STATE.CNT_START~q\ & ( !\cnt_strat|Equal0~6_combout\ & ( \main|STATE.STEP_ACTIVATION~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main|ALT_INV_STATE.STEP_ACTIVATION~q\,
	datae => \main|ALT_INV_STATE.CNT_START~q\,
	dataf => \cnt_strat|ALT_INV_Equal0~6_combout\,
	combout => \main|Selector2~0_combout\);

-- Location: FF_X71_Y1_N41
\main|STATE.CNT_START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \main|Selector2~0_combout\,
	sclr => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main|STATE.CNT_START~q\);

-- Location: LABCELL_X71_Y4_N18
\main|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \main|Selector0~0_combout\ = ( !\en_disc~input_o\ & ( (!\main|STATE.CHECK_END~q\ & ((((\main|STATE.CNT_START~q\ & !\cnt_strat|Equal0~6_combout\))))) # (\main|STATE.CHECK_END~q\ & ((!\dp_2_ctrl.end_of_guru~input_o\) # (((\main|STATE.CNT_START~q\ & 
-- !\cnt_strat|Equal0~6_combout\)) # (\ref_2_base.duo_formed~input_o\)))) ) ) # ( \en_disc~input_o\ & ( (!\main|STATE.CHECK_END~q\ & ((((\main|STATE.CNT_START~q\ & !\cnt_strat|Equal0~6_combout\))))) # (\main|STATE.CHECK_END~q\ & 
-- ((!\dp_2_ctrl.end_of_guru~input_o\) # ((!\disc_2_base.end_of_disc~input_o\) # ((\main|STATE.CNT_START~q\ & !\cnt_strat|Equal0~6_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010001111111111001100101111111100100011001000110011001000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dp_2_ctrl.end_of_guru~input_o\,
	datab => \main|ALT_INV_STATE.CHECK_END~q\,
	datac => \ALT_INV_disc_2_base.end_of_disc~input_o\,
	datad => \main|ALT_INV_STATE.CNT_START~q\,
	datae => \ALT_INV_en_disc~input_o\,
	dataf => \cnt_strat|ALT_INV_Equal0~6_combout\,
	datag => \ALT_INV_ref_2_base.duo_formed~input_o\,
	combout => \main|Selector0~0_combout\);

-- Location: FF_X71_Y4_N20
\main|STATE.CHECK_END\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \main|Selector0~0_combout\,
	sclr => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main|STATE.CHECK_END~q\);

-- Location: IOIBUF_X76_Y0_N52
\ref_2_base.go_guru~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_ref_2_base.go_guru\,
	o => \ref_2_base.go_guru~input_o\);

-- Location: IOIBUF_X68_Y0_N18
\cnt_guru_rdy~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cnt_guru_rdy,
	o => \cnt_guru_rdy~input_o\);

-- Location: LABCELL_X73_Y4_N39
\guru|STATE~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \guru|STATE~15_combout\ = ( \ref_2_base.go_guru~input_o\ & ( (\dp_2_ctrl.end_of_guru~input_o\ & (!\res~input_o\ & \guru|STATE.CHECK_LAST~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dp_2_ctrl.end_of_guru~input_o\,
	datac => \ALT_INV_res~input_o\,
	datad => \guru|ALT_INV_STATE.CHECK_LAST~q\,
	dataf => \ALT_INV_ref_2_base.go_guru~input_o\,
	combout => \guru|STATE~15_combout\);

-- Location: FF_X73_Y4_N41
\guru|STATE.LAST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \guru|STATE~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \guru|STATE.LAST~q\);

-- Location: LABCELL_X71_Y4_N36
\guru|STATE~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \guru|STATE~14_combout\ = ( \main|STATE.STEP_ACTIVATION~q\ & ( (!\res~input_o\ & !\guru|STATE.LAST~q\) ) ) # ( !\main|STATE.STEP_ACTIVATION~q\ & ( (!\res~input_o\ & (!\guru|STATE.LAST~q\ & \guru|STATE.START_WALKING~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_res~input_o\,
	datac => \guru|ALT_INV_STATE.LAST~q\,
	datad => \guru|ALT_INV_STATE.START_WALKING~q\,
	dataf => \main|ALT_INV_STATE.STEP_ACTIVATION~q\,
	combout => \guru|STATE~14_combout\);

-- Location: FF_X71_Y4_N38
\guru|STATE.START_WALKING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \guru|STATE~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \guru|STATE.START_WALKING~q\);

-- Location: LABCELL_X71_Y4_N45
\guru|STATE~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \guru|STATE~16_combout\ = (\main|STATE.STEP_ACTIVATION~q\ & (!\res~input_o\ & !\guru|STATE.START_WALKING~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \main|ALT_INV_STATE.STEP_ACTIVATION~q\,
	datac => \ALT_INV_res~input_o\,
	datad => \guru|ALT_INV_STATE.START_WALKING~q\,
	combout => \guru|STATE~16_combout\);

-- Location: FF_X71_Y4_N47
\guru|STATE.RAND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \guru|STATE~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \guru|STATE.RAND~q\);

-- Location: LABCELL_X70_Y4_N45
\guru|STATE~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \guru|STATE~18_combout\ = ( \guru|STATE.RAND~q\ & ( !\res~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_res~input_o\,
	dataf => \guru|ALT_INV_STATE.RAND~q\,
	combout => \guru|STATE~18_combout\);

-- Location: FF_X70_Y4_N47
\guru|STATE.WRITE_RAND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \guru|STATE~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \guru|STATE.WRITE_RAND~q\);

-- Location: LABCELL_X71_Y4_N15
\guru|STATE~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \guru|STATE~19_combout\ = ( \guru|STATE.CHECK_SAME_ADDR~q\ & ( (!\ref_2_base.duo_formed~input_o\ & !\res~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ref_2_base.duo_formed~input_o\,
	datac => \ALT_INV_res~input_o\,
	dataf => \guru|ALT_INV_STATE.CHECK_SAME_ADDR~q\,
	combout => \guru|STATE~19_combout\);

-- Location: FF_X71_Y4_N16
\guru|STATE.WRITE_GURU\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \guru|STATE~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \guru|STATE.WRITE_GURU~q\);

-- Location: LABCELL_X71_Y4_N9
\guru|NEXT_STATE.CLEAR_PREV~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \guru|NEXT_STATE.CLEAR_PREV~0_combout\ = ( \guru|STATE.WRITE_GURU~q\ ) # ( !\guru|STATE.WRITE_GURU~q\ & ( \guru|STATE.WRITE_DUO~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \guru|ALT_INV_STATE.WRITE_DUO~q\,
	dataf => \guru|ALT_INV_STATE.WRITE_GURU~q\,
	combout => \guru|NEXT_STATE.CLEAR_PREV~0_combout\);

-- Location: FF_X71_Y4_N11
\guru|STATE.CLEAR_PREV\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \guru|NEXT_STATE.CLEAR_PREV~0_combout\,
	sclr => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \guru|STATE.CLEAR_PREV~q\);

-- Location: LABCELL_X70_Y4_N33
\guru|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \guru|Selector1~0_combout\ = ( \guru|STATE.CLEAR_PREV~q\ ) # ( !\guru|STATE.CLEAR_PREV~q\ & ( ((!\cnt_guru_rdy~input_o\ & \guru|STATE.WAIT_COUNT_GURU~q\)) # (\guru|STATE.WRITE_RAND~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111001111000011111100111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_cnt_guru_rdy~input_o\,
	datac => \guru|ALT_INV_STATE.WRITE_RAND~q\,
	datad => \guru|ALT_INV_STATE.WAIT_COUNT_GURU~q\,
	dataf => \guru|ALT_INV_STATE.CLEAR_PREV~q\,
	combout => \guru|Selector1~0_combout\);

-- Location: FF_X70_Y4_N35
\guru|STATE.WAIT_COUNT_GURU\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \guru|Selector1~0_combout\,
	sclr => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \guru|STATE.WAIT_COUNT_GURU~q\);

-- Location: LABCELL_X70_Y4_N30
\guru|STATE~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \guru|STATE~17_combout\ = ( \guru|STATE.WAIT_COUNT_GURU~q\ & ( (\cnt_guru_rdy~input_o\ & !\res~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_cnt_guru_rdy~input_o\,
	datac => \ALT_INV_res~input_o\,
	dataf => \guru|ALT_INV_STATE.WAIT_COUNT_GURU~q\,
	combout => \guru|STATE~17_combout\);

-- Location: FF_X70_Y4_N32
\guru|STATE.INCR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \guru|STATE~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \guru|STATE.INCR~q\);

-- Location: LABCELL_X73_Y4_N54
\guru|STATE~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \guru|STATE~21_combout\ = ( \guru|STATE.INCR~q\ ) # ( !\guru|STATE.INCR~q\ & ( (!\ref_2_base.go_guru~input_o\ & \guru|STATE.CHECK_LAST~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ref_2_base.go_guru~input_o\,
	datad => \guru|ALT_INV_STATE.CHECK_LAST~q\,
	dataf => \guru|ALT_INV_STATE.INCR~q\,
	combout => \guru|STATE~21_combout\);

-- Location: FF_X73_Y4_N56
\guru|STATE.CHECK_LAST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \guru|STATE~21_combout\,
	sclr => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \guru|STATE.CHECK_LAST~q\);

-- Location: LABCELL_X73_Y4_N27
\guru|STATE~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \guru|STATE~20_combout\ = ( \ref_2_base.go_guru~input_o\ & ( (!\dp_2_ctrl.end_of_guru~input_o\ & (!\res~input_o\ & \guru|STATE.CHECK_LAST~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dp_2_ctrl.end_of_guru~input_o\,
	datac => \ALT_INV_res~input_o\,
	datad => \guru|ALT_INV_STATE.CHECK_LAST~q\,
	dataf => \ALT_INV_ref_2_base.go_guru~input_o\,
	combout => \guru|STATE~20_combout\);

-- Location: FF_X73_Y4_N29
\guru|STATE.CHECK_SAME_ADDR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \guru|STATE~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \guru|STATE.CHECK_SAME_ADDR~q\);

-- Location: LABCELL_X71_Y4_N30
\guru|STATE~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \guru|STATE~13_combout\ = ( \guru|STATE.CHECK_SAME_ADDR~q\ & ( (!\res~input_o\ & \ref_2_base.duo_formed~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_res~input_o\,
	datac => \ALT_INV_ref_2_base.duo_formed~input_o\,
	dataf => \guru|ALT_INV_STATE.CHECK_SAME_ADDR~q\,
	combout => \guru|STATE~13_combout\);

-- Location: FF_X71_Y4_N32
\guru|STATE.WRITE_DUO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \guru|STATE~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \guru|STATE.WRITE_DUO~q\);

-- Location: LABCELL_X70_Y4_N51
\ctrl_2_dp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl_2_dp~0_combout\ = ( \guru|STATE.WRITE_DUO~q\ & ( \main|STATE.INIT_ACTIVATION~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	dataf => \guru|ALT_INV_STATE.WRITE_DUO~q\,
	combout => \ctrl_2_dp~0_combout\);

-- Location: LABCELL_X70_Y4_N18
\ctrl_2_dp~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl_2_dp~1_combout\ = ( !\guru|STATE.CLEAR_PREV~q\ & ( (!\guru|STATE.LAST~q\ & (\main|STATE.INIT_ACTIVATION~q\ & (!\guru|STATE.WRITE_DUO~q\ & \guru|STATE.START_WALKING~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \guru|ALT_INV_STATE.LAST~q\,
	datab => \main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	datac => \guru|ALT_INV_STATE.WRITE_DUO~q\,
	datad => \guru|ALT_INV_STATE.START_WALKING~q\,
	dataf => \guru|ALT_INV_STATE.CLEAR_PREV~q\,
	combout => \ctrl_2_dp~1_combout\);

-- Location: LABCELL_X70_Y4_N12
\ctrl_2_dp~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl_2_dp~2_combout\ = ( !\guru|STATE.CLEAR_PREV~q\ & ( (\guru|STATE.START_WALKING~q\ & (!\guru|STATE.LAST~q\ & \main|STATE.INIT_ACTIVATION~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \guru|ALT_INV_STATE.START_WALKING~q\,
	datac => \guru|ALT_INV_STATE.LAST~q\,
	datad => \main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	dataf => \guru|ALT_INV_STATE.CLEAR_PREV~q\,
	combout => \ctrl_2_dp~2_combout\);

-- Location: LABCELL_X74_Y4_N27
\ctrl_2_dp~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl_2_dp~3_combout\ = ( \main|STATE.INIT_ACTIVATION~q\ & ( (\guru|STATE.CLEAR_PREV~q\) # (\guru|STATE.LAST~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \guru|ALT_INV_STATE.LAST~q\,
	datac => \guru|ALT_INV_STATE.CLEAR_PREV~q\,
	dataf => \main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	combout => \ctrl_2_dp~3_combout\);

-- Location: LABCELL_X70_Y4_N42
\ctrl_2_dp~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl_2_dp~4_combout\ = ( !\guru|STATE.CLEAR_PREV~q\ & ( (\main|STATE.INIT_ACTIVATION~q\ & !\guru|STATE.LAST~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	datac => \guru|ALT_INV_STATE.LAST~q\,
	dataf => \guru|ALT_INV_STATE.CLEAR_PREV~q\,
	combout => \ctrl_2_dp~4_combout\);

-- Location: LABCELL_X70_Y4_N21
\ctrl_2_dp~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl_2_dp~5_combout\ = ( \guru|STATE.RAND~q\ & ( \main|STATE.INIT_ACTIVATION~q\ ) ) # ( !\guru|STATE.RAND~q\ & ( (\main|STATE.INIT_ACTIVATION~q\ & \guru|STATE.INCR~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	datac => \guru|ALT_INV_STATE.INCR~q\,
	dataf => \guru|ALT_INV_STATE.RAND~q\,
	combout => \ctrl_2_dp~5_combout\);

-- Location: LABCELL_X70_Y4_N57
\ctrl_2_dp~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl_2_dp~6_combout\ = ( \init|STATE.DONE~q\ ) # ( !\init|STATE.DONE~q\ & ( (!\init|STATE.IDLE~q\) # (\main|STATE.INIT_ACTIVATION~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	datad => \init|ALT_INV_STATE.IDLE~q\,
	dataf => \init|ALT_INV_STATE.DONE~q\,
	combout => \ctrl_2_dp~6_combout\);

-- Location: LABCELL_X70_Y4_N24
\ctrl_2_dp~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl_2_dp~7_combout\ = ( \guru|STATE.WRITE_RAND~q\ & ( \guru|STATE.RAND~q\ & ( (!\main|STATE.INIT_ACTIVATION~q\ & \init|STATE.MEM_WALK~q\) ) ) ) # ( !\guru|STATE.WRITE_RAND~q\ & ( \guru|STATE.RAND~q\ & ( (!\main|STATE.INIT_ACTIVATION~q\ & 
-- \init|STATE.MEM_WALK~q\) ) ) ) # ( \guru|STATE.WRITE_RAND~q\ & ( !\guru|STATE.RAND~q\ & ( (!\main|STATE.INIT_ACTIVATION~q\ & \init|STATE.MEM_WALK~q\) ) ) ) # ( !\guru|STATE.WRITE_RAND~q\ & ( !\guru|STATE.RAND~q\ & ( (!\main|STATE.INIT_ACTIVATION~q\ & 
-- (((\init|STATE.MEM_WALK~q\)))) # (\main|STATE.INIT_ACTIVATION~q\ & (!\guru|STATE.WAIT_COUNT_GURU~q\ & ((\guru|STATE.START_WALKING~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000101110000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \guru|ALT_INV_STATE.WAIT_COUNT_GURU~q\,
	datab => \main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	datac => \init|ALT_INV_STATE.MEM_WALK~q\,
	datad => \guru|ALT_INV_STATE.START_WALKING~q\,
	datae => \guru|ALT_INV_STATE.WRITE_RAND~q\,
	dataf => \guru|ALT_INV_STATE.RAND~q\,
	combout => \ctrl_2_dp~7_combout\);

-- Location: LABCELL_X70_Y4_N39
\ctrl_2_dp~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl_2_dp~8_combout\ = (!\main|STATE.INIT_ACTIVATION~q\ & \init|STATE.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	datad => \init|ALT_INV_STATE.IDLE~q\,
	combout => \ctrl_2_dp~8_combout\);

-- Location: LABCELL_X70_Y4_N15
\ctrl_2_dp~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl_2_dp~9_combout\ = ( !\guru|STATE.RAND~q\ & ( (\guru|STATE.START_WALKING~q\ & (!\guru|STATE.WRITE_RAND~q\ & \main|STATE.INIT_ACTIVATION~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \guru|ALT_INV_STATE.START_WALKING~q\,
	datac => \guru|ALT_INV_STATE.WRITE_RAND~q\,
	datad => \main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	dataf => \guru|ALT_INV_STATE.RAND~q\,
	combout => \ctrl_2_dp~9_combout\);

-- Location: LABCELL_X70_Y4_N54
\ctrl_2_dp~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl_2_dp~10_combout\ = ( \ctrl_2_dp~8_combout\ & ( (!\init|STATE.ZERO~q\) # ((\ctrl_2_dp~9_combout\ & !\guru|STATE.WAIT_COUNT_GURU~q\)) ) ) # ( !\ctrl_2_dp~8_combout\ & ( (\ctrl_2_dp~9_combout\ & !\guru|STATE.WAIT_COUNT_GURU~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000010111010101110101011101010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \init|ALT_INV_STATE.ZERO~q\,
	datab => \ALT_INV_ctrl_2_dp~9_combout\,
	datac => \guru|ALT_INV_STATE.WAIT_COUNT_GURU~q\,
	dataf => \ALT_INV_ctrl_2_dp~8_combout\,
	combout => \ctrl_2_dp~10_combout\);

-- Location: LABCELL_X70_Y4_N6
\ctrl_2_mem~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl_2_mem~0_combout\ = ( \main|STATE.INIT_ACTIVATION~q\ & ( \guru|STATE.CLEAR_PREV~q\ ) ) # ( !\main|STATE.INIT_ACTIVATION~q\ & ( \guru|STATE.CLEAR_PREV~q\ & ( !\ctrl_2_dp~6_combout\ ) ) ) # ( \main|STATE.INIT_ACTIVATION~q\ & ( 
-- !\guru|STATE.CLEAR_PREV~q\ & ( ((!\ctrl_2_dp~6_combout\) # ((\guru|STATE.WRITE_RAND~q\) # (\guru|NEXT_STATE.CLEAR_PREV~0_combout\))) # (\guru|STATE.LAST~q\) ) ) ) # ( !\main|STATE.INIT_ACTIVATION~q\ & ( !\guru|STATE.CLEAR_PREV~q\ & ( 
-- !\ctrl_2_dp~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110111111111111111001100110011001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \guru|ALT_INV_STATE.LAST~q\,
	datab => \ALT_INV_ctrl_2_dp~6_combout\,
	datac => \guru|ALT_INV_NEXT_STATE.CLEAR_PREV~0_combout\,
	datad => \guru|ALT_INV_STATE.WRITE_RAND~q\,
	datae => \main|ALT_INV_STATE.INIT_ACTIVATION~q\,
	dataf => \guru|ALT_INV_STATE.CLEAR_PREV~q\,
	combout => \ctrl_2_mem~0_combout\);

-- Location: LABCELL_X23_Y60_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


