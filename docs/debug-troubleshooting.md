# Debug Troubleshooting

## Verification order

1. Confirm that the container actually loads Xdebug.
2. Confirm that the listener is enabled in PhpStorm.
3. Confirm that `client_host` and `client_port` point to the machine where the IDE is listening.
4. Confirm that host and container paths are mapped correctly.
5. Confirm that the executed request is the one expected to trigger the breakpoint.

## Anti-pattern

Do not change random debug settings all at once.
Debugging becomes stable when each layer is verified separately.

