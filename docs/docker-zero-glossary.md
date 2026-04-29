# Docker Zero Glossary

This document is intentionally beginner-level. It explains the words needed before Docker can make sense.

## Computer, OS, and process

- **Computer**: the physical or virtual machine.
- **Operating system (OS)**: the system that manages programs, files, memory, networking, and devices.
- **Kernel**: the lowest core of the OS. Containers share the host kernel.
- **Program**: code stored on disk.
- **Process**: a program that is running now.
- **Filesystem**: the tree of files and directories.
- **Path**: an address in the filesystem, such as `/app` or `/Users/sultan/project`.
- **Port**: a numbered network door. A web server may listen on port `80`; the host may expose it as `8080`.

## Docker words

- **Client**: the `docker` CLI that accepts commands from a developer.
- **Daemon**: the background Docker service that creates containers and manages images, networks, and volumes.
- **Registry**: remote image storage, such as Docker Hub.
- **Image**: an immutable recipe/packed box/blueprint for creating containers.
- **Container**: a runtime instance from an image; practically, an isolated process or group of processes.
- **Volume**: Docker-managed persistent storage.
- **Bind mount**: a host file or folder connected into a container.
- **Network**: rules for how containers and the host communicate.
- **Runtime**: the layer that starts and supervises containers while they run.
- **Foreground process**: the main process in the container. When it exits, the container stops.

## Mental model

```text
terminal command
  -> Docker client
  -> Docker daemon
  -> registry/image if needed
  -> container
  -> foreground process
```
