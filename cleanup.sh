#!/bin/bash

set -euo pipefail

echo "removing all docker containers..."
docker ps -aq | xargs docker rm -f

echo "cleaning working directory ($(pwd))..."
rm -rf *
