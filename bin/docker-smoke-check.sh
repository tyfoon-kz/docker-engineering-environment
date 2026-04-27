#!/usr/bin/env bash

set -euo pipefail

# Verify that the Docker client can talk to the daemon.
docker version

# Print runtime details and confirm that the engine responds normally.
docker info

# Run a short-lived container to prove that image retrieval and process start work.
docker run --rm hello-world

# Inspect visible runtime state after the smoke check.
docker ps
