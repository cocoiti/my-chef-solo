#!/bin/bash

CMDNAME=`basename $0`
GITHUBUSER_NAME=$1
AUTHORIED_KEYS=~/.ssh/authorized_keys
SSHDIR=`dirname $AUTHORIED_KEYS`
if [ $# -ne 1 ]; then
    echo "Usage: $CMDNAME githubusername"
    exit 255
fi

if [ ! -d $SSHDIR ]; then
    mkdir -p  $SSHDIR
    chmod 700 $SSHDIR
fi
wget -O - https://github.com/$GITHUBUSER_NAME.keys >> $AUTHORIED_KEYS 
chmod 600 $AUTHORIED_KEYS
