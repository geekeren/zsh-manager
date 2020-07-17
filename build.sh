#!/bin/sh
ROOT=$(dirname $0)
SCRIPT_PATH=${ROOT}/scripts
ENTRY_POINT=${ROOT}/zshrc.ext.sh
# zinit ice lucid wait='1'
rm ${ENTRY_POINT}
for script in `ls ${SCRIPT_PATH}/*.enabled.sh`
    do
        echo "\n#----------SOURCE: ${script}" >> ${ENTRY_POINT}
        cat "$script" >> ${ENTRY_POINT}
        echo "\n#----------END---------------------\n" >> ${ENTRY_POINT}
    done

# echo "exit" >> ${ENTRY_POINT}
chmod +x ${ENTRY_POINT}