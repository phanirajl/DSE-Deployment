#!/usr/bin/env bash

clear
export JMX_PASSWORD=''
export JMX_LOGIN='cassandra'
export USER_NAME=''
export SERVERLIST=(`nodetool -u ${JMX_LOGIN} -pw ${JMX_PASSWORD} -h IP status | awk 'match($2,/192/) {print $2}'`) SSH_KEY=''
export GATEWAY=''
export SEED_NODE=''

if [ ! -f ~/${SSH_KEYS} ]; then
        echo "$SSH_KEY not found!"
fi

echo "MAIN MENU"
echo "================"
echo "1) status of all clusters"
echo "2) Stop all datastax agents"
echo "3) Start all datastax agents"
echo "4) Stop AlwaysonSQL"
echo "5) Start AlwaysonSQL"
echo "6) Exit"

case $MENUCHOICE in

1)
    echo "Status of the cluster"
    echo "Cassandra"
    nodetool -u ${JMX_LOGIN} -pw ${JMX_PASSWORD} -h ${SEED_NODE} status
    echo "DSE"
    echo "`dsetool --jmxusername $JMX_LOGIN --jmxpassword $JMX_PASSWORD --host ${SEED_NODE} status`" ;;

2)
    echo "Stop All DataStax Agents"
    COUNT=0
    for INDEX in ${SERVERLIST[@]}; do
    echo "Stopping on ${SERVERLIST[COUNT]}"
    echo `ssh -i ${SSH_KEY} ubuntu@${SERVERLIST[COUNT]} 'sudo service datastax-agent stop'`
    COUNT="`expr $COUNT + 1`"
    done;;

3)
     echo "Stop All DataStax Agents"
    COUNT=0
    for INDEX in ${SERVERLIST[@]}; do
    echo "Stopping on ${SERVERLIST[COUNT]}"
    echo `ssh -i ${SSH_KEY} ubuntu@${SERVERLIST[COUNT]} 'sudo service datastax-agent start'`
    COUNT="`expr $COUNT + 1`"
    done;;
6) exit

esac
