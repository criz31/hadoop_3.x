#!/usr/bin/bash

RUN_DIR="/var/run"

# Create hadoop-core run directories
if [ ! -d "$RUN_DIR/hadoop" ]; then
  sudo mkdir "$RUN_DIR/hadoop"
  sudo mkdir "$RUN_DIR/hadoop/hdfs"
  sudo mkdir "$RUN_DIR/hadoop/mapreduce"
  sudo mkdir "$RUN_DIR/hadoop/yarn"
  sudo chown -R hduser:hadoop "$RUN_DIR/hadoop"
fi

# Create zookeeper run directory
if [ ! -d "$RUN_DIR/zookeeper" ]; then
  sudo mkdir "$RUN_DIR/zookeeper"
  sudo chown -R hduser:hadoop "$RUN_DIR/zookeeper"
fi

# Create hbase run directory
if [ ! -d "$RUN_DIR/hbase" ]; then
  sudo mkdir "$RUN_DIR/hbase"
  sudo chown -R hduser:hadoop "$RUN_DIR/hbase"
fi

# Check all created directories
ls -l /run | grep -e hadoop -e zookeeper -e hbase

