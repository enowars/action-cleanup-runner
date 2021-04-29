#!/bin/bash

set -euo pipefail

echo "removing all docker containers..."
docker ps -aq | xargs docker rm -f || true

echo "removing docker networks, volumes and images..."
docker system prune -af --volumes || true

echo "cleaning up working directory..."
shopt -s dotglob
sudo rm -rf *
