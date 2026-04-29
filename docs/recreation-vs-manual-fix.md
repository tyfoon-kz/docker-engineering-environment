# Recreation vs Manual Fix

Manual fixes inside a running container feel fast, but they are hard to trust:

- they are not written in the repository;
- teammates cannot reproduce them;
- CI cannot verify them;
- a new container loses them.

The better pattern is:

```text
describe desired state -> build/pull image -> run container -> observe -> recreate if needed
```

Recreation is not wasteful. It is the discipline that keeps the environment predictable.
