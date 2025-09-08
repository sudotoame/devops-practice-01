#!/bin/bash 

set -e
NETWORK_NAME='selenium-network'
IMAGE_TAG="$GITHUB_RUN_NUMBER"

docker network inspect $NETWORK_NAME || docker network create $NETWORK_NAME

docker run --cpus 1 --memory 1G --memory-swap 2G --name pytest --rm --network selenium-network pytest:${IMAGE_TAG}
