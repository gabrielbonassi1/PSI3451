--***************************************************************
--*
--*   Version with mask (00..00-01..11) for -1 operation in x,
--*     avoiding interference in y
--*
--***************************************************************
--*																*
--*	Title	:													*
--*	Design	:													*
--*	Author	:													*
--*	Email	:													*
--*																*
--***************************************************************
--*																*
--*	Description :												*
--*																*
--***************************************************************
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;



entity alu is 
	generic
	(
	WIDTH		: NATURAL	:= 8
	);

	port
	(
	one_op		     : in STD_LOGIC_VECTOR(WIDTH-1 downto 0); -- uma constante (00000001).
	rb_op			     : in STD_LOGIC_VECTOR(WIDTH-1 downto 0); -- operandos Rb_op são oriundos de Reg Bank (saídas de REG_GURU ou REG_INIT).
	alu_ctrl         : in STD_LOGIC;                          -- controle a saida da ula: 
	alu_result		  : out STD_LOGIC_VECTOR(WIDTH-1 downto 0) -- resultado_soma(proxima posicao do GURU) ou posicao atual do GURU
	);
end alu;



architecture with_RCA of alu is

--***********************************
--*	COMPONENT DECLARATIONS			*
--***********************************

component rc_adder
	generic
	(
	WIDTH : integer := 32
	);
	
	port
	(
	a_i, b_i	   : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
	c_i			: in STD_LOGIC;
	z_o 		   : out STD_LOGIC_VECTOR(WIDTH-1 downto 0);
	c_o			: out STD_LOGIC
	);
end component;

--***********************************
--*	INTERNAL SIGNAL DECLARATIONS	*
--***********************************
signal result_s		         : std_logic_vector(WIDTH-1 downto 0); 
signal carry_out_s	      	: STD_LOGIC;

begin

	--*******************************
	--*	COMPONENT INSTANTIATIONS	*
	--*******************************

	add:	rc_adder	generic map
						(
						WIDTH	=> WIDTH
						)
						
						port map
						(
						a_i			=> one_op,
						b_i			=> rb_op,
						c_i			=> '0',
						z_o 		   => result_s,
						c_o			=> carry_out_s
						);
	
	--*******************************
	--*	SIGNAL ASSIGNMENTS			*
	--*******************************
	
	alu_result	<=	rb_op							when (alu_ctrl = '0') else
					   result_s					  	when (alu_ctrl = '1') else
					   (others => 'X');
		

end with_RCA;

