#!/usr/bin/env bash
set -o xtarce
eval `ssh-agent`
ssh-add DISTRIUBTE_COPUTING.pem
./master_disable.sh
./slaves_all_disable.sh
$SPARK_HOME/sbin/stop-slaves.sh
$SPARK_HOME/sbin/stop-master.sh
$HADOOP_HOME/sbin/stop-yarn.sh
$HADOOP_HOME/sbin/stop-dfs.sh
sudo rm -rf /tmp/hadoop*
pkill ssh-agent
