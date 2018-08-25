#!/usr/bin/env bash


export JAVA_HOME=/app/localstorage/jdk1.8.0_171
export PATH=$PATH:$JAVA_HOME/bin
export HOST_NAME=`hostname`
export STUDIO_CONFIG=/app/localstorage/DSE/datastax-studio/conf/configuration.yaml
export WORK_DIR=\\/app\\/localstorage\\/DSE\\/studio_user_data


mv /app/localstorage/DSE/datastax-studio-6.0.0 /app/localstorage/DSE/datastax-studio
sed -ri 's/( )?(  httpBindAddress:).*/\2 '"$HOST_NAME"'/' "$STUDIO_CONFIG"
mkdir -p /app/localstorage/DSE/tmp
mkdir -p $WORK_DIR
ser -ri 's/( )?(  baseDirectory:).*/\2 '"$WORK_DIR"'/' "$STUDIO_CONFIG"




