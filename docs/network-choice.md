# Network Choice

All routed services and Traefik live on the same Docker network:

- `${COMPOSE_STACK_NAME:-ecommerce}_web`

Why the network is stated explicitly:
- it documents the expected path between Traefik and the routed containers;
- it scales better if additional networks appear later;
- it avoids accidental ambiguity in multi-network stacks.

Traefik does not call `localhost:8000` to reach a service. It talks to containers over the Docker network and uses the internal container port from the service label.

If a service is later attached to both `web` and another network, the explicit `traefik.docker.network` label keeps the route predictable.
