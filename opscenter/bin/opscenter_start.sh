#!/usr/bin/env bash

export DATASTAX_OPSCENTER_HOME=/app/localstorage/DSE/opscenter
export JAVA_HOME=/app/localstorage/jdk1.8.0_171
export PATH=$PATH:$JAVA_HOME/bin
export OPSC_JVM_OPTS="OPSC_JVM_OPTS -Djava.io.tmpdir=/app/localstorage/DSE/opscenter/tmp"

$DATASTAX_OPSCENTER_HOME/bin/opscenter&


