# Container Lifecycle

## Core lifecycle

1. Pull or build the image.
2. Create and start a container from that image.
3. Observe state with commands such as `docker ps` and `docker logs`.
4. Stop the container when it is no longer needed.
5. Remove the container to close the lifecycle cleanly.
6. Recreate it from the image when the environment must be reproduced again.

## Engineering meaning

The lifecycle matters because a container is a disposable runtime instance.
The clean lifecycle is one of the reasons Docker helps keep local environments predictable.
