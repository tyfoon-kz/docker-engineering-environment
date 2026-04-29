# Pressure Signals

Pressure means the stack asks for more CPU, memory, or I/O than the machine can comfortably provide.

Basic warning signs of local resource pressure:

- the laptop becomes noisy and sluggish;
- builds slow down dramatically;
- the browser-facing services respond with visible delay;
- containers start getting killed or restarted under pressure;
- the whole environment feels unstable even though the configuration looks "correct".

## Memory signals

- `docker inspect` shows `OOMKilled=true`;
- the container exits suddenly during a heavy operation;
- memory in `docker stats` grows over time and does not drop.

That last pattern may point to a memory leak. The limit exposes the problem earlier, but the cause is still in code or a dependency.

## CPU signals

- `docker stats` shows high CPU for one service;
- requests are slow even though memory is stable;
- shell commands inside the container respond with delay.

This can be CPU starvation: the process is waiting for enough CPU time.

## Slow I/O signals

- database reads or writes feel stuck;
- install/build steps pause for a long time;
- logs arrive in bursts instead of smoothly.

CPU, memory, and I/O symptoms can look similar. Use `stats`, `top`, `logs`, and `inspect` before guessing.
