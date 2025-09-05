#!/bin/bash

# Install Docker for CentOS 10

set -e 

if ! command -v docker > /dev/null 2>&1; then
	# Set up the repository
	sudo dnf -y install dnf-plugins-core
	sudo dnf config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

	# Downloading Docker and dependencies
	sudo dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

	# Start Docker Deamon
	sudo systemctl enable --now docker

	sudo systemctl start docker
else
	echo "Docker installed"
fi

if [ $# -eq 0 ]; then
	echo "Complete with exit code $#"
	exit 0
else
	echo "Complete with exit code $#"
	exit 1
fi
