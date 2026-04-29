# Container vs VM

| Criteria | Container | Virtual machine |
| --- | --- | --- |
| Kernel | Shares the host kernel | Boots a separate guest OS kernel |
| Main unit | Isolated process or process group | Full virtual machine |
| Startup | Usually seconds or less | Usually slower because OS boots |
| Size | Usually smaller | Usually larger |
| Change style | Recreate from image/config | Often treated like a machine to maintain |
| Best fit | App/runtime packaging and repeatable dev environments | Stronger machine-level isolation or different OS needs |

Useful beginner sentence:

```text
A container is a process with a fence, not a full second computer.
```

This matters because a container lives while its main foreground process lives. If that process exits, Docker marks the container as exited.
