#!/usr/bin/env bash
COUNT=`printf %02d $1`
IP=$2
HOST_PFX=worker
HOST=$HOST_PFX$COUNT
set x
echo $IP   $HOST | sudo tee --append /etc/hosts
echo $HOST >> $SPARK_HOME/conf/slaves
echo $HOST >> $HADOOP_HOME/etc/hadoop/slaves
./cls_one_cmd.sh $COUNT "mkdir -p ~/tmp"
./overwrite_one_gmond.sh $COUNT
./overwrite_hosts.sh
