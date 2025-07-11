PROJECT_NAME ?= tt_um_algofoogle_antonalog
PROJECT_LVS_VERILOG ?= ../src/LVS-project.v
# MAGIC_RC := $(PDK_ROOT)/sky130A/libs.tech/magic/sky130A.magicrc
# TEMPLATE_FILE := tt_analog_2x2.def
#TEMPLATE_FILE := tt_analog_1x2_3v3.def

.PHONY: lvs magic start

# magic:
# 	magic -rcfile $(MAGIC_RC) $(PROJECT_NAME).mag

# tt_analog_1x2.def:
# 	wget https://raw.githubusercontent.com/TinyTapeout/tt-support-tools/tt10/def/analog/tt_analog_1x2.def

# tt_analog_2x2.def:
# 	wget https://raw.githubusercontent.com/TinyTapeout/tt-support-tools/tt10/def/analog/tt_analog_2x2.def

# tt_analog_1x2_3v3.def:
# 	wget https://raw.githubusercontent.com/TinyTapeout/tt-support-tools/tt10/def/analog/tt_analog_1x2_3v3.def

# start: $(TEMPLATE_FILE)
# 	magic -rcfile $(MAGIC_RC) -noconsole -dnull tcl/tt-analog-draw.tcl $(TEMPLATE_FILE) $(PROJECT_NAME)

antenna:
	magic -noconsole -dnull tcl/antenna.tcl $(PROJECT_NAME)
	rm -f *.ext

drc:
	magic -noconsole -dnull tcl/drc.tcl $(PROJECT_NAME)
	
%.lvs.spice: %.mag
	magic -noconsole -dnull tcl/extract_for_lvs.tcl $*
	rm -f *.ext

%.sim.spice: %.mag
	magic -noconsole -dnull tcl/extract_for_sim.tcl $*
	rm -f *.ext

lvs.report: $(PROJECT_NAME).lvs.spice $(PROJECT_LVS_VERILOG)
	netgen -batch eval 'set project $(PROJECT_NAME) ; set report_file "lvs.report" ; source tcl/lvs_netgen.tcl'

%.lvs.report: %.lvs.spice
	cp $*.lvs.spice $*.lvs.spice.backup
	netgen -batch eval 'set project $* ; set report_file "$@" ; source tcl/lvs_netgen.tcl'


lvs: lvs.report
	@bash -c 'propOk=OK; match=FAIL; port=OK; \
    if grep -q "match uniquely" lvs.report; then \
        match=OK; \
    fi; \
    if grep -q "Property errors were found" lvs.report; then \
        propOk=FAIL; \
    fi; \
    if grep -q "failed pin matching" lvs.report; then \
        match=FAIL; \
    fi; \
    if grep -q "Final result: Netlists do not match" lvs.report; then \
        match=FAIL; \
    fi; \
    if grep -q "port errors" lvs.report; then \
        port=FAIL; \
    fi; \
    if grep -q "Final result: Circuits match uniquely\." lvs.report; then \
        match=OK; \
    fi; \
	if [ "$$match" == "OK" ] && [ "$$propOk" == "OK" ] && [ "$$port" == "OK" ]; then \
        echo "LVS OK"; \
	    exit 0; \
    else \
        echo "LVS FAIL: match=$$match properties=$$propOk port=$$port"; \
	    exit 1; \
    fi'

update_gds:
	mkdir -p ../gds ../lef
	magic -noconsole -dnull tcl/update_gds_lef.tcl $(PROJECT_NAME)

clean:
	rm -f *lvs.report *.lvs.spice *.nodes
