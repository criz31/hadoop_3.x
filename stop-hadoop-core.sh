#!/usr/bin/bash

echo "Stopping hdfs daemons"

# Stop all daemons
echo "Stopping secondary namenode daemon.."
(hdfs --daemon stop secondarynamenode)
echo "Stopping datanode daemon.."
(hdfs --daemon stop datanode)
echo "Stopping namenode daemon.."
(hdfs --daemon stop namenode)

printf "\nCurrent processes:\n"
jps

