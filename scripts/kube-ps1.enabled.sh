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

