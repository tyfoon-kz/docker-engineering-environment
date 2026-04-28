#!/usr/bin/env sh
set -eu

printf '%s\n' 'Xdebug summary'
printf '%s\n' '- The container must load Xdebug explicitly.'
printf '%s\n' '- PhpStorm must listen on the same port that Xdebug targets.'
printf '%s\n' '- Path mappings must connect /app inside the container to the project path on the host.'
printf '%s\n' '- A working debug setup is documented and repeatable, not personal folklore.'
