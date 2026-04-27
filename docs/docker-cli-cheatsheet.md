# Docker CLI Cheatsheet

| Command | Role | Main question it answers |
| --- | --- | --- |
| `docker pull` | Obtain artifact | Do I have the image I need locally? |
| `docker run` | Create and start runtime instance | Can I launch a container from this image? |
| `docker ps` | Observe live state | Which containers are running right now? |
| `docker logs` | Inspect process output | What did the process write before or during failure? |
| `docker exec` | Enter live runtime context | What is happening inside a running container? |
| `docker stop` | End active runtime state | How do I stop this running instance cleanly? |
| `docker rm` | Remove runtime instance | How do I close the lifecycle and keep the environment clean? |

## Practical rule

Commands should be remembered by operational role, not as isolated vocabulary items.
