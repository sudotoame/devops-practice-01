#!/bin/bash 

set -e

docker network create selenium-network

# docker run -d -p 4444:4444 -p 7900:7900 --name selenium --network selenium-network --shm-size="2g" --restart always selenium/standalone-chrome:4.35.0-20250808

docker run -d --name pytest --network selenium-network --restart always pytest:1.0
