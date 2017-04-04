#!/usr/bin/env bash
NUM_HOST=`cat /etc/hosts | grep worker | wc -l`
COUNT=$1
HOST_PFX=worker
ACCOUNT=ubuntu
CMD=$2
    HOST=$HOST_PFX`printf %02d $COUNT`
    echo $HOST doing....
    ( set -x ; ./exec_cmd.sh $ACCOUNT $HOST "$CMD" )
    echo $HOST finish!
