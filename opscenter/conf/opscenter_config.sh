#!/usr/bin/env bash

export DATASTAX_OPSCENTER_HOME=/app/localstorage/DSE/opscenter
chmod -R 777 $USER:$GROUP /app/localstorage/DSE
mv /app/localstorage/DSE/opscenter-6.5.0 /app/localstorage/DSE/opscenter