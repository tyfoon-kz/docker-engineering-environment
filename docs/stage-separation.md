# Stage Separation

## Builder stage

The builder stage is allowed to contain tooling required for dependency resolution and artifact preparation.

## Runtime stage

The runtime stage should contain only what the application needs to run.

## Why the split matters

The split prevents build tooling from polluting the final runtime image and makes the runtime boundary easier to reason about.
