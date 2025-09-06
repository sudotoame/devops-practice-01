#!/bin/bash 

set -e
NETWORK_NAME='selenium-network'

docker network inspect $NETWORK_NAME || docker network create $NETWORK_NAME

docker run -d --name pytest --rm --network selenium-network pytest:1.0
