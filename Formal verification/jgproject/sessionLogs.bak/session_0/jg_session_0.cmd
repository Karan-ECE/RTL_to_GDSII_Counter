# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2022.09
# platform  : Linux 4.18.0-425.3.1.el8.x86_64
# version   : 2022.09p002 64 bits
# build date: 2022.11.24 12:29:17 UTC
# ----------------------------------------
# started   : 2026-09-15 08:02:10 EDT
# hostname  : c2slab.iiitt.ac.in.(none)
# pid       : 3886
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42903' '-style' 'windows' '-data' 'AAAAsHicjYo9DkBAGAVnI3onEdZPkC00VEQoHEbDUd1kfVY2oTPJm2meAsxurcURbKKIgZGFTjyxSqGnQFOR0JKSE4szatd7mpLmx8ehzqcYxRs1H59C6I/+cgGG1xD7' '-proj' '/home/redhat/Documents/cade/counter/Formal verification/jgproject/sessionLogs/session_0' '-init' '-hidden' '/home/redhat/Documents/cade/counter/Formal verification/jgproject/.tmp/.initCmds.tcl'
analyze -verilog counter.v counter_tb.v
elaborate
clock clk
reset rst
prove -all
report -summary
