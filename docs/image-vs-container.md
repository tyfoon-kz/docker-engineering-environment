# Image vs Container

## Image

An image is a reproducible build artifact.
It describes the filesystem and runtime defaults from which a container can be created.
It is treated as immutable because engineering teams need to rebuild it predictably.

## Container

A container is the running or stopped runtime instance created from an image.
It has a lifecycle: create, start, observe, stop, remove, recreate.

## Why the distinction matters

If a team confuses the image with the container:
- they start patching runtime state manually;
- they lose reproducibility;
- they stop trusting their environment setup;
- they cannot explain what should be rebuilt and what should be restarted.
