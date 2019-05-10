#!/usr/bin/bash

RUN_DIR="/var/run"

# create if /var/run/hadoop and subdirectories do not exist
if [ ! -d "$RUN_DIR/hadoop" ]; then
  sudo mkdir "$RUN_DIR/hadoop"
  sudo mkdir "$RUN_DIR/hadoop/hdfs"
  sudo mkdir "$RUN_DIR/hadoop/mapreduce"
  sudo mkdir "$RUN_DIR/hadoop/yarn"
  sudo chown -R hduser:hadoop "$RUN_DIR/hadoop"
fi

ls -l /var/run/hadoop

## create if /var/run/zookeeper does not exist
#if [ ! -d "$RUN_DIR/hadoop" ]; then
#  mkdir "$RUN_DIR/zookeper"
#  sudo chown -R hduser:hadoop "$RUN_DIR/zookeeper"
#fi

# create if /var/base and subdirectories if not exist
#if [ ! -d "$RUN_DIR/hbase" ]; then
#  mkdir "$RUN_DIR/hbase"
#  sudo chown -R hduser:hadoop "$RUN_DIR/hbase"
#fi

