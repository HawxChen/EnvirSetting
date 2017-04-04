#!/usr/bin/env bash
. configure.sh
SOURCE_FILE=$1
TARGET_FILE=$2
ACCOUNT=$3
HOST=$4
#scp -i $PEM_PATH $SOURCE_FILE $ACCOUNT@$HOST:$TARGET_FILE
./exec_cmd.sh $ACCOUNT $HOST "sudo mv $SOURCE_FILE $TARGET_FILE"
