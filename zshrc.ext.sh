#!/bin/sh

SCRIPT_PATH=$(dirname $0)/scripts
zinit ice lucid wait='1'
for script in `ls ${SCRIPT_PATH}/*.enabled.sh`
    do
      zinit snippet "$script"
    done
