#!/usr/bin/env bash
. configure.sh
ACCOUNT=$1
HOST=$2
CMD=$3
ssh -i $PEM_PATH $ACCOUNT"@"$HOST "$CMD"
