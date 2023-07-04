library IEEE;
use IEEE.std_logic_1164.all;
use work.wisdom_package.all;

entity disc_datapath is 
	generic
	(
	WIDTH		: NATURAL	:= 8
	);

	port
	(
		clk			   	    : in STD_LOGIC;											--from system
		res				  	: in  STD_LOGIC;										   --from system
		cg_sel				: in CODE;
		ng_cte_incr			: in STD_LOGIC;
		alu_ctrl			: in STD_LOGIC;
		rb_disc_en			: in STD_LOGIC;
		rb_disc_prev_en		: in STD_LOGIC;
		reg_out_sel			: in RB_SEL;
		duo_formed			: in STD_LOGIC;
		disc_address_2_mem	: out STD_LOGIC_VECTOR(5 downto 0);
		disc_data			: out STD_LOGIC_VECTOR(WIDTH-1 downto 0);-- Dado para o porto a de mem_2port, com dado (8 bits)correspondente a um dos 3 c�digos: DISCIPLE, BLANK ou DUO. 
		end_of_disc			: out STD_LOGIC;
		disc_addr_prev	    : out STD_LOGIC_VECTOR(5 downto 0);
		disc_addr		    : out STD_LOGIC_VECTOR(5 downto 0)
	);
		
end disc_datapath;


architecture arch of disc_datapath is

    component  num_gen_disc	 is
        GENERIC(
            WIDTH	   	: NATURAL := 8
                
                );
        
        PORT(
            clk			: IN  STD_LOGIC;
            reset 		: IN  STD_LOGIC;
            alu_result	: IN  STD_LOGIC_VECTOR (WIDTH-1 downto 0);
            ng_cte_incr	: in STD_LOGIC;
            ng_2_rb		: OUT STD_LOGIC_VECTOR (WIDTH-1 downto 0)
        );
    end component;

    component reg_bank_disc
        generic
        (
            WIDTH		: NATURAL	:= 8
        );

        port
        (
            clk			    : in STD_LOGIC;
            res			    : in STD_LOGIC;
            ng_2_rb         : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
            load_DISC	    : in STD_LOGIC;
            load_PREV_DISC  : in STD_LOGIC;
            out_sel		    : in RB_SEL;
            disc_addr       : out STD_LOGIC_VECTOR(WIDTH-1 downto 0);
            disc_prev_addr  : out STD_LOGIC_VECTOR(WIDTH-1 downto 0);
            rb_out		    : out STD_LOGIC_VECTOR(WIDTH-1 downto 0)
        );
    end component;	

    component alu
        generic
        (
            WIDTH		: NATURAL	:= 8
        );

        port
        (
            one_op		     : in STD_LOGIC_VECTOR(WIDTH-1 downto 0); 
            rb_op			 : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
            alu_ctrl         : in STD_LOGIC;
            alu_result		 : out STD_LOGIC_VECTOR(WIDTH-1 downto 0)
        );
    end component;



    component code_gen is 
        port
        (
            ctrl_code_sel	: in CODE;
            mem_code_w		: out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component;

    component coll_ovf_disc is 
        port
        (
            clk			    : in  STD_LOGIC;	
            res				: in  STD_LOGIC;
            disc_addr     	: in  STD_LOGIC_VECTOR(7 downto 0);
            end_of_disc		: out STD_LOGIC	
        );
    end component;


    signal ng_2_rb_s		  		: STD_LOGIC_VECTOR(WIDTH-1 downto 0);
    signal alu_result_s		  		: STD_LOGIC_VECTOR(WIDTH-1 downto 0);
    signal rb_out_s		  			: STD_LOGIC_VECTOR(WIDTH-1 downto 0);
    signal disc_addr_s, disc_addr_prev_s			: STD_LOGIC_VECTOR(WIDTH-1 downto 0);


    begin


        n_g:	 num_gen_disc			
            generic map(
                    WIDTH	      => WIDTH
            )
            port map(
                clk			=> clk,
                reset 		=> res,
                alu_result	=> alu_result_s,
                ng_cte_incr	=> ng_cte_incr,
                ng_2_rb		=> ng_2_rb_s
            );


                            
        rb:		reg_bank_disc			
            port map(
                clk			    => clk,
                res			    => res,
                ng_2_rb         => ng_2_rb_s,
                load_DISC	    => rb_disc_en,
                load_PREV_DISC  => rb_disc_prev_en,
                out_sel		    => reg_out_sel,
                disc_addr       => disc_addr_s,
                disc_prev_addr  => disc_addr_prev_s,
                rb_out		    => rb_out_s
            );
            
        
        alu_1:	alu 				
            generic map(
                WIDTH	=> WIDTH
            )
            port map(
                one_op		=> "11111000", -- somando complemento do numero 8 (8bits)
                rb_op			=> rb_out_s,
                alu_ctrl    => alu_ctrl,
                alu_result  => alu_result_s
            );

        
        c_g:	code_gen 			
            port map(
                ctrl_code_sel	=> cg_sel,
                mem_code_w		=> disc_data
            );

        
        dut :	 coll_ovf_disc		
            port map(
                clk			   => clk,
                res				=> res,
                disc_addr     	=> rb_out_s,
                end_of_disc		=> end_of_disc
            );
                                        
        
        disc_address_2_mem(5) <= rb_out_s(5);
        disc_address_2_mem(4) <= rb_out_s(4);
        disc_address_2_mem(3) <= rb_out_s(3);
        disc_address_2_mem(2) <= rb_out_s(2);
        disc_address_2_mem(1) <= rb_out_s(1);
        disc_address_2_mem(0) <= rb_out_s(0);
    
        disc_addr(5) <= disc_addr_s(5);
        disc_addr(4) <= disc_addr_s(4);
        disc_addr(3) <= disc_addr_s(3);
        disc_addr(2) <= disc_addr_s(2);
        disc_addr(1) <= disc_addr_s(1);
        disc_addr(0) <= disc_addr_s(0);
        
        disc_addr_prev(5) <= disc_addr_prev_s(5);
        disc_addr_prev(4) <= disc_addr_prev_s(4);
        disc_addr_prev(3) <= disc_addr_prev_s(3);
        disc_addr_prev(2) <= disc_addr_prev_s(2);
        disc_addr_prev(1) <= disc_addr_prev_s(1);
        disc_addr_prev(0) <= disc_addr_prev_s(0);
        
        
        
        
end arch;