#!/usr/bin/env bash
NUM_HOST=`cat /etc/hosts | grep worker | wc -l`
COUNT=1
HOST_PFX=worker
SOURCE_FILE=/etc/hosts
TARGET_FILE=/home/ubuntu/tmp/hosts
ACCOUNT=ubuntu
while [ $COUNT -le $NUM_HOST ]
do
    HOST=$HOST_PFX`printf %02d $COUNT`
    ./exec_cpfile.sh $SOURCE_FILE $TARGET_FILE $ACCOUNT $HOST
    ./exec_mvrootfile.sh $TARGET_FILE $SOURCE_FILE $ACCOUNT $HOST
    COUNT=`expr $COUNT + 1`
done
