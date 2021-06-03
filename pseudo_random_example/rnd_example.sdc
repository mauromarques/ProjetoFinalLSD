#
# LSD.TOS, March 2016
#
# timing constraints
#

#
# do timing analysis for a very pessimistic case: slow and very hot FPGA
#

set_operating_conditions 7_slow_1200mv_85c


#
# identify the 50MHz clock and any other clocks obtained from it
#

set_time_format -decimal_places 3 -unit ns
create_clock -name clock_50 -period 20.000 [get_ports clock_50]
derive_pll_clocks
derive_clock_uncertainty


#
# I/O
#
# we don't care about setup and hold times concerning "slow" I/O pins
#
# when input (to the FPGA) signals are used in sequential logic, it
# is IMPERATIVE that the first thing that is done to them inside the
# FPGA be to pass them through registers
#
# for slow I/O signals, outputs do not need to pass through registers
# (but there is no harm if they do so)
#

set_false_path -from [get_ports { KEY[*] }] -to [get_clocks *]
set_false_path -from [get_clocks *] -to [get_ports { LEDG[*] }]
