#!/usr/bin/env bash
COUNT=`printf %02d $1`
IP=$2
HOST_PFX=worker
HOST=$HOST_PFX$COUNT
sudo echo "$IP    $HOST" >> /etc/hosts
sudo echo $HOST >> $SPARK_HOME/conf/slaves
sudo echo $HOST >> $HADOOP_HOME/etc/hadoop/slaves
overwrite_one_gmond.sh $COUNT
