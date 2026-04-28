# Environment Drift

## Why it hurts

Environment drift appears when PhpStorm analyzes or runs the project through a PHP environment that differs from the real container runtime.
The drift may be small, but it destroys trust step by step.

## Typical drift signals

- PHP version in the IDE differs from the version inside the container.
- Required extensions exist in one place and are missing in the other.
- Project paths inside the container differ from what the IDE expects.
- Composer behaves one way in the container and another way on the host.
- Tests pass in one runtime and fail in the other.

## Why the problem is subtle

The damage is rarely a single obvious crash.
More often the IDE shows green checks while the actual runtime rejects the same code path.
That leads to false confidence and slow debugging.

## Rule

If the project chose containers as the runtime, the IDE must follow that choice rather than compete with it.

