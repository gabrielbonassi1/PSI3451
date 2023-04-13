restart -f

run 50ns
force -freeze sim:/reg_bank_simple/out_sel GURU_PREV_OUT 0
run 50ns
force -freeze sim:/reg_bank_simple/out_sel GURU_OUT 0
run 50ns
