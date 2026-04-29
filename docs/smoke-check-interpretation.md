# Smoke Check Interpretation

The smoke check is not a ritual. Each command proves a different part of the runtime model.

## `docker version`

This proves the Docker client is installed. If the daemon is reachable, it also prints the server section. If only the client appears or the command cannot connect, the daemon/runtime is the first thing to inspect.

## `docker info`

This asks the daemon for runtime details: storage driver, Docker root dir, context, containers, images, and host information. It proves the daemon can answer detailed operational questions.

## `docker run --rm hello-world`

This proves Docker can obtain an image and start a short-lived container. `hello-world` exits because its job is only to print a message and finish.

## `docker ps -a`

This shows observable container history, including exited containers. It teaches that an exited container is not always a failure; it may simply mean the foreground process completed its work.
