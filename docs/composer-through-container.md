# Composer Through the Container

## Why Composer belongs there

Composer does not only download packages.
It evaluates platform requirements, PHP versions, and extension availability.
If Composer runs under a different PHP than the project runtime, dependency decisions can become misleading.

## Failure modes of host Composer

- `composer install` passes on the host but not in the container.
- Platform requirements are validated against the wrong PHP version.
- Extensions available on the host hide missing extensions in the container.
- Lockfile trust degrades because the runtime context is inconsistent.

## Better model

Run Composer through the same container interpreter that the IDE uses for PHP tooling.
That keeps dependency resolution close to the runtime that will actually execute the code.

