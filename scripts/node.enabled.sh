#!/bin/bash
PRIMARY_YARN_CACHE_FOLDER=/Users/bywang/Library/Caches/Yarn
SECOND_YARN_CACHE_FOLDER=/Volumes/BaiyuanSSD/Caches/Yarn
if [ -d "$SECOND_YARN_CACHE_FOLDER" ]; then
    export YARN_CACHE_FOLDER=${SECOND_YARN_CACHE_FOLDER}
else
    export YARN_CACHE_FOLDER=${PRIMARY_YARN_CACHE_FOLDER}
fi

if [ -f "$(pwd)/package.json" ]; then
    echo -e "Yarn is using cache at: \e[33m$(yarn cache dir)"
fi
