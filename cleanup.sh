#!/bin/bash

set -euo pipefail

echo "removing all docker containers..."
docker ps -aq | xargs docker rm -f

echo "cleaning up working directory..."
shopt -s dotglob
rm -rf *
