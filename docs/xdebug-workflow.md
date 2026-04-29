# Xdebug Workflow

Logs and debugging are different tools.

Logs show messages the application writes while it runs. Debugging stops code at a breakpoint so the developer can inspect variables, stack frames and the current line.

For this container workflow:

1. PHP runs inside the `app` container.
2. Xdebug is installed inside that same container as a PHP extension.
3. PhpStorm runs on the host machine.
4. PhpStorm listens for incoming debug connections on port `9003`.
5. Xdebug opens an outgoing connection from the container to PhpStorm.

Expected local settings:

- `xdebug.mode=debug,develop`;
- `xdebug.start_with_request=trigger`;
- `xdebug.client_host=host.docker.internal`;
- `xdebug.client_port=9003`;
- `xdebug.discover_client_host=0`.

With Docker Desktop, `host.docker.internal` usually points from the container back to the host. On Linux, this may require the `extra_hosts` entry in `docker-compose.yml` or a documented gateway address.

This branch documents the expected workflow. It does not claim that PhpStorm has been opened or that a live debug session was tested on this machine.
