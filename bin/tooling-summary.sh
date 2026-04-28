#!/usr/bin/env sh
set -eu

printf '%s\n' 'Container-first tooling summary'
printf '%s\n' '- PHP inspections should target the container interpreter, not host PHP.'
printf '%s\n' '- Composer should run through the same container runtime that owns the project.'
printf '%s\n' '- Tests should use the same interpreter as Composer and the application.'
printf '%s\n' '- If IDE feedback and container feedback diverge, trust the project runtime and remove the drift.'
