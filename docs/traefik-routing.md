# Traefik Routing

The routing model in this branch is:

- `ecommerce.localho.st` -> `storefront` -> container port `80`
- `api.ecommerce.localho.st` -> `api` -> container port `80`
- `admin.ecommerce.localho.st` -> `admin` -> container port `80`
- `traefik.ecommerce.localho.st` -> `api@internal` -> Traefik dashboard

Static config is the part that tells Traefik how to run:

- Docker provider is enabled;
- `exposedByDefault=false` prevents accidental publishing;
- `web` listens on port `80`;
- the dashboard is enabled for local diagnostics.

Dynamic config is the part that tells Traefik where requests go. In this branch it comes from Docker labels placed next to each service.

The important distinction is:
- the router matches the external hostname;
- the service points to the internal target port;
- the entrypoint decides which socket Traefik listens on.

In Traefik v3.6.14 the beginner model is:

- `router`: accepts a request, usually with `Host(...)`;
- `service`: sends the accepted request to an internal container port;
- `middleware`: changes or checks the request between router and service.

This branch does not need custom priorities because every `Host(...)` rule is specific. Priorities become useful when two rules can match the same request.

The dashboard route is local-only training tooling. Do not copy it as a public production default without authentication, VPN, allowlist, or another access-control layer.
