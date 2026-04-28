# IDE Boundaries

## The host still owns

- The PhpStorm process itself.
- UI interactions and editor settings.
- Access to local files on the workstation.

## The container runtime should own

- PHP version and loaded extensions.
- Composer execution context.
- Test execution context.
- Runtime paths used by the application.
- Environment variables that define application behavior.

## Why these boundaries matter

The IDE is effective only when it knows which layer it controls and which layer it should respect.
If PhpStorm silently replaces runtime concerns with host defaults, the project becomes harder to reason about.

## Practical consequence

Use the IDE as an interface to the runtime, not as a substitute for the runtime.

