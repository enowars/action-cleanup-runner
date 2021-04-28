#!/bin/bash

set -euo pipefail

echo "running cleanup...."

docker ps -aq | xargs docker rm -f
