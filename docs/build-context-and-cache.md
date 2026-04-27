# Build Context and Cache

## Build context

`docker build` does not see only the Dockerfile.
It receives a build context: the files sent to the daemon for the build.

## Why `.dockerignore` matters

`.dockerignore` prevents clutter and sensitive files from entering the build context.
That keeps the build smaller, cleaner, and safer.

## Why order matters

The Dockerfile copies dependency metadata before the whole project.
That is intentional.
Frequently changing source files should invalidate fewer build layers than dependency definition changes.
