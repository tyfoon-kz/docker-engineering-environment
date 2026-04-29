# PhpStorm Docker Connection

PhpStorm is the IDE. Docker Engine is the runtime that owns images and containers. A Docker connection in PhpStorm makes the IDE a client of Docker Engine. It does not move the IDE into Docker and it does not make PhpStorm run containers by magic.

The simple model:

1. Docker Engine runs on the host through Docker Desktop, a Linux service, or a remote server.
2. PhpStorm connects to that Engine through Docker API.
3. The IDE can list images, containers and Compose services.
4. Later, the IDE can use one of those services as a source for a PHP interpreter.

This repository expects a local Docker connection for the beginner workflow. On macOS and Windows that usually means Docker Desktop. On Linux that usually means the local Docker service. A remote Docker connection is possible, but it adds network access, permissions and path mapping problems, so it should be documented explicitly before it is used.

## Socket and Context

Docker socket is the door to Docker Engine. Docker context is the saved pointer that says which Docker Engine the Docker client should talk to. If PhpStorm points to a different socket or context than the terminal, the IDE may not see the same containers as `docker compose`.

## Test Connection

PhpStorm Test Connection only proves that the IDE can reach Docker Engine. It does not prove that the project PHP interpreter, Composer, tests or Xdebug are configured.

If PhpStorm shows `Cannot connect to Docker daemon`, check in this order:

1. Docker Desktop or Docker service is running.
2. `docker version` works in the terminal.
3. The active Docker context is the expected one.
4. PhpStorm uses the same Docker endpoint.
5. The current user has permission to access the Docker socket.

Do not continue to PHP interpreter setup until the Docker connection itself is stable.
