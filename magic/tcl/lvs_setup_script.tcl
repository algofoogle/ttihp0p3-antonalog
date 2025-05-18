# This script is used as the 'setup script' by the "lvs" command in
# lvs_netgen.tcl.

# Imports this default setup from the IHP SG13G2 PDK:
source $::env(PDK_ROOT)/$::env(PDK)/libs.tech/netgen/$::env(PDK)_setup.tcl


puts "ANTON1"
model controller blackbox
model r2r_dac blackbox
model rgb_buffer blackbox
model sg13g2_tiehi blackbox
puts [model sg13g2_tiehi]
puts "ANTON2"

#TODO: Other setup stuff below...
#...
