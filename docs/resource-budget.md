# Resource Budget

This branch is a reference answer for lesson 17. The goal is a simple local budget, not production performance tuning.

## Container model

A container is not an infinite box. It uses real CPU, memory, disk, and network from the host. Limits are a way to say: "this service should stay inside this local budget".

## Budget table

Budget in this branch:

- `app`
  - memory: `256m`
  - CPU: `0.50`
  - role: main web surface, therefore larger budget than the admin helper

- `admin`
  - memory: `128m`
  - CPU: `0.25`
  - role: secondary helper surface, therefore smaller budget

The point is not perfect tuning. The point is to state deliberate numbers instead of pretending the host is infinite.

## Docker Desktop limit vs Compose limit

Docker Desktop settings limit the whole Docker VM on macOS or Windows. That is the global ceiling for all local Docker work.

Compose limits are per service. They tell this project how much a specific service should be allowed to use. Both levels matter:

- if Docker Desktop gets too little memory, every service suffers;
- if Compose has no limits, one service can pressure its neighbors.

## How to inspect

```bash
docker compose up -d
bin/inspect-limits.sh
docker stats --no-stream
```

If Docker is unavailable, do not claim runtime verification. State that the Compose and script artifacts are ready for local verification.
