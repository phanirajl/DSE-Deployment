#!/usr/bin/env bash

export DATASTAX_AGENT_HOME=/app/localstorage/DSE/datastax-agent
export JAVA_HOME=/app/localstorage/jdk1.8.0_171
export PATH=$PATH:$JAVA_HOME/bin
$DATASTAX_AGENT_HOME/bin/datastax-agent -f &
