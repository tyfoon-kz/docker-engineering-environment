#!/usr/bin/env bash

set -euo pipefail

# Start a temporary container for observation practice.
docker run -d --name course-cli-nginx nginx:alpine

# Observe currently running containers.
docker ps

# Read process output before changing the runtime state.
docker logs course-cli-nginx

# Inspect the running context from inside the container.
docker exec course-cli-nginx sh -lc 'ps aux'

# Stop the container when the observation is complete.
docker stop course-cli-nginx

# Remove the runtime instance to close the lifecycle cleanly.
docker rm course-cli-nginx
