#!/usr/bin/bash

echo "Stopping mapreduce daemon.."
mr-jobhistory-daemon.sh stop historyserver

echo "Stopping yarn daemon.."
yarn --daemon stop nodemanager
yarn --daemon stop resourcemanager

echo "Stopping secondarynamenode daemon.."
(hdfs --daemon stop secondarynamenode)

echo "Stopping datanode daemon.."
(hdfs --daemon stop datanode)

echo "Stopping namenode daemon.."
(hdfs --daemon stop namenode)

printf "\nCurrent process:\n"
jps

