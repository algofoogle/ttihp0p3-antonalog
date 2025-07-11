set project [lindex $argv $argc-1]
box 0 0 0 0
load $project.mag
extract do local
extract all
ext2spice lvs
ext2spice cthresh infinite
ext2spice short resistor
ext2spice -d -o $project.lvs.spice
quit -noprompt

# Tamas' method:
# extract path extfiles
# extract all
# ext2spice lvs
# ext2spice short resistor
# ext2spice -p extfiles
