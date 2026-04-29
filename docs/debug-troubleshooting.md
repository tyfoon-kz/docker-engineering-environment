# Debug Troubleshooting

When a breakpoint is not hit, check one layer at a time.

1. Xdebug is loaded in container PHP:
   `docker compose run --rm app php -v`
2. Xdebug mode includes `debug`.
3. PhpStorm is listening for PHP debug connections.
4. `xdebug.client_host` points to the host where PhpStorm runs.
5. `xdebug.client_port` is the same port PhpStorm listens on, normally `9003`.
6. Firewall or security software is not blocking incoming connections to PhpStorm.
7. Docker Desktop or Linux gateway settings allow the container to reach the host.
8. Path mappings connect host repository root to `/var/www/html`.
9. Trigger mode is satisfied.

Trigger examples:

- CLI: set an Xdebug trigger environment variable before running the command.
- Browser: send a trigger through cookie, header, query parameter or browser helper.
- Always-on local experiment: use `XDEBUG_START_WITH_REQUEST=yes`, then return it to `trigger` when done.

Do not enable Xdebug as a production default. Xdebug can expose internal application state and slow execution. Keep this configuration local-only and explicit.
