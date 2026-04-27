# Why Containerization Emerged

## The pre-Docker problem

Teams kept hitting the same failure pattern:
- the application worked on one machine but not on another;
- setup depended on undocumented local differences;
- CI and local development drifted apart;
- environment setup became a hidden engineering cost.

## Why this was hard to manage

Manual setup guides rot quickly.
Machine-specific scripts are fragile.
Heavy virtual machines can help, but they add more weight and friction than many developers need for everyday work.

## What Docker made manageable

Docker made it more practical to define and reproduce the application environment in a portable way.

That means:
- a developer can describe the runtime more explicitly;
- another developer can reproduce it with less drift;
- teams can reduce the \"works on my machine\" problem;
- environment setup becomes part of engineering discipline instead of tribal knowledge.
