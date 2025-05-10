#!/usr/bin/bash

if [ -z "$VIRTUAL_ENV" ]; then echo "VENV is not loaded. Did you remember to run: source ./env-tt10.sh"; exit 1; fi
if [ -z "$PDK_ROOT"    ]; then echo "PDK_ROOT isn't set. Did you remember to run: source ./env-tt10.sh"; exit 1; fi

export HARDEN_MACRO=controller

if [ "$1" == "rgb_buffers" ]; then
    export HARDEN_MACRO=rgb_buffers
fi

rm -rf openlane/$HARDEN_MACRO/runs/manual
mkdir -p openlane/$HARDEN_MACRO/runs/manual
python -m \
    openlane \
        --pdk-root "$PDK_ROOT" \
        --docker-no-tty --dockerized \
        --pdk-root "$PDK_ROOT" --manual-pdk --pdk ihp-sg13g2 \
        --run-tag manual \
        --force-run-dir openlane/$HARDEN_MACRO/runs/manual \
        openlane/$HARDEN_MACRO/config.json \
        --design-dir .
ls -aldh openlane/$HARDEN_MACRO/runs/manual/final/gds/*.gds
