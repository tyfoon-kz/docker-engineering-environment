# Mount Strategy

The stack now uses different mount types for different semantics:
- bind mount for project code;
- read-only bind mount for PHP config;
- named volume for Postgres state;
- named volume for Redis state.

This keeps developer feedback fast while avoiding the mistake of treating all runtime state like source code.
