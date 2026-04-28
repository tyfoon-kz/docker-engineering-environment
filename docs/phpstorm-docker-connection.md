# PhpStorm Docker Connection

## Purpose

PhpStorm should not invent its own PHP world when the project already runs in containers.
The Docker connection gives the IDE a way to discover the project runtime and use it as the base for interpreters, commands, and debugging.

## What the connection is for

- Discover running containers and available images.
- Use a project container as the source for a remote PHP interpreter.
- Let IDE actions target the same runtime that serves the project.
- Keep the IDE attached to the stack instead of drifting toward host PHP.

## What the connection is not

- It does not move PhpStorm itself into a container.
- It does not remove the need for clear path mappings and runtime choices.
- It does not make local host PHP equivalent to container PHP.

## Working model

1. Docker runs the project runtime.
2. PhpStorm connects to Docker as a client of that runtime.
3. The IDE reuses the container for PHP-related tooling instead of inventing a parallel environment.
4. Debugging and tests become trustworthy only when they follow the same runtime model.

