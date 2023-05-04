library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.wisdom_package.all;

entity tb_fsm_main is

GENERIC (WIDTH: natural :=8);

end tb_fsm_main;

architecture test of tb_fsm_main is

	component fsm_main 
		port
		(
		clk				: in STD_LOGIC;			--from system
		res				: in STD_LOGIC;			--from system
		en_disc        	: in STD_LOGIC;			--from system (user/player)
		fsm_i_done		: in STD_LOGIC;			--from fsm internal
		end_of_guru		: in STD_LOGIC;			--from datapath	
		end_of_disc		: in STD_LOGIC;			--from system; disciple circuit
		duo_formed		: in STD_LOGIC;			--from datapath
		cnt_prepare_f	: in STD_LOGIC;			--from controller; timer signaling
		cnt_start_f	    : in STD_LOGIC;  		--from controller; timer signaling
		con_sel        	: out CONTROL_SELECT;	--to fsm internal
		en_cnt_step    	: out STD_LOGIC;		--to system- to stepcounter
		cnt_prepare_i	: out STD_LOGIC;		--to controller; timer activation
		cnt_start_i	    : out STD_LOGIC;  		--to controller; timer activation
		fsm_i_start		: out STD_LOGIC;		--to fsm internal
		fsm_s_start		: out STD_LOGIC		--to fsm internal
		);
	end component;

	component stimuli_fsm_main is
		generic
		(
		WIDTH:         NATURAL := 8;
		CLK_PERIOD		: TIME	:=  10ns
		);

		port
		(
		clk				: out STD_LOGIC;			--system generatiom
		res				: out STD_LOGIC;			--system generatiom
		en_disc        	: out STD_LOGIC;			--emulatimg user/player
		fsm_i_done		: out STD_LOGIC;			--emulatimg fsm_init
		end_of_guru		: out STD_LOGIC;			--emulatimg datapath	
		end_of_disc		: out STD_LOGIC;			--emulatimg disciple circuit
		duo_formed		: out STD_LOGIC;			--emulatimg datapath
		cnt_prepare_f	: out STD_LOGIC;			--emulatinh timer timer; signaling
		cnt_start_f	    : out STD_LOGIC;  			--emulating timer; signaling
		con_sel			: in CONTROL_SELECT;		--emulating the mux selector
		en_cnt_step    	: in STD_LOGIC;				--emulating cnt_rdy trigger in stepcounter
		cnt_prepare_i	: in STD_LOGIC;				--emualting wait in timer
		cnt_start_i	    : in STD_LOGIC;  			--emualting wait in timer
		fsm_i_start		: in STD_LOGIC;				--emulating fsm_init
		fsm_s_start		: in STD_LOGIC				--emulating fsm_init guru or disciple step machines 
		);
	end component;

	signal clk_s, rst_s, en_disc_s, fsm_i_done_s, end_of_guru_s, end_of_disc_s, duo_formed_s: STD_LOGIC;
	signal cnt_prepare_f_s, cnt_start_f_s, cnt_start_i_s, cnt_prepare_i_s, en_cnt_step_s: STD_LOGIC;
	signal fsm_i_start_s, fsm_s_start_s: STD_LOGIC :='0';
	signal con_sel_s	: CONTROL_SELECT;

begin

	-- Instantiate DUT
	dut : fsm_main 
		port map
		(
		clk				=> clk_s,			
		res				=> rst_s,
		en_disc			=> en_disc_s,
		fsm_i_done		=> fsm_i_done_s,
		end_of_guru		=> end_of_guru_s,
		end_of_disc		=> end_of_disc_s,
		duo_formed		=> duo_formed_s,
		cnt_prepare_f	=> cnt_prepare_f_s,
		cnt_start_f		=> cnt_start_f_s,
		con_sel			=> con_sel_s,
		en_cnt_step		=> en_cnt_step_s,
		cnt_prepare_i	=> cnt_prepare_i_s,
		cnt_start_i		=> cnt_start_i_s,
		fsm_i_start		=> fsm_i_start_s,
		fsm_s_start		=> fsm_s_start_s
		);

	-- Instantiate stimuli generation module
	test : stimuli_fsm_main
		port map
		(
		clk				=> clk_s,			
		res				=> rst_s,
		en_disc			=> en_disc_s,
		fsm_i_done		=> fsm_i_done_s,
		end_of_guru		=> end_of_guru_s,
		end_of_disc		=> end_of_disc_s,
		duo_formed		=> duo_formed_s,
		cnt_prepare_f	=> cnt_prepare_f_s,
		cnt_start_f		=> cnt_start_f_s,
		con_sel			=> con_sel_s,
		en_cnt_step		=> en_cnt_step_s,
		cnt_prepare_i	=> cnt_prepare_i_s,
		cnt_start_i		=> cnt_start_i_s,
		fsm_i_start		=> fsm_i_start_s,
		fsm_s_start		=> fsm_s_start_s
		);

end architecture test;