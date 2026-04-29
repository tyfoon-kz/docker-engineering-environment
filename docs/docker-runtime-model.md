# Docker Runtime Model

When a developer runs Docker, the command travels through several parts:

```text
terminal
  -> docker CLI client
  -> Docker daemon
  -> local image or remote registry
  -> container
  -> foreground process
```

The `docker` command is the client. It does not create containers by itself. It sends a request to the Docker daemon.

The daemon does the real work:

- checks whether the image exists locally;
- pulls it from a registry if needed;
- creates a container filesystem view;
- configures networking and volumes;
- starts the foreground process.

A container is not a mini VM. It is an isolated runtime instance that uses the host kernel. The important question is: what process is running inside it? If that process exits, the container exits.
