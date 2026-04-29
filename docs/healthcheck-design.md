# Healthcheck Design

## Valkey probe

```yaml
test: ["CMD", "valkey-cli", "ping"]
```

Why it is useful:
- it checks whether Valkey can answer a real command;
- it is more meaningful than merely checking that the process exists;
- it gives the rest of the stack a readiness signal instead of a blind startup event.

## App probe

```yaml
test: ["CMD-SHELL", "wget -qO- http://localhost/ >/dev/null"]
```

Why it is useful:
- it checks that nginx can serve HTTP locally;
- it is simple enough for a beginner to reason about;
- it returns exit code `0` only when the command succeeds.

## Exit code model

Docker uses the healthcheck command exit code:

- `0` means healthy for that check;
- non-zero means the check failed;
- after enough failed checks, Docker marks the container `unhealthy`.

The text printed by the command is secondary. The exit code is the signal Docker uses.

## What this healthcheck does not prove

The app healthcheck proves that nginx serves the local static page. It does not prove that every business feature works. A healthcheck should be small, fast, and tied to the service role.
