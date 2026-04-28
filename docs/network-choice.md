# Network Choice

All routed services and Traefik live on the same Docker network:

- `${COMPOSE_STACK_NAME:-ecommerce}_web`

Why the network is stated explicitly:
- it documents the expected path between Traefik and the routed containers;
- it scales better if additional networks appear later;
- it avoids accidental ambiguity in multi-network stacks.
