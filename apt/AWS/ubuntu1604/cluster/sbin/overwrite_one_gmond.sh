#!/usr/bin/env bash
COUNT=$1
ORIGIN=
SOURCE_DIR=/home/ubuntu/cluster/configures/ganglia/etc
TARGET_DIR=/etc/ganglia
TMP_TGT_DIR=/home/ubuntu/tmp
HOST_PFX=worker
FILE_PFX=gmond.conf_
ACCOUNT=ubuntu
HOST=$HOST_PFX`printf %02d $COUNT`
FORMAL_NAME=gmond.conf
SOURCE_FILE=$SOURCE_DIR/$FILE_PFX$HOST
TARGET_FILE=$TARGET_DIR/$FORMAL_NAME
TMP_TGT_FILE=$TMP_TGT_DIR/$FILE_PFX$HOST
SOURCE_ORIGIN=$SOURCE_DIR/gmond.conf_origin
cp -f $SOURCE_ORIGIN  $SOURCE_FILE
sed -i "/deaf = no/c\deaf = yes" $SOURCE_FILE
sed -i "/location = master/c\location = \"$HOST\"" $SOURCE_FILE
diff $SOURCE_ORIGIN $SOURCE_FILE
set -x o xtarce
./exec_cpfile.sh $SOURCE_FILE $TMP_TGT_FILE $ACCOUNT $HOST
./exec_mvrootfile.sh $TMP_TGT_FILE $TARGET_FILE  $ACCOUNT $HOST
