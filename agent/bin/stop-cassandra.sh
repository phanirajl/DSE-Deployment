#!/usr/bin/env bash

export DSE_HOME=/app/localstorage/DSE/dse
export cassandra_dir=/app/localstorage/DSE/var/lib/cassandra
export CASSANDRA_CONFIG=/app/localstorage/DSE/dse/resources/cassandra/conf/cassandra.yaml
export DSE_CONFIG=/app/localstorage/DSE/dse/resources/dse/conf/dse.yaml
export CASSANDRA_LOG_DIR=/app/localstorage/DSE/var/log/cassandra
export SPARK_WORKER_DIR="/app/localstorage/DSE/var/lib/spark/worker"
export SPARK_EXECUTOR_DIRS="/app/localstorage/DSE/var/lib/spark/rdd"
export SPARK_WORKER_LOG_DIR="/app/localstorage/DSE/var/log/spark/worker"
export SPARK_MASTER_LOG_DIR="/app/localstorage/DSE/var/log/spark/master"
export ALWAYSON_SQL_LOG_DIR="/app/localstorage/DSE/var/log/spark/alwayson_sql"
export JAVA_HOME=/app/localstorage/jdk1.8.0_171
export PATH=$PATH:$JAVA_HOME/bin

$DSE_HOME/bin/dse cassandra-stop

