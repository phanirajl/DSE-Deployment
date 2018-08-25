#!/usr/bin/env bash

# should be OPS_CENTER parameter as $1

export OPS_CENTER_IP_DEV=1007.com
export OPS_CENTER_IP_UAT=2011.com
export DATASTAX_AGENT_HOME=/app/localstorage/DSE/datastax-agent
export ENV_NAME=$1

chmod -R 777 $USER:$GROUP /app/localstorage/DSE

mv /app/localstorage/DSE/datastax-agent-6.5.0 /app/localstorage/DSE/datastax-agent
cp /app/localstorage/DSE/start-cassandra stop-cassandra $DATASTAX_AGENT_HOME/bin
chmod +x $DATASTAX_AGENT_HOME/bin/cassandra-start
chmod +x $DATASTAX_AGENT_HOME/bin/cassandra-stop

if [ "$ENV_NAME" == 'DEV' ];
then
echo "stomp_interface: $OPS_CENTER_IP_DEV" >> $DATASTAX_AGENT_HOME/conf/address.yaml
fi

if [ "$ENV_NAME" == 'UAT' ];
then
echo "stomp_interface: $OPS_CENTER_IP_UAT" >> $DATASTAX_AGENT_HOME/bin/address.yaml
fi
