# Domain Debugging

If a domain does not open, check the layers in this order:

1. DNS
   Make sure the hostname resolves to the local machine.
2. Connect
   Check whether the Traefik ports are actually bound.
3. Route
   Verify the `Host(...)` rule matches the real hostname.
4. Service
   Confirm the router points to the expected service and container port.
5. TLS trust
   Only after the route is correct should you debug certificate trust and browser HTTPS behavior.

Useful commands:
- `docker compose logs traefik`
- `docker compose config`
- `dig +short ecommerce.localho.st`
- `curl -I http://...`
- `curl -kI https://...`
- `curl -vk https://...`
- `openssl s_client -connect ecommerce.localho.st:443 -servername ecommerce.localho.st`

How to read common symptoms:

- connection refused: Traefik is not listening on that host port or is not running;
- 404 from Traefik: no router matched the `Host(...)` rule;
- 502 from Traefik: the router matched, but Traefik could not reach the internal service;
- certificate warning: HTTPS may be working, but the local certificate is not trusted by the client.
