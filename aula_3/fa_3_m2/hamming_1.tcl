restart -f

force a_in 0
force b_in 0
force c_in 0
run 50ns

force c_in 1
run 50ns

force b_in 1
run 50ns