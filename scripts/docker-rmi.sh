#!/bin/bash

set -e

docker rmi $(docker images -q)
