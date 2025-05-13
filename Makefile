# WARNING: I think this file was correct for OpenLane 1.x (TT08 era),
# but now macroharden.sh is probably what you want for OpenLane 2.x

PROJECT_NAME ?= controller
# needs PDK_ROOT and OPENLANE_ROOT, OPENLANE_IMAGE_NAME set from your environment
harden:
	docker run -it --rm \
	-v $(OPENLANE_ROOT):/openlane \
	-v $(PDK_ROOT):$(PDK_ROOT) \
	-v $(CURDIR):/work \
	-e PDK_ROOT=$(PDK_ROOT) \
	-e PDK=$(PDK) \
	-u $(shell id -u $(USER)):$(shell id -g $(USER)) \
	$(OPENLANE_IMAGE_NAME) \
	/bin/bash -c "ls -al /work && ./flow.tcl -ignore_mismatches -overwrite -design /work/openlane/$(PROJECT_NAME) -run_path /work/openlane/$(PROJECT_NAME)/runs -tag $(PROJECT_NAME)"

update_files:
	cp openlane/$(PROJECT_NAME)/runs/manual/final/gds/$(PROJECT_NAME).gds gds/
	cp openlane/$(PROJECT_NAME)/runs/manual/final/pnl/$(PROJECT_NAME).pnl.v verilog/gl/
