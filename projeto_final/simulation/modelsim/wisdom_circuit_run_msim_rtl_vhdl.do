transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/projeto_final/xor2.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/projeto_final/wisdom_package.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/projeto_final/reg.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/projeto_final/referee.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/projeto_final/rc_adder.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/projeto_final/or2.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/projeto_final/mem_2port.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/projeto_final/lfsr.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/projeto_final/holder.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/projeto_final/galois_2bits.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/projeto_final/full_adder.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/projeto_final/d_reg.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/projeto_final/counter_trigger.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/projeto_final/alu.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/projeto_final/rand_num_disc.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/projeto_final/wisdom_circuit.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/projeto_final/step_counter.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/projeto_final/reg_bank_disc.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/projeto_final/reg_bank.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/projeto_final/rand_num.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/projeto_final/num_gen_disc.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/projeto_final/num_gen.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/projeto_final/fsm_main.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/projeto_final/fsm_init.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/projeto_final/fsm_guru.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/projeto_final/disc_datapath.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/projeto_final/disc_control.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/projeto_final/disciple_circuit.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/projeto_final/coll_ovf_disc.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/projeto_final/coll_ovf.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/projeto_final/code_gen.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/projeto_final/button_handler.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/projeto_final/base_datapath.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/projeto_final/base_control.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/projeto_final/base_circuit_extended.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/projeto_final/base_circuit.vhd}

vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/projeto_final/tb_global/stimuli_wisdom.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/projeto_final/tb_global/tb_wisdom.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/projeto_final/tb_global/map_monitor.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/projeto_final/tb_global/clock_generator.vhd}
vcom -93 -work work {C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/projeto_final/tb_global/address_counter.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  tb_wisdom

do C:/Users/gabri/OneDrive/Documentos/GitHub/PSI3451/projeto_final/tb_global/run_sim.txt
