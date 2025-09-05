#!/bin/bash 

set -e

docker run -d -p 4444:4444 -p 7900:7900 --shm-size="2g" selenium/standalone-firefox:4.35.0-20250808
