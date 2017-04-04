#!/usr/bin/env bash
NUM_HOST=`cat /etc/hosts | grep worker | wc -l`
COUNT=$1
HOST_PFX=worker
ACCOUNT=ubuntu
HOST=$HOST_PFX`printf %02d $COUNT`
echo $HOST doing....
set -x ; ./exec_cmd.sh $ACCOUNT $HOST "$2"
echo $HOST finish!
