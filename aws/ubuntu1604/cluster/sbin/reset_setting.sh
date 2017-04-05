RESET_PATH=/home/ubuntu/cluster/reset_setttings
sudo cp -f $RESET_PATH/hosts /etc/hosts
sudo cp -f $RESET_PATH/slaves_HADOOP $HADOOP_HOME/etc/hadoop/slaves
sudo cp -f $RESET_PATH/slaves_SPARK $SPARK_HOME/conf/slaves
