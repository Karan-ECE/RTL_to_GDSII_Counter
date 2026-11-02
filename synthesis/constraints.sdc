# Clock
create_clock -name clk -period 10.0 [get_ports clk]
set_clock_uncertainty -setup 0.20 [get_clocks clk]
set_clock_uncertainty -hold  0.10 [get_clocks clk]

# Input timing
set_input_delay  -max 2.0 -clock clk [remove_from_collection [all_inputs] [get_ports clk]]
set_input_delay  -min 0.0 -clock clk [remove_from_collection [all_inputs] [get_ports clk]]

# Input transition
set_input_transition 0.8 [remove_from_collection [all_inputs] [get_ports clk]]

# Output timing
set_output_delay -max 2.0 -clock clk [all_outputs]
set_output_delay -min 0.0 -clock clk [all_outputs]

# Output load
set_load 0.15 [all_outputs]

# Optional limits
# set_max_fanout 20
# set_max_transition 1.0
# set_max_capacitance 0.2
