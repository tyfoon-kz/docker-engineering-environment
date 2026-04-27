# Foreground Process

## Core rule

A container lives while its main foreground process lives.

## Example: `hello-world`

`hello-world` prints a message and exits.
So the container exits normally right after doing its job.

## Example: `nginx`

`nginx` keeps serving requests as its main server process continues to run.
So the container remains alive while that process is alive.

## Why this matters

If a container exits immediately, the first question should be:
"What process was supposed to stay alive here?"

That question is more useful than assuming Docker itself crashed.
