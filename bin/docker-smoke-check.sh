#!/usr/bin/env bash
set -euo pipefail

echo "1. Docker client/server version"
docker version

echo "2. Runtime information from daemon"
docker info

echo "3. Pull and run a short-lived test container"
docker run --rm hello-world

echo "4. Show observable container history"
docker ps -a
