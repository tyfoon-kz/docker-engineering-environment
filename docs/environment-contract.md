# Environment Contract

## What belongs to the repository

- `docker-compose.yml` and other environment entry points
- service-specific config under `docker/`
- `.env.example` for expected variables
- onboarding docs and workflow notes
- small helper scripts under `bin/`

## What this contract means

The team should be able to inspect the repository and answer:
- which services exist
- which variables are required
- how the environment is expected to start
- where to look for common operational actions

## Rule

The local environment is part of the product's engineering surface.
If it is required for daily work, it must be represented in the repository.

