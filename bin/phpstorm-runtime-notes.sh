#!/usr/bin/env sh
set -eu

printf '%s\n' 'PhpStorm runtime verification notes'
printf '%s\n' '- Compare the PHP version inside the project container with the interpreter selected in PhpStorm.'
printf '%s\n' '- Check whether the container and the IDE expect the same project root path.'
printf '%s\n' '- Verify that required PHP extensions exist in the container runtime.'
printf '%s\n' '- Treat the Docker connection as the gateway to the runtime, not as a cosmetic integration.'
