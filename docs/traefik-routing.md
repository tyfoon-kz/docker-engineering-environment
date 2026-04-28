# Traefik Routing

The routing model in this branch is:

- `ecommerce.localho.st` -> `storefront` -> container port `80`
- `api.ecommerce.localho.st` -> `api` -> container port `80`
- `admin.ecommerce.localho.st` -> `admin` -> container port `80`
- `traefik.ecommerce.localho.st` -> `api@internal` -> Traefik dashboard

The important distinction is:
- the router matches the external hostname;
- the service points to the internal target port;
- the entrypoint decides which socket Traefik listens on.
