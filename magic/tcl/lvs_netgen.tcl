set layout [readnet spice $project.lvs.spice]
set source [readnet spice /dev/null]
readnet spice $::env(PDK_ROOT)/$::env(PDK)/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice $source
readnet spice $::env(PDK_ROOT)/$::env(PDK)/libs.tech/ngspice/models/resistors_mod.lib
# readnet spice $::env(PDK_ROOT)/$::env(PDK)/libs.tech/ngspice/models/resistors_stat.lib
# readnet spice $::env(PDK_ROOT)/$::env(PDK)/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice $source

#NOTE: For simplicity, ALL of the files below can be loaded for every
# LVS run, because even if you're LVSing just one block, the last
# 'lvs' command selects which one actually matters.

# Add spice files of analog block(s):
readnet spice ../xschem/simulations/r2r_dac.spice     $source

# Add GL verilog of digital block(s) (i.e. flat file from OpenLane hardening):
readnet verilog ../verilog/gl/controller.pnl.v $source
readnet verilog ../verilog/gl/rgb_buffers.pnl.v $source

# Top-level abstract integration verilog:
readnet verilog ../src/LVS-project.v $source

lvs "$layout $project" "$source $project" \
    $::env(PDK_ROOT)/$::env(PDK)/libs.tech/netgen/ihp-sg13g2_setup.tcl \
    lvs.report \
    -blackbox \
    -noflatten={sg13g2_tiehi}

#TODO:
# Regenerate/replace controller.mag
# Check top mag & make sure no shorts
# Correct LVS-project.v
# Try running extraction
# Try running LVS
