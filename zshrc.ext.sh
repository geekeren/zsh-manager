#!/bin/sh
SCRIPT_PATH=~/.scripts/zshrc
for script in `ls ${SCRIPT_PATH}/*.enabled.sh`
    do
       source "$script"
    done
