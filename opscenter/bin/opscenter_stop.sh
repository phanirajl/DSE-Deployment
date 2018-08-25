#!/usr/bin/env bash

export JAVA_HOME=/app/localstorage/jdk1.8.0_171
export PATH=$PATH:$JAVA_HOME/bin

pid=`pgrep -f opscenter*`
kill -9 $pid

