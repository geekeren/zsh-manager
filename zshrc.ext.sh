#!/bin/sh

SCRIPT_PATH=$(dirname $0)/scripts
for script in `ls ${SCRIPT_PATH}/*.enabled.sh`
    do
       source "$script"
    done
