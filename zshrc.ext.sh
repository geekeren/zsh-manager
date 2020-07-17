
#----------SOURCE: ./scripts/android-env.enabled.sh
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

#----------END---------------------


#----------SOURCE: ./scripts/chrome.enabled.sh
#!/bin/sh
alias chrome=/Users/bywang/.scripts/chrome.sh
#----------END---------------------


#----------SOURCE: ./scripts/golang-env.enabled.sh
#!/bin/sh
# Go development
export GOPATH="${HOME}/go"
#export GOROOT="$(brew --prefix golang)/libexec"
export GOBIN=$GOPATH/bin
#export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin:${GOBIN}"


#----------END---------------------


#----------SOURCE: ./scripts/gradle.enabled.sh
#!/bin/bash
SECOND_GRADLE_CACHE_FOLDER=/Volumes/BaiyuanSSD/Caches/gradle
if [ -d "$SECOND_GRADLE_CACHE_FOLDER" ]; then
   export GRADLE_USER_HOME=${SECOND_GRADLE_CACHE_FOLDER}
fi

if [ -f "$(pwd)/build.gradle" ]; then
    echo -e "Gralde User Home is at: \e[33m$GRADLE_USER_HOME"
fi

launchctl setenv GRADLE_USER_HOME $GRADLE_USER_HOME

#----------END---------------------


#----------SOURCE: ./scripts/kube-ps1.enabled.sh
#!/bin/sh
source "/usr/local/opt/kube-ps1/share/kube-ps1.sh"
kube_ps1=
PS1=$PS1'$(kube_ps1)'
KUBE_PS1_PREFIX='['
KUBE_PS1_SUFFIX=']✗ '
KUBE_PS1_SYMBOL_COLOR='white'
KUBE_PS1_CTX_COLOR='green'
KUBE_PS1_SEPARATOR='-> '
KUBE_PS1_NS_ENABLE=false


#----------END---------------------


#----------SOURCE: ./scripts/node.enabled.sh
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

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

#----------END---------------------


#----------SOURCE: ./scripts/sdkman.enabled.sh
#!/bin/sh
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/bywang/.sdkman"
[[ -s "/Users/bywang/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/bywang/.sdkman/bin/sdkman-init.sh"


#----------END---------------------

