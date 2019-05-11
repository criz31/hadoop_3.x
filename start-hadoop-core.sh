#!/usr/bin/bash

# Create /var/run/hadoop/ directory and sub directories
echo "Ensuring hadoop /var/run/* dirs and subdirs exist..."
sudo ./create_run_dir.sh

echo "Starting hdfs daemons..."
echo "Starting namenode daemon.."
hdfs --daemon start namenode
echo "Starting datanode daemon.."
hdfs --daemon start datanode
echo "Starting secondarynamenode daemon.."
hdfs --daemon start secondarynamenode

echo "Starting yarn daemon.."
yarn --daemon start resourcemanager
yarn --daemon start nodemanager

echo "Starting mapreduce daemon.."
mr-jobhistory-daemon.sh start historyserver

printf "\nCurrent process:\n"
jps

