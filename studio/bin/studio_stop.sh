#!/usr/bin/env bash

export STUDIO_JVM_ARGS="-Xmx4g -Djava.io.tmpdir=/app/localstorage/DSE/tmp"
export JAVA_HOME=/app/localstorage/jdk1.8.0_171
export PATH=$PATH:$JAVA_HOME/bin
export DSE_STUDIO_HOME=/app/localstorage/DSE/datastax-studio

$DSE_STUDIO_HOME/bin/server.sh &

pid=`pgrep -f studio-server*`
kill -9 $pid

