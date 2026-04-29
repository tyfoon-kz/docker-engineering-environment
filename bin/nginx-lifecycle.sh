#!/usr/bin/env bash
set -euo pipefail

NAME="lesson02-nginx"
HOST_PORT="${HOST_PORT:-8080}"

echo "1. Pull the image if it is not available locally"
docker pull nginx:alpine

echo "2. Remove old training container if it already exists"
docker rm -f "$NAME" >/dev/null 2>&1 || true
trap 'docker rm -f "$NAME" >/dev/null 2>&1 || true' EXIT

echo "3. Start a long-running web server container"
docker run -d --name "$NAME" -p "${HOST_PORT}:80" nginx:alpine

echo "4. Observe the running container"
docker ps --filter "name=$NAME"

echo "5. Read recent logs from the foreground process"
docker logs "$NAME" --tail 20

echo "6. Ask the process/container to stop"
docker stop "$NAME"

echo "7. Confirm it is now exited"
docker ps -a --filter "name=$NAME"

echo "8. Remove the stopped disposable runtime instance"
docker rm "$NAME"
