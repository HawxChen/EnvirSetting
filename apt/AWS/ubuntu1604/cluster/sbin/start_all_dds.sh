#!/usr/bin/env bash
eval `ssh-agent`
ssh-add DISTRIUBTE_COPUTING.pem
sudo rm -rf /tmp/hadoop*
hdfs namenode -format
$HADOOP_HOME/sbin/start-dfs.sh
$HADOOP_HOME/sbin/start-yarn.sh
$SPARK_HOME/sbin/start-master.sh
$SPARK_HOME/sbin/start-slaves.sh
./master_disable.sh
./master_enable.sh
./slaves_all_enable.sh
