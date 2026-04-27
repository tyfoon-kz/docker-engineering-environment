# Docker Runtime Model

## Command Path

For a beginner, the most important path is:

`developer command -> docker client -> docker daemon -> image lookup/pull -> container creation -> process start`

## What each part does

- The developer writes a command such as `docker run hello-world`.
- The Docker client sends that request through the Docker API.
- The Docker daemon decides whether the required image already exists locally.
- If the image is missing, the daemon pulls it from a registry.
- The daemon creates a container from that image.
- The daemon starts the main process defined by the image.

## Why this model matters

This model is useful because it separates concerns:
- the client is the command interface;
- the daemon is the runtime control plane;
- the image is the reproducible artifact;
- the container is the concrete runtime instance;
- the process is the actual workload.

If a developer does not understand that separation, they tend to diagnose Docker as one black box and lose precision during debugging.
