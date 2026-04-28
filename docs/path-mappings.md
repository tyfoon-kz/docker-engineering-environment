# Path Mappings

## What they solve

The container sees the code under container paths such as `/app`.
PhpStorm sees the same code under a host path on the developer machine.
Path mappings tell the IDE that these two locations represent the same project files.

## Why breakpoints fail without them

When Xdebug reports a file path from the container, PhpStorm must translate it to a file opened on the host.
If the translation is wrong, the IDE receives the debug session but cannot attach it to the right file and line.

## Rule

Path mappings are not an optional refinement.
They are part of the debug contract between the container runtime and the IDE.

