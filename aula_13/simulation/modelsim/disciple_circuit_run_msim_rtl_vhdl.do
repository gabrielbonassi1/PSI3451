transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/aula_13/wisdom_package.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/aula_13/reg.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/aula_13/rc_adder.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/aula_13/rand_num.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/aula_13/lfsr.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/aula_13/full_adder.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/aula_13/d_reg.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/aula_13/alu.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/aula_13/reg_bank_disc.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/aula_13/num_gen_disc.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/aula_13/disc_datapath.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/aula_13/disc_control.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/aula_13/disciple_circuit.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/aula_13/coll_ovf_disc.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/aula_13/code_gen.vhd}

vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/aula_13/Testbench/Alert_check.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/aula_13/Testbench/Alert_gen.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/aula_13/Testbench/clock_generator.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/aula_13/Testbench/fifo_1.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/aula_13/Testbench/message_print.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/aula_13/Testbench/step_addr_check.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/aula_13/Testbench/stimuli_disciple.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/aula_13/Testbench/tb_disciple.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/aula_13/Testbench/wisdom_package.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  tb_disciple

do C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/aula_13/Testbench/run_sim.txt
