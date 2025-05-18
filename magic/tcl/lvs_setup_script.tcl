# This script is used as the 'setup script' by the "lvs" command in
# lvs_netgen.tcl.

# Imports this default setup from the IHP SG13G2 PDK:
source $::env(PDK_ROOT)/$::env(PDK)/libs.tech/netgen/$::env(PDK)_setup.tcl

model sg13g2_tiehi blackbox
puts "ANTON1"
puts [model sg13g2_tiehi]
puts "ANTON2"

#TODO: Other setup stuff below...
#...
