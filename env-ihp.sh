#!/bin/bash

if [ ! -d ./tt ]; then
    echo "ABORTING as ./tt/ does not exist yet."
    echo "See the tt-support-tools step of: https://tinytapeout.com/guides/local-hardening/"
    echo "Typically, you'd run: git clone -b ttihp25b https://github.com/TinyTapeout/tt-support-tools tt"
    return 1
fi

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    echo "WARNING: It looks like you ran $0 directly."
    echo "NORMALLY you should instead run: source $0"
    echo "MAYBE you want to give that another try?"
fi

# Expects Anton's pdk() function:
pdk ihp

# The following parameters are from:
# https://tinytapeout.com/guides/local-hardening/#4-set-up-environment-variables
# but can also be verified against:
# https://github.com/TinyTapeout/tt-gds-action/blob/ttihp25b/action.yml

export TTPYTHON=python3.12
export TTPROMPT=ttihp25b
export TTTOOLS=$HOME/ttsetup@$TTPROMPT
mkdir -p "$TTTOOLS/pdk"
export PDK_ROOT=$TTTOOLS/pdk
export PDK=ihp-sg13g2
export OPENLANE_IMAGE_OVERRIDE=ghcr.io/tinytapeout/openlane2:ihp-v3.0.0.dev23
export TT_ARGS=--ihp
#export OPENLANE2_TAG=2.2.9

## From https://github.com/TinyTapeout/tt-gds-action/blob/ac4c7934481e7c5fb9afa202a72a14025e78e13f/action.yml#L53-L57
#export FLOW=openlane2
#export FLOW_ARG=--openlane2

# Mangling of https://github.com/TinyTapeout/tt-gds-action/blob/ac4c7934481e7c5fb9afa202a72a14025e78e13f/action.yml#L122
export LINTER_LOG_BASE="runs/manual/*-verilator-lint/verilator-lint.log"

export VENV_DIR="$TTTOOLS/venv"
export VENV_CMD="$VENV_DIR/bin/activate"
if [ ! -e "$VENV_CMD" ]; then
    echo "NOTE: Venv $VENV_CMD doesn't exist; creating it..."
    $TTPYTHON -m venv --prompt "$TTPROMPT" "$VENV_DIR"
    echo "DONE."
fi
echo "Activating VENV..."
source "$VENV_CMD"
echo "NOTE: If prompt doesn't include '($TTPROMPT)' then make sure you run this script via 'source'"

