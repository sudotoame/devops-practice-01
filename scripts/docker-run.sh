#!/bin/bash 

set -e

docker run -d -p 4444:4444 -p 7900:7900 --name selenium --shm-size="2g" --restart always selenium/standalone-chromium:124.0
