#!/usr/bin/env bash

set -euo pipefail

# Obtain a lightweight web-server image for lifecycle practice.
docker pull nginx:alpine

# Create and start a named runtime instance in detached mode.
docker run -d --name course-nginx nginx:alpine

# Observe the running container.
docker ps

# Stop the container to end its active lifecycle state.
docker stop course-nginx

# Remove the stopped container so the environment stays reproducible and clean.
docker rm course-nginx
