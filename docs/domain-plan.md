# Domain Plan

The project uses the following domain model:

- `ecommerce.localho.st` — storefront
- `api.ecommerce.localho.st` — API
- `admin.ecommerce.localho.st` — admin panel

All three names resolve to the local machine through the `localho.st` pattern. The browser sends the requested hostname in the HTTP `Host` header, and Traefik uses that hostname to choose the correct internal service.

The domain names describe product roles. They replace the weaker model where the student has to remember `localhost:8000`, `localhost:8001`, and `localhost:8002`.
