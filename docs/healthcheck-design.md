# Healthcheck Design

The Valkey probe is:

- `valkey-cli ping`

Why it is useful:
- it checks whether Valkey can answer a real command;
- it is more meaningful than merely checking that the process exists;
- it gives the rest of the stack a readiness signal instead of a blind startup event.
