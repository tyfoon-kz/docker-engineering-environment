# Readiness vs Start

Key distinction:

- process start means the container process exists;
- readiness means the service is actually ready to play its role in the stack.

In this branch:
- `valkey` starts first;
- Compose waits for `service_healthy`;
- `app` starts only after Valkey reports a useful health signal.
