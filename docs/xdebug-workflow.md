# Xdebug Workflow

## The chain

Stable debugging depends on a full chain rather than on one switch.

1. The PHP container must load the Xdebug extension.
2. Xdebug must know where the IDE listener lives.
3. PhpStorm must listen for incoming debug connections.
4. The IDE must map container paths to host paths correctly.

## Why this matters

If any link is missing, the symptom usually looks vague: the request runs, but the breakpoint is not hit.
That is why Xdebug should be taught as a system, not as a mystical checkbox.

