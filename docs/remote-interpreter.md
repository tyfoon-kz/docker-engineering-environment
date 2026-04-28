# Remote PHP Interpreter

## Core idea

For a container-based PHP project, the IDE should run PHP-aware actions through the same runtime that serves the application.
The remote interpreter is the bridge that makes that possible.

## What it gives the project

- The IDE uses the project's container PHP instead of host PHP.
- Composer actions can follow container extensions and platform constraints.
- Test execution reflects the real runtime instead of a local approximation.
- One interpreter model reduces tool disagreement.

## What it is not

- It is not a random convenience toggle.
- It is not permission to mix host PHP and container PHP freely.
- It is not a replacement for good path mappings and clean Docker config.

## Rule

If the project runtime is containerized, the IDE interpreter should be containerized too.

