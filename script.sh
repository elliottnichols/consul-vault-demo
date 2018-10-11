#!/bin/bash

export CONSUL_MASTER_ROOT_TOKEN=$(uuidgen)
s=$(printf "%-71s" "*")
echo "${s// /*}"
echo "Consul Generated Master Root Token $CONSUL_MASTER_ROOT_TOKEN"
echo "${s// /*}"
docker-compose up -d
sleep 4
export VAULT_ADDR=http://localhost:8200
echo $VAULT_ADDR
vault operator init -key-shares=1 -key-threshold=1
# | tee >(export UNSEAL=`awk '/Unseal/{print $4}'`) >(export ROOT_TOKEN=`awk '/Initial/{print $4}'`)
# echo $UNSEAL
# echo $ROOT_TOKEN