#!/usr/bin/env bash
set -euo pipefail

NAME="lesson03-inspect-nginx"

echo "1. Start a temporary nginx container"
docker run -d --name "$NAME" -p 8081:80 nginx:alpine

echo "2. Observe running state"
docker ps --filter "name=$NAME"

echo "3. Read recent logs before acting"
docker logs "$NAME" --tail 20

echo "4. Inspect exact Docker metadata"
docker inspect "$NAME" --format '{{.State.Status}} {{.Config.Image}}'

echo "5. Enter running container context for a harmless version check"
docker exec "$NAME" nginx -v

echo "6. Stop the disposable runtime instance"
docker stop "$NAME"

echo "7. Remove the stopped container, not volumes"
docker rm "$NAME"
