#!/usr/bin/env bash
set -euo pipefail

NAME="lesson02-nginx"

echo "1. Pull the image if it is not available locally"
docker pull nginx:alpine

echo "2. Start a long-running web server container"
docker run -d --name "$NAME" -p 8080:80 nginx:alpine

echo "3. Observe the running container"
docker ps --filter "name=$NAME"

echo "4. Read recent logs from the foreground process"
docker logs "$NAME" --tail 20

echo "5. Ask the process/container to stop"
docker stop "$NAME"

echo "6. Confirm it is now exited"
docker ps -a --filter "name=$NAME"

echo "7. Remove the stopped disposable runtime instance"
docker rm "$NAME"
