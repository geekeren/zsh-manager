#!/bin/sh

export ANDROID_HOME=/Users/bywang/Library/Android/sdk

SECOND_ANDROID_SDK_HOME=/Volumes/BaiyuanSSD/Backup/bywang/Library/Android/sdk
if [ -d "$SECOND_ANDROID_SDK_HOME" ]; then
  export ANDROID_HOME=$SECOND_ANDROID_SDK_HOME
fi

export PATH=$PATH:$ANDROID_HOME/platform-tools


SECOND_ANDROID_EMULATOR_HOME=/Volumes/BaiyuanSSD/Backup/bywang/.android
if [ -d "$SECOND_ANDROID_EMULATOR_HOME" ]; then
  export ANDROID_EMULATOR_HOME=${SECOND_ANDROID_EMULATOR_HOME}
  export ANDROID_AVD_HOME=${SECOND_ANDROID_EMULATOR_HOME}/avd
fi

launchctl setenv ANDROID_EMULATOR_HOME $ANDROID_EMULATOR_HOME
launchctl setenv ANDROID_AVD_HOME $ANDROID_AVD_HOME
