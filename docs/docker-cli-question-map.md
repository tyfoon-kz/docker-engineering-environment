# Docker CLI Question Map

Docker CLI commands are useful when each command answers a specific operational question.

| Command | Question it answers |
| --- | --- |
| `docker pull IMAGE` | Do I have this image locally? If not, get it from a registry. |
| `docker run IMAGE` | Can I create and start a container from this image? |
| `docker ps` | What is running now? |
| `docker ps -a` | What also exited before? |
| `docker logs CONTAINER` | What did the foreground process write to stdout/stderr? |
| `docker exec CONTAINER ...` | Can I enter/check the context of a running container? |
| `docker inspect CONTAINER` | What exact metadata/config does Docker know? |
| `docker stop CONTAINER` | Can I ask the container's main process to stop? |
| `docker rm CONTAINER` | Can I remove a stopped disposable container instance? |

This is not a memorization list. It is a map for thinking.
