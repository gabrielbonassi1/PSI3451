onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label CLK /tb_wisdom/clk_s
add wave -noupdate -label RST /tb_wisdom/rst_s
add wave -noupdate -label BUTTON_ENABLE /tb_wisdom/enable_s
add wave -noupdate -label BUTTON_SPEED /tb_wisdom/sys_speed_s
add wave -noupdate -label START_STEP /tb_wisdom/start_step_s
add wave -noupdate -label PRINT_READY /tb_wisdom/print_rdy_s
add wave -noupdate -label CNT_GURU_RDY /tb_wisdom/dut/cir1/cnt_guru_rdy_s
add wave -noupdate -label CNT_DISC_RDY /tb_wisdom/dut/cir1/cnt_disc_rdy
add wave -noupdate -label GURU_END /tb_wisdom/dut/cir1/basis/dp_2_ctrl_s.end_of_guru
add wave -noupdate -label DISC_END /tb_wisdom/dut/cir1/disc_2_base_s.end_of_disc
add wave -noupdate -label GO_GURU /tb_wisdom/dut/cir1/ref_2_base_s.go_guru
add wave -noupdate -label GO_DISC /tb_wisdom/dut/cir2/control/go_disc
add wave -noupdate -label DUO_FORMED /tb_wisdom/dut/cir2/duo_formed_s
add wave -noupdate -label GURU_RIGHT_BEHIND /tb_wisdom/dut/cir1/ref_2_disc_s.guru_right_behind
add wave -noupdate -label DISC_ADDR -radix decimal /tb_wisdom/dut/cir1/disc_2_ref_s.disc_addr
add wave -noupdate -label DISC_PREV_ADDR -radix decimal /tb_wisdom/dut/cir1/disc_2_ref_s.disc_prev_addr
add wave -noupdate -label GURU_ADDR -radix decimal /tb_wisdom/dut/cir1/base_2_ref_s.guru_addr
add wave -noupdate -label GURU_PREV_ADDR -radix decimal /tb_wisdom/dut/cir1/base_2_ref_s.guru_prev_addr
add wave -noupdate -label DISC_ADDR -radix decimal /tb_wisdom/dut/cir2/data/disc_addr
add wave -noupdate -label DISC_PREV_ADDR -radix decimal /tb_wisdom/dut/cir2/data/disc_addr_prev
add wave -noupdate -expand -group MEM -label MEM_ADDR_A(signal) -radix unsigned /tb_wisdom/dut/cir1/mem/address_a
add wave -noupdate -expand -group MEM -label MEM_ADDR_B(signal) -radix unsigned /tb_wisdom/dut/cir1/mem/address_b
add wave -noupdate -expand -group MEM -label W_EN_A(signal) /tb_wisdom/dut/cir1/mem/wren_a
add wave -noupdate -expand -group MEM -label W_EN_B(signal) /tb_wisdom/dut/cir1/mem/wren_b
add wave -noupdate -expand -group MEM -label DATA_IN_A(signal) /tb_wisdom/dut/cir1/mem/data_a
add wave -noupdate -expand -group MEM -label DATA_IN_B(signal) /tb_wisdom/dut/cir1/mem/data_b
add wave -noupdate -expand -group MEM -label DATA_OUT_A(out) /tb_wisdom/dut/cir1/mem/q_a
add wave -noupdate -expand -group MEM -label DATA_OUT_B(out) /tb_wisdom/dut/cir1/mem/q_b
add wave -noupdate -expand -group STATES -label MAIN /tb_wisdom/dut/cir1/basis/control/main/STATE
add wave -noupdate -expand -group STATES -label INIT /tb_wisdom/dut/cir1/basis/control/init/STATE
add wave -noupdate -expand -group STATES -label GURU /tb_wisdom/dut/cir1/basis/control/guru/STATE
add wave -noupdate -expand -group STATES -label DISC /tb_wisdom/dut/cir2/control/state
add wave -noupdate -expand -group RAND -label ADDR /tb_wisdom/dut/cir2/data/n_g/rand_num_output_gen/rand_num_output
add wave -noupdate -expand -group RAND -label RAND_NUM /tb_wisdom/dut/cir2/data/n_g/rand_num_output_gen/q_s
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {387380 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {1024 ns}
