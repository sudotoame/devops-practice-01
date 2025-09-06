#!/bin/bash 

set -e

NETWORK_NAME='selenium-network'

docker network inspect $NETWORK_NAME || docker network create $NETWORK_NAME

docker run -d -p 4444:4444 -p 7900:7900 --name selenium --network selenium-network --shm-size="2g" --restart always selenium/standalone-chrome:4.35.0-20250808
