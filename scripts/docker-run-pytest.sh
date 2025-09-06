#!/bin/bash 

set -e
NETWORK_NAME='selenium-network'
IMAGE_TAG="$GITHUB_RUN_NUMBER"

docker network inspect $NETWORK_NAME || docker network create $NETWORK_NAME

docker run -d --name pytest --rm --network selenium-network pytest:${IMAGE_TAG}
