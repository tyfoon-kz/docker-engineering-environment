# Edge Boundary

The stack publishes one web entry point: `Traefik`.

Why:
- the browser should see domains, not random ports;
- the external surface stays small and readable;
- new web routes become explicit routing decisions instead of another `ports:` stanza.

In this branch:
- `storefront` is published as `ecommerce.localho.st`;
- `api` is published through the same edge as `api.ecommerce.localho.st`;
- `admin` is published through the same edge as `admin.ecommerce.localho.st`;
- the services do not publish their own host ports.

The internal services still listen on port `80` inside their containers. That is not the same as publishing `8000:80`, `8001:80`, or `8002:80` on the host. Traefik reaches them through the Docker network.
