# Limits as Guardrails

These limits are guardrails, not magic.

They help by:
- preventing one service from consuming the whole host too easily;
- making the stack more predictable across developer machines;
- forcing the author of the environment to think in budgets.

They do not:
- fix a badly designed service;
- replace profiling or architecture work;
- guarantee performance by themselves.

## When limits help locally

Limits help when a service has a temporary regression, a heavy import, or a runaway background job. The limit reduces how much damage that service can do to the rest of the laptop.

## When limits can hide the real problem

If the only conclusion is "Docker killed it because of a limit", the diagnosis is incomplete. The next question is why the service needed so much CPU or memory.

Examples:

- a memory leak still needs a code fix;
- a bad SQL query still needs query or index work;
- slow file I/O still needs investigation of volumes, bind mounts, or disk pressure.

The limit is the boundary. The diagnosis explains the cause.
