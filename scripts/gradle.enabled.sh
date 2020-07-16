#!/bin/bash
SECOND_GRADLE_CACHE_FOLDER=/Volumes/BaiyuanSSD/Caches/gradle
if [ -d "$SECOND_GRADLE_CACHE_FOLDER" ]; then
   export GRADLE_USER_HOME=${SECOND_GRADLE_CACHE_FOLDER}
fi

if [ -f "$(pwd)/build.gradle" ]; then
    echo -e "Gralde User Home is at: \e[33m$GRADLE_USER_HOME"
fi

launchctl setenv GRADLE_USER_HOME $GRADLE_USER_HOME
